# frozen_string_literal: true

# This is generated code!

module Aws::DynamoDBStreams
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DynamoDBStreams::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DynamoDBStreams::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {ExpiredIteratorException}
  # * {InternalServerError}
  # * {LimitExceededException}
  # * {ResourceNotFoundException}
  # * {TrimmedDataAccessException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The shard iterator has expired and can no longer be used to retrieve stream records. A shard
    #       iterator expires 15 minutes after it is retrieved using the <code>GetShardIterator</code>
    #       action.</p>
    class ExpiredIteratorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDBStreams::Types::ExpiredIteratorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The provided iterator exceeds the maximum age allowed.</p>
      def message
        @data[:message]
      end
    end

    # <p>An error occurred on the server side.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDBStreams::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The server encountered an internal error trying to fulfill the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>There is no limit to the number of daily on-demand backups that can be taken. </p>
    #          <p>For most purposes, up to 500 simultaneous table operations are allowed per account. These operations
    #           include <code>CreateTable</code>, <code>UpdateTable</code>,
    #           <code>DeleteTable</code>,<code>UpdateTimeToLive</code>,
    #           <code>RestoreTableFromBackup</code>, and <code>RestoreTableToPointInTime</code>. </p>
    #          <p>When you are creating a table with one or more secondary
    #           indexes, you can have up to 250 such requests running at a time. However, if the table or
    #           index specifications are complex, then DynamoDB might temporarily reduce the number
    #           of concurrent operations.</p>
    #          <p>When importing into DynamoDB, up to 50 simultaneous import table operations are allowed per account.</p>
    #          <p>There is a soft account quota of 2,500 tables.</p>
    #          <p>GetRecords was called with a value of more than 1000 for the limit request parameter.</p>
    #          <p>More than 2 processes are reading from the same streams shard at the same time. Exceeding
    #           this limit may result in request throttling.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDBStreams::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Too many operations for a given subscriber.</p>
      def message
        @data[:message]
      end
    end

    # <p>The operation tried to access a nonexistent table or index. The resource
    #             might not be specified correctly, or its status might not be
    #             <code>ACTIVE</code>.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDBStreams::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The resource which is being requested does not exist.</p>
      def message
        @data[:message]
      end
    end

    # <p>The operation attempted to read past the oldest stream record in a shard.</p>
    #          <p>In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:</p>
    #          <ul>
    #             <li>
    #                <p>You request a shard iterator with a sequence number older than the trim point (24 hours).</p>
    #             </li>
    #             <li>
    #                <p>You obtain a shard iterator, but before you use the iterator in a <code>GetRecords</code>
    #         request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes
    #         the iterator to access a record that no longer exists.</p>
    #             </li>
    #          </ul>
    class TrimmedDataAccessException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDBStreams::Types::TrimmedDataAccessException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>"The data you are trying to access has been trimmed.</p>
      def message
        @data[:message]
      end
    end
  end
end
