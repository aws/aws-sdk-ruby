# frozen_string_literal: true

# This is generated code!

module Aws::DynamoDB
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DynamoDB::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DynamoDB::Errors::ServiceError
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
  # * {BackupInUseException}
  # * {BackupNotFoundException}
  # * {ConditionalCheckFailedException}
  # * {ContinuousBackupsUnavailableException}
  # * {DuplicateItemException}
  # * {ExportConflictException}
  # * {ExportNotFoundException}
  # * {GlobalTableAlreadyExistsException}
  # * {GlobalTableNotFoundException}
  # * {IdempotentParameterMismatchException}
  # * {ImportConflictException}
  # * {ImportNotFoundException}
  # * {IndexNotFoundException}
  # * {InternalServerError}
  # * {InvalidEndpointException}
  # * {InvalidExportTimeException}
  # * {InvalidRestoreTimeException}
  # * {ItemCollectionSizeLimitExceededException}
  # * {LimitExceededException}
  # * {PointInTimeRecoveryUnavailableException}
  # * {PolicyNotFoundException}
  # * {ProvisionedThroughputExceededException}
  # * {ReplicaAlreadyExistsException}
  # * {ReplicaNotFoundException}
  # * {ReplicatedWriteConflictException}
  # * {RequestLimitExceeded}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {TableAlreadyExistsException}
  # * {TableInUseException}
  # * {TableNotFoundException}
  # * {ThrottlingException}
  # * {TransactionCanceledException}
  # * {TransactionConflictException}
  # * {TransactionInProgressException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>There is another ongoing conflicting backup control plane operation on the table.
    #             The backup is either being created, deleted or restored to a table.</p>
    class BackupInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::BackupInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Backup not found for the given BackupARN. </p>
    class BackupNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::BackupNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A condition specified in the operation failed to be evaluated.</p>
    class ConditionalCheckFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ConditionalCheckFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The conditional request failed.</p>
      def message
        @data[:message]
      end

      # <p>Item which caused the <code>ConditionalCheckFailedException</code>.</p>
      def item
        @data[:item]
      end
    end

    # <p>Backups have not yet been enabled for this table.</p>
    class ContinuousBackupsUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ContinuousBackupsUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> There was an attempt to insert an item with the same primary key as an item that
    #             already exists in the DynamoDB table.</p>
    class DuplicateItemException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::DuplicateItemException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There was a conflict when writing to the specified S3 bucket.</p>
    class ExportConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ExportConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified export was not found.</p>
    class ExportNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ExportNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified global table already exists.</p>
    class GlobalTableAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::GlobalTableAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified global table does not exist.</p>
    class GlobalTableNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::GlobalTableNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>DynamoDB rejected the request because you retried a request with a
    #             different payload but with an idempotent token that was already used.</p>
    class IdempotentParameterMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::IdempotentParameterMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> There was a conflict when importing from the specified S3 source. This can occur when
    #             the current import conflicts with a previous import request that had the same client
    #             token. </p>
    class ImportConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ImportConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> The specified import was not found. </p>
    class ImportNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ImportNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation tried to access a nonexistent index.</p>
    class IndexNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::IndexNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An error occurred on the server side.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The server encountered an internal error trying to fulfill the request.</p>
      def message
        @data[:message]
      end
    end

    # Error class for InvalidEndpointException.
    class InvalidEndpointException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::InvalidEndpointException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified <code>ExportTime</code> is outside of the point in time recovery
    #             window.</p>
    class InvalidExportTimeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::InvalidExportTimeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An invalid restore time was specified. RestoreDateTime must be between
    #             EarliestRestorableDateTime and LatestRestorableDateTime.</p>
    class InvalidRestoreTimeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::InvalidRestoreTimeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An item collection is too large. This exception is only returned for tables that
    #             have one or more local secondary indexes.</p>
    class ItemCollectionSizeLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ItemCollectionSizeLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The total size of an item collection has exceeded the maximum limit of 10
      #             gigabytes.</p>
      def message
        @data[:message]
      end
    end

    # <p>There is no limit to the number of daily on-demand backups that can be taken. </p>
    #          <p>For most purposes, up to 500 simultaneous table operations are allowed per account.
    #             These operations include <code>CreateTable</code>, <code>UpdateTable</code>,
    #                 <code>DeleteTable</code>,<code>UpdateTimeToLive</code>,
    #                 <code>RestoreTableFromBackup</code>, and <code>RestoreTableToPointInTime</code>. </p>
    #          <p>When you are creating a table with one or more secondary indexes, you can have up
    #             to 250 such requests running at a time. However, if the table or index specifications
    #             are complex, then DynamoDB might temporarily reduce the number of concurrent
    #             operations.</p>
    #          <p>When importing into DynamoDB, up to 50 simultaneous import table operations are
    #             allowed per account.</p>
    #          <p>There is a soft account quota of 2,500 tables.</p>
    #          <p>GetRecords was called with a value of more than 1000 for the limit request
    #             parameter.</p>
    #          <p>More than 2 processes are reading from the same streams shard at the same time.
    #             Exceeding this limit may result in request throttling.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Too many operations for a given subscriber.</p>
      def message
        @data[:message]
      end
    end

    # <p>Point in time recovery has not yet been enabled for this source table.</p>
    class PointInTimeRecoveryUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::PointInTimeRecoveryUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation tried to access a nonexistent resource-based policy.</p>
    #          <p>If you specified an <code>ExpectedRevisionId</code>, it's possible that a policy is
    #             present for the resource but its revision ID didn't match the expected value.</p>
    class PolicyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::PolicyNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to request throttling. For detailed information about
    #             why the request was throttled and the ARN of the impacted resource, find the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> field in the returned exception. The Amazon Web Services
    #             SDKs for DynamoDB automatically retry requests that receive this exception.
    #             Your request is eventually successful, unless your retry queue is too large to finish.
    #             Reduce the frequency of requests and use exponential backoff. For more information, go
    #             to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#Programming.Errors.RetryAndBackoff">Error Retries and Exponential Backoff</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    class ProvisionedThroughputExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ProvisionedThroughputExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>You exceeded your maximum allowed provisioned throughput.</p>
      def message
        @data[:message]
      end

      # <p>A list of <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> that
      #      provide detailed diagnostic information about why the request was throttled.
      #     </p>
      def throttling_reasons
        @data[:throttling_reasons]
      end
    end

    # <p>The specified replica is already part of the global table.</p>
    class ReplicaAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ReplicaAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified replica is no longer part of the global table.</p>
    class ReplicaNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ReplicaNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because one or more items in the request are being modified
    #             by a request in another Region. </p>
    class ReplicatedWriteConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ReplicatedWriteConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>Throughput exceeds the current throughput quota for your account. For detailed
    #             information about why the request was throttled and the ARN of the impacted resource,
    #             find the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> field in the returned exception. Contact <a href="https://aws.amazon.com/support">Amazon Web Services Support</a> to request a quota
    #             increase.</p>
    class RequestLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::RequestLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>A list of <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> that
      #      provide detailed diagnostic information about why the request was throttled.
      #     </p>
      def throttling_reasons
        @data[:throttling_reasons]
      end
    end

    # <p>The operation conflicts with the resource's availability. For example:</p>
    #          <ul>
    #             <li>
    #                <p>You attempted to recreate an existing table.</p>
    #             </li>
    #             <li>
    #                <p>You tried to delete a table currently in the <code>CREATING</code>
    #                     state.</p>
    #             </li>
    #             <li>
    #                <p>You tried to update a resource that was already being updated.</p>
    #             </li>
    #          </ul>
    #          <p>When appropriate, wait for the ongoing update to complete and attempt the request
    #             again.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The resource which is being attempted to be changed is in use.</p>
      def message
        @data[:message]
      end
    end

    # <p>The operation tried to access a nonexistent table or index. The resource might not
    #             be specified correctly, or its status might not be <code>ACTIVE</code>.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The resource which is being requested does not exist.</p>
      def message
        @data[:message]
      end
    end

    # <p>A target table with the specified name already exists. </p>
    class TableAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::TableAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A target table with the specified name is either being created or deleted.
    #         </p>
    class TableInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::TableInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A source table with the name <code>TableName</code> does not currently exist within
    #             the subscriber's account or the subscriber is operating in the wrong Amazon Web Services
    #             Region.</p>
    class TableNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::TableNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to request throttling. For detailed information about why
    #             the request was throttled and the ARN of the impacted resource, find the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> field in the returned exception.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>A list of <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> that
      #      provide detailed diagnostic information about why the request was throttled.
      #     </p>
      def throttling_reasons
        @data[:throttling_reasons]
      end
    end

    # <p>The entire transaction request was canceled.</p>
    #          <p>DynamoDB cancels a <code>TransactWriteItems</code> request under the following
    #             circumstances:</p>
    #          <ul>
    #             <li>
    #                <p>A condition in one of the condition expressions is not met.</p>
    #             </li>
    #             <li>
    #                <p>A table in the <code>TransactWriteItems</code> request is in a different
    #                     account or region.</p>
    #             </li>
    #             <li>
    #                <p>More than one action in the <code>TransactWriteItems</code> operation
    #                     targets the same item.</p>
    #             </li>
    #             <li>
    #                <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                <p>An item size becomes too large (larger than 400 KB), or a local secondary
    #                     index (LSI) becomes too large, or a similar validation error occurs because of
    #                     changes made by the transaction.</p>
    #             </li>
    #             <li>
    #                <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #             <li>
    #                <p> There is an ongoing <code>TransactWriteItems</code> operation that
    #                     conflicts with a concurrent <code>TransactWriteItems</code> request. In this
    #                     case the <code>TransactWriteItems</code> operation fails with a
    #                         <code>TransactionCanceledException</code>. </p>
    #             </li>
    #          </ul>
    #          <p>DynamoDB cancels a <code>TransactGetItems</code> request under the
    #             following circumstances:</p>
    #          <ul>
    #             <li>
    #                <p>There is an ongoing <code>TransactGetItems</code> operation that conflicts
    #                     with a concurrent <code>PutItem</code>, <code>UpdateItem</code>,
    #                         <code>DeleteItem</code> or <code>TransactWriteItems</code> request. In this
    #                     case the <code>TransactGetItems</code> operation fails with a
    #                         <code>TransactionCanceledException</code>.</p>
    #             </li>
    #             <li>
    #                <p>A table in the <code>TransactGetItems</code> request is in a different
    #                     account or region.</p>
    #             </li>
    #             <li>
    #                <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>If using Java, DynamoDB lists the cancellation reasons on the
    #                     <code>CancellationReasons</code> property. This property is not set for other
    #                 languages. Transaction cancellation reasons are ordered in the order of requested
    #                 items, if an item has no error it will have <code>None</code> code and
    #                     <code>Null</code> message.</p>
    #          </note>
    #          <p>Cancellation reason codes and possible error messages:</p>
    #          <ul>
    #             <li>
    #                <p>No Errors:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>None</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: <code>null</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Conditional Check Failed:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ConditionalCheckFailed</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: The conditional request failed. </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Item Collection Size Limit Exceeded:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ItemCollectionSizeLimitExceeded</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: Collection size exceeded.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Transaction Conflict:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>TransactionConflict</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: Transaction is ongoing for the item.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Provisioned Throughput Exceeded:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ProvisionedThroughputExceeded</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Messages:</p>
    #                      <ul>
    #                         <li>
    #                            <p>The level of configured provisioned throughput for the
    #                                     table was exceeded. Consider increasing your provisioning level
    #                                     with the UpdateTable API.</p>
    #                            <note>
    #                               <p>This Message is received when provisioned throughput is
    #                                         exceeded is on a provisioned DynamoDB
    #                                         table.</p>
    #                            </note>
    #                         </li>
    #                         <li>
    #                            <p>The level of configured provisioned throughput for one or
    #                                     more global secondary indexes of the table was exceeded.
    #                                     Consider increasing your provisioning level for the
    #                                     under-provisioned global secondary indexes with the UpdateTable
    #                                     API.</p>
    #                            <note>
    #                               <p>This message is returned when provisioned throughput is
    #                                         exceeded is on a provisioned GSI.</p>
    #                            </note>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Throttling Error:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ThrottlingError</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Messages: </p>
    #                      <ul>
    #                         <li>
    #                            <p>Throughput exceeds the current capacity of your table or
    #                                     index. DynamoDB is automatically scaling your table or
    #                                     index so please try again shortly. If exceptions persist, check
    #                                     if you have a hot key:
    #                                     https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-partition-key-design.html.</p>
    #                            <note>
    #                               <p>This message is returned when writes get throttled on an
    #                                         On-Demand table as DynamoDB is automatically
    #                                         scaling the table.</p>
    #                            </note>
    #                         </li>
    #                         <li>
    #                            <p>Throughput exceeds the current capacity for one or more
    #                                     global secondary indexes. DynamoDB is automatically
    #                                     scaling your index so please try again shortly.</p>
    #                            <note>
    #                               <p>This message is returned when writes get throttled on an
    #                                         On-Demand GSI as DynamoDB is automatically scaling
    #                                         the GSI.</p>
    #                            </note>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Validation Error:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ValidationError</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Messages: </p>
    #                      <ul>
    #                         <li>
    #                            <p>One or more parameter values were invalid.</p>
    #                         </li>
    #                         <li>
    #                            <p>The update expression attempted to update the secondary
    #                                     index key beyond allowed size limits.</p>
    #                         </li>
    #                         <li>
    #                            <p>The update expression attempted to update the secondary
    #                                     index key to unsupported type.</p>
    #                         </li>
    #                         <li>
    #                            <p>An operand in the update expression has an incorrect data
    #                                     type.</p>
    #                         </li>
    #                         <li>
    #                            <p>Item size to update has exceeded the maximum allowed
    #                                     size.</p>
    #                         </li>
    #                         <li>
    #                            <p>Number overflow. Attempting to store a number with
    #                                     magnitude larger than supported range.</p>
    #                         </li>
    #                         <li>
    #                            <p>Type mismatch for attribute to update.</p>
    #                         </li>
    #                         <li>
    #                            <p>Nesting Levels have exceeded supported limits.</p>
    #                         </li>
    #                         <li>
    #                            <p>The document path provided in the update expression is
    #                                     invalid for update.</p>
    #                         </li>
    #                         <li>
    #                            <p>The provided expression refers to an attribute that does
    #                                     not exist in the item.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    class TransactionCanceledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::TransactionCanceledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>A list of cancellation reasons.</p>
      def cancellation_reasons
        @data[:cancellation_reasons]
      end
    end

    # <p>Operation was rejected because there is an ongoing transaction for the
    #             item.</p>
    class TransactionConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::TransactionConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The transaction with the given request token is already in progress.</p>
    #          <p> Recommended Settings </p>
    #          <note>
    #             <p> This is a general recommendation for handling the
    #                     <code>TransactionInProgressException</code>. These settings help ensure that the
    #                 client retries will trigger completion of the ongoing
    #                     <code>TransactWriteItems</code> request. </p>
    #          </note>
    #          <ul>
    #             <li>
    #                <p> Set <code>clientExecutionTimeout</code> to a value that allows at least one
    #                     retry to be processed after 5 seconds have elapsed since the first attempt for
    #                     the <code>TransactWriteItems</code> operation. </p>
    #             </li>
    #             <li>
    #                <p> Set <code>socketTimeout</code> to a value a little lower than the
    #                         <code>requestTimeout</code> setting. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>requestTimeout</code> should be set based on the time taken for the
    #                     individual retries of a single HTTP request for your use case, but setting it to
    #                     1 second or higher should work well to reduce chances of retries and
    #                         <code>TransactionInProgressException</code> errors. </p>
    #             </li>
    #             <li>
    #                <p> Use exponential backoff when retrying and tune backoff if needed. </p>
    #             </li>
    #          </ul>
    #          <p> Assuming <a href="https://github.com/aws/aws-sdk-java/blob/fd409dee8ae23fb8953e0bb4dbde65536a7e0514/aws-java-sdk-core/src/main/java/com/amazonaws/retry/PredefinedRetryPolicies.java#L97">default retry policy</a>, example timeout settings based on the guidelines
    #             above are as follows: </p>
    #          <p>Example timeline:</p>
    #          <ul>
    #             <li>
    #                <p>0-1000 first attempt</p>
    #             </li>
    #             <li>
    #                <p>1000-1500 first sleep/delay (default retry policy uses 500 ms as base delay
    #                     for 4xx errors)</p>
    #             </li>
    #             <li>
    #                <p>1500-2500 second attempt</p>
    #             </li>
    #             <li>
    #                <p>2500-3500 second sleep/delay (500 * 2, exponential backoff)</p>
    #             </li>
    #             <li>
    #                <p>3500-4500 third attempt</p>
    #             </li>
    #             <li>
    #                <p>4500-6500 third sleep/delay (500 * 2^2)</p>
    #             </li>
    #             <li>
    #                <p>6500-7500 fourth attempt (this can trigger inline recovery since 5 seconds
    #                     have elapsed since the first attempt reached TC)</p>
    #             </li>
    #          </ul>
    class TransactionInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DynamoDB::Types::TransactionInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
