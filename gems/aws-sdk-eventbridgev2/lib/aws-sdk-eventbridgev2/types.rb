# frozen_string_literal: true

# This is generated code!

module Aws::EventBridgeV2
  # This module contains the types returned by client operations.
  module Types

    # The caller does not have the permissions required to perform the operation.
    # This error is also returned when the operation cannot use the AWS KMS key for
    # the event bus.
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration for forwarding a single AWS service's events from the account's default event bus.
    # @!attribute aws_service
    #   A single AWS service source identifier, e.g. "aws.s3". Wildcards and lists are rejected.
    #   @return [String]
    # @!attribute pattern
    #   A filter pattern, as a JSON string, that defines which of the service's events are
    #   forwarded to the event bus. Do not include source, account, or region as top-level
    #   fields. If no pattern is specified, all events from the service are forwarded.
    #   @return [String]
    # @!attribute on_failure_configuration
    #   The destination for events that could not be forwarded.
    #   @return [Types::OnFailureConfiguration]
    class AwsServiceEventsSourceConfiguration < Struct.new(
      nil,
      :aws_service,
      :pattern,
      :on_failure_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Batching configuration for a subscriber.
    # @!attribute max_batch_size
    #   The maximum number of events to include in a single batch delivered to the target.
    #   The service delivers up to this many events per batch; fewer may be delivered when
    #   the batch window elapses or the target's per-batch limit is smaller. This is a
    #   maximum, not a guaranteed count. Valid range is 1-500 (default: 10, or the
    #   target API's per-batch maximum). The resolved value applied by the service is returned on read.
    #   @return [Integer]
    # @!attribute max_batch_window_in_seconds
    #   The maximum time in seconds to wait for a batch to fill before delivering it to
    #   the target. This is a maximum; a batch may be delivered sooner if it reaches
    #   MaxBatchSize or another delivery condition is met. Valid range is 0-300
    #   (default: 0, meaning no wait). The resolved value applied by the service is
    #   always returned on read.
    #   @return [Integer]
    class BatchConfiguration < Struct.new(
      nil,
      :max_batch_size,
      :max_batch_window_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Another change to the resource is already in progress. Retry the request.
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A client-supplied precondition (e.g. ExpectedRevisionId on a resource-policy
    # write) did not match the current state of the resource. Retrying the same
    # request will fail again; re-read the resource and re-evaluate before retrying.
    #
    # A conditional request is not retry-safe on its own. If an earlier attempt
    # committed but its response never reached the caller, retrying fails with this
    # error, which is indistinguishable from another writer having won. Compare the
    # resource's current contents with what the request intended: a successful
    # attempt stores a revision ID the caller never saw, so the revision alone
    # cannot tell the two apart, but matching contents mean the change took effect.
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Authentication configuration for public Confluent Schema Registry via EventBridge Connection.
    # @!attribute connection_arn
    #   EventBridge Connection ARN that provides API Key or OAuth credentials for the registry.
    #   @return [String]
    class ConfluentPublicRegistryConfiguration < Struct.new(
      nil,
      :connection_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   Name of an event bus. The first character must be alphanumeric; the remaining characters
    #   may also include '.', '-', and '_'. The grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in the bus's ARN. The same
    #   type is used everywhere a bus name appears.
    #   @return [String]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute encryption_configuration
    #   Encryption configuration for an event bus.
    #   @return [Types::EncryptionConfiguration]
    # @!attribute storage_configuration
    #   Event storage configuration for an event bus.
    #   @return [Types::StorageConfiguration]
    # @!attribute tags
    #   Tags attached to a resource, as key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of the
    #   request. The SDK generates one automatically when the field is omitted.
    #   @return [String]
    class CreateEventBusRequest < Struct.new(
      nil,
      :name,
      :description,
      :encryption_configuration,
      :storage_configuration,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute name
    #   Name of an event bus. The first character must be alphanumeric; the remaining characters
    #   may also include '.', '-', and '_'. The grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in the bus's ARN. The same
    #   type is used everywhere a bus name appears.
    #   @return [String]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute encryption_configuration
    #   Encryption configuration for an event bus.
    #   @return [Types::EncryptionConfiguration]
    # @!attribute storage_configuration
    #   Event storage configuration of an event bus, as returned on reads.
    #   @return [Types::StorageConfigurationOutput]
    # @!attribute state
    #   Lifecycle state of an event bus.
    #   - CREATING: Bus creation is in progress.
    #   - CREATE_FAILED: Bus creation failed; see StateReason. The bus cannot be recovered or
    #     recreated in place: delete it with DeleteEventBus, then create a new bus.
    #   - ACTIVE: Bus is fully operational and can accept events.
    #   - UPDATING: Bus update is in progress.
    #   - UPDATE_FAILED: Bus update failed; the bus remains operational with its previous configuration.
    #   - DELETING: Bus deletion is actively in progress.
    #   - DELETE_FAILED: Bus deletion failed; see StateReason. Retry DeleteEventBus after removing
    #     subscribers and event sources.
    #   @return [String]
    # @!attribute state_reason
    #   Human-readable explanation of why an event bus is in its current State. Omitted when the
    #   bus is in a normal operational state (ACTIVE). It stands in for the error response an
    #   asynchronous failure cannot return, so it applies only to resources with an asynchronous
    #   lifecycle: event buses. EventSources and subscribers are provisioned synchronously and
    #   report failures directly on the request.
    #   @return [String]
    # @!attribute creation_time
    #   The time the event bus was created.
    #   @return [Time]
    class CreateEventBusResponse < Struct.new(
      nil,
      :event_bus_arn,
      :name,
      :description,
      :encryption_configuration,
      :storage_configuration,
      :state,
      :state_reason,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   EventSource name. First character alphanumeric; the rest may add '.', '-', '_'. Names may not
    #   begin with the reserved "aws." prefix. The grammar
    #   matches the ARN local-name segment in EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be created.
    #   @return [String]
    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute configuration
    #   Discriminated EventSource configuration. Exactly one variant must be set.
    #   @return [Types::EventSourceConfiguration]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute tags
    #   Tags attached to a resource, as key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of the
    #   request. The SDK generates one automatically when the field is omitted.
    #   @return [String]
    class CreateEventSourceRequest < Struct.new(
      nil,
      :name,
      :event_bus_arn,
      :configuration,
      :description,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment is set by the service
    #   (aws.service for AWS service events, aws.partner for partner events) and is not part of the
    #   resource's name. The id segment is a 25-character identifier generated by the service.
    #   @return [String]
    # @!attribute name
    #   EventSource name. First character alphanumeric; the rest may add '.', '-', '_'. Names may not
    #   begin with the reserved "aws." prefix. The grammar
    #   matches the ARN local-name segment in EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be created.
    #   @return [String]
    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute state
    #   Lifecycle state of an EventSource. Revocation is reported by the Revoked flag.
    #   @return [String]
    # @!attribute creation_time
    #   The time the EventSource was created.
    #   @return [Time]
    class CreateEventSourceResponse < Struct.new(
      nil,
      :event_source_arn,
      :name,
      :event_bus_arn,
      :state,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   Name of a subscriber. The first character must be alphanumeric; the remaining
    #   characters may also include '.', '-', and '_'.
    #   @return [String]
    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute invoke_configuration
    #   Configuration for how the subscriber invokes its target.
    #   @return [Types::InvokeConfiguration]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute filter_configuration
    #   Configuration for filtering events delivered to a subscriber.
    #   On CreateSubscriber, Filters is required and must contain at least one Filter with a non-empty Pattern.
    #   On UpdateSubscriber, an empty `FilterConfiguration:{}` clears the existing filter.
    #   Any non-empty shape (including `{Language:X}` without Filters) must contain a valid Filters list
    #   — same contract as CreateSubscriber. A non-empty Filters list overwrites; an omitted
    #   FilterConfiguration preserves existing state.
    #   All Filters are implicitly ANDed — an event must match every Filter to be delivered.
    #   @return [Types::FilterConfiguration]
    # @!attribute type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in order within
    #   an event group; UNORDERED delivers without an ordering guarantee.
    #   @return [String]
    # @!attribute starting_position
    #   Starting position for a subscriber.
    #   @return [String]
    # @!attribute point_in_time_configuration
    #   Point-in-time configuration for a subscriber.
    #   Only applicable when StartingPosition is POINT_IN_TIME.
    #   @return [Types::PointInTimeConfiguration]
    # @!attribute batch_configuration
    #   Batching configuration for a subscriber.
    #   @return [Types::BatchConfiguration]
    # @!attribute transformer
    #   Not applicable to universal (aws-sdk) targets, whose input transformation is UniversalTargetParameters.Input; a Transformer on such a target is rejected.
    #   @return [Types::Transformer]
    # @!attribute retry_policy
    #   Retry policy for a subscriber.
    #   @return [Types::RetryPolicy]
    # @!attribute on_failure_configuration
    #   On-failure configuration: where a failed delivery is sent. Shared by the subscriber and the
    #   EventSource.
    #   @return [Types::OnFailureConfiguration]
    # @!attribute log_configuration
    #   Log configuration for a subscriber.
    #   @return [Types::LogConfiguration]
    # @!attribute state
    #   Customer-controlled run state of a subscriber, set on create or update. Distinct
    #   from the bus lifecycle vocabulary, where ACTIVE means "provisioned and healthy".
    #   Delivery requires State RUNNING on a subscriber that is not revoked.
    #   @return [String]
    # @!attribute tags
    #   Tags attached to a resource, as key-value pairs.
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of the
    #   request. The SDK generates one automatically when the field is omitted.
    #   @return [String]
    class CreateSubscriberRequest < Struct.new(
      nil,
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
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    #   @return [String]
    # @!attribute name
    #   Name of a subscriber. The first character must be alphanumeric; the remaining
    #   characters may also include '.', '-', and '_'.
    #   @return [String]
    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in order within
    #   an event group; UNORDERED delivers without an ordering guarantee.
    #   @return [String]
    # @!attribute starting_position
    #   Starting position for a subscriber.
    #   @return [String]
    # @!attribute point_in_time_configuration
    #   Point-in-time configuration for a subscriber.
    #   Only applicable when StartingPosition is POINT_IN_TIME.
    #   @return [Types::PointInTimeConfiguration]
    # @!attribute state
    #   Customer-controlled run state of a subscriber, set on create or update. Distinct
    #   from the bus lifecycle vocabulary, where ACTIVE means "provisioned and healthy".
    #   Delivery requires State RUNNING on a subscriber that is not revoked.
    #   @return [String]
    # @!attribute creation_time
    #   The time the subscriber was created.
    #   @return [Time]
    class CreateSubscriberResponse < Struct.new(
      nil,
      :subscriber_arn,
      :name,
      :event_bus_arn,
      :type,
      :starting_position,
      :point_in_time_configuration,
      :state,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Deduplication settings for a publish request.
    # @!attribute deduplication_type
    #   How duplicate events are detected: by a hash of the event content (CONTENT_BASED).
    #   To deduplicate by a caller-supplied token instead, omit DeduplicationConfiguration and
    #   set DeduplicationId on each entry.
    #   @return [String]
    class DeduplicationConfiguration < Struct.new(
      nil,
      :deduplication_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    class DeleteEventBusRequest < Struct.new(
      nil,
      :event_bus_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEventBusResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment is set by the service
    #   (aws.service for AWS service events, aws.partner for partner events) and is not part of the
    #   resource's name. The id segment is a 25-character identifier generated by the service.
    #   @return [String]
    class DeleteEventSourceRequest < Struct.new(
      nil,
      :event_source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEventSourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute policy_name
    #   Which named policy to delete. Defaults to "default" when omitted (a delete AWS
    #   Resource Access Manager makes on the owner's behalf resolves to "AWS_RAM" instead).
    #   The two writers are exclusive in both directions — only Resource Access Manager can
    #   delete "AWS_RAM", and only the bus owner can delete "default" — so naming the other
    #   party's policy fails with AccessDeniedException. A well-formed name that is neither
    #   of the two fails with InvalidInputException.
    #   @return [String]
    # @!attribute expected_revision_id
    #   The delete succeeds only if the named policy's current revision ID matches
    #   this value; if it differs or the policy does not exist, the operation fails
    #   with ConflictException. The "NO_POLICY" sentinel is not valid here. When
    #   omitted, deleting an absent policy is an idempotent success. Supplying this
    #   value makes the delete non-idempotent: once it succeeds the expected
    #   revision no longer exists, so retrying an unanswered request fails with
    #   ConflictException even though the policy was deleted. To establish the
    #   outcome, read the policy back: ResourceNotFoundException means the delete
    #   took effect.
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :policy_name,
      :expected_revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute revision_id
    #   Revision ID of the policy that was deleted. Absent when no policy was deleted.
    #   @return [String]
    class DeleteResourcePolicyResponse < Struct.new(
      nil,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    #   @return [String]
    class DeleteSubscriberRequest < Struct.new(
      nil,
      :subscriber_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSubscriberResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    class DescribeEventBusRequest < Struct.new(
      nil,
      :event_bus_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute name
    #   Name of an event bus. The first character must be alphanumeric; the remaining characters
    #   may also include '.', '-', and '_'. The grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in the bus's ARN. The same
    #   type is used everywhere a bus name appears.
    #   @return [String]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute encryption_configuration
    #   Encryption configuration for an event bus.
    #   @return [Types::EncryptionConfiguration]
    # @!attribute storage_configuration
    #   Event storage configuration of an event bus, as returned on reads.
    #   @return [Types::StorageConfigurationOutput]
    # @!attribute creation_time
    #   The time the event bus was created.
    #   @return [Time]
    # @!attribute last_modified_time
    #   The time the event bus was last modified.
    #   @return [Time]
    # @!attribute state
    #   Lifecycle state of an event bus.
    #   - CREATING: Bus creation is in progress.
    #   - CREATE_FAILED: Bus creation failed; see StateReason. The bus cannot be recovered or
    #     recreated in place: delete it with DeleteEventBus, then create a new bus.
    #   - ACTIVE: Bus is fully operational and can accept events.
    #   - UPDATING: Bus update is in progress.
    #   - UPDATE_FAILED: Bus update failed; the bus remains operational with its previous configuration.
    #   - DELETING: Bus deletion is actively in progress.
    #   - DELETE_FAILED: Bus deletion failed; see StateReason. Retry DeleteEventBus after removing
    #     subscribers and event sources.
    #   @return [String]
    # @!attribute state_reason
    #   Human-readable explanation of why an event bus is in its current State. Omitted when the
    #   bus is in a normal operational state (ACTIVE). It stands in for the error response an
    #   asynchronous failure cannot return, so it applies only to resources with an asynchronous
    #   lifecycle: event buses. EventSources and subscribers are provisioned synchronously and
    #   report failures directly on the request.
    #   @return [String]
    class DescribeEventBusResponse < Struct.new(
      nil,
      :event_bus_arn,
      :name,
      :description,
      :encryption_configuration,
      :storage_configuration,
      :creation_time,
      :last_modified_time,
      :state,
      :state_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment is set by the service
    #   (aws.service for AWS service events, aws.partner for partner events) and is not part of the
    #   resource's name. The id segment is a 25-character identifier generated by the service.
    #   @return [String]
    class DescribeEventSourceRequest < Struct.new(
      nil,
      :event_source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment is set by the service
    #   (aws.service for AWS service events, aws.partner for partner events) and is not part of the
    #   resource's name. The id segment is a 25-character identifier generated by the service.
    #   @return [String]
    # @!attribute name
    #   EventSource name. First character alphanumeric; the rest may add '.', '-', '_'. Names may not
    #   begin with the reserved "aws." prefix. The grammar
    #   matches the ARN local-name segment in EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be created.
    #   @return [String]
    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute configuration
    #   Discriminated EventSource configuration. Exactly one variant must be set.
    #   @return [Types::EventSourceConfiguration]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute state
    #   Lifecycle state of an EventSource. Revocation is reported by the Revoked flag.
    #   @return [String]
    # @!attribute revoked
    #   True when the bus owner has withdrawn this EventSource. Present only when true, so an
    #   absent member means the EventSource is not revoked. Revocation is terminal: it never
    #   returns to false. Mutating operations on a revoked EventSource fail with
    #   InvalidStateException, except DeleteEventSource, which stays available so a revoked
    #   EventSource can still be cleaned up.
    #   @return [Boolean]
    # @!attribute creation_time
    #   The time the EventSource was created.
    #   @return [Time]
    # @!attribute last_modified_time
    #   The time the EventSource was last modified.
    #   @return [Time]
    class DescribeEventSourceResponse < Struct.new(
      nil,
      :event_source_arn,
      :name,
      :event_bus_arn,
      :configuration,
      :description,
      :state,
      :revoked,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    #   @return [String]
    class DescribeSubscriberRequest < Struct.new(
      nil,
      :subscriber_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    #   @return [String]
    # @!attribute name
    #   Name of a subscriber. The first character must be alphanumeric; the remaining
    #   characters may also include '.', '-', and '_'.
    #   @return [String]
    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute invoke_configuration
    #   Configuration for how the subscriber invokes its target.
    #   @return [Types::InvokeConfiguration]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute filter_configuration
    #   Configuration for filtering events delivered to a subscriber.
    #   On CreateSubscriber, Filters is required and must contain at least one Filter with a non-empty Pattern.
    #   On UpdateSubscriber, an empty `FilterConfiguration:{}` clears the existing filter.
    #   Any non-empty shape (including `{Language:X}` without Filters) must contain a valid Filters list
    #   — same contract as CreateSubscriber. A non-empty Filters list overwrites; an omitted
    #   FilterConfiguration preserves existing state.
    #   All Filters are implicitly ANDed — an event must match every Filter to be delivered.
    #   @return [Types::FilterConfiguration]
    # @!attribute type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in order within
    #   an event group; UNORDERED delivers without an ordering guarantee.
    #   @return [String]
    # @!attribute starting_position
    #   Starting position for a subscriber.
    #   @return [String]
    # @!attribute point_in_time_configuration
    #   Point-in-time configuration for a subscriber.
    #   Only applicable when StartingPosition is POINT_IN_TIME.
    #   @return [Types::PointInTimeConfiguration]
    # @!attribute batch_configuration
    #   Batching configuration for a subscriber.
    #   @return [Types::BatchConfiguration]
    # @!attribute transformer
    #   Absent for universal (aws-sdk) targets, whose input transformation is UniversalTargetParameters.Input.
    #   @return [Types::Transformer]
    # @!attribute retry_policy
    #   Retry policy for a subscriber.
    #   @return [Types::RetryPolicy]
    # @!attribute on_failure_configuration
    #   On-failure configuration: where a failed delivery is sent. Shared by the subscriber and the
    #   EventSource.
    #   @return [Types::OnFailureConfiguration]
    # @!attribute log_configuration
    #   Log configuration for a subscriber.
    #   @return [Types::LogConfiguration]
    # @!attribute state
    #   Customer-controlled run state of a subscriber, set on create or update. Distinct
    #   from the bus lifecycle vocabulary, where ACTIVE means "provisioned and healthy".
    #   Delivery requires State RUNNING on a subscriber that is not revoked.
    #   @return [String]
    # @!attribute revoked
    #   True when the bus owner has revoked this subscriber. Present only when true, so an
    #   absent member means the subscriber is not revoked. Revocation is terminal: it never
    #   returns to false. Mutating operations on a revoked subscriber fail with
    #   InvalidStateException, except DeleteSubscriber, which stays available so a revoked
    #   subscriber can still be cleaned up.
    #   @return [Boolean]
    # @!attribute creation_time
    #   The time the subscriber was created.
    #   @return [Time]
    # @!attribute last_modified_time
    #   The time the subscriber was last modified.
    #   @return [Time]
    class DescribeSubscriberResponse < Struct.new(
      nil,
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
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Encryption configuration for an event bus.
    # @!attribute kms_key_identifier
    #   Identifier of the AWS KMS customer managed key used to encrypt events: a key
    #   ID, key ARN, alias name, or alias ARN. When absent, events are encrypted with
    #   an AWS owned key.
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      nil,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of an event bus, as returned by ListEventBuses.
    # @!attribute name
    #   Name of an event bus. The first character must be alphanumeric; the remaining characters
    #   may also include '.', '-', and '_'. The grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in the bus's ARN. The same
    #   type is used everywhere a bus name appears.
    #   @return [String]
    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute creation_time
    #   The time the event bus was created.
    #   @return [Time]
    # @!attribute last_modified_time
    #   The time the event bus was last modified.
    #   @return [Time]
    # @!attribute state
    #   Lifecycle state of an event bus.
    #   - CREATING: Bus creation is in progress.
    #   - CREATE_FAILED: Bus creation failed; see StateReason. The bus cannot be recovered or
    #     recreated in place: delete it with DeleteEventBus, then create a new bus.
    #   - ACTIVE: Bus is fully operational and can accept events.
    #   - UPDATING: Bus update is in progress.
    #   - UPDATE_FAILED: Bus update failed; the bus remains operational with its previous configuration.
    #   - DELETING: Bus deletion is actively in progress.
    #   - DELETE_FAILED: Bus deletion failed; see StateReason. Retry DeleteEventBus after removing
    #     subscribers and event sources.
    #   @return [String]
    # @!attribute state_reason
    #   Human-readable explanation of why an event bus is in its current State. Omitted when the
    #   bus is in a normal operational state (ACTIVE). It stands in for the error response an
    #   asynchronous failure cannot return, so it applies only to resources with an asynchronous
    #   lifecycle: event buses. EventSources and subscribers are provisioned synchronously and
    #   report failures directly on the request.
    #   @return [String]
    # @!attribute event_bus_account_id
    #   AWS Account Id.
    #   @return [String]
    class EventBusSummary < Struct.new(
      nil,
      :name,
      :event_bus_arn,
      :description,
      :creation_time,
      :last_modified_time,
      :state,
      :state_reason,
      :event_bus_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Parameters for forwarding events to another EventBridge event bus.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute metadata
    #   Customer-defined metadata forwarded with each event.
    #   @return [Hash<String, String>]
    # @!attribute system_metadata
    #   Customer-controllable system metadata attached to each forwarded event.
    #   @return [Types::EventBusV2SystemMetadata]
    # @!attribute deduplication_configuration
    #   Deduplication settings applied to the forwarded events on the downstream bus.
    #   @return [Types::DeduplicationConfiguration]
    class EventBusV2Parameters < Struct.new(
      nil,
      :metadata,
      :system_metadata,
      :deduplication_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Customer-controllable system metadata attached to events forwarded to the downstream event bus.
    # @!attribute event_group_id
    #   Event group ID for FIFO ordering on the downstream bus. Accepts a literal
    #   or a JSONata expression.
    #   @return [String]
    # @!attribute deduplication_id
    #   Deduplication ID for FIFO deduplication on the downstream bus. Accepts a
    #   literal or a JSONata expression.
    #   @return [String]
    class EventBusV2SystemMetadata < Struct.new(
      nil,
      :event_group_id,
      :deduplication_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Discriminated EventSource configuration. Exactly one variant must be set.
    # @!attribute aws_service_events_configuration
    #   Configuration for forwarding a single AWS service's events from the account's default event bus.
    #   @return [Types::AwsServiceEventsSourceConfiguration]
    # @!attribute partner_events_configuration
    #   Configuration for forwarding a partner event source's events through a managed partner event bus.
    #   @return [Types::PartnerEventsSourceConfiguration]
    class EventSourceConfiguration < Struct.new(
      :aws_service_events_configuration,
      :partner_events_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AwsServiceEventsConfiguration < EventSourceConfiguration; end
      class PartnerEventsConfiguration < EventSourceConfiguration; end
      class Unknown < EventSourceConfiguration; end
    end

    # Summary of an EventSource, as returned by ListEventSources.
    # @!attribute event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment is set by the service
    #   (aws.service for AWS service events, aws.partner for partner events) and is not part of the
    #   resource's name. The id segment is a 25-character identifier generated by the service.
    #   @return [String]
    # @!attribute name
    #   EventSource name. First character alphanumeric; the rest may add '.', '-', '_'. Names may not
    #   begin with the reserved "aws." prefix. The grammar
    #   matches the ARN local-name segment in EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be created.
    #   @return [String]
    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute type
    #   Origin type of an EventSource: an AWS service's events (AWS_SERVICE_EVENTS)
    #   or a partner event source's events (PARTNER_EVENTS).
    #   @return [String]
    # @!attribute state
    #   Lifecycle state of an EventSource. Revocation is reported by the Revoked flag.
    #   @return [String]
    # @!attribute revoked
    #   True when the bus owner has withdrawn this EventSource. Present only when true, so a bus
    #   owner listing EventSources sees at a glance which ones they revoked. See
    #   DescribeEventSourceResponse$Revoked.
    #   @return [Boolean]
    # @!attribute creation_time
    #   The time the EventSource was created.
    #   @return [Time]
    # @!attribute last_modified_time
    #   The time the EventSource was last modified.
    #   @return [Time]
    # @!attribute event_source_account_id
    #   AWS Account Id.
    #   @return [String]
    class EventSourceSummary < Struct.new(
      nil,
      :event_source_arn,
      :name,
      :event_bus_arn,
      :type,
      :state,
      :revoked,
      :creation_time,
      :last_modified_time,
      :event_source_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A single filter entry within a FilterConfiguration.
    # @!attribute pattern
    #   An event pattern, as a JSON string, that selects which events match.
    #   @return [String]
    # @!attribute scope
    #   Scope of a filter pattern within a FilterConfiguration.
    #   @return [String]
    class Filter < Struct.new(
      nil,
      :pattern,
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration for filtering events delivered to a subscriber.
    # On CreateSubscriber, Filters is required and must contain at least one Filter with a non-empty Pattern.
    # On UpdateSubscriber, an empty `FilterConfiguration:{}` clears the existing filter.
    # Any non-empty shape (including `{Language:X}` without Filters) must contain a valid Filters list
    # — same contract as CreateSubscriber. A non-empty Filters list overwrites; an omitted
    # FilterConfiguration preserves existing state.
    # All Filters are implicitly ANDed — an event must match every Filter to be delivered.
    # @!attribute language
    #   Defaults to EVENT_BRIDGE_PATTERN when not specified.
    #   @return [String]
    # @!attribute filters
    #   List of filters. An event must match every filter to be delivered.
    #   @return [Array<Types::Filter>]
    class FilterConfiguration < Struct.new(
      nil,
      :language,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute policy_name
    #   Which named policy to read. Defaults to "default" when omitted (a read AWS Resource Access
    #   Manager makes on the owner's behalf resolves to "AWS_RAM" instead). Unlike writing, neither
    #   name is reserved on a read: the bus owner can read both. There is no fallback between the
    #   two, so a bus shared only through Resource Access Manager fails with
    #   ResourceNotFoundException until "AWS_RAM" is named explicitly. A well-formed name that is
    #   neither of the two fails with InvalidInputException.
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :policy_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Returned only when the named policy exists. A missing event bus or a missing
    # named policy fails with ResourceNotFoundException rather than returning an
    # empty or null policy document. Every member is therefore always present on a
    # successful response.
    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute policy_document
    #   A resource policy document, as a JSON string. The "default" policy can be up to
    #   20 KB (20,480 bytes of UTF-8) by default. This quota is adjustable in Service
    #   Quotas. A "default" policy that exceeds the quota is rejected with
    #   PolicyLengthExceededException. No policy document can exceed 389,120 bytes of
    #   UTF-8, regardless of the quota.
    #   @return [String]
    # @!attribute policy_name
    #   Name of a policy attached to a resource. Valid values: "default" (the
    #   customer-managed policy) and "AWS_RAM" (managed exclusively by AWS Resource
    #   Access Manager). Any other value is rejected.
    #   @return [String]
    # @!attribute revision_id
    #   Revision ID of a resource policy. A new revision ID is generated on every
    #   successful write.
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      nil,
      :resource_arn,
      :policy_document,
      :policy_name,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # HTTP invocation parameters for subscribers (API Gateway / API Destination). Values are
    # forwarded to the HTTP endpoint.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute path_parameter_values
    #   Values substituted, in order, for the path-parameter placeholders in an HTTP
    #   target's endpoint path.
    #   @return [Array<String>]
    # @!attribute header_parameters
    #   Map of HTTP header names to values, sent with the request to an HTTP target.
    #   @return [Hash<String, String>]
    # @!attribute query_string_parameters
    #   Map of query-string parameter names to values, appended to the request to an
    #   HTTP target.
    #   @return [Hash<String, String>]
    # @!attribute invocation_timeout_seconds
    #   Timeout in seconds for each invocation of the target (1-30). String-typed
    #   (not integer) so the value may be a JSONata expression.
    #   @return [String]
    class HttpParameters < Struct.new(
      nil,
      :path_parameter_values,
      :header_parameters,
      :query_string_parameters,
      :invocation_timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request reuses the client token of an earlier request with different
    # parameters. Use a new client token, or resend the earlier request unchanged.
    # @!attribute message
    #   @return [String]
    class IdempotentParameterMismatchException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request failed because of an internal service error. Retry the request.
    # @!attribute message
    #   @return [String]
    class InternalException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request parameter is missing or not valid.
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The resource is not in a state that allows the operation. For example, an
    # event bus that is still being created cannot accept events.
    # @!attribute message
    #   @return [String]
    class InvalidStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration for how the subscriber invokes its target.
    # @!attribute role_arn
    #   IAM role the service assumes to invoke the target. Must belong to the
    #   calling account.
    #   @return [String]
    # @!attribute lambda_parameters
    #   Lambda invocation parameters for subscribers. Values are forwarded to the Lambda Invoke API.
    #   Every string member accepts a literal or a JSONata expression (e.g. "{% $events.Data.qualifier %}").
    #   @return [Types::LambdaParameters]
    # @!attribute sqs_parameters
    #   SQS invocation parameters for subscribers. Values are forwarded to the SQS SendMessageBatch API.
    #   All scalar values accept a literal or a JSONata expression (e.g. "{% $events.Data.groupId %}").
    #   @return [Types::SqsParameters]
    # @!attribute sns_parameters
    #   SNS invocation parameters for subscribers. Values are forwarded to the SNS PublishBatch API.
    #   All scalar values accept a literal or a JSONata expression (e.g. "{% $events.Data.groupId %}").
    #   @return [Types::SnsParameters]
    # @!attribute kinesis_parameters
    #   Kinesis Data Streams invocation parameters for subscribers. Values are forwarded to the
    #   Kinesis PutRecords API.
    #   All scalar values accept a literal or a JSONata expression (e.g. "{% $events.Data.partitionKey %}").
    #   @return [Types::KinesisParameters]
    # @!attribute step_functions_parameters
    #   Step Functions invocation parameters for subscribers. Values are forwarded to the
    #   Step Functions StartExecution or StartSyncExecution API.
    #   Every string member accepts a literal or a JSONata expression (e.g. "{% $events.Data.executionName %}").
    #   @return [Types::StepFunctionsParameters]
    # @!attribute http_parameters
    #   HTTP invocation parameters for subscribers (API Gateway / API Destination). Values are
    #   forwarded to the HTTP endpoint.
    #   @return [Types::HttpParameters]
    # @!attribute universal_target_parameters
    #   Parameters for USI (Universal Service Integration) targets.
    #   Used when TargetArn is in the format arn:aws:events:::aws-sdk:{service}:{apiAction}
    #   @return [Types::UniversalTargetParameters]
    # @!attribute event_bus_v2_parameters
    #   Parameters for forwarding events to another EventBridge event bus.
    #   @return [Types::EventBusV2Parameters]
    # @!attribute target_arn
    #   ARN of the target a subscriber invokes. The resource grammar is service-neutral because target
    #   services use different separators and the USI form omits region and account.
    #   @return [String]
    class InvokeConfiguration < Struct.new(
      nil,
      :role_arn,
      :lambda_parameters,
      :sqs_parameters,
      :sns_parameters,
      :kinesis_parameters,
      :step_functions_parameters,
      :http_parameters,
      :universal_target_parameters,
      :event_bus_v2_parameters,
      :target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # JSONata transform settings for a subscriber.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute expression
    #   JSONata expression to transform the event. Must be wrapped in {% %} delimiters.
    #   @return [String]
    class JsonataConfiguration < Struct.new(
      nil,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Kinesis Data Streams invocation parameters for subscribers. Values are forwarded to the
    # Kinesis PutRecords API.
    # All scalar values accept a literal or a JSONata expression (e.g. "{% $events.Data.partitionKey %}").
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute partition_key
    #   Required by PutRecords even when an explicit hash key is supplied. Accepts JSONata expression.
    #   @return [String]
    # @!attribute explicit_hash_key
    #   Explicit hash key forwarded to PutRecords unchanged. Accepts JSONata expression.
    #   @return [String]
    class KinesisParameters < Struct.new(
      nil,
      :partition_key,
      :explicit_hash_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Lambda invocation parameters for subscribers. Values are forwarded to the Lambda Invoke API.
    # Every string member accepts a literal or a JSONata expression (e.g. "{% $events.Data.qualifier %}").
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute invocation_type
    #   Lambda invocation type. EVENT invokes the function asynchronously; REQUEST_RESPONSE waits for
    #   its result.
    #   @return [String]
    # @!attribute qualifier
    #   Lambda qualifier: $LATEST, $LATEST.PUBLISHED, a numeric version, or an alias. Accepts a
    #   JSONata expression.
    #   @return [String]
    # @!attribute durable_execution_name
    #   Durable execution name. Accepts a JSONata expression.
    #   @return [String]
    # @!attribute tenant_id
    #   Tenant identifier. Accepts a JSONata expression.
    #   @return [String]
    # @!attribute invocation_timeout_seconds
    #   Timeout in seconds for each invocation of the target. String-typed so the value
    #   may be a JSONata expression.
    #   @return [String]
    class LambdaParameters < Struct.new(
      nil,
      :invocation_type,
      :qualifier,
      :durable_execution_name,
      :tenant_id,
      :invocation_timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request would exceed a service quota for the account.
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name_prefix
    #   Name of an event bus. The first character must be alphanumeric; the remaining characters
    #   may also include '.', '-', and '_'. The grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in the bus's ARN. The same
    #   type is used everywhere a bus name appears.
    #   @return [String]
    # @!attribute event_bus_account_id
    #   AWS Account Id.
    #   @return [String]
    # @!attribute next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    #   @return [String]
    # @!attribute max_results
    #   Maximum number of results to return in one page of a List operation.
    #   @return [Integer]
    class ListEventBusesRequest < Struct.new(
      nil,
      :name_prefix,
      :event_bus_account_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_buses
    #   List of event bus summaries.
    #   @return [Array<Types::EventBusSummary>]
    # @!attribute next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    #   @return [String]
    class ListEventBusesResponse < Struct.new(
      nil,
      :event_buses,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute name_prefix
    #   EventSource name. First character alphanumeric; the rest may add '.', '-', '_'. Names may not
    #   begin with the reserved "aws." prefix. The grammar
    #   matches the ARN local-name segment in EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be created.
    #   @return [String]
    # @!attribute next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    #   @return [String]
    # @!attribute max_results
    #   Maximum number of results to return in one page of a List operation.
    #   @return [Integer]
    class ListEventSourcesRequest < Struct.new(
      nil,
      :event_bus_arn,
      :name_prefix,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_sources
    #   List of EventSource summaries.
    #   @return [Array<Types::EventSourceSummary>]
    # @!attribute next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    #   @return [String]
    class ListEventSourcesResponse < Struct.new(
      nil,
      :event_sources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    #   @return [String]
    # @!attribute max_results
    #   Maximum number of results to return in one page of a List operation.
    #   @return [Integer]
    class ListResourcePoliciesRequest < Struct.new(
      nil,
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summaries only (policy name and revision ID). Use GetResourcePolicy to
    # retrieve a policy document.
    # @!attribute policy_summaries
    #   List of resource policy summaries.
    #   @return [Array<Types::ResourcePolicySummary>]
    # @!attribute next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    #   @return [String]
    class ListResourcePoliciesResponse < Struct.new(
      nil,
      :policy_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute name_prefix
    #   Name of a subscriber. The first character must be alphanumeric; the remaining
    #   characters may also include '.', '-', and '_'.
    #   @return [String]
    # @!attribute next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    #   @return [String]
    # @!attribute max_results
    #   Maximum number of results to return in one page of a List operation.
    #   @return [Integer]
    class ListSubscribersRequest < Struct.new(
      nil,
      :event_bus_arn,
      :name_prefix,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscribers
    #   List of subscriber summaries.
    #   @return [Array<Types::SubscriberSummary>]
    # @!attribute next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    #   @return [String]
    class ListSubscribersResponse < Struct.new(
      nil,
      :subscribers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   Tags attached to a resource, as key-value pairs.
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Log configuration for a subscriber.
    # @!attribute level
    #   Minimum log level. Records below this level are not emitted. Defaults to OFF.
    #   @return [String]
    # @!attribute include_payload
    #   Whether the customer event payload is embedded in log records. Defaults to ON_ERROR_ONLY.
    #   @return [String]
    class LogConfiguration < Struct.new(
      nil,
      :level,
      :include_payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # On-failure configuration: where a failed delivery is sent. Shared by the subscriber and the
    # EventSource.
    # @!attribute arn
    #   The ARN of the destination that receives events that could not be delivered.
    #   An Amazon SQS queue is the supported destination.
    #   @return [String]
    class OnFailureConfiguration < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration for forwarding a partner event source's events through a managed partner event bus.
    # @!attribute partner_event_source_arn
    #   ARN of the partner event source to forward. It is a partner-owned resource, so the account
    #   segment is empty: arn:aws:events:<region>::event-source/aws.partner/<name>.
    #   @return [String]
    # @!attribute pattern
    #   A filter pattern, as a JSON string, that defines which of the partner event source's
    #   events are forwarded to the event bus. If no pattern is specified, all events from the
    #   partner event source are forwarded.
    #   @return [String]
    # @!attribute partner_bus_kms_key_identifier
    #   Identifier of the AWS KMS customer managed key used to encrypt events: a key
    #   ID, key ARN, alias name, or alias ARN. When absent, events are encrypted with
    #   an AWS owned key.
    #   @return [String]
    # @!attribute on_failure_configuration
    #   The destination for events that could not be forwarded, covering both the forwarding
    #   target and the managed partner event bus.
    #   @return [Types::OnFailureConfiguration]
    class PartnerEventsSourceConfiguration < Struct.new(
      nil,
      :partner_event_source_arn,
      :pattern,
      :partner_bus_kms_key_identifier,
      :on_failure_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Point-in-time configuration for a subscriber.
    # Only applicable when StartingPosition is POINT_IN_TIME.
    # @!attribute point_type
    #   Whether to start from the horizon or a specific timestamp.
    #   @return [String]
    # @!attribute starting_point
    #   Timestamp to start from. Required when PointType is TIMESTAMP.
    #   @return [Time]
    # @!attribute end_point
    #   Timestamp to stop at. Optional.
    #   @return [Time]
    class PointInTimeConfiguration < Struct.new(
      nil,
      :point_type,
      :starting_point,
      :end_point,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The policy document is larger than the account's resource policy size quota, or
    # larger than the service maximum.
    # @!attribute message
    #   @return [String]
    class PolicyLengthExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The policy was rejected because it would grant public access to the event bus.
    # A statement grants public access when its principal is a wildcard and no
    # condition limits the callers to specific AWS accounts or principals. To fix
    # it, replace the wildcard principal with specific principals, or add a
    # condition that limits the callers to specific AWS accounts. Conditions on
    # event content (events:source, events:detail-type, events:Metadata/*) do not
    # identify the caller and do not make a wildcard principal non-public. Returned
    # only for the "default" policy; the "AWS_RAM" policy is composed by AWS
    # Resource Access Manager and never grants public access.
    # @!attribute message
    #   @return [String]
    class PublicPolicyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute entries
    #   List of event entries to publish. Must contain at least one entry.
    #   @return [Array<Types::PutEventsRequestEntry>]
    # @!attribute deduplication_configuration
    #   Request-level deduplication settings, applied to every entry in the batch.
    #   @return [Types::DeduplicationConfiguration]
    class PutEventsRequest < Struct.new(
      nil,
      :event_bus_arn,
      :entries,
      :deduplication_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A single event entry in a PutEvents request.
    # @!attribute source
    #   The source of the event. The `aws.` value prefix is service-reserved and
    #   cannot be used as a value.
    #   @return [String]
    # @!attribute detail_type
    #   Free-form detail-type classifying an event within its source.
    #   @return [String]
    # @!attribute detail
    #   The event payload, as a valid JSON string.
    #   @return [String]
    # @!attribute resources
    #   ARNs of resources the event concerns. Included in the event delivered to
    #   subscribers.
    #   @return [Array<String>]
    # @!attribute time
    #   The time the event occurred. Defaults to the time the service receives the
    #   event when omitted.
    #   @return [Time]
    # @!attribute system_metadata
    #   System metadata for PutEvents entries. ContentType is not applicable
    #   (always application/eventbridge+json, set server-side).
    #   @return [Types::PutEventsSystemMetadata]
    class PutEventsRequestEntry < Struct.new(
      nil,
      :source,
      :detail_type,
      :detail,
      :resources,
      :time,
      :system_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_entry_count
    #   The number of entries in the batch that failed to be published.
    #   @return [Integer]
    # @!attribute entries
    #   List of per-entry publish results, in the same order as the request entries.
    #   @return [Array<Types::PutEventsResultEntry>]
    class PutEventsResponse < Struct.new(
      nil,
      :failed_entry_count,
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:failed_entry_count] = 0 unless options.key?(:failed_entry_count)
        super
      end
    end

    # Result entry for a published event. The position of each entry in the response
    # list aligns 1:1 with the corresponding request entry.
    # @!attribute event_id
    #   Unique event ID assigned by the service.
    #   @return [String]
    # @!attribute sequence_number
    #   Sequence number assigned to the message for ordering within the message group.
    #   @return [String]
    # @!attribute success_code
    #   Indicates the outcome for a successfully processed publish entry.
    #   @return [String]
    # @!attribute error_code
    #   Error code identifying why a publish batch entry failed.
    #   @return [String]
    # @!attribute error_message
    #   Human-readable explanation of why a publish batch entry failed.
    #   @return [String]
    class PutEventsResultEntry < Struct.new(
      nil,
      :event_id,
      :sequence_number,
      :success_code,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # System metadata for PutEvents entries. ContentType is not applicable
    # (always application/eventbridge+json, set server-side).
    # @!attribute event_group_id
    #   Event group ID for FIFO ordering.
    #   @return [String]
    # @!attribute deduplication_id
    #   Deduplication ID for FIFO deduplication.
    #   @return [String]
    class PutEventsSystemMetadata < Struct.new(
      nil,
      :event_group_id,
      :deduplication_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute entries
    #   List of event entries to publish. Must contain at least one entry.
    #   @return [Array<Types::PutRawEventsRequestEntry>]
    # @!attribute schema_registry_configuration
    #   Schema-registry settings for encoding open-format (Avro/Protobuf) events.
    #   Required for open-format entries; ignored for JSON entries. The registry
    #   is read with the caller's credentials, so the caller needs read
    #   access to the registry it references.
    #   @return [Types::SchemaRegistryConfiguration]
    # @!attribute deduplication_configuration
    #   Request-level deduplication settings, applied to every entry in the batch.
    #   @return [Types::DeduplicationConfiguration]
    class PutRawEventsRequest < Struct.new(
      nil,
      :event_bus_arn,
      :entries,
      :schema_registry_configuration,
      :deduplication_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A single event entry in a raw publish request.
    # @!attribute data
    #   The event data as a base64-encoded blob. Supports binary formats.
    #   @return [String]
    # @!attribute metadata
    #   Metadata key-value pairs you define. Keys must be 1-128 characters and must not contain "/".
    #   @return [Hash<String, String>]
    # @!attribute system_metadata
    #   Structured system metadata with defined properties.
    #   @return [Types::PutRawEventsSystemMetadata]
    class PutRawEventsRequestEntry < Struct.new(
      nil,
      :data,
      :metadata,
      :system_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_entry_count
    #   The number of entries in the batch that failed to be published.
    #   @return [Integer]
    # @!attribute entries
    #   List of per-entry publish results, in the same order as the request entries.
    #   @return [Array<Types::PutRawEventsResultEntry>]
    class PutRawEventsResponse < Struct.new(
      nil,
      :failed_entry_count,
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:failed_entry_count] = 0 unless options.key?(:failed_entry_count)
        super
      end
    end

    # Result entry for a published event. The position of each entry in the response list
    # aligns 1:1 with the corresponding request entry, enabling co-location by index.
    # @!attribute event_id
    #   Unique event ID assigned by the service. Present on successful entries.
    #   @return [String]
    # @!attribute sequence_number
    #   Sequence number for ordering within the event group.
    #   @return [String]
    # @!attribute success_code
    #   Indicates how the entry was processed. Present only on successful entries.
    #   @return [String]
    # @!attribute error_code
    #   Error code if the entry failed.
    #   @return [String]
    # @!attribute error_message
    #   Error message if the entry failed.
    #   @return [String]
    class PutRawEventsResultEntry < Struct.new(
      nil,
      :event_id,
      :sequence_number,
      :success_code,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # System metadata for PutRawEvents entries. ContentType is required because
    # PutRawEvents supports arbitrary binary formats.
    # @!attribute content_type
    #   Content type of the event data (e.g., "application/cloudevents+json").
    #   @return [String]
    # @!attribute deduplication_id
    #   Deduplication ID for FIFO deduplication.
    #   @return [String]
    # @!attribute event_group_id
    #   Event group ID for FIFO ordering.
    #   @return [String]
    class PutRawEventsSystemMetadata < Struct.new(
      nil,
      :content_type,
      :deduplication_id,
      :event_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute policy_document
    #   A resource policy document, as a JSON string. The "default" policy can be up to
    #   20 KB (20,480 bytes of UTF-8) by default. This quota is adjustable in Service
    #   Quotas. A "default" policy that exceeds the quota is rejected with
    #   PolicyLengthExceededException. No policy document can exceed 389,120 bytes of
    #   UTF-8, regardless of the quota.
    #   @return [String]
    # @!attribute policy_name
    #   Which named policy to write. Defaults to "default", the customer-managed policy,
    #   when omitted (a write AWS Resource Access Manager makes on the owner's behalf
    #   resolves to "AWS_RAM" instead). The two writers are exclusive in both directions —
    #   only Resource Access Manager can write "AWS_RAM", and only the bus owner can write
    #   "default" — so naming the other party's policy fails with AccessDeniedException.
    #   A well-formed name that is neither of the two fails with InvalidInputException.
    #   @return [String]
    # @!attribute expected_revision_id
    #   The write succeeds only if the named policy's current revision ID matches
    #   this value; a policy that does not exist yet matches only the sentinel
    #   "NO_POLICY" (create-only). On mismatch the operation fails with
    #   ConflictException. When omitted, the write is unconditional. Every attempt
    #   stores a newly generated revision ID, so retrying an unanswered request can
    #   conflict with the caller's own earlier attempt; read the policy back and
    #   compare it with the one you intended before treating a conflict as another
    #   writer's change.
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :policy_document,
      :policy_name,
      :expected_revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute policy_name
    #   Name of a policy attached to a resource. Valid values: "default" (the
    #   customer-managed policy) and "AWS_RAM" (managed exclusively by AWS Resource
    #   Access Manager). Any other value is rejected.
    #   @return [String]
    # @!attribute revision_id
    #   Absent when the write removed the policy; a removal produces no new revision.
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      nil,
      :resource_arn,
      :policy_name,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A resource with the same name already exists.
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The resource is in use and cannot be deleted. For example, an event bus with
    # subscribers or event sources cannot be deleted until they are deleted.
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The resource does not exist.
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of a policy attached to a resource: its name and revision ID.
    # @!attribute policy_name
    #   Name of a policy attached to a resource. Valid values: "default" (the
    #   customer-managed policy) and "AWS_RAM" (managed exclusively by AWS Resource
    #   Access Manager). Any other value is rejected.
    #   @return [String]
    # @!attribute revision_id
    #   Revision ID of a resource policy. A new revision ID is generated on every
    #   successful write.
    #   @return [String]
    class ResourcePolicySummary < Struct.new(
      nil,
      :policy_name,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Retry policy for a subscriber.
    # @!attribute max_retry_attempts
    #   Maximum number of retry attempts (0-185, default: 5).
    #   @return [Integer]
    # @!attribute max_event_age_in_seconds
    #   Maximum age of an event in seconds before it is discarded (60-86400, default: 300).
    #   @return [Integer]
    # @!attribute retry_strategy
    #   Strategy for determining which exceptions are retried. Default: ALL.
    #   @return [String]
    class RetryPolicy < Struct.new(
      nil,
      :max_retry_attempts,
      :max_event_age_in_seconds,
      :retry_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   ARN of a resource a bus owner can revoke: a subscriber or an EventSource. The pattern is
    #   the revocable subset of TaggableResourceArn; buses are not revocable.
    #   @return [String]
    class RevokeResourceRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   ARN of a resource a bus owner can revoke: a subscriber or an EventSource. The pattern is
    #   the revocable subset of TaggableResourceArn; buses are not revocable.
    #   @return [String]
    class RevokeResourceResponse < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Schema registry settings used to encode open-format (Avro/Protobuf) events.
    # @!attribute registry_uri
    #   Glue Schema Registry ARN, or Confluent Cloud HTTPS URL.
    #   @return [String]
    # @!attribute confluent_public_registry_configuration
    #   Required when RegistryUri is an HTTPS URL. Provides Connection-based auth for Confluent Cloud.
    #   @return [Types::ConfluentPublicRegistryConfiguration]
    class SchemaRegistryConfiguration < Struct.new(
      nil,
      :registry_uri,
      :confluent_public_registry_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The configured schema registry could not be reached. Retry the request.
    # @!attribute message
    #   @return [String]
    class SchemaRegistryUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A custom SNS message attribute (data type plus string or binary value).
    # @!attribute data_type
    #   Attribute data type. Requiredness and the accepted vocabulary belong to SNS, which rejects
    #   an attribute without a data type on delivery.
    #   @return [String]
    # @!attribute string_value
    #   String attribute value. A JSONata expression resolves once per delivered event.
    #   @return [String]
    # @!attribute binary_value
    #   Base64-encoded literal binary attribute value.
    #   @return [String]
    class SnsMessageAttributeValue < Struct.new(
      nil,
      :data_type,
      :string_value,
      :binary_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:data_type] = '' unless options.key?(:data_type)
        super
      end
    end

    # SNS invocation parameters for subscribers. Values are forwarded to the SNS PublishBatch API.
    # All scalar values accept a literal or a JSONata expression (e.g. "{% $events.Data.groupId %}").
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute message_group_id
    #   Message group ID for FIFO topics. Accepts JSONata expression.
    #   @return [String]
    # @!attribute message_deduplication_id
    #   Message deduplication ID for FIFO topics. Accepts JSONata expression.
    #   @return [String]
    # @!attribute subject
    #   Subject line for email protocol subscriptions. Accepts JSONata expression.
    #   @return [String]
    # @!attribute message_structure
    #   Per-protocol message formatting mode, forwarded to SNS Publish unchanged. Accepts JSONata
    #   expression.
    #   @return [String]
    # @!attribute message_attributes
    #   Custom message attributes for SNS filtering.
    #   @return [Hash<String, Types::SnsMessageAttributeValue>]
    class SnsParameters < Struct.new(
      nil,
      :message_group_id,
      :message_deduplication_id,
      :subject,
      :message_structure,
      :message_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A custom SQS message attribute (data type plus string or binary value).
    # @!attribute data_type
    #   Attribute data type. Requiredness, the accepted vocabulary, and any custom label belong to
    #   SQS, which rejects an attribute without a data type on delivery.
    #   @return [String]
    # @!attribute string_value
    #   String attribute value. A JSONata expression resolves once per delivered event.
    #   @return [String]
    # @!attribute binary_value
    #   Base64-encoded literal binary attribute value.
    #   @return [String]
    class SqsMessageAttributeValue < Struct.new(
      nil,
      :data_type,
      :string_value,
      :binary_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:data_type] = '' unless options.key?(:data_type)
        super
      end
    end

    # SQS invocation parameters for subscribers. Values are forwarded to the SQS SendMessageBatch API.
    # All scalar values accept a literal or a JSONata expression (e.g. "{% $events.Data.groupId %}").
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute message_group_id
    #   Message group ID for FIFO queues. Accepts JSONata expression.
    #   @return [String]
    # @!attribute message_deduplication_id
    #   Message deduplication ID for FIFO queues. Accepts JSONata expression.
    #   @return [String]
    # @!attribute delay_seconds
    #   Delay in seconds before the message becomes visible, standard queues only. Accepts JSONata
    #   expression.
    #   @return [String]
    # @!attribute message_attributes
    #   Custom message attributes (name/type/value).
    #   @return [Hash<String, Types::SqsMessageAttributeValue>]
    # @!attribute message_system_attributes
    #   System message attributes (e.g., AWSTraceHeader).
    #   @return [Hash<String, Types::SqsMessageAttributeValue>]
    class SqsParameters < Struct.new(
      nil,
      :message_group_id,
      :message_deduplication_id,
      :delay_seconds,
      :message_attributes,
      :message_system_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Step Functions invocation parameters for subscribers. Values are forwarded to the
    # Step Functions StartExecution or StartSyncExecution API.
    # Every string member accepts a literal or a JSONata expression (e.g. "{% $events.Data.executionName %}").
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute invocation_type
    #   Selects StartExecution (EVENT) or StartSyncExecution (REQUEST_RESPONSE) at delivery.
    #   @return [String]
    # @!attribute name
    #   Name for the execution. Must be unique per account/region/state machine. Accepts JSONata expression.
    #   @return [String]
    # @!attribute trace_header
    #   X-Ray trace header for distributed tracing. Accepts JSONata expression.
    #   @return [String]
    # @!attribute invocation_timeout_seconds
    #   Timeout in seconds for each invocation of the target (1-30). String-typed
    #   (not integer) so the value may be a JSONata expression.
    #   @return [String]
    class StepFunctionsParameters < Struct.new(
      nil,
      :invocation_type,
      :name,
      :trace_header,
      :invocation_timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Event storage configuration for an event bus.
    # @!attribute retention_period_in_days
    #   Number of days events are retained on the event bus.
    #   @return [Integer]
    class StorageConfiguration < Struct.new(
      nil,
      :retention_period_in_days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Event storage configuration of an event bus, as returned on reads.
    # @!attribute retention_period_in_days
    #   Number of days events are retained on the event bus.
    #   @return [Integer]
    # @!attribute retention_window_start_time
    #   The earliest point in time from which stored events are available. Events
    #   older than this have expired from retention.
    #   @return [Time]
    class StorageConfigurationOutput < Struct.new(
      nil,
      :retention_period_in_days,
      :retention_window_start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of a subscriber, as returned by ListSubscribers.
    # @!attribute subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    #   @return [String]
    # @!attribute name
    #   Name of a subscriber. The first character must be alphanumeric; the remaining
    #   characters may also include '.', '-', and '_'.
    #   @return [String]
    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute target_arn
    #   ARN of the target a subscriber invokes. The resource grammar is service-neutral because target
    #   services use different separators and the USI form omits region and account.
    #   @return [String]
    # @!attribute type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in order within
    #   an event group; UNORDERED delivers without an ordering guarantee.
    #   @return [String]
    # @!attribute revoked
    #   True when the bus owner has revoked this subscriber. Present only when true, so a bus
    #   owner listing subscribers sees at a glance which ones they revoked. See
    #   DescribeSubscriberResponse$Revoked.
    #   @return [Boolean]
    # @!attribute state
    #   Customer-controlled run state of a subscriber, set on create or update. Distinct
    #   from the bus lifecycle vocabulary, where ACTIVE means "provisioned and healthy".
    #   Delivery requires State RUNNING on a subscriber that is not revoked.
    #   @return [String]
    # @!attribute creation_time
    #   The time the subscriber was created.
    #   @return [Time]
    # @!attribute last_modified_time
    #   The time the subscriber was last modified.
    #   @return [Time]
    # @!attribute subscriber_account_id
    #   AWS Account Id.
    #   @return [String]
    class SubscriberSummary < Struct.new(
      nil,
      :subscriber_arn,
      :name,
      :event_bus_arn,
      :target_arn,
      :type,
      :revoked,
      :state,
      :creation_time,
      :last_modified_time,
      :subscriber_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute tags
    #   Tags attached to a resource, as key-value pairs.
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request was throttled because it exceeds a request rate limit. Retry the
    # request with backoff.
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Transformer configuration for a subscriber.
    # @!attribute type
    #   Transform type.
    #   @return [String]
    # @!attribute jsonata_configuration
    #   JSONata expression configuration. Required when Type is JSONATA.
    #   @return [Types::JsonataConfiguration]
    class Transformer < Struct.new(
      nil,
      :type,
      :jsonata_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Parameters for USI (Universal Service Integration) targets.
    # Used when TargetArn is in the format arn:aws:events:::aws-sdk:{service}:{apiAction}
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute input
    #   JSON string or JSONata expression that produces the API request.
    #   Supports {% ... %} JSONata expressions for dynamic values from the event.
    #   @return [String]
    # @!attribute invocation_timeout_seconds
    #   Timeout in seconds for each invocation of the target (1-30, default 30).
    #   Accepts a literal integer or a {% ... %} JSONata expression evaluated against the event
    #   at invocation time. A JSONata expression is syntax-checked at create time. Resolved values
    #   outside of the range [1, 30] will be constrained to the nearest bound at delivery time.
    #   Defaults to 30 seconds when unset.
    #   @return [String]
    class UniversalTargetParameters < Struct.new(
      nil,
      :input,
      :invocation_timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute tag_keys
    #   List of tag keys.
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute encryption_configuration
    #   Encryption configuration for an event bus.
    #   @return [Types::EncryptionConfiguration]
    # @!attribute storage_configuration
    #   Event storage configuration for an event bus.
    #   @return [Types::StorageConfiguration]
    class UpdateEventBusRequest < Struct.new(
      nil,
      :event_bus_arn,
      :description,
      :encryption_configuration,
      :storage_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute name
    #   Name of an event bus. The first character must be alphanumeric; the remaining characters
    #   may also include '.', '-', and '_'. The grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in the bus's ARN. The same
    #   type is used everywhere a bus name appears.
    #   @return [String]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute encryption_configuration
    #   Encryption configuration for an event bus.
    #   @return [Types::EncryptionConfiguration]
    # @!attribute storage_configuration
    #   Event storage configuration of an event bus, as returned on reads.
    #   @return [Types::StorageConfigurationOutput]
    # @!attribute state
    #   Lifecycle state of an event bus.
    #   - CREATING: Bus creation is in progress.
    #   - CREATE_FAILED: Bus creation failed; see StateReason. The bus cannot be recovered or
    #     recreated in place: delete it with DeleteEventBus, then create a new bus.
    #   - ACTIVE: Bus is fully operational and can accept events.
    #   - UPDATING: Bus update is in progress.
    #   - UPDATE_FAILED: Bus update failed; the bus remains operational with its previous configuration.
    #   - DELETING: Bus deletion is actively in progress.
    #   - DELETE_FAILED: Bus deletion failed; see StateReason. Retry DeleteEventBus after removing
    #     subscribers and event sources.
    #   @return [String]
    # @!attribute state_reason
    #   Human-readable explanation of why an event bus is in its current State. Omitted when the
    #   bus is in a normal operational state (ACTIVE). It stands in for the error response an
    #   asynchronous failure cannot return, so it applies only to resources with an asynchronous
    #   lifecycle: event buses. EventSources and subscribers are provisioned synchronously and
    #   report failures directly on the request.
    #   @return [String]
    # @!attribute last_modified_time
    #   The time the event bus was last modified.
    #   @return [Time]
    class UpdateEventBusResponse < Struct.new(
      nil,
      :event_bus_arn,
      :name,
      :description,
      :encryption_configuration,
      :storage_configuration,
      :state,
      :state_reason,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment is set by the service
    #   (aws.service for AWS service events, aws.partner for partner events) and is not part of the
    #   resource's name. The id segment is a 25-character identifier generated by the service.
    #   @return [String]
    # @!attribute configuration
    #   Discriminated EventSource configuration. Exactly one variant must be set.
    #   @return [Types::EventSourceConfiguration]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    class UpdateEventSourceRequest < Struct.new(
      nil,
      :event_source_arn,
      :configuration,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment is set by the service
    #   (aws.service for AWS service events, aws.partner for partner events) and is not part of the
    #   resource's name. The id segment is a 25-character identifier generated by the service.
    #   @return [String]
    # @!attribute name
    #   EventSource name. First character alphanumeric; the rest may add '.', '-', '_'. Names may not
    #   begin with the reserved "aws." prefix. The grammar
    #   matches the ARN local-name segment in EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be created.
    #   @return [String]
    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute state
    #   Lifecycle state of an EventSource. Revocation is reported by the Revoked flag.
    #   @return [String]
    # @!attribute last_modified_time
    #   The time the EventSource was last modified.
    #   @return [Time]
    class UpdateEventSourceResponse < Struct.new(
      nil,
      :event_source_arn,
      :name,
      :event_bus_arn,
      :state,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Update-able configuration for how the subscriber invokes its target.
    # @!attribute role_arn
    #   IAM role the service assumes to invoke the target. Must belong to the
    #   calling account.
    #   @return [String]
    # @!attribute lambda_parameters
    #   Lambda invocation parameters for subscribers. Values are forwarded to the Lambda Invoke API.
    #   Every string member accepts a literal or a JSONata expression (e.g. "{% $events.Data.qualifier %}").
    #   @return [Types::LambdaParameters]
    # @!attribute sqs_parameters
    #   SQS invocation parameters for subscribers. Values are forwarded to the SQS SendMessageBatch API.
    #   All scalar values accept a literal or a JSONata expression (e.g. "{% $events.Data.groupId %}").
    #   @return [Types::SqsParameters]
    # @!attribute sns_parameters
    #   SNS invocation parameters for subscribers. Values are forwarded to the SNS PublishBatch API.
    #   All scalar values accept a literal or a JSONata expression (e.g. "{% $events.Data.groupId %}").
    #   @return [Types::SnsParameters]
    # @!attribute kinesis_parameters
    #   Kinesis Data Streams invocation parameters for subscribers. Values are forwarded to the
    #   Kinesis PutRecords API.
    #   All scalar values accept a literal or a JSONata expression (e.g. "{% $events.Data.partitionKey %}").
    #   @return [Types::KinesisParameters]
    # @!attribute step_functions_parameters
    #   Step Functions invocation parameters for subscribers. Values are forwarded to the
    #   Step Functions StartExecution or StartSyncExecution API.
    #   Every string member accepts a literal or a JSONata expression (e.g. "{% $events.Data.executionName %}").
    #   @return [Types::StepFunctionsParameters]
    # @!attribute http_parameters
    #   HTTP invocation parameters for subscribers (API Gateway / API Destination). Values are
    #   forwarded to the HTTP endpoint.
    #   @return [Types::HttpParameters]
    # @!attribute universal_target_parameters
    #   Parameters for USI (Universal Service Integration) targets.
    #   Used when TargetArn is in the format arn:aws:events:::aws-sdk:{service}:{apiAction}
    #   @return [Types::UniversalTargetParameters]
    # @!attribute event_bus_v2_parameters
    #   Parameters for forwarding events to another EventBridge event bus.
    #   @return [Types::EventBusV2Parameters]
    class UpdateInvokeConfiguration < Struct.new(
      nil,
      :role_arn,
      :lambda_parameters,
      :sqs_parameters,
      :sns_parameters,
      :kinesis_parameters,
      :step_functions_parameters,
      :http_parameters,
      :universal_target_parameters,
      :event_bus_v2_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    #   @return [String]
    # @!attribute description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    #   @return [String]
    # @!attribute state
    #   Customer-controlled run state of a subscriber, set on create or update. Distinct
    #   from the bus lifecycle vocabulary, where ACTIVE means "provisioned and healthy".
    #   Delivery requires State RUNNING on a subscriber that is not revoked.
    #   @return [String]
    # @!attribute resume_position
    #   Position from which delivery resumes when a subscriber is unpaused.
    #   Honored only on an UpdateSubscriber call that transitions State
    #   from STOPPED to RUNNING (unpause); ignored on any other call and not accepted
    #   on Create. Defaults to LAST_PROCESSED when omitted.
    #   @return [String]
    # @!attribute invoke_configuration
    #   Update-able configuration for how the subscriber invokes its target.
    #   @return [Types::UpdateInvokeConfiguration]
    # @!attribute filter_configuration
    #   Configuration for filtering events delivered to a subscriber.
    #   On CreateSubscriber, Filters is required and must contain at least one Filter with a non-empty Pattern.
    #   On UpdateSubscriber, an empty `FilterConfiguration:{}` clears the existing filter.
    #   Any non-empty shape (including `{Language:X}` without Filters) must contain a valid Filters list
    #   — same contract as CreateSubscriber. A non-empty Filters list overwrites; an omitted
    #   FilterConfiguration preserves existing state.
    #   All Filters are implicitly ANDed — an event must match every Filter to be delivered.
    #   @return [Types::FilterConfiguration]
    # @!attribute batch_configuration
    #   Batching configuration for a subscriber.
    #   @return [Types::BatchConfiguration]
    # @!attribute transformer
    #   Not applicable to universal (aws-sdk) targets, whose input transformation is UniversalTargetParameters.Input; a Transformer on such a target is rejected.
    #   @return [Types::Transformer]
    # @!attribute retry_policy
    #   Retry policy for a subscriber.
    #   @return [Types::RetryPolicy]
    # @!attribute on_failure_configuration
    #   On-failure configuration: where a failed delivery is sent. Shared by the subscriber and the
    #   EventSource.
    #   @return [Types::OnFailureConfiguration]
    # @!attribute log_configuration
    #   Log configuration for a subscriber.
    #   @return [Types::LogConfiguration]
    class UpdateSubscriberRequest < Struct.new(
      nil,
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
      :log_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    #   @return [String]
    # @!attribute name
    #   Name of a subscriber. The first character must be alphanumeric; the remaining
    #   characters may also include '.', '-', and '_'.
    #   @return [String]
    # @!attribute event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    #   @return [String]
    # @!attribute type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in order within
    #   an event group; UNORDERED delivers without an ordering guarantee.
    #   @return [String]
    # @!attribute starting_position
    #   Starting position for a subscriber.
    #   @return [String]
    # @!attribute point_in_time_configuration
    #   Point-in-time configuration for a subscriber.
    #   Only applicable when StartingPosition is POINT_IN_TIME.
    #   @return [Types::PointInTimeConfiguration]
    # @!attribute state
    #   Customer-controlled run state of a subscriber, set on create or update. Distinct
    #   from the bus lifecycle vocabulary, where ACTIVE means "provisioned and healthy".
    #   Delivery requires State RUNNING on a subscriber that is not revoked.
    #   @return [String]
    # @!attribute last_modified_time
    #   The time the subscriber was last modified.
    #   @return [Time]
    class UpdateSubscriberResponse < Struct.new(
      nil,
      :subscriber_arn,
      :name,
      :event_bus_arn,
      :type,
      :starting_position,
      :point_in_time_configuration,
      :state,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
