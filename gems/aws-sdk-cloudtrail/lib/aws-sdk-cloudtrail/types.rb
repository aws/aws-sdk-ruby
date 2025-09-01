# frozen_string_literal: true

# This is generated code!

module Aws::CloudTrail
  # This module contains the types returned by client operations.
  module Types

    # <p>
    #          You do not have sufficient access to perform this action.
    #       </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> This exception is thrown when you start a new import and a previous import is still in
    #          progress. </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class AccountHasOngoingImportException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified account is not found or not part of an
    #          organization.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class AccountNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified account is not registered as the CloudTrail delegated administrator.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class AccountNotRegisteredException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the account is already registered as the CloudTrail
    #          delegated administrator.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class AccountRegisteredException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the tags to add to a trail, event data store, dashboard, or channel.</p>
    # @!attribute resource_id
    #   <p>Specifies the ARN of the trail, event data store, dashboard, or channel to which one or more tags will be
    #            added.</p>
    #            <p>The format of a trail ARN is:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>The format of an event data store ARN is:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>The format of a dashboard ARN is: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>The format of a channel ARN is:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    #   @return [String]
    # @!attribute tags_list
    #   <p>Contains a list of tags, up to a limit of 50</p>
    #   @return [Array<Types::Tag>]
    class AddTagsRequest < Struct.new(
      :resource_id,
      :tags_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the objects or data if successful. Otherwise, returns an error.</p>
    class AddTagsResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Advanced event selectors let you create fine-grained selectors for CloudTrail management, data, and network activity events. They help you control costs by logging only those
    #          events that are important to you. For more information about configuring advanced event selectors, see
    #             the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html">Logging data events</a>, <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html">Logging network activity events</a>, and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html">Logging management events</a> topics in the <i>CloudTrail User Guide</i>.</p>
    #          <p>You cannot apply both event selectors and advanced event selectors to a trail.</p>
    #          <p>For information about configurable advanced event selector fields, see 
    #          <a href="https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html">AdvancedEventSelector</a> 
    #          in the <i>CloudTrail API Reference</i>.</p>
    # @!attribute name
    #   <p>An optional, descriptive name for an advanced event selector, such as "Log data events
    #            for only two S3 buckets".</p>
    #   @return [String]
    # @!attribute field_selectors
    #   <p>Contains all selector statements in an advanced event selector.</p>
    #   @return [Array<Types::AdvancedFieldSelector>]
    class AdvancedEventSelector < Struct.new(
      :name,
      :field_selectors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A single selector statement in an advanced event selector.</p>
    # @!attribute field
    #   <p> A field in a CloudTrail event record on which to filter events to be logged. For
    #            event data stores for CloudTrail Insights events, Config configuration items, Audit Manager evidence, or events outside of Amazon Web Services, the field is used only for
    #            selecting events as filtering is not supported.</p>
    #            <p>For more information, see 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedFieldSelector.html">AdvancedFieldSelector</a> 
    #            in the <i>CloudTrail API Reference</i>.</p>
    #            <note>
    #               <p>Selectors don't support the use of wildcards like <code>*</code> . To match multiple values with a single condition, 
    #               you may use <code>StartsWith</code>, <code>EndsWith</code>, <code>NotStartsWith</code>, or <code>NotEndsWith</code> to explicitly match the beginning or end of the event field.</p>
    #            </note>
    #   @return [String]
    # @!attribute equals
    #   <p> An operator that includes events that match the exact value of the event record field
    #            specified as the value of <code>Field</code>. This is the only valid operator that you can
    #            use with the <code>readOnly</code>, <code>eventCategory</code>, and
    #               <code>resources.type</code> fields.</p>
    #   @return [Array<String>]
    # @!attribute starts_with
    #   <p>An operator that includes events that match the first few characters of the event record
    #            field specified as the value of <code>Field</code>.</p>
    #   @return [Array<String>]
    # @!attribute ends_with
    #   <p>An operator that includes events that match the last few characters of the event record
    #            field specified as the value of <code>Field</code>.</p>
    #   @return [Array<String>]
    # @!attribute not_equals
    #   <p> An operator that excludes events that match the exact value of the event record field
    #            specified as the value of <code>Field</code>. </p>
    #   @return [Array<String>]
    # @!attribute not_starts_with
    #   <p> An operator that excludes events that match the first few characters of the event
    #            record field specified as the value of <code>Field</code>. </p>
    #   @return [Array<String>]
    # @!attribute not_ends_with
    #   <p> An operator that excludes events that match the last few characters of the event record
    #            field specified as the value of <code>Field</code>. </p>
    #   @return [Array<String>]
    class AdvancedFieldSelector < Struct.new(
      :field,
      :equals,
      :starts_with,
      :ends_with,
      :not_equals,
      :not_starts_with,
      :not_ends_with,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BillingMode
      EXTENDABLE_RETENTION_PRICING = 'EXTENDABLE_RETENTION_PRICING'
      FIXED_RETENTION_PRICING = 'FIXED_RETENTION_PRICING'
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified
    #            query is running.</p>
    #   @deprecated
    #     EventDataStore is no longer required by CancelQueryRequest
    #   @return [String]
    # @!attribute query_id
    #   <p>The ID of the query that you want to cancel. The <code>QueryId</code> comes from the
    #            response of a <code>StartQuery</code> operation.</p>
    #   @return [String]
    # @!attribute event_data_store_owner_account_id
    #   <p>
    #   The account ID of the event data store owner.
    #   </p>
    #   @return [String]
    class CancelQueryRequest < Struct.new(
      :event_data_store,
      :query_id,
      :event_data_store_owner_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the canceled query.</p>
    #   @return [String]
    # @!attribute query_status
    #   <p>Shows the status of a query after a <code>CancelQuery</code> request. Typically, the
    #            values shown are either <code>RUNNING</code> or <code>CANCELLED</code>.</p>
    #   @return [String]
    # @!attribute event_data_store_owner_account_id
    #   <p>
    #      The account ID of the event data store owner.
    #   </p>
    #   @return [String]
    class CancelQueryResponse < Struct.new(
      :query_id,
      :query_status,
      :event_data_store_owner_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the management account of an organization is registered as
    #          the CloudTrail delegated administrator.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class CannotDelegateManagementAccountException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a returned CloudTrail channel.</p>
    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of a channel.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the CloudTrail channel. For service-linked channels, the name is
    #               <code>aws-service-channel/service-name/custom-suffix</code> where
    #               <code>service-name</code> represents the name of the Amazon Web Services service that
    #            created the channel and <code>custom-suffix</code> represents the suffix created by the
    #               Amazon Web Services service. </p>
    #   @return [String]
    class Channel < Struct.new(
      :channel_arn,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified value of <code>ChannelARN</code> is not
    #          valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ChannelARNInvalidException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          This exception is thrown when the provided channel already exists.
    #       </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ChannelAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified event data store cannot yet be deleted because it 
    #          is in use by a channel.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ChannelExistsForEDSException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          This exception is thrown when the maximum number of channels limit is exceeded.
    #       </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ChannelMaxLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when CloudTrail cannot find the specified channel.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ChannelNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when an operation is called with an ARN that is not valid.</p>
    #          <p>The following is the format of a trail ARN: <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #          </p>
    #          <p>The following is the format of an event data store ARN:
    #          <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #          </p>
    #          <p>The following is the format of a dashboard ARN: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #          </p>
    #          <p>The following is the format of a channel ARN:
    #          <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #          </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class CloudTrailARNInvalidException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when trusted access has not been enabled between CloudTrail and Organizations. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_how-to-enable-disable-trusted-access">How to enable or disable trusted access</a> in the <i>Organizations User Guide</i> and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html">Prepare For Creating a Trail For Your Organization</a> in the <i>CloudTrail User Guide</i>.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class CloudTrailAccessNotEnabledException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a call results in the <code>InvalidClientTokenId</code>
    #          error code. This can occur when you are creating or updating a trail to send notifications
    #          to an Amazon SNS topic that is in a suspended Amazon Web Services account.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class CloudTrailInvalidClientTokenIdException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Cannot set a CloudWatch Logs delivery for this Region.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class CloudWatchLogsDeliveryUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          You are trying to update a resource when another request is in progress. Allow sufficient wait time for the previous request to complete, then retry your request. 
    #       </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified resource is not ready for an operation. This
    #          can occur when you try to run an operation on a resource before CloudTrail has time
    #          to fully load the resource, or because another operation is modifying the resource. If this exception occurs, wait a few minutes, and then try the
    #          operation again.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains information types to be included in CloudTrail enriched events.</p>
    # @!attribute type
    #   <p>Specifies the type of the event record field in ContextKeySelector. Valid values include RequestContext, TagContext.</p>
    #   @return [String]
    # @!attribute equals
    #   <p>A list of keys defined by Type to be included in CloudTrail enriched events. </p>
    #   @return [Array<String>]
    class ContextKeySelector < Struct.new(
      :type,
      :equals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The name of the partner or external event source. You cannot change this name after you create the 
    #            channel. A maximum of one channel is allowed per source.</p>
    #            <p>
    #            A source can be either <code>Custom</code> for all valid non-Amazon Web Services
    #            events, or the name of a partner event source. For information about the source names for available partners, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store-integration.html#cloudtrail-lake-partner-information">Additional information about integration partners</a> in the CloudTrail User Guide.
    #         </p>
    #   @return [String]
    # @!attribute destinations
    #   <p>One or more event data stores to which events arriving through a channel will be logged.</p>
    #   @return [Array<Types::Destination>]
    # @!attribute tags
    #   <p>A list of tags.</p>
    #   @return [Array<Types::Tag>]
    class CreateChannelRequest < Struct.new(
      :name,
      :source,
      :destinations,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the new channel.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the new channel.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The partner or external event source name.</p>
    #   @return [String]
    # @!attribute destinations
    #   <p>The event data stores that log the events arriving through the channel.</p>
    #   @return [Array<Types::Destination>]
    # @!attribute tags
    #   <p>A list of tags.</p>
    #   @return [Array<Types::Tag>]
    class CreateChannelResponse < Struct.new(
      :channel_arn,
      :name,
      :source,
      :destinations,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #      The name of the dashboard. The name must be unique to your account.
    #   </p>
    #            <p>To create the Highlights dashboard, the name must be <code>AWSCloudTrail-Highlights</code>.</p>
    #   @return [String]
    # @!attribute refresh_schedule
    #   <p>
    #      The refresh schedule configuration for the dashboard.
    #   </p>
    #            <p>To create the Highlights dashboard, you must set a refresh schedule and set the <code>Status</code> to <code>ENABLED</code>. The <code>Unit</code> for the refresh schedule must be <code>HOURS</code> 
    #      and the <code>Value</code> must be <code>6</code>.</p>
    #   @return [Types::RefreshSchedule]
    # @!attribute tags_list
    #   <p>A list of tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute termination_protection_enabled
    #   <p>
    #      Specifies whether termination protection is enabled for the dashboard. If termination protection is enabled, you cannot delete the dashboard until termination protection is disabled.
    #   </p>
    #   @return [Boolean]
    # @!attribute widgets
    #   <p>
    #   An array of widgets for a custom dashboard. A custom dashboard can have a maximum of ten widgets.
    #   </p>
    #            <p>You do not need to specify widgets for the Highlights dashboard.</p>
    #   @return [Array<Types::RequestWidget>]
    class CreateDashboardRequest < Struct.new(
      :name,
      :refresh_schedule,
      :tags_list,
      :termination_protection_enabled,
      :widgets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dashboard_arn
    #   <p>
    #   The ARN for the dashboard.
    #   </p>
    #   @return [String]
    # @!attribute name
    #   <p>
    #   The name of the dashboard.
    #   </p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #   The dashboard type.
    #   </p>
    #   @return [String]
    # @!attribute widgets
    #   <p>
    #   An array of widgets for the dashboard.
    #   </p>
    #   @return [Array<Types::Widget>]
    # @!attribute tags_list
    #   <p>A list of tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute refresh_schedule
    #   <p>
    #   The refresh schedule for the dashboard, if configured.
    #   </p>
    #   @return [Types::RefreshSchedule]
    # @!attribute termination_protection_enabled
    #   <p>
    #      Indicates whether termination protection is enabled for the dashboard.
    #   </p>
    #   @return [Boolean]
    class CreateDashboardResponse < Struct.new(
      :dashboard_arn,
      :name,
      :type,
      :widgets,
      :tags_list,
      :refresh_schedule,
      :termination_protection_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the event data store.</p>
    #   @return [String]
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors to use to select the events for the data store. You can
    #            configure up to five advanced event selectors for each event data store.</p>
    #            <p> For more information about how to use advanced event selectors to log CloudTrail
    #            events, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced">Log events by using advanced event selectors</a> in the CloudTrail User Guide.</p>
    #            <p>For more information about how to use advanced event selectors to include Config configuration items in your event data store, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-eds-cli.html#lake-cli-create-eds-config">Create an event data store for Config configuration
    #               items</a> in the CloudTrail User Guide.</p>
    #            <p>For more information about how to use advanced event selectors to include events outside of Amazon Web Services events in your event data store, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-integrations-cli.html#lake-cli-create-integration">Create an integration to log events from outside Amazon Web Services</a> in the CloudTrail User Guide.</p>
    #   @return [Array<Types::AdvancedEventSelector>]
    # @!attribute multi_region_enabled
    #   <p>Specifies whether the event data store includes events from all Regions, or only from
    #            the Region in which the event data store is created.</p>
    #   @return [Boolean]
    # @!attribute organization_enabled
    #   <p>Specifies whether an event data store collects events logged for an organization in
    #               Organizations.</p>
    #   @return [Boolean]
    # @!attribute retention_period
    #   <p>The retention period of the event data store, in days. If <code>BillingMode</code> is set to <code>EXTENDABLE_RETENTION_PRICING</code>, you can set a retention period of
    #            up to 3653 days, the equivalent of 10 years. If <code>BillingMode</code> is set to <code>FIXED_RETENTION_PRICING</code>, you can set a retention period of
    #            up to 2557 days, the equivalent of seven years.</p>
    #            <p>CloudTrail  Lake determines whether to retain an event by checking if the <code>eventTime</code> 
    #            of the event is within the specified retention period. For example, if you set a retention period of 90 days, CloudTrail will remove events 
    #         when the <code>eventTime</code> is older than 90 days.</p>
    #            <note>
    #               <p>If you plan to copy trail events to this event data store, we recommend 
    #               that you consider both the age of the events that you
    #               want to copy as well as how long you want to keep the copied events
    #               in your event data store. For example, if you copy trail events that are 5 years old 
    #               and specify a retention period of 7 years, the event data store 
    #               will retain those events for two years.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute termination_protection_enabled
    #   <p>Specifies whether termination protection is enabled for the event data store. If
    #            termination protection is enabled, you cannot delete the event data store until termination
    #            protection is disabled.</p>
    #   @return [Boolean]
    # @!attribute tags_list
    #   <p>A list of tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the events delivered by
    #               CloudTrail. The value can be an alias name prefixed by <code>alias/</code>, a
    #            fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique
    #            identifier.</p>
    #            <important>
    #               <p>Disabling or deleting the KMS key, or removing CloudTrail
    #               permissions on the key, prevents CloudTrail from logging events to the event data
    #               store, and prevents users from querying the data in the event data store that was
    #               encrypted with the key. After you associate an event data store with a KMS key, the KMS key cannot be removed or changed. Before you
    #               disable or delete a KMS key that you are using with an event data store,
    #               delete or back up your event data store.</p>
    #            </important>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more
    #            information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region
    #               keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute start_ingestion
    #   <p>Specifies whether the event data store should start ingesting live events. The default is true.</p>
    #   @return [Boolean]
    # @!attribute billing_mode
    #   <p>The billing mode for the event data store determines the cost for ingesting events and the default and maximum retention period for the event data store.</p>
    #            <p>The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXTENDABLE_RETENTION_PRICING</code> - This billing mode is generally recommended if you want a flexible retention period of up to 3653 days (about 10 years). 
    #                   The default retention period for this billing mode is 366 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FIXED_RETENTION_PRICING</code> - This billing mode is recommended if you expect to ingest more than 25 TB of event data per month and need a retention period of up to 2557 days (about 7 years). 
    #                   The default retention period for this billing mode is 2557 days.</p>
    #               </li>
    #            </ul>
    #            <p>The default value is <code>EXTENDABLE_RETENTION_PRICING</code>.</p>
    #            <p>For more information about CloudTrail pricing, 
    #            see <a href="http://aws.amazon.com/cloudtrail/pricing/">CloudTrail Pricing</a> and 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-manage-costs.html">Managing CloudTrail Lake costs</a>.</p>
    #   @return [String]
    class CreateEventDataStoreRequest < Struct.new(
      :name,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :tags_list,
      :kms_key_id,
      :start_ingestion,
      :billing_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>The ARN of the event data store.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the event data store.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of event data store creation.</p>
    #   @return [String]
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors that were used to select the events for the data
    #            store.</p>
    #   @return [Array<Types::AdvancedEventSelector>]
    # @!attribute multi_region_enabled
    #   <p>Indicates whether the event data store collects events from all Regions, or only from
    #            the Region in which it was created.</p>
    #   @return [Boolean]
    # @!attribute organization_enabled
    #   <p>Indicates whether an event data store is collecting logged events for an organization in
    #               Organizations.</p>
    #   @return [Boolean]
    # @!attribute retention_period
    #   <p>The retention period of an event data store, in days.</p>
    #   @return [Integer]
    # @!attribute termination_protection_enabled
    #   <p>Indicates whether termination protection is enabled for the event data store.</p>
    #   @return [Boolean]
    # @!attribute tags_list
    #   <p>A list of tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The timestamp that shows when the event data store was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The timestamp that shows when an event data store was updated, if applicable.
    #               <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in
    #               <code>CreatedTimestamp</code>.</p>
    #   @return [Time]
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID that encrypts the events delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the
    #            following format.</p>
    #            <p>
    #               <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #   @return [String]
    # @!attribute billing_mode
    #   <p>The billing mode for the event data store.</p>
    #   @return [String]
    class CreateEventDataStoreResponse < Struct.new(
      :event_data_store_arn,
      :name,
      :status,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :tags_list,
      :created_timestamp,
      :updated_timestamp,
      :kms_key_id,
      :billing_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the settings for each trail.</p>
    # @!attribute name
    #   <p>Specifies the name of the trail. The name must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                  (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like
    #                     <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log files. 
    #            For information about bucket naming rules, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Bucket naming rules</a> 
    #            in the <i>Amazon Simple Storage Service User Guide</i>.
    #           </p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you
    #            have designated for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files">Finding Your CloudTrail Log Files</a>. The maximum length is 200
    #            characters.</p>
    #   @return [String]
    # @!attribute sns_topic_name
    #   <p>Specifies the name or ARN of the Amazon SNS topic defined for notification of log file
    #            delivery. The maximum length is 256 characters.</p>
    #   @return [String]
    # @!attribute include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the
    #            log files.</p>
    #   @return [Boolean]
    # @!attribute is_multi_region_trail
    #   <p>Specifies whether the trail is created in the current Region or in all Regions. The
    #            default is false, which creates a trail only in the Region where you are signed in. As a
    #            best practice, consider creating trails that log events in all Regions.</p>
    #   @return [Boolean]
    # @!attribute enable_log_file_validation
    #   <p>Specifies whether log file integrity validation is enabled. The default is false.</p>
    #            <note>
    #               <p>When you disable log file integrity validation, the chain of digest files is broken
    #               after one hour. CloudTrail does not create digest files for log files that were
    #               delivered during a period in which log file integrity validation was disabled. For
    #               example, if you enable log file integrity validation at noon on January 1, disable it at
    #               noon on January 2, and re-enable it at noon on January 10, digest files will not be
    #               created for the log files delivered from noon on January 2 to noon on January 10. The
    #               same applies whenever you stop CloudTrail logging or delete a trail.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that
    #            represents the log group to which CloudTrail logs will be delivered. You must use a
    #            log group that exists in your account.</p>
    #            <p>Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>
    #   @return [String]
    # @!attribute cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's
    #            log group. You must use a role that exists in your account.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by <code>alias/</code>, a fully
    #            specified ARN to an alias, a fully specified ARN to a key, or a globally unique
    #            identifier.</p>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more
    #            information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region
    #               keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute is_organization_trail
    #   <p>Specifies whether the trail is created for all accounts in an organization in Organizations, or only for the current Amazon Web Services account. The default is false,
    #            and cannot be true unless the call is made on behalf of an Amazon Web Services account that
    #            is the management account or delegated administrator account for an organization in Organizations.</p>
    #   @return [Boolean]
    # @!attribute tags_list
    #   <p>A list of tags.</p>
    #   @return [Array<Types::Tag>]
    class CreateTrailRequest < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :include_global_service_events,
      :is_multi_region_trail,
      :enable_log_file_validation,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail,
      :tags_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an
    #          error.</p>
    # @!attribute name
    #   <p>Specifies the name of the trail.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log
    #            files.</p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you
    #            have designated for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files">Finding Your CloudTrail Log Files</a>.</p>
    #   @return [String]
    # @!attribute sns_topic_name
    #   <p>This field is no longer in use. Use <code>SnsTopicARN</code>.</p>
    #   @deprecated
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send
    #            notifications when log files are delivered. The format of a topic ARN is:</p>
    #            <p>
    #               <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>
    #            </p>
    #   @return [String]
    # @!attribute include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the
    #            log files.</p>
    #   @return [Boolean]
    # @!attribute is_multi_region_trail
    #   <p>Specifies whether the trail exists in one Region or in all Regions.</p>
    #   @return [Boolean]
    # @!attribute trail_arn
    #   <p>Specifies the ARN of the trail that was created. The format of a trail ARN is:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #   @return [String]
    # @!attribute log_file_validation_enabled
    #   <p>Specifies whether log file integrity validation is enabled.</p>
    #   @return [Boolean]
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail
    #            logs will be delivered.</p>
    #   @return [String]
    # @!attribute cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's
    #            log group.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID that encrypts the events delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the
    #            following format.</p>
    #            <p>
    #               <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #   @return [String]
    # @!attribute is_organization_trail
    #   <p>Specifies whether the trail is an organization trail.</p>
    #   @return [Boolean]
    class CreateTrailResponse < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :sns_topic_arn,
      :include_global_service_events,
      :is_multi_region_trail,
      :trail_arn,
      :log_file_validation_enabled,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # Provides information about a CloudTrail Lake dashboard.
    # </p>
    # @!attribute dashboard_arn
    #   <p>
    #   The ARN for the dashboard.
    #   </p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #   The type of dashboard.
    #   </p>
    #   @return [String]
    class DashboardDetail < Struct.new(
      :dashboard_arn,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DashboardStatus
      CREATING = 'CREATING'
      CREATED = 'CREATED'
      UPDATING = 'UPDATING'
      UPDATED = 'UPDATED'
      DELETING = 'DELETING'
    end

    module DashboardType
      MANAGED = 'MANAGED'
      CUSTOM = 'CUSTOM'
    end

    # <p>You can configure the <code>DataResource</code> in an <code>EventSelector</code> to log data events for the following three resource types:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AWS::DynamoDB::Table</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AWS::Lambda::Function</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AWS::S3::Object</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>To log data events for all other resource types including objects stored in 
    #          <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">directory buckets</a>, you must use <a href="https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html">AdvancedEventSelectors</a>. You must also 
    #          use <code>AdvancedEventSelectors</code> if you want to filter on the <code>eventName</code> field.</p>
    #          <p>Configure the <code>DataResource</code> to specify the resource type and resource ARNs for which you want to log data events.</p>
    #          <note>
    #             <p>The total number of allowed data resources is 250. This number can be distributed
    #             between 1 and 5 event selectors, but the total cannot exceed 250 across all
    #             selectors for the trail.</p>
    #          </note>
    #          <p>The following example demonstrates how logging works when you configure logging of all
    #          data events for a general purpose bucket named <code>amzn-s3-demo-bucket1</code>. In this example, the CloudTrail user specified an empty prefix, and the option to log both <code>Read</code>
    #          and <code>Write</code> data events.</p>
    #          <ol>
    #             <li>
    #                <p>A user uploads an image file to <code>amzn-s3-demo-bucket1</code>.</p>
    #             </li>
    #             <li>
    #                <p>The <code>PutObject</code> API operation is an Amazon S3 object-level API.
    #                It is recorded as a data event in CloudTrail. Because the CloudTrail
    #                user specified an S3 bucket with an empty prefix, events that occur on any object in
    #                that bucket are logged. The trail processes and logs the event.</p>
    #             </li>
    #             <li>
    #                <p>A user uploads an object to an Amazon S3 bucket named
    #                <code>arn:aws:s3:::amzn-s3-demo-bucket1</code>.</p>
    #             </li>
    #             <li>
    #                <p>The <code>PutObject</code> API operation occurred for an object in an S3 bucket
    #                that the CloudTrail user didn't specify for the trail. The trail doesn’t log
    #                the event.</p>
    #             </li>
    #          </ol>
    #          <p>The following example demonstrates how logging works when you configure logging of
    #             Lambda data events for a Lambda function named
    #             <i>MyLambdaFunction</i>, but not for all Lambda
    #          functions.</p>
    #          <ol>
    #             <li>
    #                <p>A user runs a script that includes a call to the
    #                   <i>MyLambdaFunction</i> function and the
    #                   <i>MyOtherLambdaFunction</i> function.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Invoke</code> API operation on <i>MyLambdaFunction</i> is
    #                an Lambda API. It is recorded as a data event in CloudTrail.
    #                Because the CloudTrail user specified logging data events for
    #                   <i>MyLambdaFunction</i>, any invocations of that function are
    #                logged. The trail processes and logs the event.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Invoke</code> API operation on
    #                   <i>MyOtherLambdaFunction</i> is an Lambda API. Because
    #                the CloudTrail user did not specify logging data events for all Lambda functions, the <code>Invoke</code> operation for
    #                   <i>MyOtherLambdaFunction</i> does not match the function specified
    #                for the trail. The trail doesn’t log the event. </p>
    #             </li>
    #          </ol>
    # @!attribute type
    #   <p>The resource type in which you want to log data events. You can specify the following
    #               <i>basic</i> event selector resource types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS::DynamoDB::Table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::Lambda::Function</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::S3::Object</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Additional resource types are available through <i>advanced</i>
    #            event selectors. For more
    #            information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html">AdvancedEventSelector</a>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified
    #            resource type.</p>
    #            <ul>
    #               <li>
    #                  <p>To log data events for all objects in all S3 buckets in your Amazon Web Services account, specify the prefix as <code>arn:aws:s3</code>.</p>
    #                  <note>
    #                     <p>This also enables logging of data event activity performed by any user or role
    #                     in your Amazon Web Services account, even if that activity is performed on a bucket
    #                     that belongs to another Amazon Web Services account.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>To log data events for all objects in an S3 bucket, specify the bucket and an
    #                  empty object prefix such as <code>arn:aws:s3:::amzn-s3-demo-bucket1/</code>. The trail logs data
    #                  events for all objects in this S3 bucket.</p>
    #               </li>
    #               <li>
    #                  <p>To log data events for specific objects, specify the S3 bucket and object prefix
    #                  such as <code>arn:aws:s3:::amzn-s3-demo-bucket1/example-images</code>. The trail logs data events
    #                  for objects in this S3 bucket that match the prefix.</p>
    #               </li>
    #               <li>
    #                  <p>To log data events for all Lambda functions in your Amazon Web Services account, specify the prefix as <code>arn:aws:lambda</code>.</p>
    #                  <note>
    #                     <p>This also enables logging of <code>Invoke</code> activity performed by any user
    #                     or role in your Amazon Web Services account, even if that activity is performed on
    #                     a function that belongs to another Amazon Web Services account. </p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>To log data events for a specific Lambda function, specify the
    #                  function ARN.</p>
    #                  <note>
    #                     <p>Lambda function ARNs are exact. For example, if you specify a
    #                     function ARN
    #                        <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>,
    #                     data events will only be logged for
    #                        <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>.
    #                     They will not be logged for
    #                        <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld2</i>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>To log data events for all DynamoDB tables in your Amazon Web Services account, specify the prefix as <code>arn:aws:dynamodb</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class DataResource < Struct.new(
      :type,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the maximum number of CloudTrail delegated
    #          administrators is reached.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class DelegatedAdminAccountLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel
    #   <p>The ARN or the <code>UUID</code> value of the channel that you want to delete.</p>
    #   @return [String]
    class DeleteChannelRequest < Struct.new(
      :channel,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteChannelResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dashboard_id
    #   <p>
    #   The name or ARN for the dashboard.
    #   </p>
    #   @return [String]
    class DeleteDashboardRequest < Struct.new(
      :dashboard_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteDashboardResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store to delete.</p>
    #   @return [String]
    class DeleteEventDataStoreRequest < Struct.new(
      :event_data_store,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteEventDataStoreResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel you're deleting the resource-based policy from.</p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteResourcePolicyResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request that specifies the name of a trail to delete.</p>
    # @!attribute name
    #   <p>Specifies the name or the CloudTrail ARN of the trail to be deleted. The
    #            following is the format of a trail ARN.
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #   @return [String]
    class DeleteTrailRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an
    #          error.</p>
    class DeleteTrailResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DeliveryStatus
      SUCCESS = 'SUCCESS'
      FAILED = 'FAILED'
      FAILED_SIGNING_FILE = 'FAILED_SIGNING_FILE'
      PENDING = 'PENDING'
      RESOURCE_NOT_FOUND = 'RESOURCE_NOT_FOUND'
      ACCESS_DENIED = 'ACCESS_DENIED'
      ACCESS_DENIED_SIGNING_FILE = 'ACCESS_DENIED_SIGNING_FILE'
      CANCELLED = 'CANCELLED'
      UNKNOWN = 'UNKNOWN'
    end

    # <p>Removes CloudTrail delegated administrator permissions from a specified member
    #          account in an organization that is currently designated as a delegated
    #          administrator.</p>
    # @!attribute delegated_admin_account_id
    #   <p>A delegated administrator account ID. This is a member account in an organization that
    #            is currently designated as a delegated administrator.</p>
    #   @return [String]
    class DeregisterOrganizationDelegatedAdminRequest < Struct.new(
      :delegated_admin_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the following response if successful. Otherwise, returns an error.</p>
    class DeregisterOrganizationDelegatedAdminResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified
    #            query was run.</p>
    #   @deprecated
    #     EventDataStore is no longer required by DescribeQueryRequest
    #   @return [String]
    # @!attribute query_id
    #   <p>The query ID.</p>
    #   @return [String]
    # @!attribute query_alias
    #   <p>
    #            The alias that identifies a query template.
    #         </p>
    #   @return [String]
    # @!attribute refresh_id
    #   <p>
    #   The ID of the dashboard refresh.
    #   </p>
    #   @return [String]
    # @!attribute event_data_store_owner_account_id
    #   <p>
    #   The account ID of the event data store owner.
    #   </p>
    #   @return [String]
    class DescribeQueryRequest < Struct.new(
      :event_data_store,
      :query_id,
      :query_alias,
      :refresh_id,
      :event_data_store_owner_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the query.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The SQL code of a query.</p>
    #   @return [String]
    # @!attribute query_status
    #   <p>The status of a query. Values for <code>QueryStatus</code> include <code>QUEUED</code>,
    #               <code>RUNNING</code>, <code>FINISHED</code>, <code>FAILED</code>,
    #            <code>TIMED_OUT</code>, or <code>CANCELLED</code>
    #            </p>
    #   @return [String]
    # @!attribute query_statistics
    #   <p>Metadata about a query, including the number of events that were matched, the total
    #            number of events scanned, the query run time in milliseconds, and the query's creation
    #            time.</p>
    #   @return [Types::QueryStatisticsForDescribeQuery]
    # @!attribute error_message
    #   <p>The error message returned if a query failed.</p>
    #   @return [String]
    # @!attribute delivery_s3_uri
    #   <p>The URI for the S3 bucket where CloudTrail delivered query results, if
    #            applicable.</p>
    #   @return [String]
    # @!attribute delivery_status
    #   <p>The delivery status.</p>
    #   @return [String]
    # @!attribute prompt
    #   <p>
    #            The prompt used for a generated query. For information about generated queries, see 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html">Create CloudTrail Lake queries from natural language prompts</a> 
    #            in the <i>CloudTrail </i> user guide.
    #         </p>
    #   @return [String]
    # @!attribute event_data_store_owner_account_id
    #   <p>
    #      The account ID of the event data store owner.
    #   </p>
    #   @return [String]
    class DescribeQueryResponse < Struct.new(
      :query_id,
      :query_string,
      :query_status,
      :query_statistics,
      :error_message,
      :delivery_s3_uri,
      :delivery_status,
      :prompt,
      :event_data_store_owner_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns information about the trail.</p>
    # @!attribute trail_name_list
    #   <p>Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The
    #            format of a trail ARN is:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>If an empty list is specified, information for the trail in the current Region is
    #            returned.</p>
    #            <ul>
    #               <li>
    #                  <p>If an empty list is specified and <code>IncludeShadowTrails</code> is false, then
    #                  information for all trails in the current Region is returned.</p>
    #               </li>
    #               <li>
    #                  <p>If an empty list is specified and IncludeShadowTrails is null or true, then
    #                  information for all trails in the current Region and any associated shadow trails in
    #                  other Regions is returned.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If one or more trail names are specified, information is returned only if the names
    #               match the names of trails belonging only to the current Region and current account. To
    #               return information about a trail in another Region, you must specify its trail
    #               ARN.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute include_shadow_trails
    #   <p>Specifies whether to include shadow trails in the response. A shadow trail is the
    #            replication in a Region of a trail that was created in a different Region, or in the case
    #            of an organization trail, the replication of an organization trail in member accounts. If
    #            you do not include shadow trails, organization trails in a member account and Region
    #            replication trails will not be returned. The default is true.</p>
    #   @return [Boolean]
    class DescribeTrailsRequest < Struct.new(
      :trail_name_list,
      :include_shadow_trails,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an
    #          error.</p>
    # @!attribute trail_list
    #   <p>The list of trail objects. Trail objects with string values are only returned if values
    #            for the objects exist in a trail's configuration. For example, <code>SNSTopicName</code>
    #            and <code>SNSTopicARN</code> are only returned in results if a trail is configured to send
    #            SNS notifications. Similarly, <code>KMSKeyId</code> only appears in results if a trail's
    #            log files are encrypted with KMS
    #            customer managed keys.</p>
    #   @return [Array<Types::Trail>]
    class DescribeTrailsResponse < Struct.new(
      :trail_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the destination receiving events.</p>
    # @!attribute type
    #   <p>The type of destination for events arriving from a channel. For channels used for a CloudTrail Lake integration, the value is <code>EVENT_DATA_STORE</code>. For service-linked channels, 
    #            the value is <code>AWS_SERVICE</code>. </p>
    #   @return [String]
    # @!attribute location
    #   <p> For channels used for a CloudTrail Lake integration, the location is the ARN of an event data store that receives events from a channel. 
    #            For service-linked channels, the location is the name of the Amazon Web Services service.</p>
    #   @return [String]
    class Destination < Struct.new(
      :type,
      :location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DestinationType
      EVENT_DATA_STORE = 'EVENT_DATA_STORE'
      AWS_SERVICE = 'AWS_SERVICE'
    end

    # @!attribute event_data_store
    #   <p>
    #            The ARN (or ID suffix of the ARN) of the event data store for which you want to disable Lake query federation.
    #         </p>
    #   @return [String]
    class DisableFederationRequest < Struct.new(
      :event_data_store,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>
    #            The ARN of the event data store for which you disabled Lake query federation.
    #         </p>
    #   @return [String]
    # @!attribute federation_status
    #   <p>
    #            The federation status.
    #         </p>
    #   @return [String]
    class DisableFederationResponse < Struct.new(
      :event_data_store_arn,
      :federation_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store for which you want to enable Lake query federation.</p>
    #   @return [String]
    # @!attribute federation_role_arn
    #   <p>
    #            The ARN of the federation role to use for the event data store. Amazon Web Services services like Lake Formation use this federation role to access data for the federated event 
    #            data store. The federation role must exist in your account and provide the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html#query-federation-permissions-role">required minimum permissions</a>.
    #         </p>
    #   @return [String]
    class EnableFederationRequest < Struct.new(
      :event_data_store,
      :federation_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>
    #            The ARN of the event data store for which you enabled Lake query federation.
    #         </p>
    #   @return [String]
    # @!attribute federation_status
    #   <p>
    #            The federation status.
    #         </p>
    #   @return [String]
    # @!attribute federation_role_arn
    #   <p>
    #            The ARN of the federation role.
    #         </p>
    #   @return [String]
    class EnableFederationResponse < Struct.new(
      :event_data_store_arn,
      :federation_status,
      :federation_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an event that was returned by a lookup request. The result
    #          includes a representation of a CloudTrail event.</p>
    # @!attribute event_id
    #   <p>The CloudTrail ID of the event returned.</p>
    #   @return [String]
    # @!attribute event_name
    #   <p>The name of the event returned.</p>
    #   @return [String]
    # @!attribute read_only
    #   <p>Information about whether the event is a write event or a read event. </p>
    #   @return [String]
    # @!attribute access_key_id
    #   <p>The Amazon Web Services access key ID that was used to sign the request. If the request
    #            was made with temporary security credentials, this is the access key ID of the temporary
    #            credentials.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>The date and time of the event returned.</p>
    #   @return [Time]
    # @!attribute event_source
    #   <p>The Amazon Web Services service to which the request was made.</p>
    #   @return [String]
    # @!attribute username
    #   <p>A user name or role name of the requester that called the API in the event
    #            returned.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>A list of resources referenced by the event returned.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute cloud_trail_event
    #   <p>A JSON string that contains a representation of the event returned.</p>
    #   @return [String]
    class Event < Struct.new(
      :event_id,
      :event_name,
      :read_only,
      :access_key_id,
      :event_time,
      :event_source,
      :username,
      :resources,
      :cloud_trail_event,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EventCategory
      Insight = 'insight'
    end

    # <p>A storage lake of event data against which you can run complex SQL-based queries. An
    #          event data store can include events that you have logged on your account. To select events for an event data
    #          store, use <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-concepts.html#adv-event-selectors">advanced event selectors</a>.</p>
    # @!attribute event_data_store_arn
    #   <p>The ARN of the event data store.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the event data store.</p>
    #   @return [String]
    # @!attribute termination_protection_enabled
    #   <p>Indicates whether the event data store is protected from
    #            termination.</p>
    #   @deprecated
    #     TerminationProtectionEnabled is no longer returned by ListEventDataStores
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of an event data store.</p>
    #   @deprecated
    #     Status is no longer returned by ListEventDataStores
    #   @return [String]
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors that were used to select
    #            events for the data store.</p>
    #   @deprecated
    #     AdvancedEventSelectors is no longer returned by ListEventDataStores
    #   @return [Array<Types::AdvancedEventSelector>]
    # @!attribute multi_region_enabled
    #   <p>Indicates whether the event data store includes events
    #            from all Regions, or only from the Region in which it was created.</p>
    #   @deprecated
    #     MultiRegionEnabled is no longer returned by ListEventDataStores
    #   @return [Boolean]
    # @!attribute organization_enabled
    #   <p>Indicates that an event data store is collecting logged
    #            events for an organization.</p>
    #   @deprecated
    #     OrganizationEnabled is no longer returned by ListEventDataStores
    #   @return [Boolean]
    # @!attribute retention_period
    #   <p>The retention period, in days.</p>
    #   @deprecated
    #     RetentionPeriod is no longer returned by ListEventDataStores
    #   @return [Integer]
    # @!attribute created_timestamp
    #   <p>The timestamp of the event data store's creation.</p>
    #   @deprecated
    #     CreatedTimestamp is no longer returned by ListEventDataStores
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The timestamp showing when an event data store was
    #            updated, if applicable. <code>UpdatedTimestamp</code> is always either the same or newer
    #            than the time shown in <code>CreatedTimestamp</code>.</p>
    #   @deprecated
    #     UpdatedTimestamp is no longer returned by ListEventDataStores
    #   @return [Time]
    class EventDataStore < Struct.new(
      :event_data_store_arn,
      :name,
      :termination_protection_enabled,
      :status,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified event data store ARN is not valid or does not map to an event data store
    #          in your account.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class EventDataStoreARNInvalidException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An event data store with that name already exists.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class EventDataStoreAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #         You cannot delete the event data store because Lake query federation is enabled. To delete the event data store, run the <code>DisableFederation</code> operation to 
    #          disable Lake query federation on the event data store. 
    #       </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class EventDataStoreFederationEnabledException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> This exception is thrown when you try to update or delete an event data store that
    #          currently has an import in progress. </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class EventDataStoreHasOngoingImportException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your account has used the maximum number of event data stores.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class EventDataStoreMaxLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified event data store was not found.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class EventDataStoreNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EventDataStoreStatus
      CREATED = 'CREATED'
      ENABLED = 'ENABLED'
      PENDING_DELETION = 'PENDING_DELETION'
      STARTING_INGESTION = 'STARTING_INGESTION'
      STOPPING_INGESTION = 'STOPPING_INGESTION'
      STOPPED_INGESTION = 'STOPPED_INGESTION'
    end

    # <p>The event data store cannot be deleted because termination protection is enabled for
    #          it.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class EventDataStoreTerminationProtectedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Use event selectors to further specify the management and data event settings for your
    #          trail. By default, trails created without specific event selectors will be configured to
    #          log all read and write management events, and no data events. When an event occurs in your
    #          account, CloudTrail evaluates the event selector for all trails. For each trail, if
    #          the event matches any event selector, the trail processes and logs the event. If the event
    #          doesn't match any event selector, the trail doesn't log the event.</p>
    #          <p>You can configure up to five event selectors for a trail.</p>
    #          <p>You cannot apply both event selectors and advanced event selectors to a trail.</p>
    # @!attribute read_write_type
    #   <p>Specify if you want your trail to log read-only events, write-only events, or all. For
    #            example, the EC2 <code>GetConsoleOutput</code> is a read-only API operation and
    #               <code>RunInstances</code> is a write-only API operation.</p>
    #            <p> By default, the value is <code>All</code>.</p>
    #   @return [String]
    # @!attribute include_management_events
    #   <p>Specify if you want your event selector to include management events for your
    #            trail.</p>
    #            <p> For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html">Management Events</a> in the <i>CloudTrail User
    #            Guide</i>.</p>
    #            <p>By default, the value is <code>true</code>.</p>
    #            <p>The first copy of management events is free. You are charged for additional copies of
    #            management events that you are logging on any subsequent trail in the same Region. For more
    #            information about CloudTrail pricing, see <a href="http://aws.amazon.com/cloudtrail/pricing/">CloudTrail Pricing</a>.</p>
    #   @return [Boolean]
    # @!attribute data_resources
    #   <p>CloudTrail supports data event logging for Amazon S3 objects in standard S3 buckets, Lambda functions, and Amazon DynamoDB tables with basic event selectors.
    #            You can specify up to 250 resources for an individual event selector, but the total number
    #            of data resources cannot exceed 250 across all event selectors in a trail. This limit does
    #            not apply if you configure resource logging for all data events.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html">Data
    #               Events</a> and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html">Limits in CloudTrail</a> in the <i>CloudTrail User
    #            Guide</i>.</p>
    #            <note>
    #               <p>To log data events for all other resource types including objects stored in 
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">directory buckets</a>, you must use <a href="https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html">AdvancedEventSelectors</a>. You must also 
    #               use <code>AdvancedEventSelectors</code> if you want to filter on the <code>eventName</code> field.</p>
    #            </note>
    #   @return [Array<Types::DataResource>]
    # @!attribute exclude_management_event_sources
    #   <p>An optional list of service event sources from which you do not want management events
    #            to be logged on your trail. In this release, the list can be empty (disables the filter),
    #            or it can filter out Key Management Service or Amazon RDS Data API events by
    #            containing <code>kms.amazonaws.com</code> or <code>rdsdata.amazonaws.com</code>. By
    #            default, <code>ExcludeManagementEventSources</code> is empty, and KMS and
    #               Amazon RDS Data API events are logged to your trail. You can exclude management
    #            event sources only in Regions that support the event source.</p>
    #   @return [Array<String>]
    class EventSelector < Struct.new(
      :read_write_type,
      :include_management_events,
      :data_resources,
      :exclude_management_event_sources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FederationStatus
      ENABLING = 'ENABLING'
      ENABLED = 'ENABLED'
      DISABLING = 'DISABLING'
      DISABLED = 'DISABLED'
    end

    # @!attribute event_data_stores
    #   <p>
    #            The ARN (or ID suffix of the ARN) of the event data store
    #            that you want to query. You can only specify one event data store.
    #         </p>
    #   @return [Array<String>]
    # @!attribute prompt
    #   <p>
    #            The prompt that you want to use to generate the query. The prompt must be in English. For example prompts, see 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html#lake-query-generator-examples">Example prompts</a> 
    #            in the <i>CloudTrail </i> user guide.
    #         </p>
    #   @return [String]
    class GenerateQueryRequest < Struct.new(
      :event_data_stores,
      :prompt,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_statement
    #   <p>
    #            The SQL query statement generated from the prompt.
    #         </p>
    #   @return [String]
    # @!attribute query_alias
    #   <p>
    #            An alias that identifies the prompt. When you run the <code>StartQuery</code> operation, you can pass in either the <code>QueryAlias</code> or 
    #            <code>QueryStatement</code> parameter.
    #         </p>
    #   @return [String]
    # @!attribute event_data_store_owner_account_id
    #   <p>
    #      The account ID of the event data store owner.
    #   </p>
    #   @return [String]
    class GenerateQueryResponse < Struct.new(
      :query_statement,
      :query_alias,
      :event_data_store_owner_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          This exception is thrown when a valid query could not be generated for the provided prompt. 
    #       </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class GenerateResponseException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel
    #   <p>The ARN or <code>UUID</code> of a channel.</p>
    #   @return [String]
    class GetChannelRequest < Struct.new(
      :channel,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of an channel returned by a <code>GetChannel</code> request.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the CloudTrail channel. For service-linked channels, the name is
    #               <code>aws-service-channel/service-name/custom-suffix</code> where
    #               <code>service-name</code> represents the name of the Amazon Web Services service that
    #            created the channel and <code>custom-suffix</code> represents the suffix generated by the
    #               Amazon Web Services service. </p>
    #   @return [String]
    # @!attribute source
    #   <p>The source for the CloudTrail channel.</p>
    #   @return [String]
    # @!attribute source_config
    #   <p> Provides information about the advanced event selectors configured for the channel, and
    #            whether the channel applies to all Regions or a single Region. </p>
    #   @return [Types::SourceConfig]
    # @!attribute destinations
    #   <p>The destinations for the channel. For channels created for integrations, 
    #            the destinations are the event data stores that log events arriving through the channel. 
    #            For service-linked channels, the destination is the Amazon Web Services service that created the service-linked channel to receive events.</p>
    #   @return [Array<Types::Destination>]
    # @!attribute ingestion_status
    #   <p>A table showing information about the most recent successful and failed attempts 
    #         to ingest events.</p>
    #   @return [Types::IngestionStatus]
    class GetChannelResponse < Struct.new(
      :channel_arn,
      :name,
      :source,
      :source_config,
      :destinations,
      :ingestion_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dashboard_id
    #   <p>
    #   The name or ARN for the dashboard.
    #   </p>
    #   @return [String]
    class GetDashboardRequest < Struct.new(
      :dashboard_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dashboard_arn
    #   <p>
    #      The ARN for the dashboard.
    #   </p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #   The type of dashboard.
    #   </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #   The status of the dashboard.
    #   </p>
    #   @return [String]
    # @!attribute widgets
    #   <p>
    #   An array of widgets for the dashboard.
    #   </p>
    #   @return [Array<Types::Widget>]
    # @!attribute refresh_schedule
    #   <p>
    #   The refresh schedule for the dashboard, if configured.
    #   </p>
    #   @return [Types::RefreshSchedule]
    # @!attribute created_timestamp
    #   <p>
    #      The timestamp that shows when the dashboard was created.
    #   </p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>
    #      The timestamp that shows when the dashboard was last updated.
    #   </p>
    #   @return [Time]
    # @!attribute last_refresh_id
    #   <p>
    #   The ID of the last dashboard refresh.
    #   </p>
    #   @return [String]
    # @!attribute last_refresh_failure_reason
    #   <p>
    #   Provides information about failures for the last scheduled refresh.
    #   </p>
    #   @return [String]
    # @!attribute termination_protection_enabled
    #   <p>
    #   Indicates whether termination protection is enabled for the dashboard.
    #   </p>
    #   @return [Boolean]
    class GetDashboardResponse < Struct.new(
      :dashboard_arn,
      :type,
      :status,
      :widgets,
      :refresh_schedule,
      :created_timestamp,
      :updated_timestamp,
      :last_refresh_id,
      :last_refresh_failure_reason,
      :termination_protection_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The Amazon Resource Name (ARN) or ID suffix of the ARN of the event data store for which you want to retrieve event configuration settings.</p>
    #   @return [String]
    class GetEventConfigurationRequest < Struct.new(
      :event_data_store,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>The Amazon Resource Name (ARN) or ID suffix of the ARN of the event data store for which the event configuration settings are returned.</p>
    #   @return [String]
    # @!attribute max_event_size
    #   <p>The maximum allowed size for events stored in the specified event data store.</p>
    #   @return [String]
    # @!attribute context_key_selectors
    #   <p>The list of context key selectors that are configured for the event data store.</p>
    #   @return [Array<Types::ContextKeySelector>]
    class GetEventConfigurationResponse < Struct.new(
      :event_data_store_arn,
      :max_event_size,
      :context_key_selectors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store about which you want
    #            information.</p>
    #   @return [String]
    class GetEventDataStoreRequest < Struct.new(
      :event_data_store,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>The event data store Amazon Resource Number (ARN).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the event data store.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of an event data store.</p>
    #   @return [String]
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors used to select events for the data store.</p>
    #   @return [Array<Types::AdvancedEventSelector>]
    # @!attribute multi_region_enabled
    #   <p>Indicates whether the event data store includes events from all Regions, or only from
    #            the Region in which it was created.</p>
    #   @return [Boolean]
    # @!attribute organization_enabled
    #   <p>Indicates whether an event data store is collecting logged events for an organization in
    #               Organizations.</p>
    #   @return [Boolean]
    # @!attribute retention_period
    #   <p>The retention period of the event data store, in days.</p>
    #   @return [Integer]
    # @!attribute termination_protection_enabled
    #   <p>Indicates that termination protection is enabled.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The timestamp of the event data store's creation.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>Shows the time that an event data store was updated, if applicable.
    #               <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in
    #               <code>CreatedTimestamp</code>.</p>
    #   @return [Time]
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID that encrypts the events delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the
    #            following format.</p>
    #            <p>
    #               <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #   @return [String]
    # @!attribute billing_mode
    #   <p>The billing mode for the event data store.</p>
    #   @return [String]
    # @!attribute federation_status
    #   <p>
    #            Indicates the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html">Lake query federation</a> status. The status is 
    #            <code>ENABLED</code> if Lake query federation is enabled, or <code>DISABLED</code> if Lake query federation is disabled. You cannot delete an event data store if the <code>FederationStatus</code> is <code>ENABLED</code>.
    #         </p>
    #   @return [String]
    # @!attribute federation_role_arn
    #   <p>
    #            If Lake query federation is enabled, provides the ARN of the federation role used to access the resources for the federated event data store.
    #         </p>
    #   @return [String]
    # @!attribute partition_keys
    #   <p>The partition keys for the event data store. To improve query performance and efficiency, CloudTrail Lake organizes 
    #            event data into partitions based on values derived from partition keys.</p>
    #   @return [Array<Types::PartitionKey>]
    class GetEventDataStoreResponse < Struct.new(
      :event_data_store_arn,
      :name,
      :status,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :created_timestamp,
      :updated_timestamp,
      :kms_key_id,
      :billing_mode,
      :federation_status,
      :federation_role_arn,
      :partition_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string
    #            must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                  (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like
    #                     <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the format:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #   @return [String]
    class GetEventSelectorsRequest < Struct.new(
      :trail_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute trail_arn
    #   <p>The specified trail ARN that has the event selectors.</p>
    #   @return [String]
    # @!attribute event_selectors
    #   <p>The event selectors that are configured for the trail.</p>
    #   @return [Array<Types::EventSelector>]
    # @!attribute advanced_event_selectors
    #   <p> The advanced event selectors that are configured for the trail. </p>
    #   @return [Array<Types::AdvancedEventSelector>]
    class GetEventSelectorsResponse < Struct.new(
      :trail_arn,
      :event_selectors,
      :advanced_event_selectors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p> The ID for the import. </p>
    #   @return [String]
    class GetImportRequest < Struct.new(
      :import_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p> The ID of the import. </p>
    #   @return [String]
    # @!attribute destinations
    #   <p> The ARN of the destination event data store. </p>
    #   @return [Array<String>]
    # @!attribute import_source
    #   <p> The source S3 bucket. </p>
    #   @return [Types::ImportSource]
    # @!attribute start_event_time
    #   <p> Used with <code>EndEventTime</code> to bound a <code>StartImport</code> request, and
    #            limit imported trail events to only those events logged within a specified time period.
    #         </p>
    #   @return [Time]
    # @!attribute end_event_time
    #   <p> Used with <code>StartEventTime</code> to bound a <code>StartImport</code> request, and
    #            limit imported trail events to only those events logged within a specified time period.
    #         </p>
    #   @return [Time]
    # @!attribute import_status
    #   <p> The status of the import. </p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p> The timestamp of the import's creation. </p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p> The timestamp of when the import was updated. </p>
    #   @return [Time]
    # @!attribute import_statistics
    #   <p> Provides statistics for the import. CloudTrail does not update import statistics
    #            in real-time. Returned values for parameters such as <code>EventsCompleted</code> may be
    #            lower than the actual value, because CloudTrail updates statistics incrementally
    #            over the course of the import. </p>
    #   @return [Types::ImportStatistics]
    class GetImportResponse < Struct.new(
      :import_id,
      :destinations,
      :import_source,
      :start_event_time,
      :end_event_time,
      :import_status,
      :created_timestamp,
      :updated_timestamp,
      :import_statistics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string
    #            must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                  (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like
    #                     <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the format:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>You cannot use this parameter with the <code>EventDataStore</code> parameter.</p>
    #   @return [String]
    # @!attribute event_data_store
    #   <p>
    #            Specifies the ARN (or ID suffix of the ARN) of the event data store for which you want to get Insights
    #            selectors.
    #         </p>
    #            <p>You cannot use this parameter with the <code>TrailName</code> parameter.</p>
    #   @return [String]
    class GetInsightSelectorsRequest < Struct.new(
      :trail_name,
      :event_data_store,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute trail_arn
    #   <p>The Amazon Resource Name (ARN) of a trail for which you want to get Insights
    #            selectors.</p>
    #   @return [String]
    # @!attribute insight_selectors
    #   <p>A JSON string that contains the Insight types you want to log on a trail or event data store. <code>ApiErrorRateInsight</code> and <code>ApiCallRateInsight</code> are supported
    #            as Insights types.</p>
    #   @return [Array<Types::InsightSelector>]
    # @!attribute event_data_store_arn
    #   <p>
    #            The ARN of the source event data store that enabled Insights events.
    #         </p>
    #   @return [String]
    # @!attribute insights_destination
    #   <p>
    #            The ARN of the destination event data store that logs Insights events.
    #         </p>
    #   @return [String]
    class GetInsightSelectorsResponse < Struct.new(
      :trail_arn,
      :insight_selectors,
      :event_data_store_arn,
      :insights_destination,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store against which the query was
    #            run.</p>
    #   @deprecated
    #     EventDataStore is no longer required by GetQueryResultsRequest
    #   @return [String]
    # @!attribute query_id
    #   <p>The ID of the query for which you want to get results.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token you can use to get the next page of query results.</p>
    #   @return [String]
    # @!attribute max_query_results
    #   <p>The maximum number of query results to display on a single page.</p>
    #   @return [Integer]
    # @!attribute event_data_store_owner_account_id
    #   <p>
    #   The account ID of the event data store owner.
    #   </p>
    #   @return [String]
    class GetQueryResultsRequest < Struct.new(
      :event_data_store,
      :query_id,
      :next_token,
      :max_query_results,
      :event_data_store_owner_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_status
    #   <p>The status of the query. Values include <code>QUEUED</code>, <code>RUNNING</code>,
    #               <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or
    #               <code>CANCELLED</code>.</p>
    #   @return [String]
    # @!attribute query_statistics
    #   <p>Shows the count of query results.</p>
    #   @return [Types::QueryStatistics]
    # @!attribute query_result_rows
    #   <p>Contains the individual event results of the query.</p>
    #   @return [Array<Array<Hash<String, String>>>]
    # @!attribute next_token
    #   <p>A token you can use to get the next page of query results.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message returned if a query failed.</p>
    #   @return [String]
    class GetQueryResultsResponse < Struct.new(
      :query_status,
      :query_statistics,
      :query_result_rows,
      :next_token,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel attached to the resource-based policy.</p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel attached to resource-based policy. 
    #         </p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    #   @return [String]
    # @!attribute resource_policy
    #   <p>
    #            A JSON-formatted string that contains the resource-based policy attached to the CloudTrail event data store, dashboard, or channel.
    #         </p>
    #   @return [String]
    # @!attribute delegated_admin_resource_policy
    #   <p>
    #            The default resource-based policy that is automatically generated for the delegated administrator of an Organizations organization. 
    #            This policy will be evaluated in tandem with any policy you submit for the resource. For more information about this policy, 
    #            see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-organizations.html#cloudtrail-lake-organizations-eds-rbp">Default resource policy for delegated administrators</a>.
    #         </p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      :resource_arn,
      :resource_policy,
      :delegated_admin_resource_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name or the Amazon Resource Name (ARN) of the trail for which you want to retrieve
    #            settings information.</p>
    #   @return [String]
    class GetTrailRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute trail
    #   <p>The settings for a trail.</p>
    #   @return [Types::Trail]
    class GetTrailResponse < Struct.new(
      :trail,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The name of a trail about which you want the current status.</p>
    # @!attribute name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which you are
    #            requesting status. To get the status of a shadow trail (a replication of the trail in
    #            another Region), you must specify its ARN.</p>
    #            <p>
    #            The following is the format of a trail
    #            ARN: <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <note>
    #               <p>If the trail is an organization trail and you are a member account in the organization in Organizations, you must provide the full ARN of that trail, and not just the name.</p>
    #            </note>
    #   @return [String]
    class GetTrailStatusRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an
    #          error.</p>
    # @!attribute is_logging
    #   <p>Whether the CloudTrail trail is currently logging Amazon Web Services API
    #            calls.</p>
    #   @return [Boolean]
    # @!attribute latest_delivery_error
    #   <p>Displays any Amazon S3 error that CloudTrail encountered when attempting
    #            to deliver log files to the designated bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error
    #               Responses</a> in the Amazon S3 API Reference. </p>
    #            <note>
    #               <p>This error occurs only when there is a problem with the destination S3 bucket, and
    #               does not occur for requests that time out. To resolve the issue, 
    #               fix the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create-s3-bucket-policy-for-cloudtrail.html">bucket policy</a> so that CloudTrail 
    #               can write to the bucket; or create a new bucket and call <code>UpdateTrail</code> to specify the new bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute latest_notification_error
    #   <p>Displays any Amazon SNS error that CloudTrail encountered when attempting
    #            to send a notification. For more information about Amazon SNS errors, see the
    #               <a href="https://docs.aws.amazon.com/sns/latest/dg/welcome.html">Amazon SNS
    #               Developer Guide</a>. </p>
    #   @return [String]
    # @!attribute latest_delivery_time
    #   <p>Specifies the date and time that CloudTrail last delivered log files to an
    #            account's Amazon S3 bucket.</p>
    #   @return [Time]
    # @!attribute latest_notification_time
    #   <p>Specifies the date and time of the most recent Amazon SNS notification that
    #               CloudTrail has written a new log file to an account's Amazon S3
    #            bucket.</p>
    #   @return [Time]
    # @!attribute start_logging_time
    #   <p>Specifies the most recent date and time when CloudTrail started recording API
    #            calls for an Amazon Web Services account.</p>
    #   @return [Time]
    # @!attribute stop_logging_time
    #   <p>Specifies the most recent date and time when CloudTrail stopped recording API
    #            calls for an Amazon Web Services account.</p>
    #   @return [Time]
    # @!attribute latest_cloud_watch_logs_delivery_error
    #   <p>Displays any CloudWatch Logs error that CloudTrail encountered when attempting
    #            to deliver logs to CloudWatch Logs.</p>
    #   @return [String]
    # @!attribute latest_cloud_watch_logs_delivery_time
    #   <p>Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.</p>
    #   @return [Time]
    # @!attribute latest_digest_delivery_time
    #   <p>Specifies the date and time that CloudTrail last delivered a digest file to an
    #            account's Amazon S3 bucket.</p>
    #   @return [Time]
    # @!attribute latest_digest_delivery_error
    #   <p>Displays any Amazon S3 error that CloudTrail encountered when attempting
    #            to deliver a digest file to the designated bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error
    #               Responses</a> in the Amazon S3 API Reference. </p>
    #            <note>
    #               <p>This error occurs only when there is a problem with the destination S3 bucket, and
    #               does not occur for requests that time out. To resolve the issue, 
    #               fix the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create-s3-bucket-policy-for-cloudtrail.html">bucket policy</a> so that CloudTrail 
    #               can write to the bucket; or create a new bucket and call <code>UpdateTrail</code> to specify the new bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute latest_delivery_attempt_time
    #   <p>This field is no longer in use.</p>
    #   @return [String]
    # @!attribute latest_notification_attempt_time
    #   <p>This field is no longer in use.</p>
    #   @return [String]
    # @!attribute latest_notification_attempt_succeeded
    #   <p>This field is no longer in use.</p>
    #   @return [String]
    # @!attribute latest_delivery_attempt_succeeded
    #   <p>This field is no longer in use.</p>
    #   @return [String]
    # @!attribute time_logging_started
    #   <p>This field is no longer in use.</p>
    #   @return [String]
    # @!attribute time_logging_stopped
    #   <p>This field is no longer in use.</p>
    #   @return [String]
    class GetTrailStatusResponse < Struct.new(
      :is_logging,
      :latest_delivery_error,
      :latest_notification_error,
      :latest_delivery_time,
      :latest_notification_time,
      :start_logging_time,
      :stop_logging_time,
      :latest_cloud_watch_logs_delivery_error,
      :latest_cloud_watch_logs_delivery_time,
      :latest_digest_delivery_time,
      :latest_digest_delivery_error,
      :latest_delivery_attempt_time,
      :latest_notification_attempt_time,
      :latest_notification_attempt_succeeded,
      :latest_delivery_attempt_succeeded,
      :time_logging_started,
      :time_logging_stopped,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Provides information about an import failure. </p>
    # @!attribute location
    #   <p> The location of the failure in the S3 bucket. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the import. </p>
    #   @return [String]
    # @!attribute error_type
    #   <p> The type of import error. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> Provides the reason the import failed. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p> When the import was last updated. </p>
    #   @return [Time]
    class ImportFailureListItem < Struct.new(
      :location,
      :status,
      :error_type,
      :error_message,
      :last_updated_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ImportFailureStatus
      FAILED = 'FAILED'
      RETRY = 'RETRY'
      SUCCEEDED = 'SUCCEEDED'
    end

    # <p> The specified import was not found. </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ImportNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The import source. </p>
    # @!attribute s3
    #   <p> The source S3 bucket. </p>
    #   @return [Types::S3ImportSource]
    class ImportSource < Struct.new(
      :s3,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Provides statistics for the specified <code>ImportID</code>. CloudTrail does not
    #          update import statistics in real-time. Returned values for parameters such as
    #             <code>EventsCompleted</code> may be lower than the actual value, because CloudTrail updates statistics incrementally over the course of the import. </p>
    # @!attribute prefixes_found
    #   <p> The number of S3 prefixes found for the import. </p>
    #   @return [Integer]
    # @!attribute prefixes_completed
    #   <p> The number of S3 prefixes that completed import. </p>
    #   @return [Integer]
    # @!attribute files_completed
    #   <p>The number of log files that completed import.</p>
    #   @return [Integer]
    # @!attribute events_completed
    #   <p> The number of trail events imported into the event data store. </p>
    #   @return [Integer]
    # @!attribute failed_entries
    #   <p> The number of failed entries. </p>
    #   @return [Integer]
    class ImportStatistics < Struct.new(
      :prefixes_found,
      :prefixes_completed,
      :files_completed,
      :events_completed,
      :failed_entries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ImportStatus
      INITIALIZING = 'INITIALIZING'
      IN_PROGRESS = 'IN_PROGRESS'
      FAILED = 'FAILED'
      STOPPED = 'STOPPED'
      COMPLETED = 'COMPLETED'
    end

    # <p> Contains information about an import that was returned by a lookup request. </p>
    # @!attribute import_id
    #   <p> The ID of the import. </p>
    #   @return [String]
    # @!attribute import_status
    #   <p> The status of the import. </p>
    #   @return [String]
    # @!attribute destinations
    #   <p> The ARN of the destination event data store. </p>
    #   @return [Array<String>]
    # @!attribute created_timestamp
    #   <p> The timestamp of the import's creation. </p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p> The timestamp of the import's last update. </p>
    #   @return [Time]
    class ImportsListItem < Struct.new(
      :import_id,
      :import_status,
      :destinations,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The event data store is inactive.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InactiveEventDataStoreException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified query cannot be canceled because it is in the <code>FINISHED</code>,
    #             <code>FAILED</code>, <code>TIMED_OUT</code>, or <code>CANCELLED</code> state.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InactiveQueryException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A table showing information about the most recent successful and failed attempts 
    #          to ingest events.</p>
    # @!attribute latest_ingestion_success_time
    #   <p>The time stamp of the most recent successful ingestion of events for the channel.</p>
    #   @return [Time]
    # @!attribute latest_ingestion_success_event_id
    #   <p>The event ID of the most recent successful ingestion of events.</p>
    #   @return [String]
    # @!attribute latest_ingestion_error_code
    #   <p>The error code for the most recent failure to ingest events.</p>
    #   @return [String]
    # @!attribute latest_ingestion_attempt_time
    #   <p>The time stamp of the most recent attempt to ingest events on the channel.</p>
    #   @return [Time]
    # @!attribute latest_ingestion_attempt_event_id
    #   <p>The event ID of the most recent attempt to ingest events.</p>
    #   @return [String]
    class IngestionStatus < Struct.new(
      :latest_ingestion_success_time,
      :latest_ingestion_success_event_id,
      :latest_ingestion_error_code,
      :latest_ingestion_attempt_time,
      :latest_ingestion_attempt_event_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>If you run <code>GetInsightSelectors</code> on a trail or event data store that does not have Insights
    #          events enabled, the operation throws the exception
    #          <code>InsightNotEnabledException</code>.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InsightNotEnabledException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A JSON string that contains a list of Insights types that are logged on a trail or event data store.</p>
    # @!attribute insight_type
    #   <p>The type of Insights events to log on a trail or event data store. <code>ApiCallRateInsight</code> and
    #               <code>ApiErrorRateInsight</code> are valid Insight types.</p>
    #            <p>The <code>ApiCallRateInsight</code> Insights type analyzes write-only
    #            management API calls that are aggregated per minute against a baseline API call volume.</p>
    #            <p>The <code>ApiErrorRateInsight</code> Insights type analyzes management
    #            API calls that result in error codes. The error is shown if the API call is
    #            unsuccessful.</p>
    #   @return [String]
    class InsightSelector < Struct.new(
      :insight_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InsightType
      ApiCallRateInsight = 'ApiCallRateInsight'
      ApiErrorRateInsight = 'ApiErrorRateInsight'
    end

    module InsightsMetricDataType
      FILL_WITH_ZEROS = 'FillWithZeros'
      NON_ZERO_DATA = 'NonZeroData'
    end

    # <p>This exception is thrown when the IAM identity that is used to create
    #          the organization resource lacks one or more required permissions for creating an
    #          organization resource in a required service.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InsufficientDependencyServiceAccessPermissionException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>For the <code>CreateTrail</code>
    #             <code>PutInsightSelectors</code>, <code>UpdateTrail</code>, <code>StartQuery</code>, and <code>StartImport</code> operations, this exception is thrown 
    #          when the policy on the S3 bucket or KMS key does
    #          not have sufficient permissions for the operation.</p>
    #          <p>For all other operations, this exception is thrown when the policy for the KMS key does
    #          not have sufficient permissions for the operation.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InsufficientEncryptionPolicyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The task can't be completed because you are signed in with an account that lacks permissions to view or create a service-linked role. Sign in with an account that has the required permissions and then try again.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InsufficientIAMAccessPermissionException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the policy on the S3 bucket is not sufficient.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InsufficientS3BucketPolicyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the policy on the Amazon SNS topic is not
    #          sufficient.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InsufficientSnsTopicPolicyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the provided CloudWatch Logs log group is not
    #          valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidCloudWatchLogsLogGroupArnException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the provided role is not valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidCloudWatchLogsRoleArnException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A date range for the query was specified that is not valid. Be sure that the start time
    #          is chronologically before the end time. For more information about writing a query, see
    #             <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-create-edit-query.html">Create or edit a query</a> in the <i>CloudTrail User Guide</i>.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidDateRangeException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Occurs if an event category that is not valid is specified as a value of
    #             <code>EventCategory</code>.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidEventCategoryException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when event categories of specified event data stores are not
    #          valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidEventDataStoreCategoryException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The event data store is not in a status that supports the operation.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidEventDataStoreStatusException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the <code>PutEventSelectors</code> operation is called
    #          with a number of event selectors, advanced event selectors, or data resources that is not
    #          valid. The combination of event selectors or advanced event selectors and data resources is
    #          not valid. A trail can have up to 5 event selectors. If a trail uses advanced event
    #          selectors, a maximum of 500 total values for all conditions in all advanced event selectors
    #          is allowed. A trail is limited to 250 data resources. These data resources can be
    #          distributed across event selectors, but the overall total cannot exceed 250.</p>
    #          <p>You can:</p>
    #          <ul>
    #             <li>
    #                <p>Specify a valid number of event selectors (1 to 5) for a trail.</p>
    #             </li>
    #             <li>
    #                <p>Specify a valid number of data resources (1 to 250) for an event selector. The
    #                limit of number of resources on an individual event selector is configurable up to
    #                250. However, this upper limit is allowed only if the total number of data resources
    #                does not exceed 250 across all event selectors for a trail.</p>
    #             </li>
    #             <li>
    #                <p>Specify up to 500 values for all conditions in all advanced event selectors for a
    #                trail.</p>
    #             </li>
    #             <li>
    #                <p>Specify a valid value for a parameter. For example, specifying the
    #                   <code>ReadWriteType</code> parameter with a value of <code>read-only</code> is not
    #                valid.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidEventSelectorsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when an operation is called on a trail from a Region other than
    #          the Region in which the trail was created.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidHomeRegionException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> This exception is thrown when the provided source S3 bucket is not valid for import.
    #       </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidImportSourceException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>For <code>PutInsightSelectors</code>, this exception is thrown when the formatting or syntax of the <code>InsightSelectors</code> JSON statement is not
    #          valid, or the specified <code>InsightType</code> in the <code>InsightSelectors</code> statement is not
    #          valid. Valid values for <code>InsightType</code> are <code>ApiCallRateInsight</code> and <code>ApiErrorRateInsight</code>. To enable Insights on an event data store, the destination event data store specified by the 
    #          <code>InsightsDestination</code> parameter must log Insights events and the source event data 
    #          store specified by the <code>EventDataStore</code> parameter must log management events.</p>
    #          <p>For <code>UpdateEventDataStore</code>, this exception is thrown if Insights are enabled on the event data store and the updated 
    #          advanced event selectors are not compatible with the configured <code>InsightSelectors</code>. 
    #          If the <code>InsightSelectors</code> includes an <code>InsightType</code> of <code>ApiCallRateInsight</code>, the source event data store must log <code>write</code> management events. 
    #          If the <code>InsightSelectors</code> includes an <code>InsightType</code> of <code>ApiErrorRateInsight</code>, the source event data store must log management events.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidInsightSelectorsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the KMS key ARN is not valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidKmsKeyIdException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Occurs when a lookup attribute is specified that is not valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidLookupAttributesException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown if the limit specified is not valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidMaxResultsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A token that is not valid, or a token that was previously used in a request with
    #          different parameters. This exception is thrown if the token is not valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the combination of parameters provided is not
    #          valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidParameterCombinationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request includes a parameter that is not valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The query that was submitted has validation errors, or uses incorrect syntax or
    #          unsupported keywords. For more information about writing a query, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-create-edit-query.html">Create or edit a query</a> in the <i>CloudTrail User
    #             Guide</i>.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidQueryStatementException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The query status is not valid for the operation.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidQueryStatusException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the provided S3 bucket name is not valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidS3BucketNameException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the provided S3 prefix is not valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidS3PrefixException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the provided SNS topic name is not valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidSnsTopicNameException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified value of <code>Source</code> is not valid.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidSourceException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified tag key or values are not valid. It can also
    #          occur if there are duplicate tags or too many tags on the resource.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidTagParameterException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Occurs if the timestamp values are not valid. Either the start time occurs after the end
    #          time, or the time range is outside the range of possible values.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidTimeRangeException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Reserved for future use.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidTokenException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the provided trail name is not valid. Trail names must
    #          meet the following requirements:</p>
    #          <ul>
    #             <li>
    #                <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                (_), or dashes (-)</p>
    #             </li>
    #             <li>
    #                <p>Start with a letter or number, and end with a letter or number</p>
    #             </li>
    #             <li>
    #                <p>Be between 3 and 128 characters</p>
    #             </li>
    #             <li>
    #                <p>Have no adjacent periods, underscores or dashes. Names like
    #                   <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #             </li>
    #             <li>
    #                <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class InvalidTrailNameException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when there is an issue with the specified KMS
    #          key and the trail or event data store can't be updated.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class KmsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is no longer in use.</p>
    # @deprecated
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class KmsKeyDisabledException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the KMS key does not exist, when the S3
    #          bucket and the KMS key are not in the same Region, or when the KMS key associated with the Amazon SNS topic either does not exist or is
    #          not in the same Region.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class KmsKeyNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of CloudTrail channels to display on a single page. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. This token
    #            must be passed in with the same parameters that were specified in the original call. For
    #            example, if the original call specified an AttributeKey of 'Username' with a value of
    #            'root', the call with NextToken should include those same parameters.</p>
    #   @return [String]
    class ListChannelsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channels
    #   <p> The list of channels in the account. </p>
    #   @return [Array<Types::Channel>]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call.</p>
    #   @return [String]
    class ListChannelsResponse < Struct.new(
      :channels,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name_prefix
    #   <p>
    #   Specify a name prefix to filter on.
    #   </p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #   Specify a dashboard type to filter on: <code>CUSTOM</code> or <code>MANAGED</code>.
    #   </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #      A token you can use to get the next page of dashboard results.
    #   </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #      The maximum number of dashboards to display on a single page.
    #   </p>
    #   @return [Integer]
    class ListDashboardsRequest < Struct.new(
      :name_prefix,
      :type,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dashboards
    #   <p>
    #      Contains information about dashboards in the account, in the current Region that match the applied filters.
    #   </p>
    #   @return [Array<Types::DashboardDetail>]
    # @!attribute next_token
    #   <p>
    #      A token you can use to get the next page of dashboard results.
    #   </p>
    #   @return [String]
    class ListDashboardsResponse < Struct.new(
      :dashboards,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token you can use to get the next page of event data store results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of event data stores to display on a single page.</p>
    #   @return [Integer]
    class ListEventDataStoresRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_stores
    #   <p>Contains information about event data stores in the account, in the current
    #            Region.</p>
    #   @return [Array<Types::EventDataStore>]
    # @!attribute next_token
    #   <p>A token you can use to get the next page of results.</p>
    #   @return [String]
    class ListEventDataStoresResponse < Struct.new(
      :event_data_stores,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p> The ID of the import. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of failures to display on a single page. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> A token you can use to get the next page of import failures. </p>
    #   @return [String]
    class ListImportFailuresRequest < Struct.new(
      :import_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute failures
    #   <p> Contains information about the import failures. </p>
    #   @return [Array<Types::ImportFailureListItem>]
    # @!attribute next_token
    #   <p> A token you can use to get the next page of results. </p>
    #   @return [String]
    class ListImportFailuresResponse < Struct.new(
      :failures,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of imports to display on a single page. </p>
    #   @return [Integer]
    # @!attribute destination
    #   <p> The ARN of the destination event data store. </p>
    #   @return [String]
    # @!attribute import_status
    #   <p> The status of the import. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> A token you can use to get the next page of import results. </p>
    #   @return [String]
    class ListImportsRequest < Struct.new(
      :max_results,
      :destination,
      :import_status,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute imports
    #   <p> The list of returned imports. </p>
    #   @return [Array<Types::ImportsListItem>]
    # @!attribute next_token
    #   <p> A token you can use to get the next page of import results. </p>
    #   @return [String]
    class ListImportsResponse < Struct.new(
      :imports,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_source
    #   <p>The Amazon Web Services service to which the request was made, such as <code>iam.amazonaws.com</code> or <code>s3.amazonaws.com</code>.</p>
    #   @return [String]
    # @!attribute event_name
    #   <p>The name of the event, typically the Amazon Web Services API on which unusual levels of activity were recorded.</p>
    #   @return [String]
    # @!attribute insight_type
    #   <p>The type of CloudTrail Insights event, which is either <code>ApiCallRateInsight</code> or <code>ApiErrorRateInsight</code>. 
    #            The <code>ApiCallRateInsight</code> Insights type analyzes write-only management API calls that are aggregated per minute against a baseline API call volume. 
    #            The <code>ApiErrorRateInsight</code> Insights type analyzes management API calls that result in error codes.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Conditionally required if the <code>InsightType</code> parameter is set to <code>ApiErrorRateInsight</code>.</p>
    #            <p>If returning metrics for the <code>ApiErrorRateInsight</code> Insights type, this is the error to retrieve data for. For example, <code>AccessDenied</code>.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Specifies, in UTC, the start time for time-series data. The value specified is inclusive; results include data points with the specified time stamp.</p>
    #            <p>The default is 90 days before the time of request.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Specifies, in UTC, the end time for time-series data. The value specified is exclusive; 
    #            results include data points up to the specified time stamp.</p>
    #            <p>The default is the time of request.</p>
    #   @return [Time]
    # @!attribute period
    #   <p>Granularity of data to retrieve, in seconds. Valid values are <code>60</code>, <code>300</code>, and <code>3600</code>. 
    #            If you specify any other value, you will get an error. The default is 3600 seconds.</p>
    #   @return [Integer]
    # @!attribute data_type
    #   <p>Type of data points to return. Valid values are <code>NonZeroData</code> and 
    #            <code>FillWithZeros</code>. The default is <code>NonZeroData</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of data points to return. Valid values are integers from 1 to 21600. 
    #            The default value is 21600.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Returned if all datapoints can't be returned in a single call. For example, due to reaching <code>MaxResults</code>.</p>
    #            <p>Add this parameter to the request to continue retrieving results starting from the last evaluated point.</p>
    #   @return [String]
    class ListInsightsMetricDataRequest < Struct.new(
      :event_source,
      :event_name,
      :insight_type,
      :error_code,
      :start_time,
      :end_time,
      :period,
      :data_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_source
    #   <p>The Amazon Web Services service to which the request was made, such as <code>iam.amazonaws.com</code> or <code>s3.amazonaws.com</code>.</p>
    #   @return [String]
    # @!attribute event_name
    #   <p>The name of the event, typically the Amazon Web Services API on which unusual levels of activity were recorded.</p>
    #   @return [String]
    # @!attribute insight_type
    #   <p>The type of CloudTrail Insights event, which is either <code>ApiCallRateInsight</code> or <code>ApiErrorRateInsight</code>. 
    #            The <code>ApiCallRateInsight</code> Insights type analyzes write-only management API calls that are aggregated per minute against a baseline API call volume. 
    #            The <code>ApiErrorRateInsight</code> Insights type analyzes management API calls that result in error codes.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Only returned if <code>InsightType</code> parameter was set to <code>ApiErrorRateInsight</code>.</p>
    #            <p>If returning metrics for the <code>ApiErrorRateInsight</code> Insights type, this is the error to retrieve data for. For example, <code>AccessDenied</code>.</p>
    #   @return [String]
    # @!attribute timestamps
    #   <p>List of timestamps at intervals corresponding to the specified time period.</p>
    #   @return [Array<Time>]
    # @!attribute values
    #   <p>List of values representing the API call rate or error rate at each timestamp. The number of values is equal to the number of timestamps.</p>
    #   @return [Array<Float>]
    # @!attribute next_token
    #   <p>Only returned if the full results could not be returned in a single query. You can set the <code>NextToken</code> parameter 
    #            in the next request to this value to continue retrieval.</p>
    #   @return [String]
    class ListInsightsMetricDataResponse < Struct.new(
      :event_source,
      :event_name,
      :insight_type,
      :error_code,
      :timestamps,
      :values,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Requests the public keys for a specified time range.</p>
    # @!attribute start_time
    #   <p>Optionally specifies, in UTC, the start of the time range to look up public keys for
    #               CloudTrail digest files. If not specified, the current time is used, and the
    #            current public key is returned.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Optionally specifies, in UTC, the end of the time range to look up public keys for
    #               CloudTrail digest files. If not specified, the current time is used.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    class ListPublicKeysRequest < Struct.new(
      :start_time,
      :end_time,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an
    #          error.</p>
    # @!attribute public_key_list
    #   <p>Contains an array of PublicKey objects.</p>
    #            <note>
    #               <p>The returned public keys may have validity time ranges that overlap.</p>
    #            </note>
    #   @return [Array<Types::PublicKey>]
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    class ListPublicKeysResponse < Struct.new(
      :public_key_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which queries were
    #            run.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token you can use to get the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of queries to show on a page.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>Use with <code>EndTime</code> to bound a <code>ListQueries</code> request, and limit its
    #            results to only those queries run within a specified time period.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Use with <code>StartTime</code> to bound a <code>ListQueries</code> request, and limit
    #            its results to only those queries run within a specified time period.</p>
    #   @return [Time]
    # @!attribute query_status
    #   <p>The status of queries that you want to return in results. Valid values for
    #               <code>QueryStatus</code> include <code>QUEUED</code>, <code>RUNNING</code>,
    #               <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or
    #               <code>CANCELLED</code>.</p>
    #   @return [String]
    class ListQueriesRequest < Struct.new(
      :event_data_store,
      :next_token,
      :max_results,
      :start_time,
      :end_time,
      :query_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute queries
    #   <p>Lists matching query results, and shows query ID, status, and creation time of each
    #            query.</p>
    #   @return [Array<Types::Query>]
    # @!attribute next_token
    #   <p>A token you can use to get the next page of results.</p>
    #   @return [String]
    class ListQueriesResponse < Struct.new(
      :queries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies a list of tags to return.</p>
    # @!attribute resource_id_list
    #   <p>Specifies a list of trail, event data store, dashboard, or channel ARNs whose tags will be listed. The list
    #            has a limit of 20 ARNs.</p>
    #            <p> Example trail ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    class ListTagsRequest < Struct.new(
      :resource_id_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an
    #          error.</p>
    # @!attribute resource_tag_list
    #   <p>A list of resource tags.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #   @return [String]
    class ListTagsResponse < Struct.new(
      :resource_tag_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. This token
    #            must be passed in with the same parameters that were specified in the original call. For
    #            example, if the original call specified an AttributeKey of 'Username' with a value of
    #            'root', the call with NextToken should include those same parameters.</p>
    #   @return [String]
    class ListTrailsRequest < Struct.new(
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute trails
    #   <p>Returns the name, ARN, and home Region of trails in the current account.</p>
    #   @return [Array<Types::TrailInfo>]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. If the token
    #            does not appear, there are no more results to return. The token must be passed in with the
    #            same parameters as the previous call. For example, if the original call specified an
    #            AttributeKey of 'Username' with a value of 'root', the call with NextToken should include
    #            those same parameters.</p>
    #   @return [String]
    class ListTrailsResponse < Struct.new(
      :trails,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies an attribute and value that filter the events returned.</p>
    # @!attribute attribute_key
    #   <p>Specifies an attribute on which to filter the events returned.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>Specifies a value for the specified <code>AttributeKey</code>.</p>
    #            <p>The maximum length for the <code>AttributeValue</code> is 2000 characters. The
    #            following characters ('<code>_</code>', '<code> </code>', '<code>,</code>',
    #            '<code>\\n</code>') count as two characters towards the 2000 character limit.</p>
    #   @return [String]
    class LookupAttribute < Struct.new(
      :attribute_key,
      :attribute_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LookupAttributeKey
      EVENT_ID = 'EventId'
      EVENT_NAME = 'EventName'
      READ_ONLY = 'ReadOnly'
      USERNAME = 'Username'
      RESOURCE_TYPE = 'ResourceType'
      RESOURCE_NAME = 'ResourceName'
      EVENT_SOURCE = 'EventSource'
      ACCESS_KEY_ID = 'AccessKeyId'
    end

    # <p>Contains a request for LookupEvents.</p>
    # @!attribute lookup_attributes
    #   <p>Contains a list of lookup attributes. Currently the list can contain only one
    #            item.</p>
    #   @return [Array<Types::LookupAttribute>]
    # @!attribute start_time
    #   <p>Specifies that only events that occur after or at the specified time are returned. If
    #            the specified start time is after the specified end time, an error is returned.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Specifies that only events that occur before or at the specified time are returned. If
    #            the specified end time is before the specified start time, an error is returned.</p>
    #   @return [Time]
    # @!attribute event_category
    #   <p>Specifies the event category. If you do not specify an event category, events of the
    #            category are not returned in the response. For example, if you do not specify
    #               <code>insight</code> as the value of <code>EventCategory</code>, no Insights events are
    #            returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of events to return. Possible values are 1 through 50. The default is
    #            50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. This token
    #            must be passed in with the same parameters that were specified in the original call. For
    #            example, if the original call specified an AttributeKey of 'Username' with a value of
    #            'root', the call with NextToken should include those same parameters.</p>
    #   @return [String]
    class LookupEventsRequest < Struct.new(
      :lookup_attributes,
      :start_time,
      :end_time,
      :event_category,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains a response to a LookupEvents action.</p>
    # @!attribute events
    #   <p>A list of events returned based on the lookup attributes specified and the CloudTrail event. The events list is sorted by time. The most recent event is listed
    #            first.</p>
    #   @return [Array<Types::Event>]
    # @!attribute next_token
    #   <p>The token to use to get the next page of results after a previous API call. If the token
    #            does not appear, there are no more results to return. The token must be passed in with the
    #            same parameters as the previous call. For example, if the original call specified an
    #            AttributeKey of 'Username' with a value of 'root', the call with NextToken should include
    #            those same parameters.</p>
    #   @return [String]
    class LookupEventsResponse < Struct.new(
      :events,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You are already running the maximum number of concurrent queries. The maximum number of concurrent queries is 10. Wait a minute for some
    #          queries to finish, and then run the query again.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class MaxConcurrentQueriesException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MaxEventSize
      Standard = 'Standard'
      Large = 'Large'
    end

    # <p>This exception is thrown when the maximum number of trails is reached.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class MaximumNumberOfTrailsExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> This exception is thrown when the management account does not have a service-linked
    #          role. </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class NoManagementAccountSLRExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> This exception is thrown when the account making the request is not the organization's
    #          management account. </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class NotOrganizationManagementAccountException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the Amazon Web Services account making the request to
    #          create or update an organization trail or event data store is not the management account
    #          for an organization in Organizations. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html">Prepare For Creating a Trail For Your Organization</a> or <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-organizations.html">Organization event data stores</a>.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class NotOrganizationMasterAccountException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the requested operation is not permitted.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class OperationNotPermittedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when Organizations is not configured to support all
    #          features. All features must be enabled in Organizations to support creating an
    #          organization trail or event data store.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class OrganizationNotInAllFeaturesModeException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the request is made from an Amazon Web Services account
    #          that is not a member of an organization. To make this request, sign in using the
    #          credentials of an account that belongs to an organization.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class OrganizationsNotInUseException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a partition key for an event data store.</p>
    # @!attribute name
    #   <p>The name of the partition key.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the partition key. For example, <code>bigint</code> or <code>string</code>.</p>
    #   @return [String]
    class PartitionKey < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a returned public key.</p>
    # @!attribute value
    #   <p>The DER encoded public key value in PKCS#1 format.</p>
    #   @return [String]
    # @!attribute validity_start_time
    #   <p>The starting time of validity of the public key.</p>
    #   @return [Time]
    # @!attribute validity_end_time
    #   <p>The ending time of validity of the public key.</p>
    #   @return [Time]
    # @!attribute fingerprint
    #   <p>The fingerprint of the public key.</p>
    #   @return [String]
    class PublicKey < Struct.new(
      :value,
      :validity_start_time,
      :validity_end_time,
      :fingerprint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The Amazon Resource Name (ARN) or ID suffix of the ARN of the event data store for which you want to update event configuration settings.</p>
    #   @return [String]
    # @!attribute max_event_size
    #   <p>The maximum allowed size for events to be stored in the specified event data store. If you are using context key selectors, MaxEventSize must be set to Large.</p>
    #   @return [String]
    # @!attribute context_key_selectors
    #   <p>A list of context key selectors that will be included to provide enriched event data.</p>
    #   @return [Array<Types::ContextKeySelector>]
    class PutEventConfigurationRequest < Struct.new(
      :event_data_store,
      :max_event_size,
      :context_key_selectors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>The Amazon Resource Name (ARN) or ID suffix of the ARN of the event data store for which the event configuration settings were updated.</p>
    #   @return [String]
    # @!attribute max_event_size
    #   <p>The maximum allowed size for events stored in the specified event data store.</p>
    #   @return [String]
    # @!attribute context_key_selectors
    #   <p>The list of context key selectors that are configured for the event data store.</p>
    #   @return [Array<Types::ContextKeySelector>]
    class PutEventConfigurationResponse < Struct.new(
      :event_data_store_arn,
      :max_event_size,
      :context_key_selectors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string
    #            must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                  (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like
    #                     <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the following format.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #   @return [String]
    # @!attribute event_selectors
    #   <p>Specifies the settings for your event selectors. You can use event selectors to log management events and data events for the following resource types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS::DynamoDB::Table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::Lambda::Function</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS::S3::Object</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You can't use event selectors to log network activity events.</p>
    #            <p>You can configure up to five event
    #            selectors for a trail. You can use either <code>EventSelectors</code> or
    #               <code>AdvancedEventSelectors</code> in a <code>PutEventSelectors</code> request, but not
    #            both. If you apply <code>EventSelectors</code> to a trail, any existing
    #               <code>AdvancedEventSelectors</code> are overwritten.</p>
    #   @return [Array<Types::EventSelector>]
    # @!attribute advanced_event_selectors
    #   <p> Specifies the settings for advanced event selectors. You can use advanced event selectors to 
    #            log management events, data events for all resource types, and network activity events.</p>
    #            <p>You can add advanced event
    #            selectors, and conditions for your advanced event selectors, up to a maximum of 500 values
    #            for all conditions and selectors on a trail. You can use either
    #               <code>AdvancedEventSelectors</code> or <code>EventSelectors</code>, but not both. If you
    #            apply <code>AdvancedEventSelectors</code> to a trail, any existing
    #               <code>EventSelectors</code> are overwritten. For more information about advanced event
    #            selectors, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html">Logging data events</a> and 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html">Logging network activity events</a>
    #            in the <i>CloudTrail User Guide</i>. </p>
    #   @return [Array<Types::AdvancedEventSelector>]
    class PutEventSelectorsRequest < Struct.new(
      :trail_name,
      :event_selectors,
      :advanced_event_selectors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute trail_arn
    #   <p>Specifies the ARN of the trail that was updated with event selectors. The following is
    #            the format of a trail ARN.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #   @return [String]
    # @!attribute event_selectors
    #   <p>Specifies the event selectors configured for your trail.</p>
    #   @return [Array<Types::EventSelector>]
    # @!attribute advanced_event_selectors
    #   <p>Specifies the advanced event selectors configured for your trail.</p>
    #   @return [Array<Types::AdvancedEventSelector>]
    class PutEventSelectorsResponse < Struct.new(
      :trail_arn,
      :event_selectors,
      :advanced_event_selectors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute trail_name
    #   <p>The name of the CloudTrail trail for which you want to change or add Insights
    #            selectors.</p>
    #            <p>You cannot use this parameter with the <code>EventDataStore</code> and <code>InsightsDestination</code> parameters.</p>
    #   @return [String]
    # @!attribute insight_selectors
    #   <p>A JSON string that contains the Insights types you want to log on a trail or event data store.
    #               <code>ApiCallRateInsight</code> and <code>ApiErrorRateInsight</code> are valid Insight
    #            types.</p>
    #            <p>The <code>ApiCallRateInsight</code> Insights type analyzes write-only
    #            management API calls that are aggregated per minute against a baseline API call volume.</p>
    #            <p>The <code>ApiErrorRateInsight</code> Insights type analyzes management
    #            API calls that result in error codes. The error is shown if the API call is
    #            unsuccessful.</p>
    #   @return [Array<Types::InsightSelector>]
    # @!attribute event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the source event data store for which you want to change or add Insights
    #            selectors. To enable Insights on an event data store, you must provide both the 
    #            <code>EventDataStore</code> and <code>InsightsDestination</code> parameters.</p>
    #            <p>You cannot use this parameter with the <code>TrailName</code> parameter.</p>
    #   @return [String]
    # @!attribute insights_destination
    #   <p>
    #            The ARN (or ID suffix of the ARN) of the destination event data store that logs Insights events. To enable Insights on an event data store, you must provide both the 
    #            <code>EventDataStore</code> and <code>InsightsDestination</code> parameters.
    #         </p>
    #            <p>You cannot use this parameter with the <code>TrailName</code> parameter.</p>
    #   @return [String]
    class PutInsightSelectorsRequest < Struct.new(
      :trail_name,
      :insight_selectors,
      :event_data_store,
      :insights_destination,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute trail_arn
    #   <p>The Amazon Resource Name (ARN) of a trail for which you want to change or add Insights
    #            selectors.</p>
    #   @return [String]
    # @!attribute insight_selectors
    #   <p>A JSON string that contains the Insights event types that you want to log on a trail or event data store.
    #            The valid Insights types are <code>ApiErrorRateInsight</code> and
    #               <code>ApiCallRateInsight</code>.</p>
    #   @return [Array<Types::InsightSelector>]
    # @!attribute event_data_store_arn
    #   <p>The Amazon Resource Name (ARN) of the source event data store for which you want to change or add Insights
    #            selectors.</p>
    #   @return [String]
    # @!attribute insights_destination
    #   <p>
    #               The ARN of the destination event data store that logs Insights events.
    #         </p>
    #   @return [String]
    class PutInsightSelectorsResponse < Struct.new(
      :trail_arn,
      :insight_selectors,
      :event_data_store_arn,
      :insights_destination,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel attached to the resource-based policy.</p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    #   @return [String]
    # @!attribute resource_policy
    #   <p>
    #            A JSON-formatted string for an Amazon Web Services resource-based policy.
    #         </p>
    #            <p> For example resource-based policies, see 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html">CloudTrail resource-based policy examples</a> 
    #            in the <i>CloudTrail User Guide</i>.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :resource_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel attached to the resource-based policy.
    #         </p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    #   @return [String]
    # @!attribute resource_policy
    #   <p>
    #            The JSON-formatted string of the Amazon Web Services resource-based policy attached to the CloudTrail event data store, dashboard, or channel.
    #         </p>
    #   @return [String]
    # @!attribute delegated_admin_resource_policy
    #   <p>
    #            The default resource-based policy that is automatically generated for the delegated administrator of an Organizations organization. 
    #            This policy will be evaluated in tandem with any policy you submit for the resource. For more information about this policy, 
    #            see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-organizations.html#cloudtrail-lake-organizations-eds-rbp">Default resource policy for delegated administrators</a>.
    #         </p>
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      :resource_arn,
      :resource_policy,
      :delegated_admin_resource_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A SQL string of criteria about events that you want to collect in an event data
    #          store.</p>
    # @!attribute query_id
    #   <p>The ID of a query.</p>
    #   @return [String]
    # @!attribute query_status
    #   <p>The status of the query. This can be <code>QUEUED</code>, <code>RUNNING</code>,
    #               <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or
    #               <code>CANCELLED</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of a query.</p>
    #   @return [Time]
    class Query < Struct.new(
      :query_id,
      :query_status,
      :creation_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The query ID does not exist or does not map to a query.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class QueryIdNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata about a query, such as the number of results.</p>
    # @!attribute results_count
    #   <p>The number of results returned.</p>
    #   @return [Integer]
    # @!attribute total_results_count
    #   <p>The total number of results returned by a query.</p>
    #   @return [Integer]
    # @!attribute bytes_scanned
    #   <p>The total bytes that the query scanned in the event data store. This value matches the
    #            number of bytes for which your account is billed for the query, unless the query is still
    #            running.</p>
    #   @return [Integer]
    class QueryStatistics < Struct.new(
      :results_count,
      :total_results_count,
      :bytes_scanned,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Gets metadata about a query, including the number of events that were matched, the total
    #          number of events scanned, the query run time in milliseconds, and the query's creation
    #          time.</p>
    # @!attribute events_matched
    #   <p>The number of events that matched a query.</p>
    #   @return [Integer]
    # @!attribute events_scanned
    #   <p>The number of events that the query scanned in the event data store.</p>
    #   @return [Integer]
    # @!attribute bytes_scanned
    #   <p>The total bytes that the query scanned in the event data store. This value matches the
    #            number of bytes for which your account is billed for the query, unless the query is still
    #            running.</p>
    #   @return [Integer]
    # @!attribute execution_time_in_millis
    #   <p>The query's run time, in milliseconds.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The creation time of the query.</p>
    #   @return [Time]
    class QueryStatisticsForDescribeQuery < Struct.new(
      :events_matched,
      :events_scanned,
      :bytes_scanned,
      :execution_time_in_millis,
      :creation_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module QueryStatus
      QUEUED = 'QUEUED'
      RUNNING = 'RUNNING'
      FINISHED = 'FINISHED'
      FAILED = 'FAILED'
      CANCELLED = 'CANCELLED'
      TIMED_OUT = 'TIMED_OUT'
    end

    module ReadWriteType
      ReadOnly = 'ReadOnly'
      WriteOnly = 'WriteOnly'
      All = 'All'
    end

    # <p>
    # The schedule for a dashboard refresh.
    # </p>
    # @!attribute frequency
    #   <p>
    #   The frequency at which you want the dashboard refreshed.
    #   </p>
    #   @return [Types::RefreshScheduleFrequency]
    # @!attribute status
    #   <p>
    #   Specifies whether the refresh schedule is enabled. Set the value to <code>ENABLED</code> to enable the refresh schedule, or to <code>DISABLED</code> to turn off the refresh schedule.
    #   </p>
    #   @return [String]
    # @!attribute time_of_day
    #   <p>
    #      The time of day in UTC to run the schedule; for hourly only refer to minutes; default is 00:00.
    #   </p>
    #   @return [String]
    class RefreshSchedule < Struct.new(
      :frequency,
      :status,
      :time_of_day,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # Specifies the frequency for a dashboard refresh schedule.
    # </p>
    #          <p>
    #       For a custom dashboard, you can schedule a refresh for every 1, 6, 12, or 24 hours, or every day.
    #    </p>
    # @!attribute unit
    #   <p>
    #      The unit to use for the refresh.
    #   </p>
    #            <p>For custom dashboards, the unit can be <code>HOURS</code> or <code>DAYS</code>.</p>
    #            <p>For the Highlights dashboard, the <code>Unit</code> must be <code>HOURS</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #   The value for the refresh schedule.
    #   </p>
    #            <p>
    #      For custom dashboards, the following values are valid when the unit is <code>HOURS</code>: <code>1</code>, <code>6</code>, <code>12</code>, <code>24</code>
    #            </p>
    #            <p>For custom dashboards, the only valid value when the unit is <code>DAYS</code> is <code>1</code>.</p>
    #            <p>For the Highlights dashboard, the <code>Value</code> must be <code>6</code>.</p>
    #   @return [Integer]
    class RefreshScheduleFrequency < Struct.new(
      :unit,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RefreshScheduleFrequencyUnit
      HOURS = 'HOURS'
      DAYS = 'DAYS'
    end

    module RefreshScheduleStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Specifies an organization member account ID as a CloudTrail delegated
    #          administrator.</p>
    # @!attribute member_account_id
    #   <p>An organization member account ID that you want to designate as a delegated
    #            administrator.</p>
    #   @return [String]
    class RegisterOrganizationDelegatedAdminRequest < Struct.new(
      :member_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the following response if successful. Otherwise, returns an error.</p>
    class RegisterOrganizationDelegatedAdminResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the tags to remove from a trail, event data store, dashboard, or channel.</p>
    # @!attribute resource_id
    #   <p>Specifies the ARN of the trail, event data store, dashboard, or channel from which tags should be
    #            removed.</p>
    #            <p> Example trail ARN format:
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>Example event data store ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #            <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #            </p>
    #            <p>Example channel ARN format:
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #            </p>
    #   @return [String]
    # @!attribute tags_list
    #   <p>Specifies a list of tags to be removed.</p>
    #   @return [Array<Types::Tag>]
    class RemoveTagsRequest < Struct.new(
      :resource_id,
      :tags_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an
    #          error.</p>
    class RemoveTagsResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # Contains information about a widget on a CloudTrail Lake dashboard.
    # </p>
    # @!attribute query_statement
    #   <p>
    #   The query statement for the widget. For custom dashboard widgets, you can query across multiple event data stores as long as all event data stores exist in your account.
    #   </p>
    #            <note>
    #               <p>When a query uses <code>?</code> with <code>eventTime</code>, <code>?</code> must be surrounded by single quotes as follows: <code>'?'</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute query_parameters
    #   <p>
    #      The optional query parameters. The following query parameters are valid: <code>$StartTime$</code>, <code>$EndTime$</code>, and <code>$Period$</code>.
    #   </p>
    #   @return [Array<String>]
    # @!attribute view_properties
    #   <p>
    #      The view properties for the widget. For more information about view properties, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-widget-properties.html">
    #         View properties for widgets
    #      </a> in the <i>CloudTrail User Guide</i>.
    #   </p>
    #   @return [Hash<String, String>]
    class RequestWidget < Struct.new(
      :query_statement,
      :query_parameters,
      :view_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the type and name of a resource referenced by an event.</p>
    # @!attribute resource_type
    #   <p>The type of a resource referenced by the event returned. When the resource type cannot
    #            be determined, null is returned. Some examples of resource types are: <b>Instance</b> for EC2, <b>Trail</b> for CloudTrail, <b>DBInstance</b> for Amazon RDS, and <b>AccessKey</b> for IAM. To learn more about how to look up and filter
    #            events by the resource types supported for a service, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events-console.html#filtering-cloudtrail-events">Filtering CloudTrail Events</a>.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource referenced by the event returned. These are user-created names
    #            whose values will depend on the environment. For example, the resource name might be
    #            "auto-scaling-test-group" for an Auto Scaling Group or "i-1234567" for an EC2
    #            Instance.</p>
    #   @return [String]
    class Resource < Struct.new(
      :resource_type,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          This exception is thrown when the provided resource does not exist, or the ARN format of the resource is not valid.
    #       </p>
    #          <p>The following is the format of an event data store ARN:
    #          <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #          </p>
    #          <p>The following is the format of a dashboard ARN: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #          </p>
    #          <p>The following is the format of a channel ARN:
    #          <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #          </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ResourceARNNotValidException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified resource is not found.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          This exception is thrown when the specified resource policy is not found.
    #       </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ResourcePolicyNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          This exception is thrown when the resouce-based policy has syntax errors, or contains a principal that is not valid.
    #       </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ResourcePolicyNotValidException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource tag.</p>
    # @!attribute resource_id
    #   <p>Specifies the ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags_list
    #   <p>A list of tags.</p>
    #   @return [Array<Types::Tag>]
    class ResourceTag < Struct.new(
      :resource_id,
      :tags_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified resource type is not supported by CloudTrail.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ResourceTypeNotSupportedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store that you want to
    #            restore.</p>
    #   @return [String]
    class RestoreEventDataStoreRequest < Struct.new(
      :event_data_store,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>The event data store ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the event data store.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the event data store.</p>
    #   @return [String]
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors that were used to select events.</p>
    #   @return [Array<Types::AdvancedEventSelector>]
    # @!attribute multi_region_enabled
    #   <p>Indicates whether the event data store is collecting events from all Regions, or only
    #            from the Region in which the event data store was created.</p>
    #   @return [Boolean]
    # @!attribute organization_enabled
    #   <p>Indicates whether an event data store is collecting logged events for an organization in
    #               Organizations.</p>
    #   @return [Boolean]
    # @!attribute retention_period
    #   <p>The retention period, in days.</p>
    #   @return [Integer]
    # @!attribute termination_protection_enabled
    #   <p>Indicates that termination protection is enabled and the event data store cannot be
    #            automatically deleted.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The timestamp of an event data store's creation.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The timestamp that shows when an event data store was updated, if applicable.
    #               <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in
    #               <code>CreatedTimestamp</code>.</p>
    #   @return [Time]
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID that encrypts the events delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the
    #            following format.</p>
    #            <p>
    #               <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #   @return [String]
    # @!attribute billing_mode
    #   <p>The billing mode for the event data store.</p>
    #   @return [String]
    class RestoreEventDataStoreResponse < Struct.new(
      :event_data_store_arn,
      :name,
      :status,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :created_timestamp,
      :updated_timestamp,
      :kms_key_id,
      :billing_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified S3 bucket does not exist.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class S3BucketDoesNotExistException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The settings for the source S3 bucket. </p>
    # @!attribute s3_location_uri
    #   <p> The URI for the source S3 bucket. </p>
    #   @return [String]
    # @!attribute s3_bucket_region
    #   <p> The Region associated with the source S3 bucket. </p>
    #   @return [String]
    # @!attribute s3_bucket_access_role_arn
    #   <p> The IAM ARN role used to access the source S3 bucket. </p>
    #   @return [String]
    class S3ImportSource < Struct.new(
      :s3_location_uri,
      :s3_bucket_region,
      :s3_bucket_access_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute search_phrase
    #   <p>
    #            The natural language phrase to use for the semantic search. The phrase must be in English. The length constraint is in characters, not words.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #            The maximum number of results to return on a single page. The default value is 10.
    #         </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #            A token you can use to get the next page of results. The length constraint is in characters, not words.
    #         </p>
    #   @return [String]
    class SearchSampleQueriesRequest < Struct.new(
      :search_phrase,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute search_results
    #   <p>
    #            A list of objects containing the search results ordered from most relevant to least relevant.
    #         </p>
    #   @return [Array<Types::SearchSampleQueriesSearchResult>]
    # @!attribute next_token
    #   <p>
    #            A token you can use to get the next page of results.</p>
    #   @return [String]
    class SearchSampleQueriesResponse < Struct.new(
      :search_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          A search result returned by the <code>SearchSampleQueries</code> operation.
    #       </p>
    # @!attribute name
    #   <p>
    #            The name of a sample query.
    #         </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #            A longer description of a sample query.
    #         </p>
    #   @return [String]
    # @!attribute sql
    #   <p>
    #            The SQL code of the sample query.
    #         </p>
    #   @return [String]
    # @!attribute relevance
    #   <p>
    #            A value between 0 and 1 indicating the similarity between the search phrase and result.
    #         </p>
    #   @return [Float]
    class SearchSampleQueriesSearchResult < Struct.new(
      :name,
      :description,
      :sql,
      :relevance,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:relevance] = 0 unless options.key?(:relevance)
        super
      end
    end

    # <p>
    #    This exception is thrown when the quota is exceeded. For information about CloudTrail quotas, see <a href="https://docs.aws.amazon.com/general/latest/gr/ct.html#limits_cloudtrail">Service quotas</a> 
    #    in the <i>Amazon Web Services General Reference</i>.
    # </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains configuration information about the channel. </p>
    # @!attribute apply_to_all_regions
    #   <p> Specifies whether the channel applies to a single Region or to all Regions.</p>
    #   @return [Boolean]
    # @!attribute advanced_event_selectors
    #   <p> The advanced event selectors that are configured for the channel.</p>
    #   @return [Array<Types::AdvancedEventSelector>]
    class SourceConfig < Struct.new(
      :apply_to_all_regions,
      :advanced_event_selectors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dashboard_id
    #   <p>
    #   The name or ARN of the dashboard.
    #   </p>
    #   @return [String]
    # @!attribute query_parameter_values
    #   <p>
    #      The query parameter values for the dashboard
    #   </p>
    #            <p>For custom dashboards, the following query parameters are valid: <code>$StartTime$</code>, <code>$EndTime$</code>, and <code>$Period$</code>.</p>
    #            <p>For managed dashboards, the following query parameters are valid: <code>$StartTime$</code>,
    #               <code>$EndTime$</code>, <code>$Period$</code>, and <code>$EventDataStoreId$</code>. The
    #               <code>$EventDataStoreId$</code> query parameter is required.</p>
    #   @return [Hash<String, String>]
    class StartDashboardRefreshRequest < Struct.new(
      :dashboard_id,
      :query_parameter_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute refresh_id
    #   <p>
    #   The refresh ID for the dashboard.
    #   </p>
    #   @return [String]
    class StartDashboardRefreshResponse < Struct.new(
      :refresh_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store for which you want to start ingestion.</p>
    #   @return [String]
    class StartEventDataStoreIngestionRequest < Struct.new(
      :event_data_store,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class StartEventDataStoreIngestionResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute destinations
    #   <p> The ARN of the destination event data store. Use this parameter for a new import.
    #         </p>
    #   @return [Array<String>]
    # @!attribute import_source
    #   <p> The source S3 bucket for the import. Use this parameter for a new import. </p>
    #   @return [Types::ImportSource]
    # @!attribute start_event_time
    #   <p> Use with <code>EndEventTime</code> to bound a <code>StartImport</code> request, and
    #            limit imported trail events to only those events logged within a specified time period.
    #            When you specify a time range, CloudTrail checks the prefix and log file names to
    #            verify the names contain a date between the specified <code>StartEventTime</code> and
    #               <code>EndEventTime</code> before attempting to import events. </p>
    #   @return [Time]
    # @!attribute end_event_time
    #   <p> Use with <code>StartEventTime</code> to bound a <code>StartImport</code> request, and
    #            limit imported trail events to only those events logged within a specified time period.
    #            When you specify a time range, CloudTrail checks the prefix and log file names to
    #            verify the names contain a date between the specified <code>StartEventTime</code> and
    #               <code>EndEventTime</code> before attempting to import events. </p>
    #   @return [Time]
    # @!attribute import_id
    #   <p> The ID of the import. Use this parameter when you are retrying an import. </p>
    #   @return [String]
    class StartImportRequest < Struct.new(
      :destinations,
      :import_source,
      :start_event_time,
      :end_event_time,
      :import_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p> The ID of the import. </p>
    #   @return [String]
    # @!attribute destinations
    #   <p> The ARN of the destination event data store. </p>
    #   @return [Array<String>]
    # @!attribute import_source
    #   <p> The source S3 bucket for the import. </p>
    #   @return [Types::ImportSource]
    # @!attribute start_event_time
    #   <p> Used with <code>EndEventTime</code> to bound a <code>StartImport</code> request, and
    #            limit imported trail events to only those events logged within a specified time period.
    #         </p>
    #   @return [Time]
    # @!attribute end_event_time
    #   <p> Used with <code>StartEventTime</code> to bound a <code>StartImport</code> request, and
    #            limit imported trail events to only those events logged within a specified time period.
    #         </p>
    #   @return [Time]
    # @!attribute import_status
    #   <p> Shows the status of the import after a <code>StartImport</code> request. An import
    #            finishes with a status of <code>COMPLETED</code> if there were no failures, or
    #               <code>FAILED</code> if there were failures. </p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p> The timestamp for the import's creation. </p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p> The timestamp of the import's last update, if applicable. </p>
    #   @return [Time]
    class StartImportResponse < Struct.new(
      :import_id,
      :destinations,
      :import_source,
      :start_event_time,
      :end_event_time,
      :import_status,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request to CloudTrail to start logging Amazon Web Services API calls for an
    #          account.</p>
    # @!attribute name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail
    #            logs Amazon Web Services API calls. The following is the format of a trail ARN.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #   @return [String]
    class StartLoggingRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an
    #          error.</p>
    class StartLoggingResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_statement
    #   <p>The SQL code of your query.</p>
    #   @return [String]
    # @!attribute delivery_s3_uri
    #   <p> The URI for the S3 bucket where CloudTrail delivers the query results. </p>
    #   @return [String]
    # @!attribute query_alias
    #   <p>
    #            The alias that identifies a query template.
    #         </p>
    #   @return [String]
    # @!attribute query_parameters
    #   <p>
    #            The query parameters for the specified <code>QueryAlias</code>.
    #         </p>
    #   @return [Array<String>]
    # @!attribute event_data_store_owner_account_id
    #   <p>
    #   The account ID of the event data store owner.
    #   </p>
    #   @return [String]
    class StartQueryRequest < Struct.new(
      :query_statement,
      :delivery_s3_uri,
      :query_alias,
      :query_parameters,
      :event_data_store_owner_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the started query.</p>
    #   @return [String]
    # @!attribute event_data_store_owner_account_id
    #   <p>
    #      The account ID of the event data store owner.
    #   </p>
    #   @return [String]
    class StartQueryResponse < Struct.new(
      :query_id,
      :event_data_store_owner_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store for which you want to stop ingestion.</p>
    #   @return [String]
    class StopEventDataStoreIngestionRequest < Struct.new(
      :event_data_store,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class StopEventDataStoreIngestionResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p> The ID of the import. </p>
    #   @return [String]
    class StopImportRequest < Struct.new(
      :import_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p> The ID for the import. </p>
    #   @return [String]
    # @!attribute import_source
    #   <p> The source S3 bucket for the import. </p>
    #   @return [Types::ImportSource]
    # @!attribute destinations
    #   <p> The ARN of the destination event data store. </p>
    #   @return [Array<String>]
    # @!attribute import_status
    #   <p> The status of the import. </p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p> The timestamp of the import's creation. </p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p> The timestamp of the import's last update. </p>
    #   @return [Time]
    # @!attribute start_event_time
    #   <p> Used with <code>EndEventTime</code> to bound a <code>StartImport</code> request, and
    #            limit imported trail events to only those events logged within a specified time period.
    #         </p>
    #   @return [Time]
    # @!attribute end_event_time
    #   <p> Used with <code>StartEventTime</code> to bound a <code>StartImport</code> request, and
    #            limit imported trail events to only those events logged within a specified time period.
    #         </p>
    #   @return [Time]
    # @!attribute import_statistics
    #   <p> Returns information on the stopped import. </p>
    #   @return [Types::ImportStatistics]
    class StopImportResponse < Struct.new(
      :import_id,
      :import_source,
      :destinations,
      :import_status,
      :created_timestamp,
      :updated_timestamp,
      :start_event_time,
      :end_event_time,
      :import_statistics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Passes the request to CloudTrail to stop logging Amazon Web Services API calls for
    #          the specified account.</p>
    # @!attribute name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail
    #            will stop logging Amazon Web Services API calls. The following is the format of a trail
    #            ARN.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #   @return [String]
    class StopLoggingRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an
    #          error.</p>
    class StopLoggingResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A custom key-value pair associated with a resource such as a CloudTrail
    #          trail, event data store, dashboard, or channel.</p>
    # @!attribute key
    #   <p>The key in a key-value pair. The key must be must be no longer than 128 Unicode
    #            characters. The key must be unique for the resource to which it applies.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value in a key-value pair of a tag. The value must be no longer than 256 Unicode
    #            characters.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The number of tags per trail, event data store, dashboard, or channel has exceeded the permitted amount. Currently, the limit is
    #          50.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class TagsLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          This exception is thrown when the request rate exceeds the limit. 
    #       </p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The settings for a trail.</p>
    # @!attribute name
    #   <p>Name of the trail set by calling <a>CreateTrail</a>. The maximum length is
    #            128 characters.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>Name of the Amazon S3 bucket into which CloudTrail delivers your trail
    #            files. See <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Amazon S3
    #               Bucket naming rules</a>.</p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you
    #            have designated for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files">Finding Your CloudTrail Log Files</a>. The maximum length is 200
    #            characters.</p>
    #   @return [String]
    # @!attribute sns_topic_name
    #   <p>This field is no longer in use. Use <code>SnsTopicARN</code>.</p>
    #   @deprecated
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send
    #            notifications when log files are delivered. The following is the format of a topic
    #            ARN.</p>
    #            <p>
    #               <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>
    #            </p>
    #   @return [String]
    # @!attribute include_global_service_events
    #   <p>Set to <b>True</b> to include Amazon Web Services API calls
    #            from Amazon Web Services global services such as IAM. Otherwise, <b>False</b>.</p>
    #   @return [Boolean]
    # @!attribute is_multi_region_trail
    #   <p>Specifies whether the trail exists only in one Region or exists in all Regions.</p>
    #   @return [Boolean]
    # @!attribute home_region
    #   <p>The Region in which the trail was created.</p>
    #   @return [String]
    # @!attribute trail_arn
    #   <p>Specifies the ARN of the trail. The following is the format of a trail ARN.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #   @return [String]
    # @!attribute log_file_validation_enabled
    #   <p>Specifies whether log file validation is enabled.</p>
    #   @return [Boolean]
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>Specifies an Amazon Resource Name (ARN), a unique identifier that represents the log
    #            group to which CloudTrail logs will be delivered.</p>
    #   @return [String]
    # @!attribute cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's
    #            log group.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the
    #            following format.</p>
    #            <p>
    #               <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #   @return [String]
    # @!attribute has_custom_event_selectors
    #   <p>Specifies if the trail has custom event selectors.</p>
    #   @return [Boolean]
    # @!attribute has_insight_selectors
    #   <p>Specifies whether a trail has insight types specified in an <code>InsightSelector</code>
    #            list.</p>
    #   @return [Boolean]
    # @!attribute is_organization_trail
    #   <p>Specifies whether the trail is an organization trail.</p>
    #   @return [Boolean]
    class Trail < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :sns_topic_arn,
      :include_global_service_events,
      :is_multi_region_trail,
      :home_region,
      :trail_arn,
      :log_file_validation_enabled,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :has_custom_event_selectors,
      :has_insight_selectors,
      :is_organization_trail,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the specified trail already exists.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class TrailAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a CloudTrail trail, including the trail's name, home Region,
    #          and Amazon Resource Name (ARN).</p>
    # @!attribute trail_arn
    #   <p>The ARN of a trail.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a trail.</p>
    #   @return [String]
    # @!attribute home_region
    #   <p>The Amazon Web Services Region in which a trail was created.</p>
    #   @return [String]
    class TrailInfo < Struct.new(
      :trail_arn,
      :name,
      :home_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the trail with the given name is not found.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class TrailNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is no longer in use.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class TrailNotProvidedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Type
      TagContext = 'TagContext'
      RequestContext = 'RequestContext'
    end

    # <p>This exception is thrown when the requested operation is not supported.</p>
    # @!attribute message
    #   <p>Brief description of the exception returned by the request.</p>
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel
    #   <p>The ARN or ID (the ARN suffix) of the channel that you want to update.</p>
    #   @return [String]
    # @!attribute destinations
    #   <p>The ARNs of event data stores that you want to log events arriving through the channel.</p>
    #   @return [Array<Types::Destination>]
    # @!attribute name
    #   <p>
    #            Changes the name of the channel.
    #         </p>
    #   @return [String]
    class UpdateChannelRequest < Struct.new(
      :channel,
      :destinations,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel that was updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the channel that was updated.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The event source of the channel that was updated.</p>
    #   @return [String]
    # @!attribute destinations
    #   <p>The event data stores that log events arriving through the channel.</p>
    #   @return [Array<Types::Destination>]
    class UpdateChannelResponse < Struct.new(
      :channel_arn,
      :name,
      :source,
      :destinations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dashboard_id
    #   <p>
    #      The name or ARN of the dashboard.
    #   </p>
    #   @return [String]
    # @!attribute widgets
    #   <p>
    #   An array of widgets for the dashboard. A custom dashboard can have a maximum of 10 widgets.
    #   </p>
    #            <p>To add new widgets, pass in an array that includes the existing widgets along with any new widgets. Run the <code>GetDashboard</code> operation to get the list of widgets for the dashboard.</p>
    #            <p>To remove widgets, pass in an array that includes the existing widgets minus the widgets you want removed.</p>
    #   @return [Array<Types::RequestWidget>]
    # @!attribute refresh_schedule
    #   <p>
    #   The refresh schedule configuration for the dashboard.
    #   </p>
    #   @return [Types::RefreshSchedule]
    # @!attribute termination_protection_enabled
    #   <p>
    #      Specifies whether termination protection is enabled for the dashboard. If termination protection is enabled, you cannot delete the dashboard until termination protection is disabled.
    #   </p>
    #   @return [Boolean]
    class UpdateDashboardRequest < Struct.new(
      :dashboard_id,
      :widgets,
      :refresh_schedule,
      :termination_protection_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dashboard_arn
    #   <p>
    #   The ARN for the dashboard.
    #   </p>
    #   @return [String]
    # @!attribute name
    #   <p>
    #   The name for the dashboard.
    #   </p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #   The type of dashboard.
    #   </p>
    #   @return [String]
    # @!attribute widgets
    #   <p>
    #   An array of widgets for the dashboard.
    #   </p>
    #   @return [Array<Types::Widget>]
    # @!attribute refresh_schedule
    #   <p>
    #   The refresh schedule for the dashboard, if configured.
    #   </p>
    #   @return [Types::RefreshSchedule]
    # @!attribute termination_protection_enabled
    #   <p>
    #      Indicates whether termination protection is enabled for the dashboard.
    #   </p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>
    #      The timestamp that shows when the dashboard was created.
    #   </p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>
    #      The timestamp that shows when the dashboard was updated.
    #   </p>
    #   @return [Time]
    class UpdateDashboardResponse < Struct.new(
      :dashboard_arn,
      :name,
      :type,
      :widgets,
      :refresh_schedule,
      :termination_protection_enabled,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store that you want to
    #            update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The event data store name.</p>
    #   @return [String]
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors used to select events for the event data store. You can
    #            configure up to five advanced event selectors for each event data store.</p>
    #   @return [Array<Types::AdvancedEventSelector>]
    # @!attribute multi_region_enabled
    #   <p>Specifies whether an event data store collects events from all Regions, or only from the
    #            Region in which it was created.</p>
    #   @return [Boolean]
    # @!attribute organization_enabled
    #   <p>Specifies whether an event data store collects events logged for an organization in
    #               Organizations.</p>
    #            <note>
    #               <p>Only the management account for the organization can convert an organization event data store to a non-organization event data store, or convert a non-organization event data store to 
    #            an organization event data store.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute retention_period
    #   <p>The retention period of the event data store, in days. If <code>BillingMode</code> is set to <code>EXTENDABLE_RETENTION_PRICING</code>, you can set a retention period of
    #            up to 3653 days, the equivalent of 10 years. If <code>BillingMode</code> is set to <code>FIXED_RETENTION_PRICING</code>, you can set a retention period of
    #            up to 2557 days, the equivalent of seven years.</p>
    #            <p>CloudTrail  Lake determines whether to retain an event by checking if the <code>eventTime</code> 
    #            of the event is within the specified retention period. For example, if you set a retention period of 90 days, CloudTrail will remove events 
    #            when the <code>eventTime</code> is older than 90 days.</p>
    #            <note>
    #               <p>If you decrease the retention period of an event data store, CloudTrail will remove any events with an <code>eventTime</code> older than the new retention period. For example, if the previous 
    #               retention period was 365 days and you decrease it to 100 days, CloudTrail  will remove events with an <code>eventTime</code> older than 100 days.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute termination_protection_enabled
    #   <p>Indicates that termination protection is enabled and the event data store cannot be
    #            automatically deleted.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the events delivered by
    #               CloudTrail. The value can be an alias name prefixed by <code>alias/</code>, a
    #            fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique
    #            identifier.</p>
    #            <important>
    #               <p>Disabling or deleting the KMS key, or removing CloudTrail
    #               permissions on the key, prevents CloudTrail from logging events to the event data
    #               store, and prevents users from querying the data in the event data store that was
    #               encrypted with the key. After you associate an event data store with a KMS key, the KMS key cannot be removed or changed. Before you
    #               disable or delete a KMS key that you are using with an event data store,
    #               delete or back up your event data store.</p>
    #            </important>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more
    #            information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region
    #               keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute billing_mode
    #   <note>
    #               <p>You can't change the billing mode from <code>EXTENDABLE_RETENTION_PRICING</code> to <code>FIXED_RETENTION_PRICING</code>. If <code>BillingMode</code> is set to 
    #               <code>EXTENDABLE_RETENTION_PRICING</code> and you want to use <code>FIXED_RETENTION_PRICING</code> instead, you'll need to stop ingestion on the event data store and create a new event data store that uses <code>FIXED_RETENTION_PRICING</code>.</p>
    #            </note>
    #            <p>The billing mode for the event data store determines the cost 
    #            for ingesting events and the default and maximum retention period for the event data store.</p>
    #            <p>The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXTENDABLE_RETENTION_PRICING</code> - This billing mode is generally recommended if you want a flexible retention period of up to 3653 days (about 10 years). The default retention period for this billing mode is 
    #                  366 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FIXED_RETENTION_PRICING</code> - This billing mode is recommended if you expect to ingest more than 25 TB of event data per month and need a retention period of up to 2557 days (about 7 years). 
    #                  The default retention period for this billing mode is 2557 days.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CloudTrail pricing, 
    #            see <a href="http://aws.amazon.com/cloudtrail/pricing/">CloudTrail Pricing</a> and 
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-manage-costs.html">Managing CloudTrail Lake costs</a>.</p>
    #   @return [String]
    class UpdateEventDataStoreRequest < Struct.new(
      :event_data_store,
      :name,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :kms_key_id,
      :billing_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_data_store_arn
    #   <p>The ARN of the event data store.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the event data store.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of an event data store.</p>
    #   @return [String]
    # @!attribute advanced_event_selectors
    #   <p>The advanced event selectors that are applied to the event data store.</p>
    #   @return [Array<Types::AdvancedEventSelector>]
    # @!attribute multi_region_enabled
    #   <p>Indicates whether the event data store includes events from all Regions, or only from
    #            the Region in which it was created.</p>
    #   @return [Boolean]
    # @!attribute organization_enabled
    #   <p>Indicates whether an event data store is collecting logged events for an organization in
    #               Organizations.</p>
    #   @return [Boolean]
    # @!attribute retention_period
    #   <p>The retention period, in days.</p>
    #   @return [Integer]
    # @!attribute termination_protection_enabled
    #   <p>Indicates whether termination protection is enabled for the event data store.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The timestamp that shows when an event data store was first created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The timestamp that shows when the event data store was last updated.
    #               <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in
    #               <code>CreatedTimestamp</code>.</p>
    #   @return [Time]
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID that encrypts the events delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the
    #            following format.</p>
    #            <p>
    #               <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #   @return [String]
    # @!attribute billing_mode
    #   <p>The billing mode for the event data store.</p>
    #   @return [String]
    # @!attribute federation_status
    #   <p>
    #            Indicates the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html">Lake query federation</a> status. The status is 
    #            <code>ENABLED</code> if Lake query federation is enabled, or <code>DISABLED</code> if Lake query federation is disabled. You cannot delete an event data store if the <code>FederationStatus</code> is <code>ENABLED</code>.
    #         </p>
    #   @return [String]
    # @!attribute federation_role_arn
    #   <p>
    #            If Lake query federation is enabled, provides the ARN of the federation role used to access the resources for the federated event data store.
    #         </p>
    #   @return [String]
    class UpdateEventDataStoreResponse < Struct.new(
      :event_data_store_arn,
      :name,
      :status,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :created_timestamp,
      :updated_timestamp,
      :kms_key_id,
      :billing_mode,
      :federation_status,
      :federation_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies settings to update for the trail.</p>
    # @!attribute name
    #   <p>Specifies the name of the trail or trail ARN. If <code>Name</code> is a trail name, the
    #            string must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                  (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like
    #                     <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If <code>Name</code> is a trail ARN, it must be in the following format.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log files.
    #            See <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Amazon S3
    #               Bucket naming rules</a>.</p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you
    #            have designated for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files">Finding Your CloudTrail Log Files</a>. The maximum length is 200
    #            characters.</p>
    #   @return [String]
    # @!attribute sns_topic_name
    #   <p>Specifies the name or ARN of the Amazon SNS topic defined for notification of log file
    #            delivery. The maximum length is 256 characters.</p>
    #   @return [String]
    # @!attribute include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
    #   @return [Boolean]
    # @!attribute is_multi_region_trail
    #   <p>Specifies whether the trail applies only to the current Region or to all Regions. The
    #            default is false. If the trail exists only in the current Region and this value is set to
    #            true, shadow trails (replications of the trail) will be created in the other Regions. If
    #            the trail exists in all Regions and this value is set to false, the trail will remain in
    #            the Region where it was created, and its shadow trails in other Regions will be deleted. As
    #            a best practice, consider using trails that log events in all Regions.</p>
    #   @return [Boolean]
    # @!attribute enable_log_file_validation
    #   <p>Specifies whether log file validation is enabled. The default is false.</p>
    #            <note>
    #               <p>When you disable log file integrity validation, the chain of digest files is broken
    #               after one hour. CloudTrail does not create digest files for log files that were
    #               delivered during a period in which log file integrity validation was disabled. For
    #               example, if you enable log file integrity validation at noon on January 1, disable it at
    #               noon on January 2, and re-enable it at noon on January 10, digest files will not be
    #               created for the log files delivered from noon on January 2 to noon on January 10. The
    #               same applies whenever you stop CloudTrail logging or delete a trail.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that
    #            represents the log group to which CloudTrail logs are delivered. You must use a log
    #            group that exists in your account.</p>
    #            <p>Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>
    #   @return [String]
    # @!attribute cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's
    #            log group. You must use a role that exists in your account.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to
    #            an alias, a fully specified ARN to a key, or a globally unique identifier.</p>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more
    #            information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region
    #               keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #               <li>
    #                  <p>12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute is_organization_trail
    #   <p>Specifies whether the trail is applied to all accounts in an organization in Organizations, or only for the current Amazon Web Services account. The default is false,
    #            and cannot be true unless the call is made on behalf of an Amazon Web Services account that
    #            is the management account for an organization in Organizations. If the trail is not an organization trail and this is set to
    #               <code>true</code>, the trail will be created in all Amazon Web Services accounts that
    #            belong to the organization. If the trail is an organization trail and this is set to
    #               <code>false</code>, the trail will remain in the current Amazon Web Services account but
    #            be deleted from all member accounts in the organization.</p>
    #            <note>
    #               <p>Only the management account for the organization can convert an organization trail to a non-organization trail, or convert a non-organization trail to 
    #               an organization trail.</p>
    #            </note>
    #   @return [Boolean]
    class UpdateTrailRequest < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :include_global_service_events,
      :is_multi_region_trail,
      :enable_log_file_validation,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the objects or data listed below if successful. Otherwise, returns an
    #          error.</p>
    # @!attribute name
    #   <p>Specifies the name of the trail.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log
    #            files.</p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you
    #            have designated for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files">Finding Your IAM Log Files</a>.</p>
    #   @return [String]
    # @!attribute sns_topic_name
    #   <p>This field is no longer in use. Use <code>SnsTopicARN</code>.</p>
    #   @deprecated
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send
    #            notifications when log files are delivered. The following is the format of a topic
    #            ARN.</p>
    #            <p>
    #               <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>
    #            </p>
    #   @return [String]
    # @!attribute include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
    #   @return [Boolean]
    # @!attribute is_multi_region_trail
    #   <p>Specifies whether the trail exists in one Region or in all Regions.</p>
    #   @return [Boolean]
    # @!attribute trail_arn
    #   <p>Specifies the ARN of the trail that was updated. The following is the format of a trail
    #            ARN.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #   @return [String]
    # @!attribute log_file_validation_enabled
    #   <p>Specifies whether log file integrity validation is enabled.</p>
    #   @return [Boolean]
    # @!attribute cloud_watch_logs_log_group_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail
    #            logs are delivered.</p>
    #   @return [String]
    # @!attribute cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's
    #            log group.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the
    #            following format.</p>
    #            <p>
    #               <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #   @return [String]
    # @!attribute is_organization_trail
    #   <p>Specifies whether the trail is an organization trail.</p>
    #   @return [Boolean]
    class UpdateTrailResponse < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :sns_topic_arn,
      :include_global_service_events,
      :is_multi_region_trail,
      :trail_arn,
      :log_file_validation_enabled,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #    A widget on a CloudTrail Lake dashboard.
    # </p>
    # @!attribute query_alias
    #   <p>The query alias used to identify the query for the widget.
    #   </p>
    #   @return [String]
    # @!attribute query_statement
    #   <p>
    #   The SQL query statement for the widget.
    #   </p>
    #   @return [String]
    # @!attribute query_parameters
    #   <p>
    #      The query parameters for the widget.
    #   </p>
    #   @return [Array<String>]
    # @!attribute view_properties
    #   <p>
    #      The view properties for the widget. For more information about view properties, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-widget-properties.html">
    #         View properties for widgets
    #   </a> in the <i>CloudTrail User Guide</i>..
    #   </p>
    #   @return [Hash<String, String>]
    class Widget < Struct.new(
      :query_alias,
      :query_statement,
      :query_parameters,
      :view_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
