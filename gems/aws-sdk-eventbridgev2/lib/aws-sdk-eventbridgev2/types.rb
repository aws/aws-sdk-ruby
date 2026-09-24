# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EventBridgeV2
  module Types

    # The caller does not have the permissions required to perform the
    # operation. This error is also returned when the operation cannot use
    # the AWS KMS key for the event bus.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for forwarding a single AWS service's events from the
    # account's default event bus.
    #
    # @!attribute [rw] aws_service
    #   A single AWS service source identifier, e.g. "aws.s3". Wildcards and
    #   lists are rejected.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   A filter pattern, as a JSON string, that defines which of the
    #   service's events are forwarded to the event bus. Do not include
    #   source, account, or region as top-level fields. If no pattern is
    #   specified, all events from the service are forwarded.
    #   @return [String]
    #
    # @!attribute [rw] on_failure_configuration
    #   The destination for events that could not be forwarded.
    #   @return [Types::OnFailureConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/AwsServiceEventsSourceConfiguration AWS API Documentation
    #
    class AwsServiceEventsSourceConfiguration < Struct.new(
      :aws_service,
      :pattern,
      :on_failure_configuration)
      SENSITIVE = [:pattern]
      include Aws::Structure
    end

    # Batching configuration for a subscriber.
    #
    # @!attribute [rw] max_batch_size
    #   The maximum number of events to include in a single batch delivered
    #   to the target. The service delivers up to this many events per
    #   batch; fewer may be delivered when the batch window elapses or the
    #   target's per-batch limit is smaller. This is a maximum, not a
    #   guaranteed count. Valid range is 1-500 (default: 10, or the target
    #   API's per-batch maximum). The resolved value applied by the service
    #   is returned on read.
    #   @return [Integer]
    #
    # @!attribute [rw] max_batch_window_in_seconds
    #   The maximum time in seconds to wait for a batch to fill before
    #   delivering it to the target. This is a maximum; a batch may be
    #   delivered sooner if it reaches MaxBatchSize or another delivery
    #   condition is met. Valid range is 0-300 (default: 0, meaning no
    #   wait). The resolved value applied by the service is always returned
    #   on read.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/BatchConfiguration AWS API Documentation
    #
    class BatchConfiguration < Struct.new(
      :max_batch_size,
      :max_batch_window_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Another change to the resource is already in progress. Retry the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A client-supplied precondition (e.g. ExpectedRevisionId on a
    # resource-policy write) did not match the current state of the
    # resource. Retrying the same request will fail again; re-read the
    # resource and re-evaluate before retrying.
    #
    # A conditional request is not retry-safe on its own. If an earlier
    # attempt committed but its response never reached the caller, retrying
    # fails with this error, which is indistinguishable from another writer
    # having won. Compare the resource's current contents with what the
    # request intended: a successful attempt stores a revision ID the caller
    # never saw, so the revision alone cannot tell the two apart, but
    # matching contents mean the change took effect.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Authentication configuration for public Confluent Schema Registry via
    # EventBridge Connection.
    #
    # @!attribute [rw] connection_arn
    #   EventBridge Connection ARN that provides API Key or OAuth
    #   credentials for the registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ConfluentPublicRegistryConfiguration AWS API Documentation
    #
    class ConfluentPublicRegistryConfiguration < Struct.new(
      :connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of an event bus. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'. The
    #   grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in
    #   the bus's ARN. The same type is used everywhere a bus name
    #   appears.</p> </id></name>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   Encryption configuration for an event bus.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   Event storage configuration for an event bus.
    #   @return [Types::StorageConfiguration]
    #
    # @!attribute [rw] tags
    #   Tags attached to a resource, as key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of
    #   the request. The SDK generates one automatically when the field is
    #   omitted.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/CreateEventBusRequest AWS API Documentation
    #
    class CreateEventBusRequest < Struct.new(
      :name,
      :description,
      :encryption_configuration,
      :storage_configuration,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of an event bus. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'. The
    #   grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in
    #   the bus's ARN. The same type is used everywhere a bus name
    #   appears.</p> </id></name>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   Encryption configuration for an event bus.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   Event storage configuration of an event bus, as returned on reads.
    #   @return [Types::StorageConfigurationOutput]
    #
    # @!attribute [rw] state
    #   Lifecycle state of an event bus.
    #
    #   * CREATING: Bus creation is in progress.
    #   * CREATE\_FAILED: Bus creation failed; see StateReason. The bus
    #     cannot be recovered or recreated in place: delete it with
    #     DeleteEventBus, then create a new bus.
    #   * ACTIVE: Bus is fully operational and can accept events.
    #   * UPDATING: Bus update is in progress.
    #   * UPDATE\_FAILED: Bus update failed; the bus remains operational
    #     with its previous configuration.
    #   * DELETING: Bus deletion is actively in progress.
    #   * DELETE\_FAILED: Bus deletion failed; see StateReason. Retry
    #     DeleteEventBus after removing subscribers and event sources.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   Human-readable explanation of why an event bus is in its current
    #   State. Omitted when the bus is in a normal operational state
    #   (ACTIVE). It stands in for the error response an asynchronous
    #   failure cannot return, so it applies only to resources with an
    #   asynchronous lifecycle: event buses. EventSources and subscribers
    #   are provisioned synchronously and report failures directly on the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the event bus was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/CreateEventBusResponse AWS API Documentation
    #
    class CreateEventBusResponse < Struct.new(
      :event_bus_arn,
      :name,
      :description,
      :encryption_configuration,
      :storage_configuration,
      :state,
      :state_reason,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   EventSource name. First character alphanumeric; the rest may add
    #   '.', '-', '\_'. Names may not begin with the reserved "aws."
    #   prefix. The grammar matches the ARN local-name segment in
    #   EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be
    #   created.</p> </id></name></type>
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Discriminated EventSource configuration. Exactly one variant must be
    #   set.
    #   @return [Types::EventSourceConfiguration]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to a resource, as key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of
    #   the request. The SDK generates one automatically when the field is
    #   omitted.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/CreateEventSourceRequest AWS API Documentation
    #
    class CreateEventSourceRequest < Struct.new(
      :name,
      :event_bus_arn,
      :configuration,
      :description,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment
    #   is set by the service (aws.service for AWS service events,
    #   aws.partner for partner events) and is not part of the resource's
    #   name. The id segment is a 25-character identifier generated by the
    #   service.</p> </id></name></type>
    #   @return [String]
    #
    # @!attribute [rw] name
    #   EventSource name. First character alphanumeric; the rest may add
    #   '.', '-', '\_'. Names may not begin with the reserved "aws."
    #   prefix. The grammar matches the ARN local-name segment in
    #   EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be
    #   created.</p> </id></name></type>
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Lifecycle state of an EventSource. Revocation is reported by the
    #   Revoked flag.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the EventSource was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/CreateEventSourceResponse AWS API Documentation
    #
    class CreateEventSourceResponse < Struct.new(
      :event_source_arn,
      :name,
      :event_bus_arn,
      :state,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of a subscriber. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] invoke_configuration
    #   Configuration for how the subscriber invokes its target.
    #   @return [Types::InvokeConfiguration]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] filter_configuration
    #   Configuration for filtering events delivered to a subscriber. On
    #   CreateSubscriber, Filters is required and must contain at least one
    #   Filter with a non-empty Pattern. On UpdateSubscriber, an empty
    #   `FilterConfiguration:{}` clears the existing filter. Any non-empty
    #   shape (including `{Language:X}` without Filters) must contain a
    #   valid Filters list — same contract as CreateSubscriber. A non-empty
    #   Filters list overwrites; an omitted FilterConfiguration preserves
    #   existing state. All Filters are implicitly ANDed — an event must
    #   match every Filter to be delivered.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in
    #   order within an event group; UNORDERED delivers without an ordering
    #   guarantee.
    #   @return [String]
    #
    # @!attribute [rw] starting_position
    #   Starting position for a subscriber.
    #   @return [String]
    #
    # @!attribute [rw] point_in_time_configuration
    #   Point-in-time configuration for a subscriber. Only applicable when
    #   StartingPosition is POINT\_IN\_TIME.
    #   @return [Types::PointInTimeConfiguration]
    #
    # @!attribute [rw] batch_configuration
    #   Batching configuration for a subscriber.
    #   @return [Types::BatchConfiguration]
    #
    # @!attribute [rw] transformer
    #   Not applicable to universal (aws-sdk) targets, whose input
    #   transformation is UniversalTargetParameters.Input; a Transformer on
    #   such a target is rejected.
    #   @return [Types::Transformer]
    #
    # @!attribute [rw] retry_policy
    #   Retry policy for a subscriber.
    #   @return [Types::RetryPolicy]
    #
    # @!attribute [rw] on_failure_configuration
    #   On-failure configuration: where a failed delivery is sent. Shared by
    #   the subscriber and the EventSource.
    #   @return [Types::OnFailureConfiguration]
    #
    # @!attribute [rw] log_configuration
    #   Log configuration for a subscriber.
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] state
    #   Customer-controlled run state of a subscriber, set on create or
    #   update. Distinct from the bus lifecycle vocabulary, where ACTIVE
    #   means "provisioned and healthy". Delivery requires State RUNNING on
    #   a subscriber that is not revoked.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to a resource, as key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of
    #   the request. The SDK generates one automatically when the field is
    #   omitted.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/CreateSubscriberRequest AWS API Documentation
    #
    class CreateSubscriberRequest < Struct.new(
      :name,
      :event_bus_arn,
      :invoke_configuration,
      :description,
      :filter_configuration,
      :type,
      :starting_position,
      :point_in_time_configuration,
      :batch_configuration,
      :transformer,
      :retry_policy,
      :on_failure_configuration,
      :log_configuration,
      :state,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a
    #   subscriber.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a subscriber. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in
    #   order within an event group; UNORDERED delivers without an ordering
    #   guarantee.
    #   @return [String]
    #
    # @!attribute [rw] starting_position
    #   Starting position for a subscriber.
    #   @return [String]
    #
    # @!attribute [rw] point_in_time_configuration
    #   Point-in-time configuration for a subscriber. Only applicable when
    #   StartingPosition is POINT\_IN\_TIME.
    #   @return [Types::PointInTimeConfiguration]
    #
    # @!attribute [rw] state
    #   Customer-controlled run state of a subscriber, set on create or
    #   update. Distinct from the bus lifecycle vocabulary, where ACTIVE
    #   means "provisioned and healthy". Delivery requires State RUNNING on
    #   a subscriber that is not revoked.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the subscriber was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/CreateSubscriberResponse AWS API Documentation
    #
    class CreateSubscriberResponse < Struct.new(
      :subscriber_arn,
      :name,
      :event_bus_arn,
      :type,
      :starting_position,
      :point_in_time_configuration,
      :state,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deduplication settings for a publish request.
    #
    # @!attribute [rw] deduplication_type
    #   How duplicate events are detected: by a hash of the event content
    #   (CONTENT\_BASED). To deduplicate by a caller-supplied token instead,
    #   omit DeduplicationConfiguration and set DeduplicationId on each
    #   entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeduplicationConfiguration AWS API Documentation
    #
    class DeduplicationConfiguration < Struct.new(
      :deduplication_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteEventBusRequest AWS API Documentation
    #
    class DeleteEventBusRequest < Struct.new(
      :event_bus_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteEventBusResponse AWS API Documentation
    #
    class DeleteEventBusResponse < Aws::EmptyStructure; end

    # @!attribute [rw] event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment
    #   is set by the service (aws.service for AWS service events,
    #   aws.partner for partner events) and is not part of the resource's
    #   name. The id segment is a 25-character identifier generated by the
    #   service.</p> </id></name></type>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteEventSourceRequest AWS API Documentation
    #
    class DeleteEventSourceRequest < Struct.new(
      :event_source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteEventSourceResponse AWS API Documentation
    #
    class DeleteEventSourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   Which named policy to delete. Defaults to "default" when omitted (a
    #   delete AWS Resource Access Manager makes on the owner's behalf
    #   resolves to "AWS\_RAM" instead). The two writers are exclusive in
    #   both directions — only Resource Access Manager can delete
    #   "AWS\_RAM", and only the bus owner can delete "default" — so naming
    #   the other party's policy fails with AccessDeniedException. A
    #   well-formed name that is neither of the two fails with
    #   InvalidInputException.
    #   @return [String]
    #
    # @!attribute [rw] expected_revision_id
    #   The delete succeeds only if the named policy's current revision ID
    #   matches this value; if it differs or the policy does not exist, the
    #   operation fails with ConflictException. The "NO\_POLICY" sentinel is
    #   not valid here. When omitted, deleting an absent policy is an
    #   idempotent success. Supplying this value makes the delete
    #   non-idempotent: once it succeeds the expected revision no longer
    #   exists, so retrying an unanswered request fails with
    #   ConflictException even though the policy was deleted. To establish
    #   the outcome, read the policy back: ResourceNotFoundException means
    #   the delete took effect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy_name,
      :expected_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] revision_id
    #   Revision ID of the policy that was deleted. Absent when no policy
    #   was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Struct.new(
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a
    #   subscriber.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteSubscriberRequest AWS API Documentation
    #
    class DeleteSubscriberRequest < Struct.new(
      :subscriber_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DeleteSubscriberResponse AWS API Documentation
    #
    class DeleteSubscriberResponse < Aws::EmptyStructure; end

    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DescribeEventBusRequest AWS API Documentation
    #
    class DescribeEventBusRequest < Struct.new(
      :event_bus_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of an event bus. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'. The
    #   grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in
    #   the bus's ARN. The same type is used everywhere a bus name
    #   appears.</p> </id></name>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   Encryption configuration for an event bus.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   Event storage configuration of an event bus, as returned on reads.
    #   @return [Types::StorageConfigurationOutput]
    #
    # @!attribute [rw] creation_time
    #   The time the event bus was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time the event bus was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   Lifecycle state of an event bus.
    #
    #   * CREATING: Bus creation is in progress.
    #   * CREATE\_FAILED: Bus creation failed; see StateReason. The bus
    #     cannot be recovered or recreated in place: delete it with
    #     DeleteEventBus, then create a new bus.
    #   * ACTIVE: Bus is fully operational and can accept events.
    #   * UPDATING: Bus update is in progress.
    #   * UPDATE\_FAILED: Bus update failed; the bus remains operational
    #     with its previous configuration.
    #   * DELETING: Bus deletion is actively in progress.
    #   * DELETE\_FAILED: Bus deletion failed; see StateReason. Retry
    #     DeleteEventBus after removing subscribers and event sources.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   Human-readable explanation of why an event bus is in its current
    #   State. Omitted when the bus is in a normal operational state
    #   (ACTIVE). It stands in for the error response an asynchronous
    #   failure cannot return, so it applies only to resources with an
    #   asynchronous lifecycle: event buses. EventSources and subscribers
    #   are provisioned synchronously and report failures directly on the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DescribeEventBusResponse AWS API Documentation
    #
    class DescribeEventBusResponse < Struct.new(
      :event_bus_arn,
      :name,
      :description,
      :encryption_configuration,
      :storage_configuration,
      :creation_time,
      :last_modified_time,
      :state,
      :state_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment
    #   is set by the service (aws.service for AWS service events,
    #   aws.partner for partner events) and is not part of the resource's
    #   name. The id segment is a 25-character identifier generated by the
    #   service.</p> </id></name></type>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DescribeEventSourceRequest AWS API Documentation
    #
    class DescribeEventSourceRequest < Struct.new(
      :event_source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment
    #   is set by the service (aws.service for AWS service events,
    #   aws.partner for partner events) and is not part of the resource's
    #   name. The id segment is a 25-character identifier generated by the
    #   service.</p> </id></name></type>
    #   @return [String]
    #
    # @!attribute [rw] name
    #   EventSource name. First character alphanumeric; the rest may add
    #   '.', '-', '\_'. Names may not begin with the reserved "aws."
    #   prefix. The grammar matches the ARN local-name segment in
    #   EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be
    #   created.</p> </id></name></type>
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Discriminated EventSource configuration. Exactly one variant must be
    #   set.
    #   @return [Types::EventSourceConfiguration]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Lifecycle state of an EventSource. Revocation is reported by the
    #   Revoked flag.
    #   @return [String]
    #
    # @!attribute [rw] revoked
    #   True when the bus owner has withdrawn this EventSource. Present only
    #   when true, so an absent member means the EventSource is not revoked.
    #   Revocation is terminal: it never returns to false. Mutating
    #   operations on a revoked EventSource fail with InvalidStateException,
    #   except DeleteEventSource, which stays available so a revoked
    #   EventSource can still be cleaned up.
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_time
    #   The time the EventSource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time the EventSource was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DescribeEventSourceResponse AWS API Documentation
    #
    class DescribeEventSourceResponse < Struct.new(
      :event_source_arn,
      :name,
      :event_bus_arn,
      :configuration,
      :description,
      :state,
      :revoked,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a
    #   subscriber.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DescribeSubscriberRequest AWS API Documentation
    #
    class DescribeSubscriberRequest < Struct.new(
      :subscriber_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a
    #   subscriber.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a subscriber. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] invoke_configuration
    #   Configuration for how the subscriber invokes its target.
    #   @return [Types::InvokeConfiguration]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] filter_configuration
    #   Configuration for filtering events delivered to a subscriber. On
    #   CreateSubscriber, Filters is required and must contain at least one
    #   Filter with a non-empty Pattern. On UpdateSubscriber, an empty
    #   `FilterConfiguration:{}` clears the existing filter. Any non-empty
    #   shape (including `{Language:X}` without Filters) must contain a
    #   valid Filters list — same contract as CreateSubscriber. A non-empty
    #   Filters list overwrites; an omitted FilterConfiguration preserves
    #   existing state. All Filters are implicitly ANDed — an event must
    #   match every Filter to be delivered.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in
    #   order within an event group; UNORDERED delivers without an ordering
    #   guarantee.
    #   @return [String]
    #
    # @!attribute [rw] starting_position
    #   Starting position for a subscriber.
    #   @return [String]
    #
    # @!attribute [rw] point_in_time_configuration
    #   Point-in-time configuration for a subscriber. Only applicable when
    #   StartingPosition is POINT\_IN\_TIME.
    #   @return [Types::PointInTimeConfiguration]
    #
    # @!attribute [rw] batch_configuration
    #   Batching configuration for a subscriber.
    #   @return [Types::BatchConfiguration]
    #
    # @!attribute [rw] transformer
    #   Absent for universal (aws-sdk) targets, whose input transformation
    #   is UniversalTargetParameters.Input.
    #   @return [Types::Transformer]
    #
    # @!attribute [rw] retry_policy
    #   Retry policy for a subscriber.
    #   @return [Types::RetryPolicy]
    #
    # @!attribute [rw] on_failure_configuration
    #   On-failure configuration: where a failed delivery is sent. Shared by
    #   the subscriber and the EventSource.
    #   @return [Types::OnFailureConfiguration]
    #
    # @!attribute [rw] log_configuration
    #   Log configuration for a subscriber.
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] state
    #   Customer-controlled run state of a subscriber, set on create or
    #   update. Distinct from the bus lifecycle vocabulary, where ACTIVE
    #   means "provisioned and healthy". Delivery requires State RUNNING on
    #   a subscriber that is not revoked.
    #   @return [String]
    #
    # @!attribute [rw] revoked
    #   True when the bus owner has revoked this subscriber. Present only
    #   when true, so an absent member means the subscriber is not revoked.
    #   Revocation is terminal: it never returns to false. Mutating
    #   operations on a revoked subscriber fail with InvalidStateException,
    #   except DeleteSubscriber, which stays available so a revoked
    #   subscriber can still be cleaned up.
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_time
    #   The time the subscriber was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time the subscriber was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/DescribeSubscriberResponse AWS API Documentation
    #
    class DescribeSubscriberResponse < Struct.new(
      :subscriber_arn,
      :name,
      :event_bus_arn,
      :invoke_configuration,
      :description,
      :filter_configuration,
      :type,
      :starting_position,
      :point_in_time_configuration,
      :batch_configuration,
      :transformer,
      :retry_policy,
      :on_failure_configuration,
      :log_configuration,
      :state,
      :revoked,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encryption configuration for an event bus.
    #
    # @!attribute [rw] kms_key_identifier
    #   Identifier of the AWS KMS customer managed key used to encrypt
    #   events: a key ID, key ARN, alias name, or alias ARN. When absent,
    #   events are encrypted with an AWS owned key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :kms_key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of an event bus, as returned by ListEventBuses.
    #
    # @!attribute [rw] name
    #   Name of an event bus. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'. The
    #   grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in
    #   the bus's ARN. The same type is used everywhere a bus name
    #   appears.</p> </id></name>
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the event bus was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time the event bus was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   Lifecycle state of an event bus.
    #
    #   * CREATING: Bus creation is in progress.
    #   * CREATE\_FAILED: Bus creation failed; see StateReason. The bus
    #     cannot be recovered or recreated in place: delete it with
    #     DeleteEventBus, then create a new bus.
    #   * ACTIVE: Bus is fully operational and can accept events.
    #   * UPDATING: Bus update is in progress.
    #   * UPDATE\_FAILED: Bus update failed; the bus remains operational
    #     with its previous configuration.
    #   * DELETING: Bus deletion is actively in progress.
    #   * DELETE\_FAILED: Bus deletion failed; see StateReason. Retry
    #     DeleteEventBus after removing subscribers and event sources.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   Human-readable explanation of why an event bus is in its current
    #   State. Omitted when the bus is in a normal operational state
    #   (ACTIVE). It stands in for the error response an asynchronous
    #   failure cannot return, so it applies only to resources with an
    #   asynchronous lifecycle: event buses. EventSources and subscribers
    #   are provisioned synchronously and report failures directly on the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_account_id
    #   AWS Account Id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/EventBusSummary AWS API Documentation
    #
    class EventBusSummary < Struct.new(
      :name,
      :event_bus_arn,
      :description,
      :creation_time,
      :last_modified_time,
      :state,
      :state_reason,
      :event_bus_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters for forwarding events to another EventBridge event bus.
    #
    # @!attribute [rw] metadata
    #   Customer-defined metadata forwarded with each event.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] system_metadata
    #   Customer-controllable system metadata attached to each forwarded
    #   event.
    #   @return [Types::EventBusV2SystemMetadata]
    #
    # @!attribute [rw] deduplication_configuration
    #   Deduplication settings applied to the forwarded events on the
    #   downstream bus.
    #   @return [Types::DeduplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/EventBusV2Parameters AWS API Documentation
    #
    class EventBusV2Parameters < Struct.new(
      :metadata,
      :system_metadata,
      :deduplication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Customer-controllable system metadata attached to events forwarded to
    # the downstream event bus.
    #
    # @!attribute [rw] event_group_id
    #   Event group ID for FIFO ordering on the downstream bus. Accepts a
    #   literal or a JSONata expression.
    #   @return [String]
    #
    # @!attribute [rw] deduplication_id
    #   Deduplication ID for FIFO deduplication on the downstream bus.
    #   Accepts a literal or a JSONata expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/EventBusV2SystemMetadata AWS API Documentation
    #
    class EventBusV2SystemMetadata < Struct.new(
      :event_group_id,
      :deduplication_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Discriminated EventSource configuration. Exactly one variant must be
    # set.
    #
    # @note EventSourceConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EventSourceConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EventSourceConfiguration corresponding to the set member.
    #
    # @!attribute [rw] aws_service_events_configuration
    #   Configuration for forwarding a single AWS service's events from the
    #   account's default event bus.
    #   @return [Types::AwsServiceEventsSourceConfiguration]
    #
    # @!attribute [rw] partner_events_configuration
    #   Configuration for forwarding a partner event source's events
    #   through a managed partner event bus.
    #   @return [Types::PartnerEventsSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/EventSourceConfiguration AWS API Documentation
    #
    class EventSourceConfiguration < Struct.new(
      :aws_service_events_configuration,
      :partner_events_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AwsServiceEventsConfiguration < EventSourceConfiguration; end
      class PartnerEventsConfiguration < EventSourceConfiguration; end
      class Unknown < EventSourceConfiguration; end
    end

    # Summary of an EventSource, as returned by ListEventSources.
    #
    # @!attribute [rw] event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment
    #   is set by the service (aws.service for AWS service events,
    #   aws.partner for partner events) and is not part of the resource's
    #   name. The id segment is a 25-character identifier generated by the
    #   service.</p> </id></name></type>
    #   @return [String]
    #
    # @!attribute [rw] name
    #   EventSource name. First character alphanumeric; the rest may add
    #   '.', '-', '\_'. Names may not begin with the reserved "aws."
    #   prefix. The grammar matches the ARN local-name segment in
    #   EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be
    #   created.</p> </id></name></type>
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Origin type of an EventSource: an AWS service's events
    #   (AWS\_SERVICE\_EVENTS) or a partner event source's events
    #   (PARTNER\_EVENTS).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Lifecycle state of an EventSource. Revocation is reported by the
    #   Revoked flag.
    #   @return [String]
    #
    # @!attribute [rw] revoked
    #   True when the bus owner has withdrawn this EventSource. Present only
    #   when true, so a bus owner listing EventSources sees at a glance
    #   which ones they revoked. See DescribeEventSourceResponse$Revoked.
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_time
    #   The time the EventSource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time the EventSource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] event_source_account_id
    #   AWS Account Id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/EventSourceSummary AWS API Documentation
    #
    class EventSourceSummary < Struct.new(
      :event_source_arn,
      :name,
      :event_bus_arn,
      :type,
      :state,
      :revoked,
      :creation_time,
      :last_modified_time,
      :event_source_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single filter entry within a FilterConfiguration.
    #
    # @!attribute [rw] pattern
    #   An event pattern, as a JSON string, that selects which events match.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Scope of a filter pattern within a FilterConfiguration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :pattern,
      :scope)
      SENSITIVE = [:pattern]
      include Aws::Structure
    end

    # Configuration for filtering events delivered to a subscriber. On
    # CreateSubscriber, Filters is required and must contain at least one
    # Filter with a non-empty Pattern. On UpdateSubscriber, an empty
    # `FilterConfiguration:{}` clears the existing filter. Any non-empty
    # shape (including `{Language:X}` without Filters) must contain a valid
    # Filters list — same contract as CreateSubscriber. A non-empty Filters
    # list overwrites; an omitted FilterConfiguration preserves existing
    # state. All Filters are implicitly ANDed — an event must match every
    # Filter to be delivered.
    #
    # @!attribute [rw] language
    #   Defaults to EVENT\_BRIDGE\_PATTERN when not specified.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   List of filters. An event must match every filter to be delivered.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/FilterConfiguration AWS API Documentation
    #
    class FilterConfiguration < Struct.new(
      :language,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   Which named policy to read. Defaults to "default" when omitted (a
    #   read AWS Resource Access Manager makes on the owner's behalf
    #   resolves to "AWS\_RAM" instead). Unlike writing, neither name is
    #   reserved on a read: the bus owner can read both. There is no
    #   fallback between the two, so a bus shared only through Resource
    #   Access Manager fails with ResourceNotFoundException until "AWS\_RAM"
    #   is named explicitly. A well-formed name that is neither of the two
    #   fails with InvalidInputException.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned only when the named policy exists. A missing event bus or a
    # missing named policy fails with ResourceNotFoundException rather than
    # returning an empty or null policy document. Every member is therefore
    # always present on a successful response.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   A resource policy document, as a JSON string. The "default" policy
    #   can be up to 20 KB (20,480 bytes of UTF-8) by default. This quota is
    #   adjustable in Service Quotas. A "default" policy that exceeds the
    #   quota is rejected with PolicyLengthExceededException. No policy
    #   document can exceed 389,120 bytes of UTF-8, regardless of the quota.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   Name of a policy attached to a resource. Valid values: "default"
    #   (the customer-managed policy) and "AWS\_RAM" (managed exclusively by
    #   AWS Resource Access Manager). Any other value is rejected.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Revision ID of a resource policy. A new revision ID is generated on
    #   every successful write.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy_document,
      :policy_name,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # HTTP invocation parameters for subscribers (API Gateway / API
    # Destination). Values are forwarded to the HTTP endpoint.
    #
    # @!attribute [rw] path_parameter_values
    #   Values substituted, in order, for the path-parameter placeholders in
    #   an HTTP target's endpoint path.
    #   @return [Array<String>]
    #
    # @!attribute [rw] header_parameters
    #   Map of HTTP header names to values, sent with the request to an HTTP
    #   target.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] query_string_parameters
    #   Map of query-string parameter names to values, appended to the
    #   request to an HTTP target.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] invocation_timeout_seconds
    #   Timeout in seconds for each invocation of the target (1-30).
    #   String-typed (not integer) so the value may be a JSONata expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/HttpParameters AWS API Documentation
    #
    class HttpParameters < Struct.new(
      :path_parameter_values,
      :header_parameters,
      :query_string_parameters,
      :invocation_timeout_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request reuses the client token of an earlier request with
    # different parameters. Use a new client token, or resend the earlier
    # request unchanged.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/IdempotentParameterMismatchException AWS API Documentation
    #
    class IdempotentParameterMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because of an internal service error. Retry the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/InternalException AWS API Documentation
    #
    class InternalException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request parameter is missing or not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is not in a state that allows the operation. For example,
    # an event bus that is still being created cannot accept events.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for how the subscriber invokes its target.
    #
    # @!attribute [rw] role_arn
    #   IAM role the service assumes to invoke the target. Must belong to
    #   the calling account.
    #   @return [String]
    #
    # @!attribute [rw] lambda_parameters
    #   Lambda invocation parameters for subscribers. Values are forwarded
    #   to the Lambda Invoke API. Every string member accepts a literal or a
    #   JSONata expression (e.g. "\{% $events.Data.qualifier %}").
    #   @return [Types::LambdaParameters]
    #
    # @!attribute [rw] sqs_parameters
    #   SQS invocation parameters for subscribers. Values are forwarded to
    #   the SQS SendMessageBatch API. All scalar values accept a literal or
    #   a JSONata expression (e.g. "\{% $events.Data.groupId %}").
    #   @return [Types::SqsParameters]
    #
    # @!attribute [rw] sns_parameters
    #   SNS invocation parameters for subscribers. Values are forwarded to
    #   the SNS PublishBatch API. All scalar values accept a literal or a
    #   JSONata expression (e.g. "\{% $events.Data.groupId %}").
    #   @return [Types::SnsParameters]
    #
    # @!attribute [rw] kinesis_parameters
    #   Kinesis Data Streams invocation parameters for subscribers. Values
    #   are forwarded to the Kinesis PutRecords API. All scalar values
    #   accept a literal or a JSONata expression (e.g. "\{%
    #   $events.Data.partitionKey %}").
    #   @return [Types::KinesisParameters]
    #
    # @!attribute [rw] step_functions_parameters
    #   Step Functions invocation parameters for subscribers. Values are
    #   forwarded to the Step Functions StartExecution or StartSyncExecution
    #   API. Every string member accepts a literal or a JSONata expression
    #   (e.g. "\{% $events.Data.executionName %}").
    #   @return [Types::StepFunctionsParameters]
    #
    # @!attribute [rw] http_parameters
    #   HTTP invocation parameters for subscribers (API Gateway / API
    #   Destination). Values are forwarded to the HTTP endpoint.
    #   @return [Types::HttpParameters]
    #
    # @!attribute [rw] universal_target_parameters
    #   Parameters for USI (Universal Service Integration) targets. Used
    #   when TargetArn is in the format
    #   arn:aws:events:::aws-sdk:\{service}:\{apiAction}
    #   @return [Types::UniversalTargetParameters]
    #
    # @!attribute [rw] event_bus_v2_parameters
    #   Parameters for forwarding events to another EventBridge event bus.
    #   @return [Types::EventBusV2Parameters]
    #
    # @!attribute [rw] target_arn
    #   ARN of the target a subscriber invokes. The resource grammar is
    #   service-neutral because target services use different separators and
    #   the USI form omits region and account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/InvokeConfiguration AWS API Documentation
    #
    class InvokeConfiguration < Struct.new(
      :role_arn,
      :lambda_parameters,
      :sqs_parameters,
      :sns_parameters,
      :kinesis_parameters,
      :step_functions_parameters,
      :http_parameters,
      :universal_target_parameters,
      :event_bus_v2_parameters,
      :target_arn)
      SENSITIVE = [:lambda_parameters, :sqs_parameters, :sns_parameters, :kinesis_parameters, :step_functions_parameters, :http_parameters, :universal_target_parameters, :event_bus_v2_parameters]
      include Aws::Structure
    end

    # JSONata transform settings for a subscriber.
    #
    # @!attribute [rw] expression
    #   JSONata expression to transform the event. Must be wrapped in \{% %}
    #   delimiters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/JsonataConfiguration AWS API Documentation
    #
    class JsonataConfiguration < Struct.new(
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Kinesis Data Streams invocation parameters for subscribers. Values are
    # forwarded to the Kinesis PutRecords API. All scalar values accept a
    # literal or a JSONata expression (e.g. "\{% $events.Data.partitionKey
    # %}").
    #
    # @!attribute [rw] partition_key
    #   Required by PutRecords even when an explicit hash key is supplied.
    #   Accepts JSONata expression.
    #   @return [String]
    #
    # @!attribute [rw] explicit_hash_key
    #   Explicit hash key forwarded to PutRecords unchanged. Accepts JSONata
    #   expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/KinesisParameters AWS API Documentation
    #
    class KinesisParameters < Struct.new(
      :partition_key,
      :explicit_hash_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda invocation parameters for subscribers. Values are forwarded to
    # the Lambda Invoke API. Every string member accepts a literal or a
    # JSONata expression (e.g. "\{% $events.Data.qualifier %}").
    #
    # @!attribute [rw] invocation_type
    #   Lambda invocation type. EVENT invokes the function asynchronously;
    #   REQUEST\_RESPONSE waits for its result.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Lambda qualifier: $LATEST, $LATEST.PUBLISHED, a numeric version, or
    #   an alias. Accepts a JSONata expression.
    #   @return [String]
    #
    # @!attribute [rw] durable_execution_name
    #   Durable execution name. Accepts a JSONata expression.
    #   @return [String]
    #
    # @!attribute [rw] tenant_id
    #   Tenant identifier. Accepts a JSONata expression.
    #   @return [String]
    #
    # @!attribute [rw] invocation_timeout_seconds
    #   Timeout in seconds for each invocation of the target. String-typed
    #   so the value may be a JSONata expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/LambdaParameters AWS API Documentation
    #
    class LambdaParameters < Struct.new(
      :invocation_type,
      :qualifier,
      :durable_execution_name,
      :tenant_id,
      :invocation_timeout_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed a service quota for the account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name_prefix
    #   Name of an event bus. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'. The
    #   grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in
    #   the bus's ARN. The same type is used everywhere a bus name
    #   appears.</p> </id></name>
    #   @return [String]
    #
    # @!attribute [rw] event_bus_account_id
    #   AWS Account Id.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned by a List operation. Pass it back
    #   in the next request to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in one page of a List operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListEventBusesRequest AWS API Documentation
    #
    class ListEventBusesRequest < Struct.new(
      :name_prefix,
      :event_bus_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_buses
    #   List of event bus summaries.
    #   @return [Array<Types::EventBusSummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned by a List operation. Pass it back
    #   in the next request to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListEventBusesResponse AWS API Documentation
    #
    class ListEventBusesResponse < Struct.new(
      :event_buses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] name_prefix
    #   EventSource name. First character alphanumeric; the rest may add
    #   '.', '-', '\_'. Names may not begin with the reserved "aws."
    #   prefix. The grammar matches the ARN local-name segment in
    #   EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be
    #   created.</p> </id></name></type>
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned by a List operation. Pass it back
    #   in the next request to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in one page of a List operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListEventSourcesRequest AWS API Documentation
    #
    class ListEventSourcesRequest < Struct.new(
      :event_bus_arn,
      :name_prefix,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_sources
    #   List of EventSource summaries.
    #   @return [Array<Types::EventSourceSummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned by a List operation. Pass it back
    #   in the next request to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListEventSourcesResponse AWS API Documentation
    #
    class ListEventSourcesResponse < Struct.new(
      :event_sources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned by a List operation. Pass it back
    #   in the next request to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in one page of a List operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListResourcePoliciesRequest AWS API Documentation
    #
    class ListResourcePoliciesRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summaries only (policy name and revision ID). Use GetResourcePolicy to
    # retrieve a policy document.
    #
    # @!attribute [rw] policy_summaries
    #   List of resource policy summaries.
    #   @return [Array<Types::ResourcePolicySummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned by a List operation. Pass it back
    #   in the next request to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListResourcePoliciesResponse AWS API Documentation
    #
    class ListResourcePoliciesResponse < Struct.new(
      :policy_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] name_prefix
    #   Name of a subscriber. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned by a List operation. Pass it back
    #   in the next request to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in one page of a List operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListSubscribersRequest AWS API Documentation
    #
    class ListSubscribersRequest < Struct.new(
      :event_bus_arn,
      :name_prefix,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscribers
    #   List of subscriber summaries.
    #   @return [Array<Types::SubscriberSummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned by a List operation. Pass it back
    #   in the next request to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListSubscribersResponse AWS API Documentation
    #
    class ListSubscribersResponse < Struct.new(
      :subscribers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags attached to a resource, as key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Log configuration for a subscriber.
    #
    # @!attribute [rw] level
    #   Minimum log level. Records below this level are not emitted.
    #   Defaults to OFF.
    #   @return [String]
    #
    # @!attribute [rw] include_payload
    #   Whether the customer event payload is embedded in log records.
    #   Defaults to ON\_ERROR\_ONLY.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/LogConfiguration AWS API Documentation
    #
    class LogConfiguration < Struct.new(
      :level,
      :include_payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # On-failure configuration: where a failed delivery is sent. Shared by
    # the subscriber and the EventSource.
    #
    # @!attribute [rw] arn
    #   The ARN of the destination that receives events that could not be
    #   delivered. An Amazon SQS queue is the supported destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/OnFailureConfiguration AWS API Documentation
    #
    class OnFailureConfiguration < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for forwarding a partner event source's events through
    # a managed partner event bus.
    #
    # @!attribute [rw] partner_event_source_arn
    #   ARN of the partner event source to forward. It is a partner-owned
    #   resource, so the account segment is empty:
    #   arn:aws:events:<region>::event-source/aws.partner/<name>.</p>
    #   </name></region>
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   A filter pattern, as a JSON string, that defines which of the
    #   partner event source's events are forwarded to the event bus. If no
    #   pattern is specified, all events from the partner event source are
    #   forwarded.
    #   @return [String]
    #
    # @!attribute [rw] partner_bus_kms_key_identifier
    #   Identifier of the AWS KMS customer managed key used to encrypt
    #   events: a key ID, key ARN, alias name, or alias ARN. When absent,
    #   events are encrypted with an AWS owned key.
    #   @return [String]
    #
    # @!attribute [rw] on_failure_configuration
    #   The destination for events that could not be forwarded, covering
    #   both the forwarding target and the managed partner event bus.
    #   @return [Types::OnFailureConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PartnerEventsSourceConfiguration AWS API Documentation
    #
    class PartnerEventsSourceConfiguration < Struct.new(
      :partner_event_source_arn,
      :pattern,
      :partner_bus_kms_key_identifier,
      :on_failure_configuration)
      SENSITIVE = [:pattern]
      include Aws::Structure
    end

    # Point-in-time configuration for a subscriber. Only applicable when
    # StartingPosition is POINT\_IN\_TIME.
    #
    # @!attribute [rw] point_type
    #   Whether to start from the horizon or a specific timestamp.
    #   @return [String]
    #
    # @!attribute [rw] starting_point
    #   Timestamp to start from. Required when PointType is TIMESTAMP.
    #   @return [Time]
    #
    # @!attribute [rw] end_point
    #   Timestamp to stop at. Optional.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PointInTimeConfiguration AWS API Documentation
    #
    class PointInTimeConfiguration < Struct.new(
      :point_type,
      :starting_point,
      :end_point)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy document is larger than the account's resource policy size
    # quota, or larger than the service maximum.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PolicyLengthExceededException AWS API Documentation
    #
    class PolicyLengthExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy was rejected because it would grant public access to the
    # event bus. A statement grants public access when its principal is a
    # wildcard and no condition limits the callers to specific AWS accounts
    # or principals. To fix it, replace the wildcard principal with specific
    # principals, or add a condition that limits the callers to specific AWS
    # accounts. Conditions on event content (events:source,
    # events:detail-type, events:Metadata/*) do not identify the caller and
    # do not make a wildcard principal non-public. Returned only for the
    # "default" policy; the "AWS\_RAM" policy is composed by AWS Resource
    # Access Manager and never grants public access.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PublicPolicyException AWS API Documentation
    #
    class PublicPolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   List of event entries to publish. Must contain at least one entry.
    #   @return [Array<Types::PutEventsRequestEntry>]
    #
    # @!attribute [rw] deduplication_configuration
    #   Request-level deduplication settings, applied to every entry in the
    #   batch.
    #   @return [Types::DeduplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutEventsRequest AWS API Documentation
    #
    class PutEventsRequest < Struct.new(
      :event_bus_arn,
      :entries,
      :deduplication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single event entry in a PutEvents request.
    #
    # @!attribute [rw] source
    #   The source of the event. The `aws.` value prefix is service-reserved
    #   and cannot be used as a value.
    #   @return [String]
    #
    # @!attribute [rw] detail_type
    #   Free-form detail-type classifying an event within its source.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   The event payload, as a valid JSON string.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   ARNs of resources the event concerns. Included in the event
    #   delivered to subscribers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] time
    #   The time the event occurred. Defaults to the time the service
    #   receives the event when omitted.
    #   @return [Time]
    #
    # @!attribute [rw] system_metadata
    #   System metadata for PutEvents entries. ContentType is not applicable
    #   (always application/eventbridge+json, set server-side).
    #   @return [Types::PutEventsSystemMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutEventsRequestEntry AWS API Documentation
    #
    class PutEventsRequestEntry < Struct.new(
      :source,
      :detail_type,
      :detail,
      :resources,
      :time,
      :system_metadata)
      SENSITIVE = [:detail]
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of entries in the batch that failed to be published.
    #   @return [Integer]
    #
    # @!attribute [rw] entries
    #   List of per-entry publish results, in the same order as the request
    #   entries.
    #   @return [Array<Types::PutEventsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutEventsResponse AWS API Documentation
    #
    class PutEventsResponse < Struct.new(
      :failed_entry_count,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Result entry for a published event. The position of each entry in the
    # response list aligns 1:1 with the corresponding request entry.
    #
    # @!attribute [rw] event_id
    #   Unique event ID assigned by the service.
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   Sequence number assigned to the message for ordering within the
    #   message group.
    #   @return [String]
    #
    # @!attribute [rw] success_code
    #   Indicates the outcome for a successfully processed publish entry.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Error code identifying why a publish batch entry failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Human-readable explanation of why a publish batch entry failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutEventsResultEntry AWS API Documentation
    #
    class PutEventsResultEntry < Struct.new(
      :event_id,
      :sequence_number,
      :success_code,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # System metadata for PutEvents entries. ContentType is not applicable
    # (always application/eventbridge+json, set server-side).
    #
    # @!attribute [rw] event_group_id
    #   Event group ID for FIFO ordering.
    #   @return [String]
    #
    # @!attribute [rw] deduplication_id
    #   Deduplication ID for FIFO deduplication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutEventsSystemMetadata AWS API Documentation
    #
    class PutEventsSystemMetadata < Struct.new(
      :event_group_id,
      :deduplication_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   List of event entries to publish. Must contain at least one entry.
    #   @return [Array<Types::PutRawEventsRequestEntry>]
    #
    # @!attribute [rw] schema_registry_configuration
    #   Schema-registry settings for encoding open-format (Avro/Protobuf)
    #   events. Required for open-format entries; ignored for JSON entries.
    #   The registry is read with the caller's credentials, so the caller
    #   needs read access to the registry it references.
    #   @return [Types::SchemaRegistryConfiguration]
    #
    # @!attribute [rw] deduplication_configuration
    #   Request-level deduplication settings, applied to every entry in the
    #   batch.
    #   @return [Types::DeduplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutRawEventsRequest AWS API Documentation
    #
    class PutRawEventsRequest < Struct.new(
      :event_bus_arn,
      :entries,
      :schema_registry_configuration,
      :deduplication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single event entry in a raw publish request.
    #
    # @!attribute [rw] data
    #   The event data as a base64-encoded blob. Supports binary formats.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata key-value pairs you define. Keys must be 1-128 characters
    #   and must not contain "/".
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] system_metadata
    #   Structured system metadata with defined properties.
    #   @return [Types::PutRawEventsSystemMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutRawEventsRequestEntry AWS API Documentation
    #
    class PutRawEventsRequestEntry < Struct.new(
      :data,
      :metadata,
      :system_metadata)
      SENSITIVE = [:data, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of entries in the batch that failed to be published.
    #   @return [Integer]
    #
    # @!attribute [rw] entries
    #   List of per-entry publish results, in the same order as the request
    #   entries.
    #   @return [Array<Types::PutRawEventsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutRawEventsResponse AWS API Documentation
    #
    class PutRawEventsResponse < Struct.new(
      :failed_entry_count,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Result entry for a published event. The position of each entry in the
    # response list aligns 1:1 with the corresponding request entry,
    # enabling co-location by index.
    #
    # @!attribute [rw] event_id
    #   Unique event ID assigned by the service. Present on successful
    #   entries.
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   Sequence number for ordering within the event group.
    #   @return [String]
    #
    # @!attribute [rw] success_code
    #   Indicates how the entry was processed. Present only on successful
    #   entries.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Error code if the entry failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Error message if the entry failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutRawEventsResultEntry AWS API Documentation
    #
    class PutRawEventsResultEntry < Struct.new(
      :event_id,
      :sequence_number,
      :success_code,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # System metadata for PutRawEvents entries. ContentType is required
    # because PutRawEvents supports arbitrary binary formats.
    #
    # @!attribute [rw] content_type
    #   Content type of the event data (e.g.,
    #   "application/cloudevents+json").
    #   @return [String]
    #
    # @!attribute [rw] deduplication_id
    #   Deduplication ID for FIFO deduplication.
    #   @return [String]
    #
    # @!attribute [rw] event_group_id
    #   Event group ID for FIFO ordering.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutRawEventsSystemMetadata AWS API Documentation
    #
    class PutRawEventsSystemMetadata < Struct.new(
      :content_type,
      :deduplication_id,
      :event_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   A resource policy document, as a JSON string. The "default" policy
    #   can be up to 20 KB (20,480 bytes of UTF-8) by default. This quota is
    #   adjustable in Service Quotas. A "default" policy that exceeds the
    #   quota is rejected with PolicyLengthExceededException. No policy
    #   document can exceed 389,120 bytes of UTF-8, regardless of the quota.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   Which named policy to write. Defaults to "default", the
    #   customer-managed policy, when omitted (a write AWS Resource Access
    #   Manager makes on the owner's behalf resolves to "AWS\_RAM"
    #   instead). The two writers are exclusive in both directions — only
    #   Resource Access Manager can write "AWS\_RAM", and only the bus owner
    #   can write "default" — so naming the other party's policy fails with
    #   AccessDeniedException. A well-formed name that is neither of the two
    #   fails with InvalidInputException.
    #   @return [String]
    #
    # @!attribute [rw] expected_revision_id
    #   The write succeeds only if the named policy's current revision ID
    #   matches this value; a policy that does not exist yet matches only
    #   the sentinel "NO\_POLICY" (create-only). On mismatch the operation
    #   fails with ConflictException. When omitted, the write is
    #   unconditional. Every attempt stores a newly generated revision ID,
    #   so retrying an unanswered request can conflict with the caller's
    #   own earlier attempt; read the policy back and compare it with the
    #   one you intended before treating a conflict as another writer's
    #   change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy_document,
      :policy_name,
      :expected_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   Name of a policy attached to a resource. Valid values: "default"
    #   (the customer-managed policy) and "AWS\_RAM" (managed exclusively by
    #   AWS Resource Access Manager). Any other value is rejected.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Absent when the write removed the policy; a removal produces no new
    #   revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy_name,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource with the same name already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is in use and cannot be deleted. For example, an event
    # bus with subscribers or event sources cannot be deleted until they are
    # deleted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a policy attached to a resource: its name and revision ID.
    #
    # @!attribute [rw] policy_name
    #   Name of a policy attached to a resource. Valid values: "default"
    #   (the customer-managed policy) and "AWS\_RAM" (managed exclusively by
    #   AWS Resource Access Manager). Any other value is rejected.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Revision ID of a resource policy. A new revision ID is generated on
    #   every successful write.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ResourcePolicySummary AWS API Documentation
    #
    class ResourcePolicySummary < Struct.new(
      :policy_name,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retry policy for a subscriber.
    #
    # @!attribute [rw] max_retry_attempts
    #   Maximum number of retry attempts (0-185, default: 5).
    #   @return [Integer]
    #
    # @!attribute [rw] max_event_age_in_seconds
    #   Maximum age of an event in seconds before it is discarded (60-86400,
    #   default: 300).
    #   @return [Integer]
    #
    # @!attribute [rw] retry_strategy
    #   Strategy for determining which exceptions are retried. Default: ALL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/RetryPolicy AWS API Documentation
    #
    class RetryPolicy < Struct.new(
      :max_retry_attempts,
      :max_event_age_in_seconds,
      :retry_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of a resource a bus owner can revoke: a subscriber or an
    #   EventSource. The pattern is the revocable subset of
    #   TaggableResourceArn; buses are not revocable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/RevokeResourceRequest AWS API Documentation
    #
    class RevokeResourceRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of a resource a bus owner can revoke: a subscriber or an
    #   EventSource. The pattern is the revocable subset of
    #   TaggableResourceArn; buses are not revocable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/RevokeResourceResponse AWS API Documentation
    #
    class RevokeResourceResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Schema registry settings used to encode open-format (Avro/Protobuf)
    # events.
    #
    # @!attribute [rw] registry_uri
    #   Glue Schema Registry ARN, or Confluent Cloud HTTPS URL.
    #   @return [String]
    #
    # @!attribute [rw] confluent_public_registry_configuration
    #   Required when RegistryUri is an HTTPS URL. Provides Connection-based
    #   auth for Confluent Cloud.
    #   @return [Types::ConfluentPublicRegistryConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/SchemaRegistryConfiguration AWS API Documentation
    #
    class SchemaRegistryConfiguration < Struct.new(
      :registry_uri,
      :confluent_public_registry_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configured schema registry could not be reached. Retry the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/SchemaRegistryUnavailableException AWS API Documentation
    #
    class SchemaRegistryUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom SNS message attribute (data type plus string or binary
    # value).
    #
    # @!attribute [rw] data_type
    #   Attribute data type. Requiredness and the accepted vocabulary belong
    #   to SNS, which rejects an attribute without a data type on delivery.
    #   @return [String]
    #
    # @!attribute [rw] string_value
    #   String attribute value. A JSONata expression resolves once per
    #   delivered event.
    #   @return [String]
    #
    # @!attribute [rw] binary_value
    #   Base64-encoded literal binary attribute value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/SnsMessageAttributeValue AWS API Documentation
    #
    class SnsMessageAttributeValue < Struct.new(
      :data_type,
      :string_value,
      :binary_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # SNS invocation parameters for subscribers. Values are forwarded to the
    # SNS PublishBatch API. All scalar values accept a literal or a JSONata
    # expression (e.g. "\{% $events.Data.groupId %}").
    #
    # @!attribute [rw] message_group_id
    #   Message group ID for FIFO topics. Accepts JSONata expression.
    #   @return [String]
    #
    # @!attribute [rw] message_deduplication_id
    #   Message deduplication ID for FIFO topics. Accepts JSONata
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   Subject line for email protocol subscriptions. Accepts JSONata
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] message_structure
    #   Per-protocol message formatting mode, forwarded to SNS Publish
    #   unchanged. Accepts JSONata expression.
    #   @return [String]
    #
    # @!attribute [rw] message_attributes
    #   Custom message attributes for SNS filtering.
    #   @return [Hash<String,Types::SnsMessageAttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/SnsParameters AWS API Documentation
    #
    class SnsParameters < Struct.new(
      :message_group_id,
      :message_deduplication_id,
      :subject,
      :message_structure,
      :message_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom SQS message attribute (data type plus string or binary
    # value).
    #
    # @!attribute [rw] data_type
    #   Attribute data type. Requiredness, the accepted vocabulary, and any
    #   custom label belong to SQS, which rejects an attribute without a
    #   data type on delivery.
    #   @return [String]
    #
    # @!attribute [rw] string_value
    #   String attribute value. A JSONata expression resolves once per
    #   delivered event.
    #   @return [String]
    #
    # @!attribute [rw] binary_value
    #   Base64-encoded literal binary attribute value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/SqsMessageAttributeValue AWS API Documentation
    #
    class SqsMessageAttributeValue < Struct.new(
      :data_type,
      :string_value,
      :binary_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # SQS invocation parameters for subscribers. Values are forwarded to the
    # SQS SendMessageBatch API. All scalar values accept a literal or a
    # JSONata expression (e.g. "\{% $events.Data.groupId %}").
    #
    # @!attribute [rw] message_group_id
    #   Message group ID for FIFO queues. Accepts JSONata expression.
    #   @return [String]
    #
    # @!attribute [rw] message_deduplication_id
    #   Message deduplication ID for FIFO queues. Accepts JSONata
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] delay_seconds
    #   Delay in seconds before the message becomes visible, standard queues
    #   only. Accepts JSONata expression.
    #   @return [String]
    #
    # @!attribute [rw] message_attributes
    #   Custom message attributes (name/type/value).
    #   @return [Hash<String,Types::SqsMessageAttributeValue>]
    #
    # @!attribute [rw] message_system_attributes
    #   System message attributes (e.g., AWSTraceHeader).
    #   @return [Hash<String,Types::SqsMessageAttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/SqsParameters AWS API Documentation
    #
    class SqsParameters < Struct.new(
      :message_group_id,
      :message_deduplication_id,
      :delay_seconds,
      :message_attributes,
      :message_system_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Step Functions invocation parameters for subscribers. Values are
    # forwarded to the Step Functions StartExecution or StartSyncExecution
    # API. Every string member accepts a literal or a JSONata expression
    # (e.g. "\{% $events.Data.executionName %}").
    #
    # @!attribute [rw] invocation_type
    #   Selects StartExecution (EVENT) or StartSyncExecution
    #   (REQUEST\_RESPONSE) at delivery.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the execution. Must be unique per account/region/state
    #   machine. Accepts JSONata expression.
    #   @return [String]
    #
    # @!attribute [rw] trace_header
    #   X-Ray trace header for distributed tracing. Accepts JSONata
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] invocation_timeout_seconds
    #   Timeout in seconds for each invocation of the target (1-30).
    #   String-typed (not integer) so the value may be a JSONata expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/StepFunctionsParameters AWS API Documentation
    #
    class StepFunctionsParameters < Struct.new(
      :invocation_type,
      :name,
      :trace_header,
      :invocation_timeout_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event storage configuration for an event bus.
    #
    # @!attribute [rw] retention_period_in_days
    #   Number of days events are retained on the event bus.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/StorageConfiguration AWS API Documentation
    #
    class StorageConfiguration < Struct.new(
      :retention_period_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event storage configuration of an event bus, as returned on reads.
    #
    # @!attribute [rw] retention_period_in_days
    #   Number of days events are retained on the event bus.
    #   @return [Integer]
    #
    # @!attribute [rw] retention_window_start_time
    #   The earliest point in time from which stored events are available.
    #   Events older than this have expired from retention.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/StorageConfigurationOutput AWS API Documentation
    #
    class StorageConfigurationOutput < Struct.new(
      :retention_period_in_days,
      :retention_window_start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a subscriber, as returned by ListSubscribers.
    #
    # @!attribute [rw] subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a
    #   subscriber.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a subscriber. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   ARN of the target a subscriber invokes. The resource grammar is
    #   service-neutral because target services use different separators and
    #   the USI form omits region and account.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in
    #   order within an event group; UNORDERED delivers without an ordering
    #   guarantee.
    #   @return [String]
    #
    # @!attribute [rw] revoked
    #   True when the bus owner has revoked this subscriber. Present only
    #   when true, so a bus owner listing subscribers sees at a glance which
    #   ones they revoked. See DescribeSubscriberResponse$Revoked.
    #   @return [Boolean]
    #
    # @!attribute [rw] state
    #   Customer-controlled run state of a subscriber, set on create or
    #   update. Distinct from the bus lifecycle vocabulary, where ACTIVE
    #   means "provisioned and healthy". Delivery requires State RUNNING on
    #   a subscriber that is not revoked.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the subscriber was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time the subscriber was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] subscriber_account_id
    #   AWS Account Id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/SubscriberSummary AWS API Documentation
    #
    class SubscriberSummary < Struct.new(
      :subscriber_arn,
      :name,
      :event_bus_arn,
      :target_arn,
      :type,
      :revoked,
      :state,
      :creation_time,
      :last_modified_time,
      :subscriber_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to a resource, as key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was throttled because it exceeds a request rate limit.
    # Retry the request with backoff.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Transformer configuration for a subscriber.
    #
    # @!attribute [rw] type
    #   Transform type.
    #   @return [String]
    #
    # @!attribute [rw] jsonata_configuration
    #   JSONata expression configuration. Required when Type is JSONATA.
    #   @return [Types::JsonataConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/Transformer AWS API Documentation
    #
    class Transformer < Struct.new(
      :type,
      :jsonata_configuration)
      SENSITIVE = [:jsonata_configuration]
      include Aws::Structure
    end

    # Parameters for USI (Universal Service Integration) targets. Used when
    # TargetArn is in the format
    # arn:aws:events:::aws-sdk:\{service}:\{apiAction}
    #
    # @!attribute [rw] input
    #   JSON string or JSONata expression that produces the API request.
    #   Supports \{% ... %} JSONata expressions for dynamic values from the
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] invocation_timeout_seconds
    #   Timeout in seconds for each invocation of the target (1-30, default
    #   30). Accepts a literal integer or a \{% ... %} JSONata expression
    #   evaluated against the event at invocation time. A JSONata expression
    #   is syntax-checked at create time. Resolved values outside of the
    #   range \[1, 30\] will be constrained to the nearest bound at delivery
    #   time. Defaults to 30 seconds when unset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UniversalTargetParameters AWS API Documentation
    #
    class UniversalTargetParameters < Struct.new(
      :input,
      :invocation_timeout_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   List of tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   Encryption configuration for an event bus.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   Event storage configuration for an event bus.
    #   @return [Types::StorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UpdateEventBusRequest AWS API Documentation
    #
    class UpdateEventBusRequest < Struct.new(
      :event_bus_arn,
      :description,
      :encryption_configuration,
      :storage_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of an event bus. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'. The
    #   grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in
    #   the bus's ARN. The same type is used everywhere a bus name
    #   appears.</p> </id></name>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   Encryption configuration for an event bus.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   Event storage configuration of an event bus, as returned on reads.
    #   @return [Types::StorageConfigurationOutput]
    #
    # @!attribute [rw] state
    #   Lifecycle state of an event bus.
    #
    #   * CREATING: Bus creation is in progress.
    #   * CREATE\_FAILED: Bus creation failed; see StateReason. The bus
    #     cannot be recovered or recreated in place: delete it with
    #     DeleteEventBus, then create a new bus.
    #   * ACTIVE: Bus is fully operational and can accept events.
    #   * UPDATING: Bus update is in progress.
    #   * UPDATE\_FAILED: Bus update failed; the bus remains operational
    #     with its previous configuration.
    #   * DELETING: Bus deletion is actively in progress.
    #   * DELETE\_FAILED: Bus deletion failed; see StateReason. Retry
    #     DeleteEventBus after removing subscribers and event sources.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   Human-readable explanation of why an event bus is in its current
    #   State. Omitted when the bus is in a normal operational state
    #   (ACTIVE). It stands in for the error response an asynchronous
    #   failure cannot return, so it applies only to resources with an
    #   asynchronous lifecycle: event buses. EventSources and subscribers
    #   are provisioned synchronously and report failures directly on the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The time the event bus was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UpdateEventBusResponse AWS API Documentation
    #
    class UpdateEventBusResponse < Struct.new(
      :event_bus_arn,
      :name,
      :description,
      :encryption_configuration,
      :storage_configuration,
      :state,
      :state_reason,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment
    #   is set by the service (aws.service for AWS service events,
    #   aws.partner for partner events) and is not part of the resource's
    #   name. The id segment is a 25-character identifier generated by the
    #   service.</p> </id></name></type>
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Discriminated EventSource configuration. Exactly one variant must be
    #   set.
    #   @return [Types::EventSourceConfiguration]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UpdateEventSourceRequest AWS API Documentation
    #
    class UpdateEventSourceRequest < Struct.new(
      :event_source_arn,
      :configuration,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment
    #   is set by the service (aws.service for AWS service events,
    #   aws.partner for partner events) and is not part of the resource's
    #   name. The id segment is a 25-character identifier generated by the
    #   service.</p> </id></name></type>
    #   @return [String]
    #
    # @!attribute [rw] name
    #   EventSource name. First character alphanumeric; the rest may add
    #   '.', '-', '\_'. Names may not begin with the reserved "aws."
    #   prefix. The grammar matches the ARN local-name segment in
    #   EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be
    #   created.</p> </id></name></type>
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Lifecycle state of an EventSource. Revocation is reported by the
    #   Revoked flag.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The time the EventSource was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UpdateEventSourceResponse AWS API Documentation
    #
    class UpdateEventSourceResponse < Struct.new(
      :event_source_arn,
      :name,
      :event_bus_arn,
      :state,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update-able configuration for how the subscriber invokes its target.
    #
    # @!attribute [rw] role_arn
    #   IAM role the service assumes to invoke the target. Must belong to
    #   the calling account.
    #   @return [String]
    #
    # @!attribute [rw] lambda_parameters
    #   Lambda invocation parameters for subscribers. Values are forwarded
    #   to the Lambda Invoke API. Every string member accepts a literal or a
    #   JSONata expression (e.g. "\{% $events.Data.qualifier %}").
    #   @return [Types::LambdaParameters]
    #
    # @!attribute [rw] sqs_parameters
    #   SQS invocation parameters for subscribers. Values are forwarded to
    #   the SQS SendMessageBatch API. All scalar values accept a literal or
    #   a JSONata expression (e.g. "\{% $events.Data.groupId %}").
    #   @return [Types::SqsParameters]
    #
    # @!attribute [rw] sns_parameters
    #   SNS invocation parameters for subscribers. Values are forwarded to
    #   the SNS PublishBatch API. All scalar values accept a literal or a
    #   JSONata expression (e.g. "\{% $events.Data.groupId %}").
    #   @return [Types::SnsParameters]
    #
    # @!attribute [rw] kinesis_parameters
    #   Kinesis Data Streams invocation parameters for subscribers. Values
    #   are forwarded to the Kinesis PutRecords API. All scalar values
    #   accept a literal or a JSONata expression (e.g. "\{%
    #   $events.Data.partitionKey %}").
    #   @return [Types::KinesisParameters]
    #
    # @!attribute [rw] step_functions_parameters
    #   Step Functions invocation parameters for subscribers. Values are
    #   forwarded to the Step Functions StartExecution or StartSyncExecution
    #   API. Every string member accepts a literal or a JSONata expression
    #   (e.g. "\{% $events.Data.executionName %}").
    #   @return [Types::StepFunctionsParameters]
    #
    # @!attribute [rw] http_parameters
    #   HTTP invocation parameters for subscribers (API Gateway / API
    #   Destination). Values are forwarded to the HTTP endpoint.
    #   @return [Types::HttpParameters]
    #
    # @!attribute [rw] universal_target_parameters
    #   Parameters for USI (Universal Service Integration) targets. Used
    #   when TargetArn is in the format
    #   arn:aws:events:::aws-sdk:\{service}:\{apiAction}
    #   @return [Types::UniversalTargetParameters]
    #
    # @!attribute [rw] event_bus_v2_parameters
    #   Parameters for forwarding events to another EventBridge event bus.
    #   @return [Types::EventBusV2Parameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UpdateInvokeConfiguration AWS API Documentation
    #
    class UpdateInvokeConfiguration < Struct.new(
      :role_arn,
      :lambda_parameters,
      :sqs_parameters,
      :sns_parameters,
      :kinesis_parameters,
      :step_functions_parameters,
      :http_parameters,
      :universal_target_parameters,
      :event_bus_v2_parameters)
      SENSITIVE = [:lambda_parameters, :sqs_parameters, :sns_parameters, :kinesis_parameters, :step_functions_parameters, :http_parameters, :universal_target_parameters, :event_bus_v2_parameters]
      include Aws::Structure
    end

    # @!attribute [rw] subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a
    #   subscriber.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Free-text description. Used by every resource type that has one:
    #   event buses, subscribers, and event sources.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Customer-controlled run state of a subscriber, set on create or
    #   update. Distinct from the bus lifecycle vocabulary, where ACTIVE
    #   means "provisioned and healthy". Delivery requires State RUNNING on
    #   a subscriber that is not revoked.
    #   @return [String]
    #
    # @!attribute [rw] resume_position
    #   Position from which delivery resumes when a subscriber is unpaused.
    #   Honored only on an UpdateSubscriber call that transitions State from
    #   STOPPED to RUNNING (unpause); ignored on any other call and not
    #   accepted on Create. Defaults to LAST\_PROCESSED when omitted.
    #   @return [String]
    #
    # @!attribute [rw] invoke_configuration
    #   Update-able configuration for how the subscriber invokes its target.
    #   @return [Types::UpdateInvokeConfiguration]
    #
    # @!attribute [rw] filter_configuration
    #   Configuration for filtering events delivered to a subscriber. On
    #   CreateSubscriber, Filters is required and must contain at least one
    #   Filter with a non-empty Pattern. On UpdateSubscriber, an empty
    #   `FilterConfiguration:{}` clears the existing filter. Any non-empty
    #   shape (including `{Language:X}` without Filters) must contain a
    #   valid Filters list — same contract as CreateSubscriber. A non-empty
    #   Filters list overwrites; an omitted FilterConfiguration preserves
    #   existing state. All Filters are implicitly ANDed — an event must
    #   match every Filter to be delivered.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] batch_configuration
    #   Batching configuration for a subscriber.
    #   @return [Types::BatchConfiguration]
    #
    # @!attribute [rw] transformer
    #   Not applicable to universal (aws-sdk) targets, whose input
    #   transformation is UniversalTargetParameters.Input; a Transformer on
    #   such a target is rejected.
    #   @return [Types::Transformer]
    #
    # @!attribute [rw] retry_policy
    #   Retry policy for a subscriber.
    #   @return [Types::RetryPolicy]
    #
    # @!attribute [rw] on_failure_configuration
    #   On-failure configuration: where a failed delivery is sent. Shared by
    #   the subscriber and the EventSource.
    #   @return [Types::OnFailureConfiguration]
    #
    # @!attribute [rw] log_configuration
    #   Log configuration for a subscriber.
    #   @return [Types::LogConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UpdateSubscriberRequest AWS API Documentation
    #
    class UpdateSubscriberRequest < Struct.new(
      :subscriber_arn,
      :description,
      :state,
      :resume_position,
      :invoke_configuration,
      :filter_configuration,
      :batch_configuration,
      :transformer,
      :retry_policy,
      :on_failure_configuration,
      :log_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a
    #   subscriber.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a subscriber. The first character must be alphanumeric; the
    #   remaining characters may also include '.', '-', and '\_'.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event
    #   bus.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in
    #   order within an event group; UNORDERED delivers without an ordering
    #   guarantee.
    #   @return [String]
    #
    # @!attribute [rw] starting_position
    #   Starting position for a subscriber.
    #   @return [String]
    #
    # @!attribute [rw] point_in_time_configuration
    #   Point-in-time configuration for a subscriber. Only applicable when
    #   StartingPosition is POINT\_IN\_TIME.
    #   @return [Types::PointInTimeConfiguration]
    #
    # @!attribute [rw] state
    #   Customer-controlled run state of a subscriber, set on create or
    #   update. Distinct from the bus lifecycle vocabulary, where ACTIVE
    #   means "provisioned and healthy". Delivery requires State RUNNING on
    #   a subscriber that is not revoked.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The time the subscriber was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridgev2-2025-05-15/UpdateSubscriberResponse AWS API Documentation
    #
    class UpdateSubscriberResponse < Struct.new(
      :subscriber_arn,
      :name,
      :event_bus_arn,
      :type,
      :starting_position,
      :point_in_time_configuration,
      :state,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

