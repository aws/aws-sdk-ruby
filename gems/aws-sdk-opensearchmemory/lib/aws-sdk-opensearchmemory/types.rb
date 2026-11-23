# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpenSearchMemory
  module Types

    # You don't have sufficient access to perform this operation. To use
    # this operation, you must have AWS Identity and Access Management (IAM)
    # permissions for the operation, and on the resource it acts on. If the
    # space uses a customer managed AWS Key Management Service (AWS KMS)
    # key, you must also have permission to use the key.
    #
    # @!attribute [rw] message
    #   A message that describes which access the request is missing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A requested event that the call didn't return, and the reason.
    #
    # @!attribute [rw] event_id
    #   The ID of the requested event.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The reason that the call didn't return the event.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A human-readable description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/BatchGetEventError AWS API Documentation
    #
    class BatchGetEventError < Struct.new(
      :event_id,
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The actor that every requested event must belong to. Omit it to skip
    #   this check. The operation reports an event that doesn't match in
    #   `errors` as `RESOURCE_NOT_FOUND`.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session that every requested event must belong to. Omit it to
    #   skip this check. The operation reports an event that doesn't match
    #   in `errors` as `RESOURCE_NOT_FOUND`.
    #   @return [String]
    #
    # @!attribute [rw] event_ids
    #   The IDs of the events to get: 1 to 10, without duplicates.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/BatchGetEventInput AWS API Documentation
    #
    class BatchGetEventInput < Struct.new(
      :space_id,
      :actor_id,
      :session_id,
      :event_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The events found, in the order that you requested their IDs.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] errors
    #   An entry for each requested event that the call didn't return.
    #   Empty when the call returned every event.
    #   @return [Array<Types::BatchGetEventError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/BatchGetEventOutput AWS API Documentation
    #
    class BatchGetEventOutput < Struct.new(
      :events,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # A document stored in Amazon S3, such as a PDF, and its media type.
    #
    # @!attribute [rw] content_type
    #   The document's media type. Only `application/pdf` is supported. Any
    #   other value fails with `ValidationException`.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The location of the document.
    #   @return [Types::BlobSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/BlobPayload AWS API Documentation
    #
    class BlobPayload < Struct.new(
      :content_type,
      :source)
      SENSITIVE = [:source]
      include Aws::Structure
    end

    # The source of a blob's content. Set exactly one member. Currently,
    # the only member is `s3Location`.
    #
    # @note BlobSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note BlobSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of BlobSource corresponding to the set member.
    #
    # @!attribute [rw] s3_location
    #   The S3 object holding the document.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/BlobSource AWS API Documentation
    #
    class BlobSource < Struct.new(
      :s3_location,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3Location < BlobSource; end
      class Unknown < BlobSource; end
    end

    # The request conflicts with the current state of the resource. For
    # example, the space is being created, updated, or deleted, a space with
    # the same name already exists, or you reused a client token with
    # different parameters. Wait for the space to finish being created,
    # updated, or deleted, or use a different name or client token, and then
    # retry.
    #
    # @!attribute [rw] message
    #   A message that describes the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that caused the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that caused the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Conversational content. Exactly one member is set.
    #
    # @note ConversationalPayload is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ConversationalPayload is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConversationalPayload corresponding to the set member.
    #
    # @!attribute [rw] unified
    #   Conversation turns in the service's own format.
    #   @return [Types::UnifiedConversational]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ConversationalPayload AWS API Documentation
    #
    class ConversationalPayload < Struct.new(
      :unified,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Unified < ConversationalPayload; end
      class Unknown < ConversationalPayload; end
    end

    # @!attribute [rw] space_id
    #   The ID of the space that owns the event, for example
    #   `sp-02864597b164`.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The ID of the actor (end user or agent) that the event belongs to.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session the event belongs to. Send every event of one
    #   conversation with the same session ID, so that `SUMMARY` strategies
    #   summarize the conversation as one session. If you omit it, the
    #   service generates a session ID and returns it.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   When the event occurred. The default is the time that the service
    #   receives the request.
    #   @return [Time]
    #
    # @!attribute [rw] payload
    #   The event content. Set exactly one union member.
    #   @return [Types::EventPayload]
    #
    # @!attribute [rw] metadata
    #   Metadata tags to store with the event. Memories derived from the
    #   event carry the same tags. Keys that begin with `x-amz-`, the keys
    #   `documentS3Source` and `documentS3Url`, and other keys that the
    #   service uses internally are reserved: a request that sets one fails
    #   with `ValidationException`, and the message names the key.
    #
    #   A space can use at most 50 distinct metadata keys across all of its
    #   events and memories. A request that would add a key beyond that
    #   fails with `ValidationException`. Reuse an existing key instead.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that makes the request
    #   idempotent. Within 2 hours of the first request, a retry with the
    #   same token and the same request, including the same `sessionId`,
    #   returns the same event. If you omit `sessionId`, the service
    #   generates a new one on each attempt, so a retry fails with
    #   `ConflictException`. Reusing the token with different request
    #   content also fails with `ConflictException`. `eventTimestamp` isn't
    #   compared. After 2 hours, the token starts a new event.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] infer
    #   Specifies whether to extract memories from this event. The default
    #   is `true`. Set it to `false` to store the event without extraction:
    #   the service skips strategies that infer memories, and still indexes
    #   the event's turns for `SearchEvents`. A document submitted as a
    #   `blob` is still extracted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/CreateEventInput AWS API Documentation
    #
    class CreateEventInput < Struct.new(
      :space_id,
      :actor_id,
      :session_id,
      :event_timestamp,
      :payload,
      :metadata,
      :client_token,
      :infer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event
    #   The stored event's identifiers: its ID, session, and timestamp.
    #   @return [Types::EventDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/CreateEventOutput AWS API Documentation
    #
    class CreateEventOutput < Struct.new(
      :event)
      SENSITIVE = []
      include Aws::Structure
    end

    # The memory as `CreateMemory` acknowledges it: its identifiers. The
    # memory isn't searchable yet when the call returns.
    #
    # @!attribute [rw] memory_id
    #   The final ID of the memory. Until the memory is indexed,
    #   `GetMemory`, `UpdateMemory`, and `DeleteMemory` return
    #   `ResourceNotFoundException` for it.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the strategy the memory belongs to.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The ID of the actor the memory belongs to.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The ID of the session the memory belongs to, including one the
    #   service generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/CreateMemoryDetail AWS API Documentation
    #
    class CreateMemoryDetail < Struct.new(
      :memory_id,
      :space_id,
      :name,
      :actor_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for `CreateMemory`.
    #
    # @!attribute [rw] space_id
    #   The ID of the space that owns the memory, for example
    #   `sp-02864597b164`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the strategy that the memory belongs to. The space must
    #   already declare the strategy, and the memory's type comes from that
    #   strategy. The name must be 1 to 64 characters: letters, digits,
    #   periods, hyphens, and underscores, starting with a letter or digit.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The memory text, stored and embedded as provided.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The actor (end user or agent) that owns the memory.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session that the memory belongs to. If you omit it, the service
    #   generates a session ID and returns it.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata tags to store with the memory. Keys that begin with
    #   `x-amz-`, the key `documentS3Source`, and other keys that the
    #   service uses internally are reserved: a request that sets one fails
    #   with `ValidationException`, and the message names the key.
    #
    #   A space can use at most 50 distinct metadata keys across all of its
    #   events and memories. A request that would add a key beyond that
    #   fails with `ValidationException`. Reuse an existing key instead.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that makes the request
    #   idempotent. Within 2 hours of the first request, a retry with the
    #   same token returns the same `memoryId` instead of creating a second
    #   memory. Reusing the token with a different `name`, `content`,
    #   `metadata`, `actorId`, or `sessionId` fails with
    #   `ConflictException`. If you omit `sessionId`, a retry with the same
    #   token gets the same session. If you omit the token, each call
    #   creates a new memory.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/CreateMemoryInput AWS API Documentation
    #
    class CreateMemoryInput < Struct.new(
      :space_id,
      :name,
      :content,
      :actor_id,
      :session_id,
      :metadata,
      :client_token)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # The acknowledged memory. It isn't searchable yet when the call
    # returns.
    #
    # @!attribute [rw] memory
    #   The memory, identified but not yet indexed.
    #   @return [Types::CreateMemoryDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/CreateMemoryOutput AWS API Documentation
    #
    class CreateMemoryOutput < Struct.new(
      :memory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the space, unique within your account in the Region. If
    #   another space already has the name, the request fails with
    #   `ConflictException`.
    #   @return [String]
    #
    # @!attribute [rw] memory_strategies
    #   The memory strategies that extract memories from the space's
    #   events: up to 10 strategies, each with a name that is unique within
    #   the space.
    #
    #   Optional. Omit it, or send an empty list, to create a space with no
    #   memory strategies. Such a space stores the conversation events you
    #   send it and returns them through `SearchEvents` and `ListEvents`,
    #   but extracts no memories and has none to search. You can add
    #   strategies later with `UpdateSpace`.
    #
    #   The serialized list can be at most 384 KiB.
    #   @return [Array<Types::MemoryStrategy>]
    #
    # @!attribute [rw] event_expiry_days
    #   How many days the space keeps each event, from 1 to 365. The default
    #   is 90.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_expiry_days
    #   How many days the space keeps each memory, from 0 to 3650, counted
    #   from when the service writes the memory. Updating a memory with
    #   `UpdateMemory` doesn't restart the count. 0 means memories never
    #   expire. If you omit it, memories never expire.
    #
    #   Searches and lists leave out a memory past its expiry, and reading,
    #   updating, or deleting it returns `ResourceNotFoundException`.
    #   @return [Integer]
    #
    # @!attribute [rw] extraction_model_id
    #   The model that extracts and consolidates memories for every strategy
    #   in the space, as an Amazon Bedrock model ID without an
    #   inference-profile prefix: `anthropic.claude-opus-5-5` or
    #   `anthropic.claude-haiku-5-5`. Another value fails with
    #   `ValidationException`, and the message lists the supported IDs. Omit
    #   it to use the service default, which can change over time and isn't
    #   returned by `GetSpace`. Setting a value pins the model.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The AWS KMS key that encrypts the space's data. Omit it, or omit
    #   its `kmsKeyArn`, to use an AWS owned key. You can't change the key
    #   after you create the space.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags to add to the space.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that makes the request
    #   idempotent. A retry with the same token and the same parameters
    #   within 2 hours returns the space that the first request created,
    #   instead of creating another. Reusing the token with different
    #   parameters, or while the first request is still in progress, fails
    #   with `ConflictException`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/CreateSpaceRequest AWS API Documentation
    #
    class CreateSpaceRequest < Struct.new(
      :name,
      :memory_strategies,
      :event_expiry_days,
      :memory_expiry_days,
      :extraction_model_id,
      :encryption_configuration,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the space: `CREATING`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the space was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/CreateSpaceResponse AWS API Documentation
    #
    class CreateSpaceResponse < Struct.new(
      :space_id,
      :arn,
      :name,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The ID of the event to delete.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The actor that the event must belong to. Omit it to skip this check.
    #   If it doesn't match the stored event, the call fails with
    #   `ResourceNotFoundException`, as if the event did not exist.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session that the event must belong to. Omit it to skip this
    #   check. If it doesn't match the stored event, the call fails with
    #   `ResourceNotFoundException`, as if the event did not exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/DeleteEventInput AWS API Documentation
    #
    class DeleteEventInput < Struct.new(
      :space_id,
      :event_id,
      :actor_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The ID of the deleted event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/DeleteEventOutput AWS API Documentation
    #
    class DeleteEventOutput < Struct.new(
      :event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space that owns the memory.
    #   @return [String]
    #
    # @!attribute [rw] memory_id
    #   The ID of the memory to delete.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The ID of the actor that the memory must belong to. Omit it to skip
    #   this check. If it doesn't match the stored memory, the call fails
    #   with `ResourceNotFoundException`, as if the memory did not exist.
    #   @return [String]
    #
    # @!attribute [rw] strategy_name
    #   The name of the strategy that the memory must belong to. Omit it to
    #   skip this check. If it doesn't match the stored memory, the call
    #   fails with `ResourceNotFoundException`, as if the memory did not
    #   exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/DeleteMemoryInput AWS API Documentation
    #
    class DeleteMemoryInput < Struct.new(
      :space_id,
      :memory_id,
      :actor_id,
      :strategy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The ID of the deleted memory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/DeleteMemoryOutput AWS API Documentation
    #
    class DeleteMemoryOutput < Struct.new(
      :memory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/DeleteSpaceRequest AWS API Documentation
    #
    class DeleteSpaceRequest < Struct.new(
      :space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the space: `DELETING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/DeleteSpaceResponse AWS API Documentation
    #
    class DeleteSpaceResponse < Struct.new(
      :space_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encryption settings for a space.
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of a customer managed AWS KMS key that encrypts the space's
    #   data. The key must be an enabled symmetric encryption key in the
    #   space's Region, and you need permission to create grants on it
    #   (`kms:CreateGrant`). Otherwise, the request fails with
    #   `ValidationException` or `AccessDeniedException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event, including its payload.
    #
    # @!attribute [rw] event_id
    #   The event's ID.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The ID of the actor the event belongs to.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The ID of the session the event belongs to.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The event's content, as submitted to `CreateEvent`.
    #   @return [Types::EventPayload]
    #
    # @!attribute [rw] metadata
    #   The event's metadata tags, as supplied to `CreateEvent`. May be
    #   empty.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] event_timestamp
    #   The time the event occurred.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/Event AWS API Documentation
    #
    class Event < Struct.new(
      :event_id,
      :space_id,
      :actor_id,
      :session_id,
      :payload,
      :metadata,
      :event_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stored event's identifiers. Call `GetEvent` for the payload.
    #
    # @!attribute [rw] event_id
    #   The event's ID, assigned by the service. Use it with `GetEvent` and
    #   `DeleteEvent`.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The ID of the actor the event belongs to.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The ID of the session the event belongs to, including one the
    #   service generated.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   When the event occurred: the value supplied, or the time the request
    #   was received.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/EventDetail AWS API Documentation
    #
    class EventDetail < Struct.new(
      :event_id,
      :space_id,
      :actor_id,
      :session_id,
      :event_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event content. Exactly one member must be set.
    #
    # @note EventPayload is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EventPayload is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EventPayload corresponding to the set member.
    #
    # @!attribute [rw] conversational
    #   Conversation turns.
    #   @return [Types::ConversationalPayload]
    #
    # @!attribute [rw] structured_data
    #   Structured (non-conversational) content, for example a deployment
    #   result that an agent should remember.
    #   @return [Types::StructuredDataPayload]
    #
    # @!attribute [rw] blob
    #   A document stored in Amazon S3, such as a PDF.
    #   @return [Types::BlobPayload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/EventPayload AWS API Documentation
    #
    class EventPayload < Struct.new(
      :conversational,
      :structured_data,
      :blob,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Conversational < EventPayload; end
      class StructuredData < EventPayload; end
      class Blob < EventPayload; end
      class Unknown < EventPayload; end
    end

    # A `SearchEvents` result: the matching chunk of an event and its
    # provenance. Unlike `EventSummary` from `ListEvents`, it has a
    # relevance score and the matched content, but not the full payload.
    #
    # @!attribute [rw] event_id
    #   The ID of the event that the chunk belongs to. Use it with
    #   `GetEvent` or `DeleteEvent`.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The relevance score of the result. A higher score is more relevant.
    #   Scores aren't normalized to a fixed range and can be greater than
    #   1, so use them only to order results.
    #   @return [Float]
    #
    # @!attribute [rw] system_metadata
    #   Provenance for the chunk: the owning actor and session, and when it
    #   was created and last updated. It is the same block that
    #   `ListMemories` and `SearchMemories` return. Event chunks are never
    #   modified, so `updatedAt` always equals `createdAt`.
    #
    #   Absent when the service has no provenance for the chunk.
    #   @return [Types::SystemMetadata]
    #
    # @!attribute [rw] metadata
    #   The event's metadata tags. All values are strings. In a query,
    #   filter on a tag as `metadata.<key>`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] matched_content
    #   The text of the matching chunk.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/EventSearchSummary AWS API Documentation
    #
    class EventSearchSummary < Struct.new(
      :event_id,
      :score,
      :system_metadata,
      :metadata,
      :matched_content)
      SENSITIVE = [:matched_content]
      include Aws::Structure
    end

    # A summary of an event, as returned by `ListEvents`. It doesn't
    # include the payload.
    #
    # @!attribute [rw] event_id
    #   The event's ID.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The event's metadata tags, as supplied to `CreateEvent`. May be
    #   empty.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] event_timestamp
    #   The time the event occurred.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/EventSummary AWS API Documentation
    #
    class EventSummary < Struct.new(
      :event_id,
      :metadata,
      :event_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The event's ID, as returned by `CreateEvent`, `ListEvents`, or
    #   `SearchEvents`.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The actor the event must belong to. Omit it to skip this check. If
    #   it doesn't match the stored event, the call fails with
    #   `ResourceNotFoundException`, as if the event did not exist.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session the event must belong to. Omit it to skip this check. If
    #   it doesn't match the stored event, the call fails with
    #   `ResourceNotFoundException`, as if the event did not exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/GetEventInput AWS API Documentation
    #
    class GetEventInput < Struct.new(
      :space_id,
      :event_id,
      :actor_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event
    #   The event, including its payload.
    #   @return [Types::Event]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/GetEventOutput AWS API Documentation
    #
    class GetEventOutput < Struct.new(
      :event)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space that holds the memory.
    #   @return [String]
    #
    # @!attribute [rw] memory_id
    #   The memory's ID, as returned by `SearchMemories` or `ListMemories`.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The ID of the actor the memory must belong to. Omit it to skip this
    #   check. If it doesn't match the stored memory, the call fails with
    #   `ResourceNotFoundException`, as if the memory did not exist.
    #   @return [String]
    #
    # @!attribute [rw] strategy_name
    #   The name of the strategy the memory must belong to. Omit it to skip
    #   this check. If it doesn't match the stored memory, the call fails
    #   with `ResourceNotFoundException`, as if the memory did not exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/GetMemoryInput AWS API Documentation
    #
    class GetMemoryInput < Struct.new(
      :space_id,
      :memory_id,
      :actor_id,
      :strategy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory
    #   The memory. Always present: a memory that doesn't exist returns
    #   `ResourceNotFoundException`.
    #   @return [Types::Memory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/GetMemoryOutput AWS API Documentation
    #
    class GetMemoryOutput < Struct.new(
      :memory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/GetSpaceRequest AWS API Documentation
    #
    class GetSpaceRequest < Struct.new(
      :space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the space.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Details about why the space is `FAILED`. Read it only when `status`
    #   is `FAILED`: it can still hold the reason for an earlier failure.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the space was created.
    #   @return [Time]
    #
    # @!attribute [rw] memory_strategies
    #   The space's memory strategies, including the names the service
    #   generated for strategies created without one. Empty for a space that
    #   has no memory strategies.
    #   @return [Array<Types::MemoryStrategy>]
    #
    # @!attribute [rw] event_expiry_days
    #   How many days the space keeps each event. Absent when it was never
    #   set, in which case the default of 90 days applies.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_expiry_days
    #   How many days the space keeps each memory. 0 means memories never
    #   expire. Absent when it was never set, in which case memories never
    #   expire.
    #   @return [Integer]
    #
    # @!attribute [rw] extraction_model_id
    #   The model that extracts and consolidates memories for the space.
    #   Absent when it was never set, in which case the service default
    #   applies.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The AWS KMS key the space was created with. Absent when the space
    #   uses an AWS owned key.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/GetSpaceResponse AWS API Documentation
    #
    class GetSpaceResponse < Struct.new(
      :space_id,
      :arn,
      :name,
      :status,
      :status_reason,
      :created_at,
      :memory_strategies,
      :event_expiry_days,
      :memory_expiry_days,
      :extraction_model_id,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service couldn't process the request because of an internal
    # error. Retry the request.
    #
    # @!attribute [rw] message
    #   A message that describes the internal error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The actor whose events to list.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session whose events to list. To find events across sessions,
    #   use `SearchEvents`.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp_before
    #   Inclusive upper bound on `eventTimestamp`: only events at or before
    #   this time are returned. Omit for no upper bound.
    #   @return [Time]
    #
    # @!attribute [rw] event_timestamp_after
    #   Inclusive lower bound on `eventTimestamp`: only events at or after
    #   this time are returned. Omit for no lower bound.
    #
    #   If it's later than `eventTimestampBefore`, the request fails with
    #   `ValidationException`.
    #   @return [Time]
    #
    # @!attribute [rw] sort_order
    #   The order of the results by `eventTimestamp`: `ASC` or `DESC`. The
    #   default is `DESC`, most recent first.
    #   @return [String]
    #
    # @!attribute [rw] metadata_filters
    #   Returns only events whose metadata contains every one of these
    #   key-value pairs. Omit, or leave empty, for no metadata filter. The
    #   service applies the filter after it reads events, so a page can hold
    #   fewer than `maxResults` events, or none, and still return a
    #   `nextToken`. Keep paging until `nextToken` is absent.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of events to return, from 1 to 100. The default
    #   is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListEventsInput AWS API Documentation
    #
    class ListEventsInput < Struct.new(
      :space_id,
      :actor_id,
      :session_id,
      :event_timestamp_before,
      :event_timestamp_after,
      :sort_order,
      :metadata_filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The events, without their payloads. Call `GetEvent` for an event's
    #   payload.
    #   @return [Array<Types::EventSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Absent when there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListEventsOutput AWS API Documentation
    #
    class ListEventsOutput < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The space whose memories to list.
    #   @return [String]
    #
    # @!attribute [rw] memory_strategies
    #   The strategies to list, as selectors. A selector without
    #   `memoryStrategyNames` lists every strategy of its type, and omitting
    #   `memoryStrategies` lists every strategy in the space. A name that is
    #   not a declared strategy of that type fails with
    #   `ValidationException`.
    #   @return [Array<Types::StrategySelector>]
    #
    # @!attribute [rw] actor_ids
    #   Lists only memories owned by one of these actors. Combined with
    #   `sessionIds` by AND: a memory must match both filters when both are
    #   given. Omit for no actor filter. An empty list fails validation. A
    #   memory stored without an actor never matches an actor filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] session_ids
    #   Lists only memories from one of these sessions. Combined with
    #   `actorIds` by AND. Omit for no session filter. An empty list fails
    #   validation. A memory stored without a session never matches a
    #   session filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort_by
    #   The timestamp to sort by, as returned in `systemMetadata`:
    #   `CREATED_AT` (the default) or `UPDATED_AT`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order: `ASC` or `DESC`. The default is `DESC`, most recent
    #   first.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of memories to return, from 1 to 100. The default
    #   is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListMemoriesInput AWS API Documentation
    #
    class ListMemoriesInput < Struct.new(
      :space_id,
      :memory_strategies,
      :actor_ids,
      :session_ids,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memories
    #   The memories, in the requested order. Empty when there are none.
    #   @return [Array<Types::MemoryListSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Absent when there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListMemoriesOutput AWS API Documentation
    #
    class ListMemoriesOutput < Struct.new(
      :memories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of spaces to return, from 1 to 100. The default
    #   is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListSpacesRequest AWS API Documentation
    #
    class ListSpacesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] spaces
    #   The spaces.
    #   @return [Array<Types::SpaceSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Absent when there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListSpacesResponse AWS API Documentation
    #
    class ListSpacesResponse < Struct.new(
      :spaces,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the space.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A memory, as returned by `GetMemory` and `UpdateMemory`. Unlike
    # `MemoryListSummary` it includes `content`, and unlike
    # `MemorySearchSummary` it has no relevance score.
    #
    # @!attribute [rw] memory_id
    #   The memory's ID, assigned by the service.
    #   @return [String]
    #
    # @!attribute [rw] memory_type
    #   The memory type.
    #   @return [String]
    #
    # @!attribute [rw] strategy_name
    #   The name of the strategy the memory belongs to, for example
    #   `user-facts`. A space can hold several strategies of the same type,
    #   so this tells them apart. Absent when the memory's strategy is no
    #   longer declared on the space, for example right after the strategy
    #   is deleted.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The memory text.
    #   @return [String]
    #
    # @!attribute [rw] system_metadata
    #   Provenance for the memory: the owning actor and session, and when it
    #   was created and last updated. Always present. `updatedAt` equals
    #   `createdAt` for a memory that has never been updated.
    #   @return [Types::SystemMetadata]
    #
    # @!attribute [rw] metadata
    #   The memory's metadata tags. All values are strings. May be empty.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/Memory AWS API Documentation
    #
    class Memory < Struct.new(
      :memory_id,
      :memory_type,
      :strategy_name,
      :content,
      :system_metadata,
      :metadata)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # A summary of a memory, as returned by `ListMemories`: its ID, type,
    # provenance, and tags. It doesn't include `content`. Call `GetMemory`
    # for the full memory.
    #
    # @!attribute [rw] memory_id
    #   The memory's ID, assigned by the service. IDs are opaque, can
    #   contain hyphens and underscores, and can be up to 512 characters
    #   long.
    #   @return [String]
    #
    # @!attribute [rw] memory_type
    #   The memory type.
    #   @return [String]
    #
    # @!attribute [rw] strategy_name
    #   The name of the strategy the memory belongs to, for example
    #   `user-facts`: the strategy `memoryStrategies` selects on in
    #   `ListMemories`. Absent when the memory's strategy is no longer
    #   declared on the space, for example right after the strategy is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] system_metadata
    #   Provenance for the memory: the owning actor and session, and when it
    #   was created and last updated. Always present, with both timestamps.
    #   @return [Types::SystemMetadata]
    #
    # @!attribute [rw] metadata
    #   The memory's metadata tags. All values are strings.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/MemoryListSummary AWS API Documentation
    #
    class MemoryListSummary < Struct.new(
      :memory_id,
      :memory_type,
      :strategy_name,
      :system_metadata,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `SearchMemories` result: a matching memory and its relevance score.
    #
    # @!attribute [rw] memory_id
    #   The memory's ID, assigned by the service. Always present.
    #   @return [String]
    #
    # @!attribute [rw] memory_type
    #   The memory type of the result.
    #   @return [String]
    #
    # @!attribute [rw] strategy_name
    #   The name of the strategy the memory belongs to, for example
    #   `user-facts`: the strategy `memoryStrategies` selects on in
    #   `SearchMemories`. Absent when the memory's strategy is no longer
    #   declared on the space, for example right after the strategy is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The memory text.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The relevance score of the result. A higher score is more relevant.
    #   Scores aren't normalized to a fixed range and can be greater than
    #   1, so use them only to order results.
    #   @return [Float]
    #
    # @!attribute [rw] system_metadata
    #   Provenance for the memory: the actor and session that own it, and
    #   when it was created and last updated. It is the same block that
    #   `ListMemories`, `GetMemory`, and `SearchEvents` return.
    #
    #   In a query, filter or sort on the timestamps as
    #   `system_metadata.created_at` and `system_metadata.updated_at`. Scope
    #   by owner with the top-level `actorId`, not in the query. Searching
    #   memories doesn't filter by session.
    #
    #   Absent when the service has no provenance for the memory.
    #   @return [Types::SystemMetadata]
    #
    # @!attribute [rw] metadata
    #   The memory's metadata tags. All values are strings. In a query,
    #   filter on a tag as `metadata.<key>`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] source_event_ids
    #   The IDs of the events the memory was derived from, without
    #   duplicates. Use them with `GetEvent` or `BatchGetEvent`, or to
    #   search those events' content with `SearchEvents` by filtering on
    #   `event_ids` in the query. Absent for a memory created directly with
    #   `CreateMemory`. A memory can be derived from several events. The
    #   service sets this value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/MemorySearchSummary AWS API Documentation
    #
    class MemorySearchSummary < Struct.new(
      :memory_id,
      :memory_type,
      :strategy_name,
      :content,
      :score,
      :system_metadata,
      :metadata,
      :source_event_ids)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # A memory strategy: how a space extracts one kind of memory from its
    # events.
    #
    # @!attribute [rw] type
    #   The type of memory the strategy extracts.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the strategy, unique within the space. Omit it to have
    #   the service generate one from the type, for example `semantic_1`.
    #   The name must be 1 to 64 characters: letters, digits, periods,
    #   hyphens, and underscores, starting with a letter or digit. A
    #   strategy's name can't be changed, and the strategy's memories are
    #   stored under it: a strategy added under a new name starts with no
    #   memories.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the strategy.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Settings for the strategy. When you create a strategy, omit it to
    #   use the defaults for the strategy's type.
    #
    #   A `CUSTOM` strategy must set `extractionPrompt`.
    #   @return [Types::MemoryStrategyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/MemoryStrategy AWS API Documentation
    #
    class MemoryStrategy < Struct.new(
      :type,
      :name,
      :description,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for a memory strategy. The defaults described here apply when
    # you create a strategy. In `UpdateSpace`, a member you omit for a kept
    # strategy keeps its current value.
    #
    # @!attribute [rw] extraction_prompt
    #   Instructions that define what a `CUSTOM` strategy extracts, up to
    #   30,720 characters. Required for a `CUSTOM` strategy: `CreateSpace`
    #   and `UpdateSpace` fail with `ValidationException` if a `CUSTOM`
    #   strategy has none.
    #
    #   Only `CUSTOM` strategies use it. `SEMANTIC` and `SUMMARY` strategies
    #   always extract with the service's built-in instructions: the
    #   service accepts and stores a prompt on them, and `GetSpace` returns
    #   it, but extraction doesn't use it.
    #   @return [String]
    #
    # @!attribute [rw] extract_every_n_messages
    #   Extract once this many messages have accumulated, from 1 to 1000.
    #   Lower values extract more often, in smaller batches. The default is
    #   12.
    #
    #   Messages accumulate until the first of `extractEveryNMessages`,
    #   `extractEveryNTokens`, and `idleTimeoutSeconds` is reached. The
    #   service then extracts them together in one pass.
    #   @return [Integer]
    #
    # @!attribute [rw] extract_every_n_tokens
    #   Extract once this many tokens of conversation have accumulated, from
    #   1 to 80,000, however few messages that takes. Use it to bound how
    #   much text one extraction call carries when message sizes vary
    #   widely. Omit it to bound a batch only by `extractEveryNMessages`,
    #   `idleTimeoutSeconds`, and the service's maximum batch size.
    #   @return [Integer]
    #
    # @!attribute [rw] idle_timeout_seconds
    #   Extract what has accumulated once the conversation has been idle for
    #   this many seconds, from 1 to 86,400. The default is 60. This is what
    #   extracts the end of a conversation that stops. Raise it when the
    #   pauses in your conversations are longer than that, so that one
    #   exchange isn't split across several extraction passes.
    #   @return [Integer]
    #
    # @!attribute [rw] extraction_seed_top_k
    #   How many of the strategy's stored memories that are most relevant
    #   to the conversation to include in the extraction prompt, from 0 to
    #   20, to improve extraction and reduce duplicates. If you omit this or
    #   set it to 0, the service uses its default (see
    #   `extractionSeedRecentN`). When this and `extractionSeedRecentN` are
    #   both set, the two sets of memories are combined without duplicates.
    #   @return [Integer]
    #
    # @!attribute [rw] extraction_seed_recent_n
    #   How many of the strategy's most recent stored memories to include
    #   in the extraction prompt, from 0 to 20. If you omit this or set it
    #   to 0, the service uses its default: no seeding for most strategy
    #   types, and the 10 most recent memories for a `SUMMARY` strategy when
    #   neither seed setting is given. When this and `extractionSeedTopK`
    #   are both set, the two sets of memories are combined without
    #   duplicates.
    #   @return [Integer]
    #
    # @!attribute [rw] consolidation_enabled
    #   Specifies whether the strategy consolidates memories. With
    #   consolidation, each new memory is compared with similar stored
    #   memories, and the service adds it, updates a stored memory, or skips
    #   it, so duplicate or contradicting facts don't accumulate. Without
    #   it, every extracted memory is stored as a new memory, which costs
    #   less and keeps a full history.
    #
    #   When omitted, the default depends on the strategy's type: on for
    #   `SEMANTIC` and `SUMMARY`, off for `CUSTOM`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/MemoryStrategyConfiguration AWS API Documentation
    #
    class MemoryStrategyConfiguration < Struct.new(
      :extraction_prompt,
      :extract_every_n_messages,
      :extract_every_n_tokens,
      :idle_timeout_seconds,
      :extraction_seed_top_k,
      :extraction_seed_recent_n,
      :consolidation_enabled)
      SENSITIVE = [:extraction_prompt]
      include Aws::Structure
    end

    # A conversation turn.
    #
    # @!attribute [rw] role
    #   The author of the turn.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the turn.
    #   @return [Types::MessageContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/Message AWS API Documentation
    #
    class Message < Struct.new(
      :role,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content of a conversation turn.
    #
    # @!attribute [rw] text
    #   The text of the turn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/MessageContent AWS API Documentation
    #
    class MessageContent < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # The specified resource doesn't exist. Check the IDs in the request.
    #
    # @!attribute [rw] message
    #   A message that describes which resource wasn't found.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that wasn't found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that wasn't found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object in Amazon S3.
    #
    # @!attribute [rw] uri
    #   The object's S3 URI, for example `s3://bucket/key`. The bucket must
    #   be in the space's Region. You need `s3:GetObject` on the object,
    #   and `kms:Decrypt` on its key if the object uses SSE-KMS. The event
    #   doesn't store the object itself.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The space whose events to search. Use `actorId` and `sessionIds` to
    #   narrow the search within it.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The actor whose events to search (exact match). Required: every
    #   search covers exactly one actor, and an event stored without an
    #   actor is never returned. Narrow the search further with
    #   `sessionIds`, combined by AND. This is the only way to filter by
    #   actor: a query that references `system_metadata.actor_id` fails with
    #   `ValidationException` (reason `nonFilterableField`).
    #   @return [String]
    #
    # @!attribute [rw] session_ids
    #   Returns only events from one of these sessions (exact match).
    #   Combined with `actorId` by AND. Omit for no session filter. An empty
    #   list fails validation. An event stored without a session never
    #   matches a session filter. This is the only way to filter by session:
    #   a query that references `system_metadata.session_id` fails with
    #   `ValidationException` (reason `nonFilterableField`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] query
    #   The query: a subset of the OpenSearch Query DSL (see `SearchQuery`),
    #   validated by the same rules as on `SearchMemories`. Query event text
    #   as `text` and embeddings as `vector`. A search covers both
    #   conversation turns and chunks of documents submitted as a `blob`.
    #   You can't use actor and session fields here. Use the top-level
    #   `actorId` and `sessionIds`.
    #
    #   To search only the content of particular events, filter on
    #   `event_ids` with `term` or `terms`, for example with the
    #   `sourceEventIds` that a `SearchMemories` result returns. A `terms`
    #   clause on `event_ids` can list up to 10 event IDs. More IDs fail
    #   with `ValidationException` (reason `queryBodyTooLarge`). You can use
    #   `event_ids` only in `term`, `terms`, and `exists` queries.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] sort
    #   The sort order (see `SearchSort`). Omit to return the most relevant
    #   events first.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of events to return, from 1 to 100. The default
    #   is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/SearchEventsInput AWS API Documentation
    #
    class SearchEventsInput < Struct.new(
      :space_id,
      :actor_id,
      :session_ids,
      :query,
      :sort,
      :max_results,
      :next_token)
      SENSITIVE = [:query, :sort]
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The matching event chunks, in the order `sort` requests, or most
    #   relevant first when it has none. Empty when nothing matches. Each
    #   result is the matching chunk of an event. Call `GetEvent` for the
    #   whole event.
    #   @return [Array<Types::EventSearchSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Absent when there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/SearchEventsOutput AWS API Documentation
    #
    class SearchEventsOutput < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The space to search. Use `actorId` to narrow the search within it.
    #   @return [String]
    #
    # @!attribute [rw] memory_strategies
    #   The strategies to search, as a list of selectors. Each selector
    #   names a memory type and, optionally, specific strategy names of that
    #   type. A space can hold several strategies of the same type. A
    #   selector without `memoryStrategyNames` searches every strategy of
    #   its type, and omitting `memoryStrategies` searches every strategy in
    #   the space. A name that is not a declared strategy of that type fails
    #   with `ValidationException`.
    #   @return [Array<Types::StrategySelector>]
    #
    # @!attribute [rw] actor_id
    #   The actor whose memories to search (exact match). Required: every
    #   search covers exactly one actor, and a memory stored without an
    #   actor is never returned. This is the only way to filter by actor: a
    #   query that references `system_metadata.actor_id` fails with
    #   `ValidationException` (reason `nonFilterableField`).
    #   @return [String]
    #
    # @!attribute [rw] query
    #   The query: a subset of the OpenSearch Query DSL (see `SearchQuery`).
    #   You can't use the actor and session fields
    #   `system_metadata.actor_id` and `system_metadata.session_id` here.
    #   Use the top-level `actorId` to filter by actor. Searching memories
    #   doesn't filter by session.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] sort
    #   The sort order (see `SearchSort`). Omit to return the most relevant
    #   memories first.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of memories to return, from 1 to 100. The default
    #   is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/SearchMemoriesInput AWS API Documentation
    #
    class SearchMemoriesInput < Struct.new(
      :space_id,
      :memory_strategies,
      :actor_id,
      :query,
      :sort,
      :max_results,
      :next_token)
      SENSITIVE = [:query, :sort]
      include Aws::Structure
    end

    # @!attribute [rw] memories
    #   The matching memories, in the order `sort` requests, or most
    #   relevant first when it has none. Empty when nothing matches.
    #   @return [Array<Types::MemorySearchSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Absent when there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/SearchMemoriesOutput AWS API Documentation
    #
    class SearchMemoriesOutput < Struct.new(
      :memories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed a quota, such as the number of spaces in your
    # account or the number of strategies in a space.
    #
    # @!attribute [rw] message
    #   A message that describes which quota the request would exceed.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The Service Quotas code of the quota that the request would exceed.
    #   Not currently returned.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The Service Quotas code of the service. Not currently returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a space, as returned by `ListSpaces`.
    #
    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the space.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the space was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/SpaceSummary AWS API Documentation
    #
    class SpaceSummary < Struct.new(
      :space_id,
      :arn,
      :name,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A memory type and, optionally, specific strategy names of that type. A
    # space can hold several strategies of the same type, so the type and
    # its names are given together.
    #
    # @!attribute [rw] memory_type
    #   The memory type to search or list.
    #   @return [String]
    #
    # @!attribute [rw] memory_strategy_names
    #   Specific strategy names of `memoryType`. Omit it to include every
    #   strategy of that type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/StrategySelector AWS API Documentation
    #
    class StrategySelector < Struct.new(
      :memory_type,
      :memory_strategy_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structured content, as a JSON object.
    #
    # @!attribute [rw] source
    #   The structured content.
    #   @return [Types::StructuredDataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/StructuredDataPayload AWS API Documentation
    #
    class StructuredDataPayload < Struct.new(
      :source)
      SENSITIVE = [:source]
      include Aws::Structure
    end

    # The source of structured content. Set exactly one member. Currently,
    # the only member is `json`.
    #
    # @note StructuredDataSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note StructuredDataSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of StructuredDataSource corresponding to the set member.
    #
    # @!attribute [rw] json
    #   The structured content, as a JSON object of at most 1 MiB when
    #   serialized as UTF-8, nested at most 10 levels deep.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/StructuredDataSource AWS API Documentation
    #
    class StructuredDataSource < Struct.new(
      :json,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Json < StructuredDataSource; end
      class Unknown < StructuredDataSource; end
    end

    # System-generated provenance for a memory or event: the owning actor
    # and session, and the creation and last-update timestamps.
    # `SearchMemories`, `SearchEvents`, `ListMemories`, and `GetMemory`
    # return the same block.
    #
    # `ListMemories` and `GetMemory` always return `createdAt` and
    # `updatedAt`. The search operations return what is recorded and omit
    # the block when nothing is.
    #
    # In a query, the timestamps are `system_metadata.created_at` and
    # `system_metadata.updated_at`. Scope by owner with the top-level
    # parameters (`actorId` on the search operations, `actorIds` on
    # `ListMemories`) and `sessionIds` (`SearchEvents` and `ListMemories`).
    # The search operations reject actor and session fields inside the query
    # or sort.
    #
    # @!attribute [rw] actor_id
    #   The owning actor. Absent when none was recorded.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The owning session. Absent when none was recorded.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the record was created. Always present on `ListMemories` and
    #   `GetMemory`. It can be absent from search results.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   When the record was last updated. Equals `createdAt` for a record
    #   that has never been updated, and always for a `SearchEvents` result.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/SystemMetadata AWS API Documentation
    #
    class SystemMetadata < Struct.new(
      :actor_id,
      :session_id,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag: a key-value pair that you attach to a space.
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the space.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the space.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The service throttled the request. Retry the request with exponential
    # backoff.
    #
    # @!attribute [rw] message
    #   A message that describes the throttling.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before you retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Conversation turns in the service's own format.
    #
    # @!attribute [rw] source
    #   The conversation.
    #   @return [Types::UnifiedConversationalSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UnifiedConversational AWS API Documentation
    #
    class UnifiedConversational < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Conversation turns.
    #
    # @!attribute [rw] messages
    #   The conversation turns, in order. The order matters for extraction.
    #   @return [Array<Types::Message>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UnifiedConversationalObject AWS API Documentation
    #
    class UnifiedConversationalObject < Struct.new(
      :messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source of a conversation. Set exactly one member. Currently, the
    # only member is `object`.
    #
    # @note UnifiedConversationalSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note UnifiedConversationalSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of UnifiedConversationalSource corresponding to the set member.
    #
    # @!attribute [rw] object
    #   The conversation turns.
    #   @return [Types::UnifiedConversationalObject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UnifiedConversationalSource AWS API Documentation
    #
    class UnifiedConversationalSource < Struct.new(
      :object,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Object < UnifiedConversationalSource; end
      class Unknown < UnifiedConversationalSource; end
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the space.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove from the space.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] space_id
    #   The ID of the space that owns the memory, for example
    #   `sp-02864597b164`.
    #   @return [String]
    #
    # @!attribute [rw] memory_id
    #   The ID of the memory to update.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Replacement memory text. Supplying it re-embeds the memory. Omit to
    #   leave the text unchanged.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata tags to apply. By default this map replaces the stored
    #   metadata, and any key not present is removed. Set `metadataMode` to
    #   `MERGE` to keep the keys you don't supply. Limits apply to the
    #   resulting metadata, not to the request. Keys that begin with
    #   `x-amz-` and the key `documentS3Source` are reserved: a request that
    #   sets one fails with `ValidationException`.
    #
    #   A space can use at most 50 distinct metadata keys across all of its
    #   events and memories. A request that would add a key beyond that
    #   fails with `ValidationException`. Reuse an existing key instead.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] metadata_mode
    #   How `metadata` combines with what is stored. The default is
    #   `REPLACE`.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The ID of the actor that the memory must belong to. Omit it to skip
    #   this check. If it doesn't match the stored memory, the call fails
    #   with `ResourceNotFoundException`, as if the memory did not exist.
    #   @return [String]
    #
    # @!attribute [rw] strategy_name
    #   The name of the strategy that the memory must belong to. Omit it to
    #   skip this check. If it doesn't match the stored memory, the call
    #   fails with `ResourceNotFoundException`, as if the memory did not
    #   exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UpdateMemoryInput AWS API Documentation
    #
    class UpdateMemoryInput < Struct.new(
      :space_id,
      :memory_id,
      :content,
      :metadata,
      :metadata_mode,
      :actor_id,
      :strategy_name)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # @!attribute [rw] memory
    #   The updated memory, in the same shape that `GetMemory` returns.
    #   @return [Types::Memory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UpdateMemoryOutput AWS API Documentation
    #
    class UpdateMemoryOutput < Struct.new(
      :memory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space to update.
    #   @return [String]
    #
    # @!attribute [rw] memory_strategies
    #   The complete new list of memory strategies. The service removes
    #   strategies that aren't in the list from the space. Removing a
    #   strategy stops extraction for it but doesn't delete its memories:
    #   they're kept, until they expire if the space sets
    #   `memoryExpiryDays`, and they're available again if you later add a
    #   strategy with the same `type` and `name`. To delete them, use
    #   `DeleteMemory` before you remove the strategy, or delete the space.
    #
    #   To keep a strategy, include it with the same `type` and `name` that
    #   `GetSpace` returns. For a kept strategy, any `configuration` member
    #   you omit keeps its current value. It doesn't return to the default,
    #   and you can't clear a member once it's set. Omit this field to
    #   leave the strategies unchanged. The list must name at least one
    #   strategy. You can't remove every strategy from a space with
    #   `UpdateSpace`.
    #
    #   The serialized list can be at most 384 KiB.
    #   @return [Array<Types::MemoryStrategy>]
    #
    # @!attribute [rw] event_expiry_days
    #   How many days the space keeps each event, from 1 to 365. Omit it to
    #   leave the current value unchanged. Events already stored keep the
    #   expiry they were written with.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_expiry_days
    #   How many days the space keeps each memory, from 0 to 3650. 0 means
    #   memories never expire. Omit it to leave the current value unchanged.
    #   You can't clear the setting. To make memories written from then on
    #   never expire, send 0. `GetSpace` then returns 0.
    #
    #   A change applies to memories written after it. Memories already
    #   stored keep the expiry they were written with. A memory the service
    #   rewrites later, such as a summary it keeps up to date, takes the
    #   setting in force at that rewrite. A change moves the space to
    #   `UPDATING`. Sending the value that the space has stored doesn't.
    #   @return [Integer]
    #
    # @!attribute [rw] extraction_model_id
    #   The model that extracts and consolidates memories for every strategy
    #   in the space: `anthropic.claude-opus-5-5` or
    #   `anthropic.claude-haiku-5-5`. Omit it to leave the current value
    #   unchanged. Once set, it can't be cleared back to the service
    #   default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UpdateSpaceRequest AWS API Documentation
    #
    class UpdateSpaceRequest < Struct.new(
      :space_id,
      :memory_strategies,
      :event_expiry_days,
      :memory_expiry_days,
      :extraction_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the space.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the space: `UPDATING` when the change has to be
    #   applied to the space's strategies, retention, or extraction model.
    #   Otherwise, the space's current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UpdateSpaceResponse AWS API Documentation
    #
    class UpdateSpaceResponse < Struct.new(
      :space_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request isn't valid. The `reason`, `message`, and `fieldList`
    # members describe the problem. Fix the request, and then try again.
    #
    # @!attribute [rw] message
    #   A message that describes why the request failed validation, such as
    #   the field, key, or limit involved.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The fields that failed validation, if any.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a request field that failed validation.
    #
    # @!attribute [rw] name
    #   The field name.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that describes why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

