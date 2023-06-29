# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudTrail
  module Types

    # This exception is thrown when you start a new import and a previous
    # import is still in progress.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AccountHasOngoingImportException AWS API Documentation
    #
    class AccountHasOngoingImportException < Aws::EmptyStructure; end

    # This exception is thrown when the specified account is not found or
    # not part of an organization.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AccountNotFoundException AWS API Documentation
    #
    class AccountNotFoundException < Aws::EmptyStructure; end

    # This exception is thrown when the specified account is not registered
    # as the CloudTrail delegated administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AccountNotRegisteredException AWS API Documentation
    #
    class AccountNotRegisteredException < Aws::EmptyStructure; end

    # This exception is thrown when the account is already registered as the
    # CloudTrail delegated administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AccountRegisteredException AWS API Documentation
    #
    class AccountRegisteredException < Aws::EmptyStructure; end

    # Specifies the tags to add to a trail, event data store, or channel.
    #
    # @!attribute [rw] resource_id
    #   Specifies the ARN of the trail, event data store, or channel to
    #   which one or more tags will be added.
    #
    #   The format of a trail ARN is:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   The format of an event data store ARN is:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE`
    #
    #   The format of a channel ARN is:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890`
    #   @return [String]
    #
    # @!attribute [rw] tags_list
    #   Contains a list of tags, up to a limit of 50
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AddTagsRequest AWS API Documentation
    #
    class AddTagsRequest < Struct.new(
      :resource_id,
      :tags_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data if successful. Otherwise, returns an
    # error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AddTagsResponse AWS API Documentation
    #
    class AddTagsResponse < Aws::EmptyStructure; end

    # Advanced event selectors let you create fine-grained selectors for the
    # following CloudTrail event record ﬁelds. They help you control costs
    # by logging only those events that are important to you. For more
    # information about advanced event selectors, see [Logging data
    # events][1] in the *CloudTrail User Guide*.
    #
    # * `readOnly`
    #
    # * `eventSource`
    #
    # * `eventName`
    #
    # * `eventCategory`
    #
    # * `resources.type`
    #
    # * `resources.ARN`
    #
    # You cannot apply both event selectors and advanced event selectors to
    # a trail.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html
    #
    # @!attribute [rw] name
    #   An optional, descriptive name for an advanced event selector, such
    #   as "Log data events for only two S3 buckets".
    #   @return [String]
    #
    # @!attribute [rw] field_selectors
    #   Contains all selector statements in an advanced event selector.
    #   @return [Array<Types::AdvancedFieldSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AdvancedEventSelector AWS API Documentation
    #
    class AdvancedEventSelector < Struct.new(
      :name,
      :field_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single selector statement in an advanced event selector.
    #
    # @!attribute [rw] field
    #   A field in a CloudTrail event record on which to filter events to be
    #   logged. For event data stores for Config configuration items, Audit
    #   Manager evidence, or non-Amazon Web Services events, the field is
    #   used only for selecting events as filtering is not supported.
    #
    #   For CloudTrail event records, supported fields include `readOnly`,
    #   `eventCategory`, `eventSource` (for management events), `eventName`,
    #   `resources.type`, and `resources.ARN`.
    #
    #   For event data stores for Config configuration items, Audit Manager
    #   evidence, or non-Amazon Web Services events, the only supported
    #   field is `eventCategory`.
    #
    #   * <b> <code>readOnly</code> </b> - Optional. Can be set to `Equals`
    #     a value of `true` or `false`. If you do not add this field,
    #     CloudTrail logs both `read` and `write` events. A value of `true`
    #     logs only `read` events. A value of `false` logs only `write`
    #     events.
    #
    #   * <b> <code>eventSource</code> </b> - For filtering management
    #     events only. This can be set only to `NotEquals`
    #     `kms.amazonaws.com`.
    #
    #   * <b> <code>eventName</code> </b> - Can use any operator. You can
    #     use it to ﬁlter in or ﬁlter out any data event logged to
    #     CloudTrail, such as `PutBucket` or `GetSnapshotBlock`. You can
    #     have multiple values for this ﬁeld, separated by commas.
    #
    #   * <b> <code>eventCategory</code> </b> - This is required and must be
    #     set to `Equals`.
    #
    #     * For CloudTrail event records, the value must be `Management` or
    #       `Data`.
    #
    #     * For Config configuration items, the value must be
    #       `ConfigurationItem`.
    #
    #     * For Audit Manager evidence, the value must be `Evidence`.
    #
    #     * For non-Amazon Web Services events, the value must be
    #       `ActivityAuditLog`.
    #
    #   * <b> <code>resources.type</code> </b> - This ﬁeld is required for
    #     CloudTrail data events. `resources.type` can only use the `Equals`
    #     operator, and the value can be one of the following:
    #
    #     * `AWS::DynamoDB::Table`
    #
    #     * `AWS::Lambda::Function`
    #
    #     * `AWS::S3::Object`
    #
    #     * `AWS::CloudTrail::Channel`
    #
    #     * `AWS::CodeWhisperer::Profile`
    #
    #     * `AWS::Cognito::IdentityPool`
    #
    #     * `AWS::DynamoDB::Stream`
    #
    #     * `AWS::EC2::Snapshot`
    #
    #     * `AWS::EMRWAL::Workspace`
    #
    #     * `AWS::FinSpace::Environment`
    #
    #     * `AWS::Glue::Table`
    #
    #     * `AWS::GuardDuty::Detector`
    #
    #     * `AWS::KendraRanking::ExecutionPlan`
    #
    #     * `AWS::ManagedBlockchain::Node`
    #
    #     * `AWS::SageMaker::ExperimentTrialComponent`
    #
    #     * `AWS::SageMaker::FeatureGroup`
    #
    #     * `AWS::S3::AccessPoint`
    #
    #     * `AWS::S3ObjectLambda::AccessPoint`
    #
    #     * `AWS::S3Outposts::Object`
    #
    #     You can have only one `resources.type` ﬁeld per selector. To log
    #     data events on more than one resource type, add another selector.
    #
    #   * <b> <code>resources.ARN</code> </b> - You can use any operator
    #     with `resources.ARN`, but if you use `Equals` or `NotEquals`, the
    #     value must exactly match the ARN of a valid resource of the type
    #     you've speciﬁed in the template as the value of resources.type.
    #     For example, if resources.type equals `AWS::S3::Object`, the ARN
    #     must be in one of the following formats. To log all data events
    #     for all objects in a specific S3 bucket, use the `StartsWith`
    #     operator, and include only the bucket ARN as the matching value.
    #
    #     The trailing slash is intentional; do not exclude it. Replace the
    #     text between less than and greater than symbols (&lt;&gt;) with
    #     resource-specific information.
    #
    #     * `arn:<partition>:s3:::<bucket_name>/`
    #
    #     * `arn:<partition>:s3:::<bucket_name>/<object_path>/`
    #
    #     When resources.type equals `AWS::DynamoDB::Table`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:dynamodb:<region>:<account_ID>:table/<table_name>`
    #
    #     ^
    #
    #     When resources.type equals `AWS::Lambda::Function`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:lambda:<region>:<account_ID>:function:<function_name>`
    #
    #     ^
    #
    #     When resources.type equals `AWS::CloudTrail::Channel`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:cloudtrail:<region>:<account_ID>:channel/<channel_UUID>`
    #
    #     ^
    #
    #     When resources.type equals `AWS::CodeWhisperer::Profile`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:codewhisperer:<region>:<account_ID>:profile/<profile_ID>`
    #
    #     ^
    #
    #     When resources.type equals `AWS::Cognito::IdentityPool`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:cognito-identity:<region>:<account_ID>:identitypool/<identity_pool_ID>`
    #
    #     ^
    #
    #     When `resources.type` equals `AWS::DynamoDB::Stream`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:dynamodb:<region>:<account_ID>:table/<table_name>/stream/<date_time>`
    #
    #     ^
    #
    #     When `resources.type` equals `AWS::EC2::Snapshot`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:ec2:<region>::snapshot/<snapshot_ID>`
    #
    #     ^
    #
    #     When `resources.type` equals `AWS::EMRWAL::Workspace`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:emrwal:<region>::workspace/<workspace_name>`
    #
    #     ^
    #
    #     When `resources.type` equals `AWS::FinSpace::Environment`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:finspace:<region>:<account_ID>:environment/<environment_ID>`
    #
    #     ^
    #
    #     When `resources.type` equals `AWS::Glue::Table`, and the operator
    #     is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:glue:<region>:<account_ID>:table/<database_name>/<table_name>`
    #
    #     ^
    #
    #     When `resources.type` equals `AWS::GuardDuty::Detector`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:guardduty:<region>:<account_ID>:detector/<detector_ID>`
    #
    #     ^
    #
    #     When `resources.type` equals `AWS::KendraRanking::ExecutionPlan`,
    #     and the operator is set to `Equals` or `NotEquals`, the ARN must
    #     be in the following format:
    #
    #     * `arn:<partition>:kendra-ranking:<region>:<account_ID>:rescore-execution-plan/<rescore_execution_plan_ID>`
    #
    #     ^
    #
    #     When `resources.type` equals `AWS::ManagedBlockchain::Node`, and
    #     the operator is set to `Equals` or `NotEquals`, the ARN must be in
    #     the following format:
    #
    #     * `arn:<partition>:managedblockchain:<region>:<account_ID>:nodes/<node_ID>`
    #
    #     ^
    #
    #     When `resources.type` equals
    #     `AWS::SageMaker::ExperimentTrialComponent`, and the operator is
    #     set to `Equals` or `NotEquals`, the ARN must be in the following
    #     format:
    #
    #     * `arn:<partition>:sagemaker:<region>:<account_ID>:experiment-trial-component/<experiment_trial_component_name>`
    #
    #     ^
    #
    #     When `resources.type` equals `AWS::SageMaker::FeatureGroup`, and
    #     the operator is set to `Equals` or `NotEquals`, the ARN must be in
    #     the following format:
    #
    #     * `arn:<partition>:sagemaker:<region>:<account_ID>:feature-group/<feature_group_name>`
    #
    #     ^
    #
    #     When `resources.type` equals `AWS::S3::AccessPoint`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in one
    #     of the following formats. To log events on all objects in an S3
    #     access point, we recommend that you use only the access point ARN,
    #     don’t include the object path, and use the `StartsWith` or
    #     `NotStartsWith` operators.
    #
    #     * `arn:<partition>:s3:<region>:<account_ID>:accesspoint/<access_point_name>`
    #
    #     * `arn:<partition>:s3:<region>:<account_ID>:accesspoint/<access_point_name>/object/<object_path>`
    #
    #     When `resources.type` equals `AWS::S3ObjectLambda::AccessPoint`,
    #     and the operator is set to `Equals` or `NotEquals`, the ARN must
    #     be in the following format:
    #
    #     * `arn:<partition>:s3-object-lambda:<region>:<account_ID>:accesspoint/<access_point_name>`
    #
    #     ^
    #
    #     When `resources.type` equals `AWS::S3Outposts::Object`, and the
    #     operator is set to `Equals` or `NotEquals`, the ARN must be in the
    #     following format:
    #
    #     * `arn:<partition>:s3-outposts:<region>:<account_ID>:<object_path>`
    #
    #     ^
    #   @return [String]
    #
    # @!attribute [rw] equals
    #   An operator that includes events that match the exact value of the
    #   event record field specified as the value of `Field`. This is the
    #   only valid operator that you can use with the `readOnly`,
    #   `eventCategory`, and `resources.type` fields.
    #   @return [Array<String>]
    #
    # @!attribute [rw] starts_with
    #   An operator that includes events that match the first few characters
    #   of the event record field specified as the value of `Field`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ends_with
    #   An operator that includes events that match the last few characters
    #   of the event record field specified as the value of `Field`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_equals
    #   An operator that excludes events that match the exact value of the
    #   event record field specified as the value of `Field`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_starts_with
    #   An operator that excludes events that match the first few characters
    #   of the event record field specified as the value of `Field`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_ends_with
    #   An operator that excludes events that match the last few characters
    #   of the event record field specified as the value of `Field`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AdvancedFieldSelector AWS API Documentation
    #
    class AdvancedFieldSelector < Struct.new(
      :field,
      :equals,
      :starts_with,
      :ends_with,
      :not_equals,
      :not_starts_with,
      :not_ends_with)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_store
    #   The ARN (or the ID suffix of the ARN) of an event data store on
    #   which the specified query is running.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The ID of the query that you want to cancel. The `QueryId` comes
    #   from the response of a `StartQuery` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CancelQueryRequest AWS API Documentation
    #
    class CancelQueryRequest < Struct.new(
      :event_data_store,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The ID of the canceled query.
    #   @return [String]
    #
    # @!attribute [rw] query_status
    #   Shows the status of a query after a `CancelQuery` request.
    #   Typically, the values shown are either `RUNNING` or `CANCELLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CancelQueryResponse AWS API Documentation
    #
    class CancelQueryResponse < Struct.new(
      :query_id,
      :query_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the management account of an
    # organization is registered as the CloudTrail delegated administrator.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CannotDelegateManagementAccountException AWS API Documentation
    #
    class CannotDelegateManagementAccountException < Aws::EmptyStructure; end

    # Contains information about a returned CloudTrail channel.
    #
    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) of a channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the CloudTrail channel. For service-linked channels, the
    #   name is `aws-service-channel/service-name/custom-suffix` where
    #   `service-name` represents the name of the Amazon Web Services
    #   service that created the channel and `custom-suffix` represents the
    #   suffix created by the Amazon Web Services service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/Channel AWS API Documentation
    #
    class Channel < Struct.new(
      :channel_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the specified value of `ChannelARN` is
    # not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ChannelARNInvalidException AWS API Documentation
    #
    class ChannelARNInvalidException < Aws::EmptyStructure; end

    # This exception is thrown when the provided channel already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ChannelAlreadyExistsException AWS API Documentation
    #
    class ChannelAlreadyExistsException < Aws::EmptyStructure; end

    # This exception is thrown when the specified event data store cannot
    # yet be deleted because it is in use by a channel.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ChannelExistsForEDSException AWS API Documentation
    #
    class ChannelExistsForEDSException < Aws::EmptyStructure; end

    # This exception is thrown when the maximum number of channels limit is
    # exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ChannelMaxLimitExceededException AWS API Documentation
    #
    class ChannelMaxLimitExceededException < Aws::EmptyStructure; end

    # This exception is thrown when CloudTrail cannot find the specified
    # channel.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ChannelNotFoundException AWS API Documentation
    #
    class ChannelNotFoundException < Aws::EmptyStructure; end

    # This exception is thrown when an operation is called with a trail ARN
    # that is not valid. The following is the format of a trail ARN.
    #
    # `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # This exception is also thrown when you call `AddTags` or `RemoveTags`
    # on a trail, event data store, or channel with a resource ARN that is
    # not valid.
    #
    # The following is the format of an event data store ARN:
    # `arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE`
    #
    # The following is the format of a channel ARN:
    # `arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890`
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CloudTrailARNInvalidException AWS API Documentation
    #
    class CloudTrailARNInvalidException < Aws::EmptyStructure; end

    # This exception is thrown when trusted access has not been enabled
    # between CloudTrail and Organizations. For more information, see
    # [Enabling Trusted Access with Other Amazon Web Services Services][1]
    # and [Prepare For Creating a Trail For Your Organization][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CloudTrailAccessNotEnabledException AWS API Documentation
    #
    class CloudTrailAccessNotEnabledException < Aws::EmptyStructure; end

    # This exception is thrown when a call results in the
    # `InvalidClientTokenId` error code. This can occur when you are
    # creating or updating a trail to send notifications to an Amazon SNS
    # topic that is in a suspended Amazon Web Services account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CloudTrailInvalidClientTokenIdException AWS API Documentation
    #
    class CloudTrailInvalidClientTokenIdException < Aws::EmptyStructure; end

    # Cannot set a CloudWatch Logs delivery for this Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CloudWatchLogsDeliveryUnavailableException AWS API Documentation
    #
    class CloudWatchLogsDeliveryUnavailableException < Aws::EmptyStructure; end

    # This exception is thrown when the specified resource is not ready for
    # an operation. This can occur when you try to run an operation on a
    # resource before CloudTrail has time to fully load the resource, or
    # because another operation is modifying the resource. If this exception
    # occurs, wait a few minutes, and then try the operation again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ConflictException AWS API Documentation
    #
    class ConflictException < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The name of the partner or external event source. You cannot change
    #   this name after you create the channel. A maximum of one channel is
    #   allowed per source.
    #
    #   A source can be either `Custom` for all valid non-Amazon Web
    #   Services events, or the name of a partner event source. For
    #   information about the source names for available partners, see
    #   [Additional information about integration partners][1] in the
    #   CloudTrail User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store-integration.html#cloudtrail-lake-partner-information
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   One or more event data stores to which events arriving through a
    #   channel will be logged.
    #   @return [Array<Types::Destination>]
    #
    # @!attribute [rw] tags
    #   A list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateChannelRequest AWS API Documentation
    #
    class CreateChannelRequest < Struct.new(
      :name,
      :source,
      :destinations,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) of the new channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new channel.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The partner or external event source name.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   The event data stores that log the events arriving through the
    #   channel.
    #   @return [Array<Types::Destination>]
    #
    # @!attribute [rw] tags
    #   A list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateChannelResponse AWS API Documentation
    #
    class CreateChannelResponse < Struct.new(
      :channel_arn,
      :name,
      :source,
      :destinations,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the event data store.
    #   @return [String]
    #
    # @!attribute [rw] advanced_event_selectors
    #   The advanced event selectors to use to select the events for the
    #   data store. You can configure up to five advanced event selectors
    #   for each event data store.
    #
    #   For more information about how to use advanced event selectors to
    #   log CloudTrail events, see [Log events by using advanced event
    #   selectors][1] in the CloudTrail User Guide.
    #
    #   For more information about how to use advanced event selectors to
    #   include Config configuration items in your event data store, see
    #   [Create an event data store for Config configuration items][2] in
    #   the CloudTrail User Guide.
    #
    #   For more information about how to use advanced event selectors to
    #   include non-Amazon Web Services events in your event data store, see
    #   [Create an integration to log events from outside Amazon Web
    #   Services][3] in the CloudTrail User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced
    #   [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-lake-cli.html#lake-cli-create-eds-config
    #   [3]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-lake-cli.html#lake-cli-create-integration
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @!attribute [rw] multi_region_enabled
    #   Specifies whether the event data store includes events from all
    #   Regions, or only from the Region in which the event data store is
    #   created.
    #   @return [Boolean]
    #
    # @!attribute [rw] organization_enabled
    #   Specifies whether an event data store collects events logged for an
    #   organization in Organizations.
    #   @return [Boolean]
    #
    # @!attribute [rw] retention_period
    #   The retention period of the event data store, in days. You can set a
    #   retention period of up to 2557 days, the equivalent of seven years.
    #   @return [Integer]
    #
    # @!attribute [rw] termination_protection_enabled
    #   Specifies whether termination protection is enabled for the event
    #   data store. If termination protection is enabled, you cannot delete
    #   the event data store until termination protection is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags_list
    #   A list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID to use to encrypt the events delivered by
    #   CloudTrail. The value can be an alias name prefixed by `alias/`, a
    #   fully specified ARN to an alias, a fully specified ARN to a key, or
    #   a globally unique identifier.
    #
    #   Disabling or deleting the KMS key, or removing CloudTrail
    #   permissions on the key, prevents CloudTrail from logging events to
    #   the event data store, and prevents users from querying the data in
    #   the event data store that was encrypted with the key. After you
    #   associate an event data store with a KMS key, the KMS key cannot be
    #   removed or changed. Before you disable or delete a KMS key that you
    #   are using with an event data store, delete or back up your event
    #   data store.
    #
    #   CloudTrail also supports KMS multi-Region keys. For more information
    #   about multi-Region keys, see [Using multi-Region keys][1] in the
    #   *Key Management Service Developer Guide*.
    #
    #   Examples:
    #
    #   * `alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #
    #   * `12345678-1234-1234-1234-123456789012`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #   @return [String]
    #
    # @!attribute [rw] start_ingestion
    #   Specifies whether the event data store should start ingesting live
    #   events. The default is true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateEventDataStoreRequest AWS API Documentation
    #
    class CreateEventDataStoreRequest < Struct.new(
      :name,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :tags_list,
      :kms_key_id,
      :start_ingestion)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_store_arn
    #   The ARN of the event data store.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the event data store.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of event data store creation.
    #   @return [String]
    #
    # @!attribute [rw] advanced_event_selectors
    #   The advanced event selectors that were used to select the events for
    #   the data store.
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @!attribute [rw] multi_region_enabled
    #   Indicates whether the event data store collects events from all
    #   Regions, or only from the Region in which it was created.
    #   @return [Boolean]
    #
    # @!attribute [rw] organization_enabled
    #   Indicates whether an event data store is collecting logged events
    #   for an organization in Organizations.
    #   @return [Boolean]
    #
    # @!attribute [rw] retention_period
    #   The retention period of an event data store, in days.
    #   @return [Integer]
    #
    # @!attribute [rw] termination_protection_enabled
    #   Indicates whether termination protection is enabled for the event
    #   data store.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags_list
    #   A list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp that shows when the event data store was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The timestamp that shows when an event data store was updated, if
    #   applicable. `UpdatedTimestamp` is always either the same or newer
    #   than the time shown in `CreatedTimestamp`.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID that encrypts the events delivered by
    #   CloudTrail. The value is a fully specified ARN to a KMS key in the
    #   following format.
    #
    #   `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateEventDataStoreResponse AWS API Documentation
    #
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
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the settings for each trail.
    #
    # @!attribute [rw] name
    #   Specifies the name of the trail. The name must meet the following
    #   requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files. See [Amazon S3 Bucket Naming Requirements][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   Specifies the name of the Amazon SNS topic defined for notification
    #   of log file delivery. The maximum length is 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Specifies whether the trail is publishing events from global
    #   services such as IAM to the log files.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Specifies whether the trail is created in the current Region or in
    #   all Regions. The default is false, which creates a trail only in the
    #   Region where you are signed in. As a best practice, consider
    #   creating trails that log events in all Regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_log_file_validation
    #   Specifies whether log file integrity validation is enabled. The
    #   default is false.
    #
    #   <note markdown="1"> When you disable log file integrity validation, the chain of digest
    #   files is broken after one hour. CloudTrail does not create digest
    #   files for log files that were delivered during a period in which log
    #   file integrity validation was disabled. For example, if you enable
    #   log file integrity validation at noon on January 1, disable it at
    #   noon on January 2, and re-enable it at noon on January 10, digest
    #   files will not be created for the log files delivered from noon on
    #   January 2 to noon on January 10. The same applies whenever you stop
    #   CloudTrail logging or delete a trail.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   Specifies a log group name using an Amazon Resource Name (ARN), a
    #   unique identifier that represents the log group to which CloudTrail
    #   logs will be delivered. You must use a log group that exists in your
    #   account.
    #
    #   Not required unless you specify `CloudWatchLogsRoleArn`.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to
    #   write to a user's log group. You must use a role that exists in
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID to use to encrypt the logs delivered by
    #   CloudTrail. The value can be an alias name prefixed by `alias/`, a
    #   fully specified ARN to an alias, a fully specified ARN to a key, or
    #   a globally unique identifier.
    #
    #   CloudTrail also supports KMS multi-Region keys. For more information
    #   about multi-Region keys, see [Using multi-Region keys][1] in the
    #   *Key Management Service Developer Guide*.
    #
    #   Examples:
    #
    #   * `alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #
    #   * `12345678-1234-1234-1234-123456789012`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #   @return [String]
    #
    # @!attribute [rw] is_organization_trail
    #   Specifies whether the trail is created for all accounts in an
    #   organization in Organizations, or only for the current Amazon Web
    #   Services account. The default is false, and cannot be true unless
    #   the call is made on behalf of an Amazon Web Services account that is
    #   the management account or delegated administrator account for an
    #   organization in Organizations.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags_list
    #   A list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateTrailRequest AWS API Documentation
    #
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
      :tags_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] name
    #   Specifies the name of the trail.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   This field is no longer in use. Use `SnsTopicARN`.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   Specifies the ARN of the Amazon SNS topic that CloudTrail uses to
    #   send notifications when log files are delivered. The format of a
    #   topic ARN is:
    #
    #   `arn:aws:sns:us-east-2:123456789012:MyTopic`
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Specifies whether the trail is publishing events from global
    #   services such as IAM to the log files.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Specifies whether the trail exists in one Region or in all Regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] trail_arn
    #   Specifies the ARN of the trail that was created. The format of a
    #   trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] log_file_validation_enabled
    #   Specifies whether log file integrity validation is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   Specifies the Amazon Resource Name (ARN) of the log group to which
    #   CloudTrail logs will be delivered.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to
    #   write to a user's log group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID that encrypts the events delivered by
    #   CloudTrail. The value is a fully specified ARN to a KMS key in the
    #   following format.
    #
    #   `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @!attribute [rw] is_organization_trail
    #   Specifies whether the trail is an organization trail.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateTrailResponse AWS API Documentation
    #
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
      :is_organization_trail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 buckets, Lambda functions, or Amazon DynamoDB tables
    # that you specify in your event selectors for your trail to log data
    # events. Data events provide information about the resource operations
    # performed on or within a resource itself. These are also known as data
    # plane operations. You can specify up to 250 data resources for a
    # trail.
    #
    # <note markdown="1"> The total number of allowed data resources is 250. This number can be
    # distributed between 1 and 5 event selectors, but the total cannot
    # exceed 250 across all selectors for the trail.
    #
    #  If you are using advanced event selectors, the maximum total number of
    # values for all conditions, across all advanced event selectors for the
    # trail, is 500.
    #
    #  </note>
    #
    # The following example demonstrates how logging works when you
    # configure logging of all data events for an S3 bucket named
    # `bucket-1`. In this example, the CloudTrail user specified an empty
    # prefix, and the option to log both `Read` and `Write` data events.
    #
    # 1.  A user uploads an image file to `bucket-1`.
    #
    # 2.  The `PutObject` API operation is an Amazon S3 object-level API. It
    #     is recorded as a data event in CloudTrail. Because the CloudTrail
    #     user specified an S3 bucket with an empty prefix, events that
    #     occur on any object in that bucket are logged. The trail processes
    #     and logs the event.
    #
    # 3.  A user uploads an object to an Amazon S3 bucket named
    #     `arn:aws:s3:::bucket-2`.
    #
    # 4.  The `PutObject` API operation occurred for an object in an S3
    #     bucket that the CloudTrail user didn't specify for the trail. The
    #     trail doesn’t log the event.
    #
    # The following example demonstrates how logging works when you
    # configure logging of Lambda data events for a Lambda function named
    # *MyLambdaFunction*, but not for all Lambda functions.
    #
    # 1.  A user runs a script that includes a call to the
    #     *MyLambdaFunction* function and the *MyOtherLambdaFunction*
    #     function.
    #
    # 2.  The `Invoke` API operation on *MyLambdaFunction* is an Lambda API.
    #     It is recorded as a data event in CloudTrail. Because the
    #     CloudTrail user specified logging data events for
    #     *MyLambdaFunction*, any invocations of that function are logged.
    #     The trail processes and logs the event.
    #
    # 3.  The `Invoke` API operation on *MyOtherLambdaFunction* is an Lambda
    #     API. Because the CloudTrail user did not specify logging data
    #     events for all Lambda functions, the `Invoke` operation for
    #     *MyOtherLambdaFunction* does not match the function specified for
    #     the trail. The trail doesn’t log the event.
    #
    # @!attribute [rw] type
    #   The resource type in which you want to log data events. You can
    #   specify the following *basic* event selector resource types:
    #
    #   * `AWS::DynamoDB::Table`
    #
    #   * `AWS::Lambda::Function`
    #
    #   * `AWS::S3::Object`
    #
    #   The following resource types are also available through *advanced*
    #   event selectors. Basic event selector resource types are valid in
    #   advanced event selectors, but advanced event selector resource types
    #   are not valid in basic event selectors. For more information, see
    #   [AdvancedFieldSelector][1].
    #
    #   * `AWS::CloudTrail::Channel`
    #
    #   * `AWS::CodeWhisperer::Profile`
    #
    #   * `AWS::Cognito::IdentityPool`
    #
    #   * `AWS::DynamoDB::Stream`
    #
    #   * `AWS::EC2::Snapshot`
    #
    #   * `AWS::EMRWAL::Workspace`
    #
    #   * `AWS::FinSpace::Environment`
    #
    #   * `AWS::Glue::Table`
    #
    #   * `AWS::GuardDuty::Detector`
    #
    #   * `AWS::KendraRanking::ExecutionPlan`
    #
    #   * `AWS::ManagedBlockchain::Node`
    #
    #   * `AWS::SageMaker::ExperimentTrialComponent`
    #
    #   * `AWS::SageMaker::FeatureGroup`
    #
    #   * `AWS::S3::AccessPoint`
    #
    #   * `AWS::S3ObjectLambda::AccessPoint`
    #
    #   * `AWS::S3Outposts::Object`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedFieldSelector.html
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of Amazon Resource Name (ARN) strings or partial ARN
    #   strings for the specified objects.
    #
    #   * To log data events for all objects in all S3 buckets in your
    #     Amazon Web Services account, specify the prefix as `arn:aws:s3`.
    #
    #     <note markdown="1"> This also enables logging of data event activity performed by any
    #     user or role in your Amazon Web Services account, even if that
    #     activity is performed on a bucket that belongs to another Amazon
    #     Web Services account.
    #
    #      </note>
    #
    #   * To log data events for all objects in an S3 bucket, specify the
    #     bucket and an empty object prefix such as
    #     `arn:aws:s3:::bucket-1/`. The trail logs data events for all
    #     objects in this S3 bucket.
    #
    #   * To log data events for specific objects, specify the S3 bucket and
    #     object prefix such as `arn:aws:s3:::bucket-1/example-images`. The
    #     trail logs data events for objects in this S3 bucket that match
    #     the prefix.
    #
    #   * To log data events for all Lambda functions in your Amazon Web
    #     Services account, specify the prefix as `arn:aws:lambda`.
    #
    #     <note markdown="1"> This also enables logging of `Invoke` activity performed by any
    #     user or role in your Amazon Web Services account, even if that
    #     activity is performed on a function that belongs to another Amazon
    #     Web Services account.
    #
    #      </note>
    #
    #   * To log data events for a specific Lambda function, specify the
    #     function ARN.
    #
    #     <note markdown="1"> Lambda function ARNs are exact. For example, if you specify a
    #     function ARN
    #     *arn:aws:lambda:us-west-2:111111111111:function:helloworld*, data
    #     events will only be logged for
    #     *arn:aws:lambda:us-west-2:111111111111:function:helloworld*. They
    #     will not be logged for
    #     *arn:aws:lambda:us-west-2:111111111111:function:helloworld2*.
    #
    #      </note>
    #
    #   * To log data events for all DynamoDB tables in your Amazon Web
    #     Services account, specify the prefix as `arn:aws:dynamodb`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DataResource AWS API Documentation
    #
    class DataResource < Struct.new(
      :type,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the maximum number of CloudTrail
    # delegated administrators is reached.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DelegatedAdminAccountLimitExceededException AWS API Documentation
    #
    class DelegatedAdminAccountLimitExceededException < Aws::EmptyStructure; end

    # @!attribute [rw] channel
    #   The ARN or the `UUID` value of the channel that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteChannelRequest AWS API Documentation
    #
    class DeleteChannelRequest < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteChannelResponse AWS API Documentation
    #
    class DeleteChannelResponse < Aws::EmptyStructure; end

    # @!attribute [rw] event_data_store
    #   The ARN (or the ID suffix of the ARN) of the event data store to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteEventDataStoreRequest AWS API Documentation
    #
    class DeleteEventDataStoreRequest < Struct.new(
      :event_data_store)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteEventDataStoreResponse AWS API Documentation
    #
    class DeleteEventDataStoreResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the CloudTrail channel you're
    #   deleting the resource-based policy from. The following is the format
    #   of a resource ARN:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:channel/MyChannel`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # The request that specifies the name of a trail to delete.
    #
    # @!attribute [rw] name
    #   Specifies the name or the CloudTrail ARN of the trail to be deleted.
    #   The following is the format of a trail ARN.
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteTrailRequest AWS API Documentation
    #
    class DeleteTrailRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteTrailResponse AWS API Documentation
    #
    class DeleteTrailResponse < Aws::EmptyStructure; end

    # Removes CloudTrail delegated administrator permissions from a
    # specified member account in an organization that is currently
    # designated as a delegated administrator.
    #
    # @!attribute [rw] delegated_admin_account_id
    #   A delegated administrator account ID. This is a member account in an
    #   organization that is currently designated as a delegated
    #   administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeregisterOrganizationDelegatedAdminRequest AWS API Documentation
    #
    class DeregisterOrganizationDelegatedAdminRequest < Struct.new(
      :delegated_admin_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the following response if successful. Otherwise, returns an
    # error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeregisterOrganizationDelegatedAdminResponse AWS API Documentation
    #
    class DeregisterOrganizationDelegatedAdminResponse < Aws::EmptyStructure; end

    # @!attribute [rw] event_data_store
    #   The ARN (or the ID suffix of the ARN) of an event data store on
    #   which the specified query was run.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The query ID.
    #   @return [String]
    #
    # @!attribute [rw] query_alias
    #   The alias that identifies a query template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeQueryRequest AWS API Documentation
    #
    class DescribeQueryRequest < Struct.new(
      :event_data_store,
      :query_id,
      :query_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The ID of the query.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The SQL code of a query.
    #   @return [String]
    #
    # @!attribute [rw] query_status
    #   The status of a query. Values for `QueryStatus` include `QUEUED`,
    #   `RUNNING`, `FINISHED`, `FAILED`, `TIMED_OUT`, or `CANCELLED`
    #   @return [String]
    #
    # @!attribute [rw] query_statistics
    #   Metadata about a query, including the number of events that were
    #   matched, the total number of events scanned, the query run time in
    #   milliseconds, and the query's creation time.
    #   @return [Types::QueryStatisticsForDescribeQuery]
    #
    # @!attribute [rw] error_message
    #   The error message returned if a query failed.
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_uri
    #   The URI for the S3 bucket where CloudTrail delivered query results,
    #   if applicable.
    #   @return [String]
    #
    # @!attribute [rw] delivery_status
    #   The delivery status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeQueryResponse AWS API Documentation
    #
    class DescribeQueryResponse < Struct.new(
      :query_id,
      :query_string,
      :query_status,
      :query_statistics,
      :error_message,
      :delivery_s3_uri,
      :delivery_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the trail.
    #
    # @!attribute [rw] trail_name_list
    #   Specifies a list of trail names, trail ARNs, or both, of the trails
    #   to describe. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   If an empty list is specified, information for the trail in the
    #   current Region is returned.
    #
    #   * If an empty list is specified and `IncludeShadowTrails` is false,
    #     then information for all trails in the current Region is returned.
    #
    #   * If an empty list is specified and IncludeShadowTrails is null or
    #     true, then information for all trails in the current Region and
    #     any associated shadow trails in other Regions is returned.
    #
    #   <note markdown="1"> If one or more trail names are specified, information is returned
    #   only if the names match the names of trails belonging only to the
    #   current Region and current account. To return information about a
    #   trail in another Region, you must specify its trail ARN.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_shadow_trails
    #   Specifies whether to include shadow trails in the response. A shadow
    #   trail is the replication in a Region of a trail that was created in
    #   a different Region, or in the case of an organization trail, the
    #   replication of an organization trail in member accounts. If you do
    #   not include shadow trails, organization trails in a member account
    #   and Region replication trails will not be returned. The default is
    #   true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeTrailsRequest AWS API Documentation
    #
    class DescribeTrailsRequest < Struct.new(
      :trail_name_list,
      :include_shadow_trails)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] trail_list
    #   The list of trail objects. Trail objects with string values are only
    #   returned if values for the objects exist in a trail's
    #   configuration. For example, `SNSTopicName` and `SNSTopicARN` are
    #   only returned in results if a trail is configured to send SNS
    #   notifications. Similarly, `KMSKeyId` only appears in results if a
    #   trail's log files are encrypted with KMS customer managed keys.
    #   @return [Array<Types::Trail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeTrailsResponse AWS API Documentation
    #
    class DescribeTrailsResponse < Struct.new(
      :trail_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the destination receiving events.
    #
    # @!attribute [rw] type
    #   The type of destination for events arriving from a channel. For
    #   channels used for a CloudTrail Lake integration, the value is
    #   `EventDataStore`. For service-linked channels, the value is
    #   `AWS_SERVICE`.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   For channels used for a CloudTrail Lake integration, the location is
    #   the ARN of an event data store that receives events from a channel.
    #   For service-linked channels, the location is the name of the Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :type,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an event that was returned by a lookup
    # request. The result includes a representation of a CloudTrail event.
    #
    # @!attribute [rw] event_id
    #   The CloudTrail ID of the event returned.
    #   @return [String]
    #
    # @!attribute [rw] event_name
    #   The name of the event returned.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   Information about whether the event is a write event or a read
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The Amazon Web Services access key ID that was used to sign the
    #   request. If the request was made with temporary security
    #   credentials, this is the access key ID of the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   The date and time of the event returned.
    #   @return [Time]
    #
    # @!attribute [rw] event_source
    #   The Amazon Web Services service to which the request was made.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   A user name or role name of the requester that called the API in the
    #   event returned.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   A list of resources referenced by the event returned.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] cloud_trail_event
    #   A JSON string that contains a representation of the event returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :event_id,
      :event_name,
      :read_only,
      :access_key_id,
      :event_time,
      :event_source,
      :username,
      :resources,
      :cloud_trail_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # A storage lake of event data against which you can run complex
    # SQL-based queries. An event data store can include events that you
    # have logged on your account from the last 90 to 2557 days (about three
    # months to up to seven years). To select events for an event data
    # store, use [advanced event selectors][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced
    #
    # @!attribute [rw] event_data_store_arn
    #   The ARN of the event data store.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the event data store.
    #   @return [String]
    #
    # @!attribute [rw] termination_protection_enabled
    #   Indicates whether the event data store is protected from
    #   termination.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of an event data store.
    #   @return [String]
    #
    # @!attribute [rw] advanced_event_selectors
    #   The advanced event selectors that were used to select events for the
    #   data store.
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @!attribute [rw] multi_region_enabled
    #   Indicates whether the event data store includes events from all
    #   Regions, or only from the Region in which it was created.
    #   @return [Boolean]
    #
    # @!attribute [rw] organization_enabled
    #   Indicates that an event data store is collecting logged events for
    #   an organization.
    #   @return [Boolean]
    #
    # @!attribute [rw] retention_period
    #   The retention period, in days.
    #   @return [Integer]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of the event data store's creation.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The timestamp showing when an event data store was updated, if
    #   applicable. `UpdatedTimestamp` is always either the same or newer
    #   than the time shown in `CreatedTimestamp`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/EventDataStore AWS API Documentation
    #
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
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified event data store ARN is not valid or does not map to an
    # event data store in your account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/EventDataStoreARNInvalidException AWS API Documentation
    #
    class EventDataStoreARNInvalidException < Aws::EmptyStructure; end

    # An event data store with that name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/EventDataStoreAlreadyExistsException AWS API Documentation
    #
    class EventDataStoreAlreadyExistsException < Aws::EmptyStructure; end

    # This exception is thrown when you try to update or delete an event
    # data store that currently has an import in progress.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/EventDataStoreHasOngoingImportException AWS API Documentation
    #
    class EventDataStoreHasOngoingImportException < Aws::EmptyStructure; end

    # Your account has used the maximum number of event data stores.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/EventDataStoreMaxLimitExceededException AWS API Documentation
    #
    class EventDataStoreMaxLimitExceededException < Aws::EmptyStructure; end

    # The specified event data store was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/EventDataStoreNotFoundException AWS API Documentation
    #
    class EventDataStoreNotFoundException < Aws::EmptyStructure; end

    # The event data store cannot be deleted because termination protection
    # is enabled for it.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/EventDataStoreTerminationProtectedException AWS API Documentation
    #
    class EventDataStoreTerminationProtectedException < Aws::EmptyStructure; end

    # Use event selectors to further specify the management and data event
    # settings for your trail. By default, trails created without specific
    # event selectors will be configured to log all read and write
    # management events, and no data events. When an event occurs in your
    # account, CloudTrail evaluates the event selector for all trails. For
    # each trail, if the event matches any event selector, the trail
    # processes and logs the event. If the event doesn't match any event
    # selector, the trail doesn't log the event.
    #
    # You can configure up to five event selectors for a trail.
    #
    # You cannot apply both event selectors and advanced event selectors to
    # a trail.
    #
    # @!attribute [rw] read_write_type
    #   Specify if you want your trail to log read-only events, write-only
    #   events, or all. For example, the EC2 `GetConsoleOutput` is a
    #   read-only API operation and `RunInstances` is a write-only API
    #   operation.
    #
    #   By default, the value is `All`.
    #   @return [String]
    #
    # @!attribute [rw] include_management_events
    #   Specify if you want your event selector to include management events
    #   for your trail.
    #
    #   For more information, see [Management Events][1] in the *CloudTrail
    #   User Guide*.
    #
    #   By default, the value is `true`.
    #
    #   The first copy of management events is free. You are charged for
    #   additional copies of management events that you are logging on any
    #   subsequent trail in the same Region. For more information about
    #   CloudTrail pricing, see [CloudTrail Pricing][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html
    #   [2]: http://aws.amazon.com/cloudtrail/pricing/
    #   @return [Boolean]
    #
    # @!attribute [rw] data_resources
    #   CloudTrail supports data event logging for Amazon S3 objects, Lambda
    #   functions, and Amazon DynamoDB tables with basic event selectors.
    #   You can specify up to 250 resources for an individual event
    #   selector, but the total number of data resources cannot exceed 250
    #   across all event selectors in a trail. This limit does not apply if
    #   you configure resource logging for all data events.
    #
    #   For more information, see [Data Events][1] and [Limits in
    #   CloudTrail][2] in the *CloudTrail User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html
    #   [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html
    #   @return [Array<Types::DataResource>]
    #
    # @!attribute [rw] exclude_management_event_sources
    #   An optional list of service event sources from which you do not want
    #   management events to be logged on your trail. In this release, the
    #   list can be empty (disables the filter), or it can filter out Key
    #   Management Service or Amazon RDS Data API events by containing
    #   `kms.amazonaws.com` or `rdsdata.amazonaws.com`. By default,
    #   `ExcludeManagementEventSources` is empty, and KMS and Amazon RDS
    #   Data API events are logged to your trail. You can exclude management
    #   event sources only in Regions that support the event source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/EventSelector AWS API Documentation
    #
    class EventSelector < Struct.new(
      :read_write_type,
      :include_management_events,
      :data_resources,
      :exclude_management_event_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   The ARN or `UUID` of a channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetChannelRequest AWS API Documentation
    #
    class GetChannelRequest < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of an channel returned by a `GetChannel` request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the CloudTrail channel. For service-linked channels, the
    #   name is `aws-service-channel/service-name/custom-suffix` where
    #   `service-name` represents the name of the Amazon Web Services
    #   service that created the channel and `custom-suffix` represents the
    #   suffix generated by the Amazon Web Services service.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source for the CloudTrail channel.
    #   @return [String]
    #
    # @!attribute [rw] source_config
    #   Provides information about the advanced event selectors configured
    #   for the channel, and whether the channel applies to all Regions or a
    #   single Region.
    #   @return [Types::SourceConfig]
    #
    # @!attribute [rw] destinations
    #   The destinations for the channel. For channels created for
    #   integrations, the destinations are the event data stores that log
    #   events arriving through the channel. For service-linked channels,
    #   the destination is the Amazon Web Services service that created the
    #   service-linked channel to receive events.
    #   @return [Array<Types::Destination>]
    #
    # @!attribute [rw] ingestion_status
    #   A table showing information about the most recent successful and
    #   failed attempts to ingest events.
    #   @return [Types::IngestionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetChannelResponse AWS API Documentation
    #
    class GetChannelResponse < Struct.new(
      :channel_arn,
      :name,
      :source,
      :source_config,
      :destinations,
      :ingestion_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store about
    #   which you want information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventDataStoreRequest AWS API Documentation
    #
    class GetEventDataStoreRequest < Struct.new(
      :event_data_store)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_store_arn
    #   The event data store Amazon Resource Number (ARN).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the event data store.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an event data store.
    #   @return [String]
    #
    # @!attribute [rw] advanced_event_selectors
    #   The advanced event selectors used to select events for the data
    #   store.
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @!attribute [rw] multi_region_enabled
    #   Indicates whether the event data store includes events from all
    #   Regions, or only from the Region in which it was created.
    #   @return [Boolean]
    #
    # @!attribute [rw] organization_enabled
    #   Indicates whether an event data store is collecting logged events
    #   for an organization in Organizations.
    #   @return [Boolean]
    #
    # @!attribute [rw] retention_period
    #   The retention period of the event data store, in days.
    #   @return [Integer]
    #
    # @!attribute [rw] termination_protection_enabled
    #   Indicates that termination protection is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of the event data store's creation.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   Shows the time that an event data store was updated, if applicable.
    #   `UpdatedTimestamp` is always either the same or newer than the time
    #   shown in `CreatedTimestamp`.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID that encrypts the events delivered by
    #   CloudTrail. The value is a fully specified ARN to a KMS key in the
    #   following format.
    #
    #   `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventDataStoreResponse AWS API Documentation
    #
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
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the format:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventSelectorsRequest AWS API Documentation
    #
    class GetEventSelectorsRequest < Struct.new(
      :trail_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_arn
    #   The specified trail ARN that has the event selectors.
    #   @return [String]
    #
    # @!attribute [rw] event_selectors
    #   The event selectors that are configured for the trail.
    #   @return [Array<Types::EventSelector>]
    #
    # @!attribute [rw] advanced_event_selectors
    #   The advanced event selectors that are configured for the trail.
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventSelectorsResponse AWS API Documentation
    #
    class GetEventSelectorsResponse < Struct.new(
      :trail_arn,
      :event_selectors,
      :advanced_event_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_id
    #   The ID for the import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetImportRequest AWS API Documentation
    #
    class GetImportRequest < Struct.new(
      :import_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_id
    #   The ID of the import.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   The ARN of the destination event data store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] import_source
    #   The source S3 bucket.
    #   @return [Types::ImportSource]
    #
    # @!attribute [rw] start_event_time
    #   Used with `EndEventTime` to bound a `StartImport` request, and limit
    #   imported trail events to only those events logged within a specified
    #   time period.
    #   @return [Time]
    #
    # @!attribute [rw] end_event_time
    #   Used with `StartEventTime` to bound a `StartImport` request, and
    #   limit imported trail events to only those events logged within a
    #   specified time period.
    #   @return [Time]
    #
    # @!attribute [rw] import_status
    #   The status of the import.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of the import's creation.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The timestamp of when the import was updated.
    #   @return [Time]
    #
    # @!attribute [rw] import_statistics
    #   Provides statistics for the import. CloudTrail does not update
    #   import statistics in real-time. Returned values for parameters such
    #   as `EventsCompleted` may be lower than the actual value, because
    #   CloudTrail updates statistics incrementally over the course of the
    #   import.
    #   @return [Types::ImportStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetImportResponse AWS API Documentation
    #
    class GetImportResponse < Struct.new(
      :import_id,
      :destinations,
      :import_source,
      :start_event_time,
      :end_event_time,
      :import_status,
      :created_timestamp,
      :updated_timestamp,
      :import_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the format:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetInsightSelectorsRequest AWS API Documentation
    #
    class GetInsightSelectorsRequest < Struct.new(
      :trail_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_arn
    #   The Amazon Resource Name (ARN) of a trail for which you want to get
    #   Insights selectors.
    #   @return [String]
    #
    # @!attribute [rw] insight_selectors
    #   A JSON string that contains the insight types you want to log on a
    #   trail. In this release, `ApiErrorRateInsight` and
    #   `ApiCallRateInsight` are supported as insight types.
    #   @return [Array<Types::InsightSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetInsightSelectorsResponse AWS API Documentation
    #
    class GetInsightSelectorsResponse < Struct.new(
      :trail_arn,
      :insight_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store against
    #   which the query was run.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The ID of the query for which you want to get results.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token you can use to get the next page of query results.
    #   @return [String]
    #
    # @!attribute [rw] max_query_results
    #   The maximum number of query results to display on a single page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetQueryResultsRequest AWS API Documentation
    #
    class GetQueryResultsRequest < Struct.new(
      :event_data_store,
      :query_id,
      :next_token,
      :max_query_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_status
    #   The status of the query. Values include `QUEUED`, `RUNNING`,
    #   `FINISHED`, `FAILED`, `TIMED_OUT`, or `CANCELLED`.
    #   @return [String]
    #
    # @!attribute [rw] query_statistics
    #   Shows the count of query results.
    #   @return [Types::QueryStatistics]
    #
    # @!attribute [rw] query_result_rows
    #   Contains the individual event results of the query.
    #   @return [Array<Array<Hash<String,String>>>]
    #
    # @!attribute [rw] next_token
    #   A token you can use to get the next page of query results.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message returned if a query failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetQueryResultsResponse AWS API Documentation
    #
    class GetQueryResultsResponse < Struct.new(
      :query_status,
      :query_statistics,
      :query_result_rows,
      :next_token,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the CloudTrail channel attached to
    #   the resource-based policy. The following is the format of a resource
    #   ARN: `arn:aws:cloudtrail:us-east-2:123456789012:channel/MyChannel`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the CloudTrail channel attached to
    #   resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   A JSON-formatted string that contains the resource-based policy
    #   attached to the CloudTrail channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :resource_arn,
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name or the Amazon Resource Name (ARN) of the trail for which
    #   you want to retrieve settings information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailRequest AWS API Documentation
    #
    class GetTrailRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail
    #   The settings for a trail.
    #   @return [Types::Trail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailResponse AWS API Documentation
    #
    class GetTrailResponse < Struct.new(
      :trail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name of a trail about which you want the current status.
    #
    # @!attribute [rw] name
    #   Specifies the name or the CloudTrail ARN of the trail for which you
    #   are requesting status. To get the status of a shadow trail (a
    #   replication of the trail in another Region), you must specify its
    #   ARN. The following is the format of a trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailStatusRequest AWS API Documentation
    #
    class GetTrailStatusRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] is_logging
    #   Whether the CloudTrail trail is currently logging Amazon Web
    #   Services API calls.
    #   @return [Boolean]
    #
    # @!attribute [rw] latest_delivery_error
    #   Displays any Amazon S3 error that CloudTrail encountered when
    #   attempting to deliver log files to the designated bucket. For more
    #   information, see [Error Responses][1] in the Amazon S3 API
    #   Reference.
    #
    #   <note markdown="1"> This error occurs only when there is a problem with the destination
    #   S3 bucket, and does not occur for requests that time out. To resolve
    #   the issue, create a new bucket, and then call `UpdateTrail` to
    #   specify the new bucket; or fix the existing objects so that
    #   CloudTrail can again write to the bucket.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html
    #   @return [String]
    #
    # @!attribute [rw] latest_notification_error
    #   Displays any Amazon SNS error that CloudTrail encountered when
    #   attempting to send a notification. For more information about Amazon
    #   SNS errors, see the [Amazon SNS Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sns/latest/dg/welcome.html
    #   @return [String]
    #
    # @!attribute [rw] latest_delivery_time
    #   Specifies the date and time that CloudTrail last delivered log files
    #   to an account's Amazon S3 bucket.
    #   @return [Time]
    #
    # @!attribute [rw] latest_notification_time
    #   Specifies the date and time of the most recent Amazon SNS
    #   notification that CloudTrail has written a new log file to an
    #   account's Amazon S3 bucket.
    #   @return [Time]
    #
    # @!attribute [rw] start_logging_time
    #   Specifies the most recent date and time when CloudTrail started
    #   recording API calls for an Amazon Web Services account.
    #   @return [Time]
    #
    # @!attribute [rw] stop_logging_time
    #   Specifies the most recent date and time when CloudTrail stopped
    #   recording API calls for an Amazon Web Services account.
    #   @return [Time]
    #
    # @!attribute [rw] latest_cloud_watch_logs_delivery_error
    #   Displays any CloudWatch Logs error that CloudTrail encountered when
    #   attempting to deliver logs to CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] latest_cloud_watch_logs_delivery_time
    #   Displays the most recent date and time when CloudTrail delivered
    #   logs to CloudWatch Logs.
    #   @return [Time]
    #
    # @!attribute [rw] latest_digest_delivery_time
    #   Specifies the date and time that CloudTrail last delivered a digest
    #   file to an account's Amazon S3 bucket.
    #   @return [Time]
    #
    # @!attribute [rw] latest_digest_delivery_error
    #   Displays any Amazon S3 error that CloudTrail encountered when
    #   attempting to deliver a digest file to the designated bucket. For
    #   more information, see [Error Responses][1] in the Amazon S3 API
    #   Reference.
    #
    #   <note markdown="1"> This error occurs only when there is a problem with the destination
    #   S3 bucket, and does not occur for requests that time out. To resolve
    #   the issue, create a new bucket, and then call `UpdateTrail` to
    #   specify the new bucket; or fix the existing objects so that
    #   CloudTrail can again write to the bucket.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html
    #   @return [String]
    #
    # @!attribute [rw] latest_delivery_attempt_time
    #   This field is no longer in use.
    #   @return [String]
    #
    # @!attribute [rw] latest_notification_attempt_time
    #   This field is no longer in use.
    #   @return [String]
    #
    # @!attribute [rw] latest_notification_attempt_succeeded
    #   This field is no longer in use.
    #   @return [String]
    #
    # @!attribute [rw] latest_delivery_attempt_succeeded
    #   This field is no longer in use.
    #   @return [String]
    #
    # @!attribute [rw] time_logging_started
    #   This field is no longer in use.
    #   @return [String]
    #
    # @!attribute [rw] time_logging_stopped
    #   This field is no longer in use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailStatusResponse AWS API Documentation
    #
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
      :time_logging_stopped)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an import failure.
    #
    # @!attribute [rw] location
    #   The location of the failure in the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the import.
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   The type of import error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Provides the reason the import failed.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   When the import was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ImportFailureListItem AWS API Documentation
    #
    class ImportFailureListItem < Struct.new(
      :location,
      :status,
      :error_type,
      :error_message,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified import was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ImportNotFoundException AWS API Documentation
    #
    class ImportNotFoundException < Aws::EmptyStructure; end

    # The import source.
    #
    # @!attribute [rw] s3
    #   The source S3 bucket.
    #   @return [Types::S3ImportSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ImportSource AWS API Documentation
    #
    class ImportSource < Struct.new(
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides statistics for the specified `ImportID`. CloudTrail does not
    # update import statistics in real-time. Returned values for parameters
    # such as `EventsCompleted` may be lower than the actual value, because
    # CloudTrail updates statistics incrementally over the course of the
    # import.
    #
    # @!attribute [rw] prefixes_found
    #   The number of S3 prefixes found for the import.
    #   @return [Integer]
    #
    # @!attribute [rw] prefixes_completed
    #   The number of S3 prefixes that completed import.
    #   @return [Integer]
    #
    # @!attribute [rw] files_completed
    #   The number of log files that completed import.
    #   @return [Integer]
    #
    # @!attribute [rw] events_completed
    #   The number of trail events imported into the event data store.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_entries
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ImportStatistics AWS API Documentation
    #
    class ImportStatistics < Struct.new(
      :prefixes_found,
      :prefixes_completed,
      :files_completed,
      :events_completed,
      :failed_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an import that was returned by a lookup
    # request.
    #
    # @!attribute [rw] import_id
    #   The ID of the import.
    #   @return [String]
    #
    # @!attribute [rw] import_status
    #   The status of the import.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   The ARN of the destination event data store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of the import's creation.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The timestamp of the import's last update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ImportsListItem AWS API Documentation
    #
    class ImportsListItem < Struct.new(
      :import_id,
      :import_status,
      :destinations,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event data store is inactive.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InactiveEventDataStoreException AWS API Documentation
    #
    class InactiveEventDataStoreException < Aws::EmptyStructure; end

    # The specified query cannot be canceled because it is in the
    # `FINISHED`, `FAILED`, `TIMED_OUT`, or `CANCELLED` state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InactiveQueryException AWS API Documentation
    #
    class InactiveQueryException < Aws::EmptyStructure; end

    # A table showing information about the most recent successful and
    # failed attempts to ingest events.
    #
    # @!attribute [rw] latest_ingestion_success_time
    #   The time stamp of the most recent successful ingestion of events for
    #   the channel.
    #   @return [Time]
    #
    # @!attribute [rw] latest_ingestion_success_event_id
    #   The event ID of the most recent successful ingestion of events.
    #   @return [String]
    #
    # @!attribute [rw] latest_ingestion_error_code
    #   The error code for the most recent failure to ingest events.
    #   @return [String]
    #
    # @!attribute [rw] latest_ingestion_attempt_time
    #   The time stamp of the most recent attempt to ingest events on the
    #   channel.
    #   @return [Time]
    #
    # @!attribute [rw] latest_ingestion_attempt_event_id
    #   The event ID of the most recent attempt to ingest events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/IngestionStatus AWS API Documentation
    #
    class IngestionStatus < Struct.new(
      :latest_ingestion_success_time,
      :latest_ingestion_success_event_id,
      :latest_ingestion_error_code,
      :latest_ingestion_attempt_time,
      :latest_ingestion_attempt_event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # If you run `GetInsightSelectors` on a trail that does not have
    # Insights events enabled, the operation throws the exception
    # `InsightNotEnabledException`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsightNotEnabledException AWS API Documentation
    #
    class InsightNotEnabledException < Aws::EmptyStructure; end

    # A JSON string that contains a list of Insights types that are logged
    # on a trail.
    #
    # @!attribute [rw] insight_type
    #   The type of Insights events to log on a trail. `ApiCallRateInsight`
    #   and `ApiErrorRateInsight` are valid Insight types.
    #
    #   The `ApiCallRateInsight` Insights type analyzes write-only
    #   management API calls that are aggregated per minute against a
    #   baseline API call volume.
    #
    #   The `ApiErrorRateInsight` Insights type analyzes management API
    #   calls that result in error codes. The error is shown if the API call
    #   is unsuccessful.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsightSelector AWS API Documentation
    #
    class InsightSelector < Struct.new(
      :insight_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the IAM identity that is used to create
    # the organization resource lacks one or more required permissions for
    # creating an organization resource in a required service.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsufficientDependencyServiceAccessPermissionException AWS API Documentation
    #
    class InsufficientDependencyServiceAccessPermissionException < Aws::EmptyStructure; end

    # This exception is thrown when the policy on the S3 bucket or KMS key
    # does not have sufficient permissions for the operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsufficientEncryptionPolicyException AWS API Documentation
    #
    class InsufficientEncryptionPolicyException < Aws::EmptyStructure; end

    # This exception is thrown when the policy on the S3 bucket is not
    # sufficient.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsufficientS3BucketPolicyException AWS API Documentation
    #
    class InsufficientS3BucketPolicyException < Aws::EmptyStructure; end

    # This exception is thrown when the policy on the Amazon SNS topic is
    # not sufficient.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsufficientSnsTopicPolicyException AWS API Documentation
    #
    class InsufficientSnsTopicPolicyException < Aws::EmptyStructure; end

    # This exception is thrown when the provided CloudWatch Logs log group
    # is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidCloudWatchLogsLogGroupArnException AWS API Documentation
    #
    class InvalidCloudWatchLogsLogGroupArnException < Aws::EmptyStructure; end

    # This exception is thrown when the provided role is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidCloudWatchLogsRoleArnException AWS API Documentation
    #
    class InvalidCloudWatchLogsRoleArnException < Aws::EmptyStructure; end

    # A date range for the query was specified that is not valid. Be sure
    # that the start time is chronologically before the end time. For more
    # information about writing a query, see [Create or edit a query][1] in
    # the *CloudTrail User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-create-edit-query.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidDateRangeException AWS API Documentation
    #
    class InvalidDateRangeException < Aws::EmptyStructure; end

    # Occurs if an event category that is not valid is specified as a value
    # of `EventCategory`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidEventCategoryException AWS API Documentation
    #
    class InvalidEventCategoryException < Aws::EmptyStructure; end

    # This exception is thrown when event categories of specified event data
    # stores are not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidEventDataStoreCategoryException AWS API Documentation
    #
    class InvalidEventDataStoreCategoryException < Aws::EmptyStructure; end

    # The event data store is not in a status that supports the operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidEventDataStoreStatusException AWS API Documentation
    #
    class InvalidEventDataStoreStatusException < Aws::EmptyStructure; end

    # This exception is thrown when the `PutEventSelectors` operation is
    # called with a number of event selectors, advanced event selectors, or
    # data resources that is not valid. The combination of event selectors
    # or advanced event selectors and data resources is not valid. A trail
    # can have up to 5 event selectors. If a trail uses advanced event
    # selectors, a maximum of 500 total values for all conditions in all
    # advanced event selectors is allowed. A trail is limited to 250 data
    # resources. These data resources can be distributed across event
    # selectors, but the overall total cannot exceed 250.
    #
    # You can:
    #
    # * Specify a valid number of event selectors (1 to 5) for a trail.
    #
    # * Specify a valid number of data resources (1 to 250) for an event
    #   selector. The limit of number of resources on an individual event
    #   selector is configurable up to 250. However, this upper limit is
    #   allowed only if the total number of data resources does not exceed
    #   250 across all event selectors for a trail.
    #
    # * Specify up to 500 values for all conditions in all advanced event
    #   selectors for a trail.
    #
    # * Specify a valid value for a parameter. For example, specifying the
    #   `ReadWriteType` parameter with a value of `read-only` is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidEventSelectorsException AWS API Documentation
    #
    class InvalidEventSelectorsException < Aws::EmptyStructure; end

    # This exception is thrown when an operation is called on a trail from a
    # Region other than the Region in which the trail was created.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidHomeRegionException AWS API Documentation
    #
    class InvalidHomeRegionException < Aws::EmptyStructure; end

    # This exception is thrown when the provided source S3 bucket is not
    # valid for import.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidImportSourceException AWS API Documentation
    #
    class InvalidImportSourceException < Aws::EmptyStructure; end

    # The formatting or syntax of the `InsightSelectors` JSON statement in
    # your `PutInsightSelectors` or `GetInsightSelectors` request is not
    # valid, or the specified insight type in the `InsightSelectors`
    # statement is not a valid insight type.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidInsightSelectorsException AWS API Documentation
    #
    class InvalidInsightSelectorsException < Aws::EmptyStructure; end

    # This exception is thrown when the KMS key ARN is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidKmsKeyIdException AWS API Documentation
    #
    class InvalidKmsKeyIdException < Aws::EmptyStructure; end

    # Occurs when a lookup attribute is specified that is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidLookupAttributesException AWS API Documentation
    #
    class InvalidLookupAttributesException < Aws::EmptyStructure; end

    # This exception is thrown if the limit specified is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidMaxResultsException AWS API Documentation
    #
    class InvalidMaxResultsException < Aws::EmptyStructure; end

    # A token that is not valid, or a token that was previously used in a
    # request with different parameters. This exception is thrown if the
    # token is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Aws::EmptyStructure; end

    # This exception is thrown when the combination of parameters provided
    # is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidParameterCombinationException AWS API Documentation
    #
    class InvalidParameterCombinationException < Aws::EmptyStructure; end

    # The request includes a parameter that is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Aws::EmptyStructure; end

    # The query that was submitted has validation errors, or uses incorrect
    # syntax or unsupported keywords. For more information about writing a
    # query, see [Create or edit a query][1] in the *CloudTrail User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-create-edit-query.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidQueryStatementException AWS API Documentation
    #
    class InvalidQueryStatementException < Aws::EmptyStructure; end

    # The query status is not valid for the operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidQueryStatusException AWS API Documentation
    #
    class InvalidQueryStatusException < Aws::EmptyStructure; end

    # This exception is thrown when the provided S3 bucket name is not
    # valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidS3BucketNameException AWS API Documentation
    #
    class InvalidS3BucketNameException < Aws::EmptyStructure; end

    # This exception is thrown when the provided S3 prefix is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidS3PrefixException AWS API Documentation
    #
    class InvalidS3PrefixException < Aws::EmptyStructure; end

    # This exception is thrown when the provided SNS topic name is not
    # valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidSnsTopicNameException AWS API Documentation
    #
    class InvalidSnsTopicNameException < Aws::EmptyStructure; end

    # This exception is thrown when the specified value of `Source` is not
    # valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidSourceException AWS API Documentation
    #
    class InvalidSourceException < Aws::EmptyStructure; end

    # This exception is thrown when the specified tag key or values are not
    # valid. It can also occur if there are duplicate tags or too many tags
    # on the resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidTagParameterException AWS API Documentation
    #
    class InvalidTagParameterException < Aws::EmptyStructure; end

    # Occurs if the timestamp values are not valid. Either the start time
    # occurs after the end time, or the time range is outside the range of
    # possible values.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidTimeRangeException AWS API Documentation
    #
    class InvalidTimeRangeException < Aws::EmptyStructure; end

    # Reserved for future use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidTokenException AWS API Documentation
    #
    class InvalidTokenException < Aws::EmptyStructure; end

    # This exception is thrown when the provided trail name is not valid.
    # Trail names must meet the following requirements:
    #
    # * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #   underscores (\_), or dashes (-)
    #
    # * Start with a letter or number, and end with a letter or number
    #
    # * Be between 3 and 128 characters
    #
    # * Have no adjacent periods, underscores or dashes. Names like
    #   `my-_namespace` and `my--namespace` are not valid.
    #
    # * Not be in IP address format (for example, 192.168.5.4)
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidTrailNameException AWS API Documentation
    #
    class InvalidTrailNameException < Aws::EmptyStructure; end

    # This exception is thrown when there is an issue with the specified KMS
    # key and the trail or event data store can't be updated.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/KmsException AWS API Documentation
    #
    class KmsException < Aws::EmptyStructure; end

    # This exception is no longer in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/KmsKeyDisabledException AWS API Documentation
    #
    class KmsKeyDisabledException < Aws::EmptyStructure; end

    # This exception is thrown when the KMS key does not exist, when the S3
    # bucket and the KMS key are not in the same Region, or when the KMS key
    # associated with the Amazon SNS topic either does not exist or is not
    # in the same Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/KmsKeyNotFoundException AWS API Documentation
    #
    class KmsKeyNotFoundException < Aws::EmptyStructure; end

    # @!attribute [rw] max_results
    #   The maximum number of CloudTrail channels to display on a single
    #   page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call. This token must be passed in with the same parameters that
    #   were specified in the original call. For example, if the original
    #   call specified an AttributeKey of 'Username' with a value of
    #   'root', the call with NextToken should include those same
    #   parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListChannelsRequest AWS API Documentation
    #
    class ListChannelsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   The list of channels in the account.
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListChannelsResponse AWS API Documentation
    #
    class ListChannelsResponse < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token you can use to get the next page of event data store
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of event data stores to display on a single page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListEventDataStoresRequest AWS API Documentation
    #
    class ListEventDataStoresRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_stores
    #   Contains information about event data stores in the account, in the
    #   current Region.
    #   @return [Array<Types::EventDataStore>]
    #
    # @!attribute [rw] next_token
    #   A token you can use to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListEventDataStoresResponse AWS API Documentation
    #
    class ListEventDataStoresResponse < Struct.new(
      :event_data_stores,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_id
    #   The ID of the import.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of failures to display on a single page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token you can use to get the next page of import failures.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListImportFailuresRequest AWS API Documentation
    #
    class ListImportFailuresRequest < Struct.new(
      :import_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failures
    #   Contains information about the import failures.
    #   @return [Array<Types::ImportFailureListItem>]
    #
    # @!attribute [rw] next_token
    #   A token you can use to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListImportFailuresResponse AWS API Documentation
    #
    class ListImportFailuresResponse < Struct.new(
      :failures,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of imports to display on a single page.
    #   @return [Integer]
    #
    # @!attribute [rw] destination
    #   The ARN of the destination event data store.
    #   @return [String]
    #
    # @!attribute [rw] import_status
    #   The status of the import.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token you can use to get the next page of import results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListImportsRequest AWS API Documentation
    #
    class ListImportsRequest < Struct.new(
      :max_results,
      :destination,
      :import_status,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] imports
    #   The list of returned imports.
    #   @return [Array<Types::ImportsListItem>]
    #
    # @!attribute [rw] next_token
    #   A token you can use to get the next page of import results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListImportsResponse AWS API Documentation
    #
    class ListImportsResponse < Struct.new(
      :imports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests the public keys for a specified time range.
    #
    # @!attribute [rw] start_time
    #   Optionally specifies, in UTC, the start of the time range to look up
    #   public keys for CloudTrail digest files. If not specified, the
    #   current time is used, and the current public key is returned.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Optionally specifies, in UTC, the end of the time range to look up
    #   public keys for CloudTrail digest files. If not specified, the
    #   current time is used.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListPublicKeysRequest AWS API Documentation
    #
    class ListPublicKeysRequest < Struct.new(
      :start_time,
      :end_time,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] public_key_list
    #   Contains an array of PublicKey objects.
    #
    #   <note markdown="1"> The returned public keys may have validity time ranges that overlap.
    #
    #    </note>
    #   @return [Array<Types::PublicKey>]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListPublicKeysResponse AWS API Documentation
    #
    class ListPublicKeysResponse < Struct.new(
      :public_key_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_store
    #   The ARN (or the ID suffix of the ARN) of an event data store on
    #   which queries were run.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token you can use to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of queries to show on a page.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   Use with `EndTime` to bound a `ListQueries` request, and limit its
    #   results to only those queries run within a specified time period.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Use with `StartTime` to bound a `ListQueries` request, and limit its
    #   results to only those queries run within a specified time period.
    #   @return [Time]
    #
    # @!attribute [rw] query_status
    #   The status of queries that you want to return in results. Valid
    #   values for `QueryStatus` include `QUEUED`, `RUNNING`, `FINISHED`,
    #   `FAILED`, `TIMED_OUT`, or `CANCELLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListQueriesRequest AWS API Documentation
    #
    class ListQueriesRequest < Struct.new(
      :event_data_store,
      :next_token,
      :max_results,
      :start_time,
      :end_time,
      :query_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queries
    #   Lists matching query results, and shows query ID, status, and
    #   creation time of each query.
    #   @return [Array<Types::Query>]
    #
    # @!attribute [rw] next_token
    #   A token you can use to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListQueriesResponse AWS API Documentation
    #
    class ListQueriesResponse < Struct.new(
      :queries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a list of tags to return.
    #
    # @!attribute [rw] resource_id_list
    #   Specifies a list of trail, event data store, or channel ARNs whose
    #   tags will be listed. The list has a limit of 20 ARNs.
    #
    #   Example trail ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   Example event data store ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE`
    #
    #   Example channel ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890`
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :resource_id_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] resource_tag_list
    #   A list of resource tags.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :resource_tag_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call. This token must be passed in with the same parameters that
    #   were specified in the original call. For example, if the original
    #   call specified an AttributeKey of 'Username' with a value of
    #   'root', the call with NextToken should include those same
    #   parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTrailsRequest AWS API Documentation
    #
    class ListTrailsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trails
    #   Returns the name, ARN, and home Region of trails in the current
    #   account.
    #   @return [Array<Types::TrailInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call. If the token does not appear, there are no more results to
    #   return. The token must be passed in with the same parameters as the
    #   previous call. For example, if the original call specified an
    #   AttributeKey of 'Username' with a value of 'root', the call with
    #   NextToken should include those same parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTrailsResponse AWS API Documentation
    #
    class ListTrailsResponse < Struct.new(
      :trails,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an attribute and value that filter the events returned.
    #
    # @!attribute [rw] attribute_key
    #   Specifies an attribute on which to filter the events returned.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   Specifies a value for the specified AttributeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/LookupAttribute AWS API Documentation
    #
    class LookupAttribute < Struct.new(
      :attribute_key,
      :attribute_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a request for LookupEvents.
    #
    # @!attribute [rw] lookup_attributes
    #   Contains a list of lookup attributes. Currently the list can contain
    #   only one item.
    #   @return [Array<Types::LookupAttribute>]
    #
    # @!attribute [rw] start_time
    #   Specifies that only events that occur after or at the specified time
    #   are returned. If the specified start time is after the specified end
    #   time, an error is returned.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Specifies that only events that occur before or at the specified
    #   time are returned. If the specified end time is before the specified
    #   start time, an error is returned.
    #   @return [Time]
    #
    # @!attribute [rw] event_category
    #   Specifies the event category. If you do not specify an event
    #   category, events of the category are not returned in the response.
    #   For example, if you do not specify `insight` as the value of
    #   `EventCategory`, no Insights events are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of events to return. Possible values are 1 through 50.
    #   The default is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call. This token must be passed in with the same parameters that
    #   were specified in the original call. For example, if the original
    #   call specified an AttributeKey of 'Username' with a value of
    #   'root', the call with NextToken should include those same
    #   parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/LookupEventsRequest AWS API Documentation
    #
    class LookupEventsRequest < Struct.new(
      :lookup_attributes,
      :start_time,
      :end_time,
      :event_category,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a response to a LookupEvents action.
    #
    # @!attribute [rw] events
    #   A list of events returned based on the lookup attributes specified
    #   and the CloudTrail event. The events list is sorted by time. The
    #   most recent event is listed first.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call. If the token does not appear, there are no more results to
    #   return. The token must be passed in with the same parameters as the
    #   previous call. For example, if the original call specified an
    #   AttributeKey of 'Username' with a value of 'root', the call with
    #   NextToken should include those same parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/LookupEventsResponse AWS API Documentation
    #
    class LookupEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are already running the maximum number of concurrent queries. Wait
    # a minute for some queries to finish, and then run the query again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/MaxConcurrentQueriesException AWS API Documentation
    #
    class MaxConcurrentQueriesException < Aws::EmptyStructure; end

    # This exception is thrown when the maximum number of trails is reached.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/MaximumNumberOfTrailsExceededException AWS API Documentation
    #
    class MaximumNumberOfTrailsExceededException < Aws::EmptyStructure; end

    # This exception is thrown when the management account does not have a
    # service-linked role.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/NoManagementAccountSLRExistsException AWS API Documentation
    #
    class NoManagementAccountSLRExistsException < Aws::EmptyStructure; end

    # This exception is thrown when the account making the request is not
    # the organization's management account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/NotOrganizationManagementAccountException AWS API Documentation
    #
    class NotOrganizationManagementAccountException < Aws::EmptyStructure; end

    # This exception is thrown when the Amazon Web Services account making
    # the request to create or update an organization trail or event data
    # store is not the management account for an organization in
    # Organizations. For more information, see [Prepare For Creating a Trail
    # For Your Organization][1] or [Create an event data store][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/NotOrganizationMasterAccountException AWS API Documentation
    #
    class NotOrganizationMasterAccountException < Aws::EmptyStructure; end

    # This exception is thrown when the requested operation is not
    # permitted.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/OperationNotPermittedException AWS API Documentation
    #
    class OperationNotPermittedException < Aws::EmptyStructure; end

    # This exception is thrown when Organizations is not configured to
    # support all features. All features must be enabled in Organizations to
    # support creating an organization trail or event data store.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/OrganizationNotInAllFeaturesModeException AWS API Documentation
    #
    class OrganizationNotInAllFeaturesModeException < Aws::EmptyStructure; end

    # This exception is thrown when the request is made from an Amazon Web
    # Services account that is not a member of an organization. To make this
    # request, sign in using the credentials of an account that belongs to
    # an organization.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/OrganizationsNotInUseException AWS API Documentation
    #
    class OrganizationsNotInUseException < Aws::EmptyStructure; end

    # Contains information about a returned public key.
    #
    # @!attribute [rw] value
    #   The DER encoded public key value in PKCS#1 format.
    #   @return [String]
    #
    # @!attribute [rw] validity_start_time
    #   The starting time of validity of the public key.
    #   @return [Time]
    #
    # @!attribute [rw] validity_end_time
    #   The ending time of validity of the public key.
    #   @return [Time]
    #
    # @!attribute [rw] fingerprint
    #   The fingerprint of the public key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PublicKey AWS API Documentation
    #
    class PublicKey < Struct.new(
      :value,
      :validity_start_time,
      :validity_end_time,
      :fingerprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the following format.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] event_selectors
    #   Specifies the settings for your event selectors. You can configure
    #   up to five event selectors for a trail. You can use either
    #   `EventSelectors` or `AdvancedEventSelectors` in a
    #   `PutEventSelectors` request, but not both. If you apply
    #   `EventSelectors` to a trail, any existing `AdvancedEventSelectors`
    #   are overwritten.
    #   @return [Array<Types::EventSelector>]
    #
    # @!attribute [rw] advanced_event_selectors
    #   Specifies the settings for advanced event selectors. You can add
    #   advanced event selectors, and conditions for your advanced event
    #   selectors, up to a maximum of 500 values for all conditions and
    #   selectors on a trail. You can use either `AdvancedEventSelectors` or
    #   `EventSelectors`, but not both. If you apply
    #   `AdvancedEventSelectors` to a trail, any existing `EventSelectors`
    #   are overwritten. For more information about advanced event
    #   selectors, see [Logging data events][1] in the *CloudTrail User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutEventSelectorsRequest AWS API Documentation
    #
    class PutEventSelectorsRequest < Struct.new(
      :trail_name,
      :event_selectors,
      :advanced_event_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_arn
    #   Specifies the ARN of the trail that was updated with event
    #   selectors. The following is the format of a trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] event_selectors
    #   Specifies the event selectors configured for your trail.
    #   @return [Array<Types::EventSelector>]
    #
    # @!attribute [rw] advanced_event_selectors
    #   Specifies the advanced event selectors configured for your trail.
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutEventSelectorsResponse AWS API Documentation
    #
    class PutEventSelectorsResponse < Struct.new(
      :trail_arn,
      :event_selectors,
      :advanced_event_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_name
    #   The name of the CloudTrail trail for which you want to change or add
    #   Insights selectors.
    #   @return [String]
    #
    # @!attribute [rw] insight_selectors
    #   A JSON string that contains the insight types you want to log on a
    #   trail. `ApiCallRateInsight` and `ApiErrorRateInsight` are valid
    #   Insight types.
    #
    #   The `ApiCallRateInsight` Insights type analyzes write-only
    #   management API calls that are aggregated per minute against a
    #   baseline API call volume.
    #
    #   The `ApiErrorRateInsight` Insights type analyzes management API
    #   calls that result in error codes. The error is shown if the API call
    #   is unsuccessful.
    #   @return [Array<Types::InsightSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutInsightSelectorsRequest AWS API Documentation
    #
    class PutInsightSelectorsRequest < Struct.new(
      :trail_name,
      :insight_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_arn
    #   The Amazon Resource Name (ARN) of a trail for which you want to
    #   change or add Insights selectors.
    #   @return [String]
    #
    # @!attribute [rw] insight_selectors
    #   A JSON string that contains the Insights event types that you want
    #   to log on a trail. The valid Insights types in this release are
    #   `ApiErrorRateInsight` and `ApiCallRateInsight`.
    #   @return [Array<Types::InsightSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutInsightSelectorsResponse AWS API Documentation
    #
    class PutInsightSelectorsResponse < Struct.new(
      :trail_arn,
      :insight_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the CloudTrail channel attached to
    #   the resource-based policy. The following is the format of a resource
    #   ARN: `arn:aws:cloudtrail:us-east-2:123456789012:channel/MyChannel`.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   A JSON-formatted string for an Amazon Web Services resource-based
    #   policy.
    #
    #   The following are requirements for the resource policy:
    #
    #   * Contains only one action: cloudtrail-data:PutAuditEvents
    #
    #   * Contains at least one statement. The policy can have a maximum of
    #     20 statements.
    #
    #   * Each statement contains at least one principal. A statement can
    #     have a maximum of 50 principals.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the CloudTrail channel attached to
    #   the resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   The JSON-formatted string of the Amazon Web Services resource-based
    #   policy attached to the CloudTrail channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :resource_arn,
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A SQL string of criteria about events that you want to collect in an
    # event data store.
    #
    # @!attribute [rw] query_id
    #   The ID of a query.
    #   @return [String]
    #
    # @!attribute [rw] query_status
    #   The status of the query. This can be `QUEUED`, `RUNNING`,
    #   `FINISHED`, `FAILED`, `TIMED_OUT`, or `CANCELLED`.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of a query.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/Query AWS API Documentation
    #
    class Query < Struct.new(
      :query_id,
      :query_status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The query ID does not exist or does not map to a query.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/QueryIdNotFoundException AWS API Documentation
    #
    class QueryIdNotFoundException < Aws::EmptyStructure; end

    # Metadata about a query, such as the number of results.
    #
    # @!attribute [rw] results_count
    #   The number of results returned.
    #   @return [Integer]
    #
    # @!attribute [rw] total_results_count
    #   The total number of results returned by a query.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_scanned
    #   The total bytes that the query scanned in the event data store. This
    #   value matches the number of bytes for which your account is billed
    #   for the query, unless the query is still running.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/QueryStatistics AWS API Documentation
    #
    class QueryStatistics < Struct.new(
      :results_count,
      :total_results_count,
      :bytes_scanned)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets metadata about a query, including the number of events that were
    # matched, the total number of events scanned, the query run time in
    # milliseconds, and the query's creation time.
    #
    # @!attribute [rw] events_matched
    #   The number of events that matched a query.
    #   @return [Integer]
    #
    # @!attribute [rw] events_scanned
    #   The number of events that the query scanned in the event data store.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_scanned
    #   The total bytes that the query scanned in the event data store. This
    #   value matches the number of bytes for which your account is billed
    #   for the query, unless the query is still running.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_time_in_millis
    #   The query's run time, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the query.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/QueryStatisticsForDescribeQuery AWS API Documentation
    #
    class QueryStatisticsForDescribeQuery < Struct.new(
      :events_matched,
      :events_scanned,
      :bytes_scanned,
      :execution_time_in_millis,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an organization member account ID as a CloudTrail delegated
    # administrator.
    #
    # @!attribute [rw] member_account_id
    #   An organization member account ID that you want to designate as a
    #   delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RegisterOrganizationDelegatedAdminRequest AWS API Documentation
    #
    class RegisterOrganizationDelegatedAdminRequest < Struct.new(
      :member_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the following response if successful. Otherwise, returns an
    # error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RegisterOrganizationDelegatedAdminResponse AWS API Documentation
    #
    class RegisterOrganizationDelegatedAdminResponse < Aws::EmptyStructure; end

    # Specifies the tags to remove from a trail, event data store, or
    # channel.
    #
    # @!attribute [rw] resource_id
    #   Specifies the ARN of the trail, event data store, or channel from
    #   which tags should be removed.
    #
    #   Example trail ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   Example event data store ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE`
    #
    #   Example channel ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890`
    #   @return [String]
    #
    # @!attribute [rw] tags_list
    #   Specifies a list of tags to be removed.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RemoveTagsRequest AWS API Documentation
    #
    class RemoveTagsRequest < Struct.new(
      :resource_id,
      :tags_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RemoveTagsResponse AWS API Documentation
    #
    class RemoveTagsResponse < Aws::EmptyStructure; end

    # Specifies the type and name of a resource referenced by an event.
    #
    # @!attribute [rw] resource_type
    #   The type of a resource referenced by the event returned. When the
    #   resource type cannot be determined, null is returned. Some examples
    #   of resource types are: **Instance** for EC2, **Trail** for
    #   CloudTrail, **DBInstance** for Amazon RDS, and **AccessKey** for
    #   IAM. To learn more about how to look up and filter events by the
    #   resource types supported for a service, see [Filtering CloudTrail
    #   Events][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events-console.html#filtering-cloudtrail-events
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource referenced by the event returned. These are
    #   user-created names whose values will depend on the environment. For
    #   example, the resource name might be "auto-scaling-test-group" for
    #   an Auto Scaling Group or "i-1234567" for an EC2 Instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :resource_type,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the provided resource does not exist, or
    # the ARN format of the resource is not valid. The following is the
    # valid format for a resource ARN:
    # `arn:aws:cloudtrail:us-east-2:123456789012:channel/MyChannel`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ResourceARNNotValidException AWS API Documentation
    #
    class ResourceARNNotValidException < Aws::EmptyStructure; end

    # This exception is thrown when the specified resource is not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # This exception is thrown when the specified resource policy is not
    # found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ResourcePolicyNotFoundException AWS API Documentation
    #
    class ResourcePolicyNotFoundException < Aws::EmptyStructure; end

    # This exception is thrown when the resouce-based policy has syntax
    # errors, or contains a principal that is not valid.
    #
    # The following are requirements for the resource policy:
    #
    # * Contains only one action: cloudtrail-data:PutAuditEvents
    #
    # * Contains at least one statement. The policy can have a maximum of 20
    #   statements.
    #
    # * Each statement contains at least one principal. A statement can have
    #   a maximum of 50 principals.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ResourcePolicyNotValidException AWS API Documentation
    #
    class ResourcePolicyNotValidException < Aws::EmptyStructure; end

    # A resource tag.
    #
    # @!attribute [rw] resource_id
    #   Specifies the ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags_list
    #   A list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :resource_id,
      :tags_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the specified resource type is not
    # supported by CloudTrail.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ResourceTypeNotSupportedException AWS API Documentation
    #
    class ResourceTypeNotSupportedException < Aws::EmptyStructure; end

    # @!attribute [rw] event_data_store
    #   The ARN (or the ID suffix of the ARN) of the event data store that
    #   you want to restore.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RestoreEventDataStoreRequest AWS API Documentation
    #
    class RestoreEventDataStoreRequest < Struct.new(
      :event_data_store)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_store_arn
    #   The event data store ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the event data store.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the event data store.
    #   @return [String]
    #
    # @!attribute [rw] advanced_event_selectors
    #   The advanced event selectors that were used to select events.
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @!attribute [rw] multi_region_enabled
    #   Indicates whether the event data store is collecting events from all
    #   Regions, or only from the Region in which the event data store was
    #   created.
    #   @return [Boolean]
    #
    # @!attribute [rw] organization_enabled
    #   Indicates whether an event data store is collecting logged events
    #   for an organization in Organizations.
    #   @return [Boolean]
    #
    # @!attribute [rw] retention_period
    #   The retention period, in days.
    #   @return [Integer]
    #
    # @!attribute [rw] termination_protection_enabled
    #   Indicates that termination protection is enabled and the event data
    #   store cannot be automatically deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of an event data store's creation.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The timestamp that shows when an event data store was updated, if
    #   applicable. `UpdatedTimestamp` is always either the same or newer
    #   than the time shown in `CreatedTimestamp`.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID that encrypts the events delivered by
    #   CloudTrail. The value is a fully specified ARN to a KMS key in the
    #   following format.
    #
    #   `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RestoreEventDataStoreResponse AWS API Documentation
    #
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
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the specified S3 bucket does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/S3BucketDoesNotExistException AWS API Documentation
    #
    class S3BucketDoesNotExistException < Aws::EmptyStructure; end

    # The settings for the source S3 bucket.
    #
    # @!attribute [rw] s3_location_uri
    #   The URI for the source S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_region
    #   The Region associated with the source S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_access_role_arn
    #   The IAM ARN role used to access the source S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/S3ImportSource AWS API Documentation
    #
    class S3ImportSource < Struct.new(
      :s3_location_uri,
      :s3_bucket_region,
      :s3_bucket_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about the channel.
    #
    # @!attribute [rw] apply_to_all_regions
    #   Specifies whether the channel applies to a single Region or to all
    #   Regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] advanced_event_selectors
    #   The advanced event selectors that are configured for the channel.
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/SourceConfig AWS API Documentation
    #
    class SourceConfig < Struct.new(
      :apply_to_all_regions,
      :advanced_event_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store for which
    #   you want to start ingestion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartEventDataStoreIngestionRequest AWS API Documentation
    #
    class StartEventDataStoreIngestionRequest < Struct.new(
      :event_data_store)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartEventDataStoreIngestionResponse AWS API Documentation
    #
    class StartEventDataStoreIngestionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] destinations
    #   The ARN of the destination event data store. Use this parameter for
    #   a new import.
    #   @return [Array<String>]
    #
    # @!attribute [rw] import_source
    #   The source S3 bucket for the import. Use this parameter for a new
    #   import.
    #   @return [Types::ImportSource]
    #
    # @!attribute [rw] start_event_time
    #   Use with `EndEventTime` to bound a `StartImport` request, and limit
    #   imported trail events to only those events logged within a specified
    #   time period. When you specify a time range, CloudTrail checks the
    #   prefix and log file names to verify the names contain a date between
    #   the specified `StartEventTime` and `EndEventTime` before attempting
    #   to import events.
    #   @return [Time]
    #
    # @!attribute [rw] end_event_time
    #   Use with `StartEventTime` to bound a `StartImport` request, and
    #   limit imported trail events to only those events logged within a
    #   specified time period. When you specify a time range, CloudTrail
    #   checks the prefix and log file names to verify the names contain a
    #   date between the specified `StartEventTime` and `EndEventTime`
    #   before attempting to import events.
    #   @return [Time]
    #
    # @!attribute [rw] import_id
    #   The ID of the import. Use this parameter when you are retrying an
    #   import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartImportRequest AWS API Documentation
    #
    class StartImportRequest < Struct.new(
      :destinations,
      :import_source,
      :start_event_time,
      :end_event_time,
      :import_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_id
    #   The ID of the import.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   The ARN of the destination event data store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] import_source
    #   The source S3 bucket for the import.
    #   @return [Types::ImportSource]
    #
    # @!attribute [rw] start_event_time
    #   Used with `EndEventTime` to bound a `StartImport` request, and limit
    #   imported trail events to only those events logged within a specified
    #   time period.
    #   @return [Time]
    #
    # @!attribute [rw] end_event_time
    #   Used with `StartEventTime` to bound a `StartImport` request, and
    #   limit imported trail events to only those events logged within a
    #   specified time period.
    #   @return [Time]
    #
    # @!attribute [rw] import_status
    #   Shows the status of the import after a `StartImport` request. An
    #   import finishes with a status of `COMPLETED` if there were no
    #   failures, or `FAILED` if there were failures.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp for the import's creation.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The timestamp of the import's last update, if applicable.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartImportResponse AWS API Documentation
    #
    class StartImportResponse < Struct.new(
      :import_id,
      :destinations,
      :import_source,
      :start_event_time,
      :end_event_time,
      :import_status,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to CloudTrail to start logging Amazon Web Services API
    # calls for an account.
    #
    # @!attribute [rw] name
    #   Specifies the name or the CloudTrail ARN of the trail for which
    #   CloudTrail logs Amazon Web Services API calls. The following is the
    #   format of a trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartLoggingRequest AWS API Documentation
    #
    class StartLoggingRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartLoggingResponse AWS API Documentation
    #
    class StartLoggingResponse < Aws::EmptyStructure; end

    # @!attribute [rw] query_statement
    #   The SQL code of your query.
    #   @return [String]
    #
    # @!attribute [rw] delivery_s3_uri
    #   The URI for the S3 bucket where CloudTrail delivers the query
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] query_alias
    #   The alias that identifies a query template.
    #   @return [String]
    #
    # @!attribute [rw] query_parameters
    #   The query parameters for the specified `QueryAlias`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartQueryRequest AWS API Documentation
    #
    class StartQueryRequest < Struct.new(
      :query_statement,
      :delivery_s3_uri,
      :query_alias,
      :query_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The ID of the started query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartQueryResponse AWS API Documentation
    #
    class StartQueryResponse < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store for which
    #   you want to stop ingestion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopEventDataStoreIngestionRequest AWS API Documentation
    #
    class StopEventDataStoreIngestionRequest < Struct.new(
      :event_data_store)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopEventDataStoreIngestionResponse AWS API Documentation
    #
    class StopEventDataStoreIngestionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] import_id
    #   The ID of the import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopImportRequest AWS API Documentation
    #
    class StopImportRequest < Struct.new(
      :import_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_id
    #   The ID for the import.
    #   @return [String]
    #
    # @!attribute [rw] import_source
    #   The source S3 bucket for the import.
    #   @return [Types::ImportSource]
    #
    # @!attribute [rw] destinations
    #   The ARN of the destination event data store.
    #   @return [Array<String>]
    #
    # @!attribute [rw] import_status
    #   The status of the import.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of the import's creation.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The timestamp of the import's last update.
    #   @return [Time]
    #
    # @!attribute [rw] start_event_time
    #   Used with `EndEventTime` to bound a `StartImport` request, and limit
    #   imported trail events to only those events logged within a specified
    #   time period.
    #   @return [Time]
    #
    # @!attribute [rw] end_event_time
    #   Used with `StartEventTime` to bound a `StartImport` request, and
    #   limit imported trail events to only those events logged within a
    #   specified time period.
    #   @return [Time]
    #
    # @!attribute [rw] import_statistics
    #   Returns information on the stopped import.
    #   @return [Types::ImportStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopImportResponse AWS API Documentation
    #
    class StopImportResponse < Struct.new(
      :import_id,
      :import_source,
      :destinations,
      :import_status,
      :created_timestamp,
      :updated_timestamp,
      :start_event_time,
      :end_event_time,
      :import_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Passes the request to CloudTrail to stop logging Amazon Web Services
    # API calls for the specified account.
    #
    # @!attribute [rw] name
    #   Specifies the name or the CloudTrail ARN of the trail for which
    #   CloudTrail will stop logging Amazon Web Services API calls. The
    #   following is the format of a trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopLoggingRequest AWS API Documentation
    #
    class StopLoggingRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopLoggingResponse AWS API Documentation
    #
    class StopLoggingResponse < Aws::EmptyStructure; end

    # A custom key-value pair associated with a resource such as a
    # CloudTrail trail, event data store, or channel.
    #
    # @!attribute [rw] key
    #   The key in a key-value pair. The key must be must be no longer than
    #   128 Unicode characters. The key must be unique for the resource to
    #   which it applies.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value in a key-value pair of a tag. The value must be no longer
    #   than 256 Unicode characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of tags per trail, event data store, or channel has
    # exceeded the permitted amount. Currently, the limit is 50.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/TagsLimitExceededException AWS API Documentation
    #
    class TagsLimitExceededException < Aws::EmptyStructure; end

    # The settings for a trail.
    #
    # @!attribute [rw] name
    #   Name of the trail set by calling CreateTrail. The maximum length is
    #   128 characters.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Name of the Amazon S3 bucket into which CloudTrail delivers your
    #   trail files. See [Amazon S3 Bucket Naming Requirements][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   This field is no longer in use. Use `SnsTopicARN`.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   Specifies the ARN of the Amazon SNS topic that CloudTrail uses to
    #   send notifications when log files are delivered. The following is
    #   the format of a topic ARN.
    #
    #   `arn:aws:sns:us-east-2:123456789012:MyTopic`
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Set to **True** to include Amazon Web Services API calls from Amazon
    #   Web Services global services such as IAM. Otherwise, **False**.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Specifies whether the trail exists only in one Region or exists in
    #   all Regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] home_region
    #   The Region in which the trail was created.
    #   @return [String]
    #
    # @!attribute [rw] trail_arn
    #   Specifies the ARN of the trail. The following is the format of a
    #   trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] log_file_validation_enabled
    #   Specifies whether log file validation is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   Specifies an Amazon Resource Name (ARN), a unique identifier that
    #   represents the log group to which CloudTrail logs will be delivered.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to
    #   write to a user's log group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID that encrypts the logs delivered by
    #   CloudTrail. The value is a fully specified ARN to a KMS key in the
    #   following format.
    #
    #   `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @!attribute [rw] has_custom_event_selectors
    #   Specifies if the trail has custom event selectors.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_insight_selectors
    #   Specifies whether a trail has insight types specified in an
    #   `InsightSelector` list.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_organization_trail
    #   Specifies whether the trail is an organization trail.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/Trail AWS API Documentation
    #
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
      :is_organization_trail)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the specified trail already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/TrailAlreadyExistsException AWS API Documentation
    #
    class TrailAlreadyExistsException < Aws::EmptyStructure; end

    # Information about a CloudTrail trail, including the trail's name,
    # home Region, and Amazon Resource Name (ARN).
    #
    # @!attribute [rw] trail_arn
    #   The ARN of a trail.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a trail.
    #   @return [String]
    #
    # @!attribute [rw] home_region
    #   The Amazon Web Services Region in which a trail was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/TrailInfo AWS API Documentation
    #
    class TrailInfo < Struct.new(
      :trail_arn,
      :name,
      :home_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the trail with the given name is not
    # found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/TrailNotFoundException AWS API Documentation
    #
    class TrailNotFoundException < Aws::EmptyStructure; end

    # This exception is no longer in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/TrailNotProvidedException AWS API Documentation
    #
    class TrailNotProvidedException < Aws::EmptyStructure; end

    # This exception is thrown when the requested operation is not
    # supported.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Aws::EmptyStructure; end

    # @!attribute [rw] channel
    #   The ARN or ID (the ARN suffix) of the channel that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   The ARNs of event data stores that you want to log events arriving
    #   through the channel.
    #   @return [Array<Types::Destination>]
    #
    # @!attribute [rw] name
    #   Changes the name of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateChannelRequest AWS API Documentation
    #
    class UpdateChannelRequest < Struct.new(
      :channel,
      :destinations,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel that was updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the channel that was updated.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The event source of the channel that was updated.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   The event data stores that log events arriving through the channel.
    #   @return [Array<Types::Destination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateChannelResponse AWS API Documentation
    #
    class UpdateChannelResponse < Struct.new(
      :channel_arn,
      :name,
      :source,
      :destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_store
    #   The ARN (or the ID suffix of the ARN) of the event data store that
    #   you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The event data store name.
    #   @return [String]
    #
    # @!attribute [rw] advanced_event_selectors
    #   The advanced event selectors used to select events for the event
    #   data store. You can configure up to five advanced event selectors
    #   for each event data store.
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @!attribute [rw] multi_region_enabled
    #   Specifies whether an event data store collects events from all
    #   Regions, or only from the Region in which it was created.
    #   @return [Boolean]
    #
    # @!attribute [rw] organization_enabled
    #   Specifies whether an event data store collects events logged for an
    #   organization in Organizations.
    #   @return [Boolean]
    #
    # @!attribute [rw] retention_period
    #   The retention period, in days.
    #   @return [Integer]
    #
    # @!attribute [rw] termination_protection_enabled
    #   Indicates that termination protection is enabled and the event data
    #   store cannot be automatically deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID to use to encrypt the events delivered by
    #   CloudTrail. The value can be an alias name prefixed by `alias/`, a
    #   fully specified ARN to an alias, a fully specified ARN to a key, or
    #   a globally unique identifier.
    #
    #   Disabling or deleting the KMS key, or removing CloudTrail
    #   permissions on the key, prevents CloudTrail from logging events to
    #   the event data store, and prevents users from querying the data in
    #   the event data store that was encrypted with the key. After you
    #   associate an event data store with a KMS key, the KMS key cannot be
    #   removed or changed. Before you disable or delete a KMS key that you
    #   are using with an event data store, delete or back up your event
    #   data store.
    #
    #   CloudTrail also supports KMS multi-Region keys. For more information
    #   about multi-Region keys, see [Using multi-Region keys][1] in the
    #   *Key Management Service Developer Guide*.
    #
    #   Examples:
    #
    #   * `alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #
    #   * `12345678-1234-1234-1234-123456789012`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateEventDataStoreRequest AWS API Documentation
    #
    class UpdateEventDataStoreRequest < Struct.new(
      :event_data_store,
      :name,
      :advanced_event_selectors,
      :multi_region_enabled,
      :organization_enabled,
      :retention_period,
      :termination_protection_enabled,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_data_store_arn
    #   The ARN of the event data store.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the event data store.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an event data store.
    #   @return [String]
    #
    # @!attribute [rw] advanced_event_selectors
    #   The advanced event selectors that are applied to the event data
    #   store.
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @!attribute [rw] multi_region_enabled
    #   Indicates whether the event data store includes events from all
    #   Regions, or only from the Region in which it was created.
    #   @return [Boolean]
    #
    # @!attribute [rw] organization_enabled
    #   Indicates whether an event data store is collecting logged events
    #   for an organization in Organizations.
    #   @return [Boolean]
    #
    # @!attribute [rw] retention_period
    #   The retention period, in days.
    #   @return [Integer]
    #
    # @!attribute [rw] termination_protection_enabled
    #   Indicates whether termination protection is enabled for the event
    #   data store.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp that shows when an event data store was first created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The timestamp that shows when the event data store was last updated.
    #   `UpdatedTimestamp` is always either the same or newer than the time
    #   shown in `CreatedTimestamp`.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID that encrypts the events delivered by
    #   CloudTrail. The value is a fully specified ARN to a KMS key in the
    #   following format.
    #
    #   `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateEventDataStoreResponse AWS API Documentation
    #
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
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies settings to update for the trail.
    #
    # @!attribute [rw] name
    #   Specifies the name of the trail or trail ARN. If `Name` is a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If `Name` is a trail ARN, it must be in the following format.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files. See [Amazon S3 Bucket Naming Requirements][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   Specifies the name of the Amazon SNS topic defined for notification
    #   of log file delivery. The maximum length is 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Specifies whether the trail is publishing events from global
    #   services such as IAM to the log files.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Specifies whether the trail applies only to the current Region or to
    #   all Regions. The default is false. If the trail exists only in the
    #   current Region and this value is set to true, shadow trails
    #   (replications of the trail) will be created in the other Regions. If
    #   the trail exists in all Regions and this value is set to false, the
    #   trail will remain in the Region where it was created, and its shadow
    #   trails in other Regions will be deleted. As a best practice,
    #   consider using trails that log events in all Regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_log_file_validation
    #   Specifies whether log file validation is enabled. The default is
    #   false.
    #
    #   <note markdown="1"> When you disable log file integrity validation, the chain of digest
    #   files is broken after one hour. CloudTrail does not create digest
    #   files for log files that were delivered during a period in which log
    #   file integrity validation was disabled. For example, if you enable
    #   log file integrity validation at noon on January 1, disable it at
    #   noon on January 2, and re-enable it at noon on January 10, digest
    #   files will not be created for the log files delivered from noon on
    #   January 2 to noon on January 10. The same applies whenever you stop
    #   CloudTrail logging or delete a trail.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   Specifies a log group name using an Amazon Resource Name (ARN), a
    #   unique identifier that represents the log group to which CloudTrail
    #   logs are delivered. You must use a log group that exists in your
    #   account.
    #
    #   Not required unless you specify `CloudWatchLogsRoleArn`.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to
    #   write to a user's log group. You must use a role that exists in
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID to use to encrypt the logs delivered by
    #   CloudTrail. The value can be an alias name prefixed by "alias/", a
    #   fully specified ARN to an alias, a fully specified ARN to a key, or
    #   a globally unique identifier.
    #
    #   CloudTrail also supports KMS multi-Region keys. For more information
    #   about multi-Region keys, see [Using multi-Region keys][1] in the
    #   *Key Management Service Developer Guide*.
    #
    #   Examples:
    #
    #   * alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012
    #
    #   * 12345678-1234-1234-1234-123456789012
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #   @return [String]
    #
    # @!attribute [rw] is_organization_trail
    #   Specifies whether the trail is applied to all accounts in an
    #   organization in Organizations, or only for the current Amazon Web
    #   Services account. The default is false, and cannot be true unless
    #   the call is made on behalf of an Amazon Web Services account that is
    #   the management account or delegated administrator account for an
    #   organization in Organizations. If the trail is not an organization
    #   trail and this is set to `true`, the trail will be created in all
    #   Amazon Web Services accounts that belong to the organization. If the
    #   trail is an organization trail and this is set to `false`, the trail
    #   will remain in the current Amazon Web Services account but be
    #   deleted from all member accounts in the organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateTrailRequest AWS API Documentation
    #
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
      :is_organization_trail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] name
    #   Specifies the name of the trail.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your IAM Log Files][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   This field is no longer in use. Use `SnsTopicARN`.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   Specifies the ARN of the Amazon SNS topic that CloudTrail uses to
    #   send notifications when log files are delivered. The following is
    #   the format of a topic ARN.
    #
    #   `arn:aws:sns:us-east-2:123456789012:MyTopic`
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Specifies whether the trail is publishing events from global
    #   services such as IAM to the log files.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Specifies whether the trail exists in one Region or in all Regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] trail_arn
    #   Specifies the ARN of the trail that was updated. The following is
    #   the format of a trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] log_file_validation_enabled
    #   Specifies whether log file integrity validation is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   Specifies the Amazon Resource Name (ARN) of the log group to which
    #   CloudTrail logs are delivered.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to
    #   write to a user's log group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID that encrypts the logs delivered by
    #   CloudTrail. The value is a fully specified ARN to a KMS key in the
    #   following format.
    #
    #   `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @!attribute [rw] is_organization_trail
    #   Specifies whether the trail is an organization trail.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateTrailResponse AWS API Documentation
    #
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
      :is_organization_trail)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
