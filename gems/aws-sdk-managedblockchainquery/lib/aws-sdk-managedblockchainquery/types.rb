# frozen_string_literal: true

# This is generated code!

module Aws::ManagedBlockchainQuery
  # This module contains the types returned by client operations.
  module Types

    # <p>The Amazon Web Services account doesn’t have access to this resource. </p>
    # @!attribute message
    #   <p>The container for the exception message.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is the container for the unique public address on the blockchain.</p>
    # @!attribute transaction_event_to_address
    #   <p>The container for the recipient address of the transaction. </p>
    #   @return [Array<String>]
    class AddressIdentifierFilter < Struct.new(
      :transaction_event_to_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This container contains information about an contract.</p>
    # @!attribute contract_identifier
    #   <p>The container for the contract identifier containing its blockchain network 
    #          and address.</p>
    #   @return [Types::ContractIdentifier]
    # @!attribute token_standard
    #   <p>The token standard of the contract.</p>
    #   @return [String]
    # @!attribute deployer_address
    #   <p>The address of the contract deployer.</p>
    #   @return [String]
    class AssetContract < Struct.new(
      :contract_identifier,
      :token_standard,
      :deployer_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error generated from a failed <code>BatchGetTokenBalance</code> request.</p>
    # @!attribute token_identifier
    #   <p>The container for the identifier for the token including the unique token ID and its blockchain network.</p>
    #            <note>
    #               <p>Only the native tokens BTC and ETH, and the ERC-20, 
    #            ERC-721, and ERC 1155 token standards are supported.</p>
    #            </note>
    #   @return [Types::TokenIdentifier]
    # @!attribute owner_identifier
    #   <p>The container for the owner identifier.</p>
    #   @return [Types::OwnerIdentifier]
    # @!attribute at_blockchain_instant
    #   <p>The container for time.</p>
    #   @return [Types::BlockchainInstant]
    # @!attribute error_code
    #   <p>The error code associated with the error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The message associated with the error.</p>
    #   @return [String]
    # @!attribute error_type
    #   <p>The type of error.</p>
    #   @return [String]
    class BatchGetTokenBalanceErrorItem < Struct.new(
      :token_identifier,
      :owner_identifier,
      :at_blockchain_instant,
      :error_code,
      :error_message,
      :error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute get_token_balance_inputs
    #   <p>An array of <code>BatchGetTokenBalanceInputItem</code> objects whose balance is being requested.</p>
    #   @return [Array<Types::BatchGetTokenBalanceInputItem>]
    class BatchGetTokenBalanceInput < Struct.new(
      :get_token_balance_inputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the input for getting a token balance.</p>
    # @!attribute token_identifier
    #   <p>The container for the identifier for the token including the unique token ID and its blockchain network.</p>
    #            <note>
    #               <p>Only the native tokens BTC and ETH, and the ERC-20, 
    #            ERC-721, and ERC 1155 token standards are supported.</p>
    #            </note>
    #   @return [Types::TokenIdentifier]
    # @!attribute owner_identifier
    #   <p>The container for the owner identifier.</p>
    #   @return [Types::OwnerIdentifier]
    # @!attribute at_blockchain_instant
    #   <p>The container for time.</p>
    #   @return [Types::BlockchainInstant]
    class BatchGetTokenBalanceInputItem < Struct.new(
      :token_identifier,
      :owner_identifier,
      :at_blockchain_instant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_balances
    #   <p>An array of <code>BatchGetTokenBalanceOutputItem</code> objects returned by the response.</p>
    #   @return [Array<Types::BatchGetTokenBalanceOutputItem>]
    # @!attribute errors
    #   <p>An array of <code>BatchGetTokenBalanceErrorItem</code> objects returned from the request.</p>
    #   @return [Array<Types::BatchGetTokenBalanceErrorItem>]
    class BatchGetTokenBalanceOutput < Struct.new(
      :token_balances,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the properties of a token balance output.</p>
    # @!attribute owner_identifier
    #   <p>The container for the owner identifier.</p>
    #   @return [Types::OwnerIdentifier]
    # @!attribute token_identifier
    #   <p>The container for the identifier for the token including the unique token ID and its blockchain network.</p>
    #            <note>
    #               <p>Only the native tokens BTC and ETH, and the ERC-20, 
    #            ERC-721, and ERC 1155 token standards are supported.</p>
    #            </note>
    #   @return [Types::TokenIdentifier]
    # @!attribute balance
    #   <p>The container for the token balance.</p>
    #   @return [String]
    # @!attribute at_blockchain_instant
    #   <p>The container for time.</p>
    #   @return [Types::BlockchainInstant]
    # @!attribute last_updated_time
    #   <p>The container for time.</p>
    #   @return [Types::BlockchainInstant]
    class BatchGetTokenBalanceOutputItem < Struct.new(
      :owner_identifier,
      :token_identifier,
      :balance,
      :at_blockchain_instant,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for time.</p>
    # @!attribute time
    #   <p>The container of the <code>Timestamp</code> of the blockchain instant.</p>
    #            <note>
    #               <p>This <code>timestamp</code> will only be recorded up to 
    #            the second.</p>
    #            </note>
    #   @return [Time]
    class BlockchainInstant < Struct.new(
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the <code>ConfirmationStatusFilter</code> that filters for the <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality">
    #                <i>finality</i>
    #             </a> of the results.</p>
    # @!attribute include
    #   <p>The container to determine whether to list results that have only reached <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality">
    #                  <i>finality</i>
    #               </a>. Transactions 
    #            that have reached finality are always part of the response.</p>
    #   @return [Array<String>]
    class ConfirmationStatusFilter < Struct.new(
      :include,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The contract or wallet address by which to filter the request.</p>
    # @!attribute network
    #   <p>The blockchain network of the contract.</p>
    #   @return [String]
    # @!attribute token_standard
    #   <p>The container for the token standard.</p>
    #   @return [String]
    # @!attribute deployer_address
    #   <p>The network address of the deployer.</p>
    #   @return [String]
    class ContractFilter < Struct.new(
      :network,
      :token_standard,
      :deployer_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the blockchain address and network information about a contract.</p>
    # @!attribute network
    #   <p>The blockchain network of the contract.</p>
    #   @return [String]
    # @!attribute contract_address
    #   <p>Container for the blockchain address about a contract.</p>
    #   @return [String]
    class ContractIdentifier < Struct.new(
      :network,
      :contract_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata of the contract.</p>
    # @!attribute name
    #   <p>The name of the token contract.</p>
    #   @return [String]
    # @!attribute symbol
    #   <p>The symbol of the token contract.</p>
    #   @return [String]
    # @!attribute decimals
    #   <p>The decimals used by the token contract.</p>
    #   @return [Integer]
    class ContractMetadata < Struct.new(
      :name,
      :symbol,
      :decimals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contract_identifier
    #   <p>Contains the blockchain address and network information about the contract.</p>
    #   @return [Types::ContractIdentifier]
    class GetAssetContractInput < Struct.new(
      :contract_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contract_identifier
    #   <p>Contains the blockchain address and network information about the contract.</p>
    #   @return [Types::ContractIdentifier]
    # @!attribute token_standard
    #   <p>The token standard of the contract requested.</p>
    #   @return [String]
    # @!attribute deployer_address
    #   <p>The address of the deployer of contract.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the contract.</p>
    #   @return [Types::ContractMetadata]
    class GetAssetContractOutput < Struct.new(
      :contract_identifier,
      :token_standard,
      :deployer_address,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_identifier
    #   <p>The container for the identifier for the token, including the unique 
    #            token ID and its blockchain network.</p>
    #   @return [Types::TokenIdentifier]
    # @!attribute owner_identifier
    #   <p>The container for the identifier for the owner.</p>
    #   @return [Types::OwnerIdentifier]
    # @!attribute at_blockchain_instant
    #   <p>The time for when the TokenBalance is requested or 
    #            the current time if a time is not provided in the request.</p>
    #            <note>
    #               <p>This time will only be recorded up to the second.</p>
    #            </note>
    #   @return [Types::BlockchainInstant]
    class GetTokenBalanceInput < Struct.new(
      :token_identifier,
      :owner_identifier,
      :at_blockchain_instant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner_identifier
    #   <p>The container for the owner identifier.</p>
    #   @return [Types::OwnerIdentifier]
    # @!attribute token_identifier
    #   <p>The container for the identifier for the token including the unique token ID and its blockchain network.</p>
    #            <note>
    #               <p>Only the native tokens BTC and ETH, and the ERC-20, 
    #            ERC-721, and ERC 1155 token standards are supported.</p>
    #            </note>
    #   @return [Types::TokenIdentifier]
    # @!attribute balance
    #   <p>The container for the token balance.</p>
    #   @return [String]
    # @!attribute at_blockchain_instant
    #   <p>The container for time.</p>
    #   @return [Types::BlockchainInstant]
    # @!attribute last_updated_time
    #   <p>The container for time.</p>
    #   @return [Types::BlockchainInstant]
    class GetTokenBalanceOutput < Struct.new(
      :owner_identifier,
      :token_identifier,
      :balance,
      :at_blockchain_instant,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transaction_hash
    #   <p>The hash of a transaction. It is generated when a transaction is created.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>
    #            <note>
    #               <p>
    #                  <code>transactionId</code> is only supported on the Bitcoin networks.</p>
    #            </note>
    #   @return [String]
    # @!attribute network
    #   <p>The blockchain network where the transaction occurred.</p>
    #   @return [String]
    class GetTransactionInput < Struct.new(
      :transaction_hash,
      :transaction_id,
      :network,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transaction
    #   <p>Contains the details of the transaction.</p>
    #   @return [Types::Transaction]
    class GetTransactionOutput < Struct.new(
      :transaction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an internal error in the service.</p>
    # @!attribute message
    #   <p>The container for the exception message.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Specifies the <code>retryAfterSeconds</code> value.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contract_filter
    #   <p>Contains the filter parameter for the request.</p>
    #   @return [Types::ContractFilter]
    # @!attribute next_token
    #   <p> The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of contracts to list.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <note>
    #               <p>Even if additional results can be retrieved, the request can return less 
    #          results than <code>maxResults</code> or an empty array of results.</p>
    #               <p>To retrieve the next set of results, make another request with the 
    #            returned <code>nextToken</code> value. The value of <code>nextToken</code> is 
    #            <code>null</code> when there are no more results to return</p>
    #            </note>
    #   @return [Integer]
    class ListAssetContractsInput < Struct.new(
      :contract_filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contracts
    #   <p>An array of contract objects that contain the properties for each contract.</p>
    #   @return [Array<Types::AssetContract>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve. </p>
    #   @return [String]
    class ListAssetContractsOutput < Struct.new(
      :contracts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network
    #   <p>The blockchain network where the transaction occurred.</p>
    #            <p>Valid Values: <code>BITCOIN_MAINNET</code> | <code>BITCOIN_TESTNET</code>
    #            </p>
    #   @return [String]
    # @!attribute address_identifier_filter
    #   <p>This is the unique public address on the blockchain for which the transaction events are being requested.</p>
    #   @return [Types::AddressIdentifierFilter]
    # @!attribute time_filter
    #   <p>This container specifies the time frame for the transaction events returned in the response.</p>
    #   @return [Types::TimeFilter]
    # @!attribute vout_filter
    #   <p>This container specifies filtering attributes related to BITCOIN_VOUT event types</p>
    #   @return [Types::VoutFilter]
    # @!attribute confirmation_status_filter
    #   <p>The container for the <code>ConfirmationStatusFilter</code> that filters for the <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality">
    #                  <i>finality</i>
    #               </a> of the results.</p>
    #   @return [Types::ConfirmationStatusFilter]
    # @!attribute sort
    #   <p>The order by which the results will be sorted.</p>
    #   @return [Types::ListFilteredTransactionEventsSort]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of transaction events to list.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <note>
    #               <p>Even if additional results can be retrieved, the request can return less 
    #          results than <code>maxResults</code> or an empty array of results.</p>
    #               <p>To retrieve the next set of results, make another request with the 
    #            returned <code>nextToken</code> value. The value of <code>nextToken</code> is 
    #            <code>null</code> when there are no more results to return</p>
    #            </note>
    #   @return [Integer]
    class ListFilteredTransactionEventsInput < Struct.new(
      :network,
      :address_identifier_filter,
      :time_filter,
      :vout_filter,
      :confirmation_status_filter,
      :sort,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>The transaction events returned by the request.</p>
    #   @return [Array<Types::TransactionEvent>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListFilteredTransactionEventsOutput < Struct.new(
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lists all the transaction events for an address on the blockchain.</p>
    #          <note>
    #             <p>This operation is only supported on the Bitcoin blockchain networks.</p>
    #          </note>
    # @!attribute sort_by
    #   <p>Container on how the results will be sorted by?</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The container for the <i>sort order</i> for <code>ListFilteredTransactionEvents</code>. 
    #            The <code>SortOrder</code> field only accepts the values <code>ASCENDING</code> 
    #            and <code>DESCENDING</code>. Not providing <code>SortOrder</code> will default 
    #            to <code>ASCENDING</code>.</p>
    #   @return [String]
    class ListFilteredTransactionEventsSort < Struct.new(
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner_filter
    #   <p>The contract or wallet address on the blockchain network by which to filter the 
    #            request. You must specify the <code>address</code> property of the <code>ownerFilter</code> 
    #            when listing balances of tokens owned by the address.</p>
    #   @return [Types::OwnerFilter]
    # @!attribute token_filter
    #   <p>The contract address or a token identifier on the 
    #           blockchain network by which to filter the request. You must specify the <code>contractAddress</code> 
    #           property of this container when listing tokens minted by a contract.</p>
    #            <note>
    #               <p>You must always specify the network property of this 
    #                              container when using this operation.</p>
    #            </note>
    #   @return [Types::TokenFilter]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of token balances to return.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <note>
    #               <p>Even if additional results can be retrieved, the request can return less 
    #          results than <code>maxResults</code> or an empty array of results.</p>
    #               <p>To retrieve the next set of results, make another request with the 
    #            returned <code>nextToken</code> value. The value of <code>nextToken</code> is 
    #            <code>null</code> when there are no more results to return</p>
    #            </note>
    #   @return [Integer]
    class ListTokenBalancesInput < Struct.new(
      :owner_filter,
      :token_filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_balances
    #   <p>An array of <code>TokenBalance</code> objects. Each object contains details about 
    #          the token balance.</p>
    #   @return [Array<Types::TokenBalance>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListTokenBalancesOutput < Struct.new(
      :token_balances,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transaction_hash
    #   <p>The hash of a transaction. It is generated when a transaction is created.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>
    #            <note>
    #               <p>
    #                  <code>transactionId</code> is only supported on the Bitcoin networks.</p>
    #            </note>
    #   @return [String]
    # @!attribute network
    #   <p>The blockchain network where the transaction events occurred.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of transaction events to list.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <note>
    #               <p>Even if additional results can be retrieved, the request can return less 
    #          results than <code>maxResults</code> or an empty array of results.</p>
    #               <p>To retrieve the next set of results, make another request with the 
    #            returned <code>nextToken</code> value. The value of <code>nextToken</code> is 
    #            <code>null</code> when there are no more results to return</p>
    #            </note>
    #   @return [Integer]
    class ListTransactionEventsInput < Struct.new(
      :transaction_hash,
      :transaction_id,
      :network,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>An array of <code>TransactionEvent</code> objects. Each object contains details 
    #            about the transaction events.</p>
    #   @return [Array<Types::TransactionEvent>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListTransactionEventsOutput < Struct.new(
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute address
    #   <p>The address (either a contract or wallet), whose transactions are being requested.</p>
    #   @return [String]
    # @!attribute network
    #   <p>The blockchain network where the transactions occurred.</p>
    #   @return [String]
    # @!attribute from_blockchain_instant
    #   <p>The container for time.</p>
    #   @return [Types::BlockchainInstant]
    # @!attribute to_blockchain_instant
    #   <p>The container for time.</p>
    #   @return [Types::BlockchainInstant]
    # @!attribute sort
    #   <p>The order by which the results will be sorted. </p>
    #   @return [Types::ListTransactionsSort]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of transactions to list.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <note>
    #               <p>Even if additional results can be retrieved, the request can return less 
    #          results than <code>maxResults</code> or an empty array of results.</p>
    #               <p>To retrieve the next set of results, make another request with the 
    #            returned <code>nextToken</code> value. The value of <code>nextToken</code> is 
    #            <code>null</code> when there are no more results to return</p>
    #            </note>
    #   @return [Integer]
    # @!attribute confirmation_status_filter
    #   <p>This filter is used to include transactions in the response that haven't reached <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality">
    #                  <i>finality</i>
    #               </a>. Transactions that have reached finality are always 
    #            part of the response.</p>
    #   @return [Types::ConfirmationStatusFilter]
    class ListTransactionsInput < Struct.new(
      :address,
      :network,
      :from_blockchain_instant,
      :to_blockchain_instant,
      :sort,
      :next_token,
      :max_results,
      :confirmation_status_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transactions
    #   <p>The array of transactions returned by the request.</p>
    #   @return [Array<Types::TransactionOutputItem>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListTransactionsOutput < Struct.new(
      :transactions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for determining how the list transaction result will 
    #              be sorted.</p>
    # @!attribute sort_by
    #   <p>Defaults to the value <code>TRANSACTION_TIMESTAMP</code>.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The container for the <i>sort order</i> for <code>ListTransactions</code>. 
    #                The <code>SortOrder</code> field only accepts the values <code>ASCENDING</code> 
    #                and <code>DESCENDING</code>. Not providing <code>SortOrder</code> will default 
    #                to <code>ASCENDING</code>.</p>
    #   @return [String]
    class ListTransactionsSort < Struct.new(
      :sort_by,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the owner information to filter by.</p>
    # @!attribute address
    #   <p>The contract or wallet address.</p>
    #   @return [String]
    class OwnerFilter < Struct.new(
      :address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the owner identifier.</p>
    # @!attribute address
    #   <p>The contract or wallet address for the owner.</p>
    #   @return [String]
    class OwnerIdentifier < Struct.new(
      :address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource was not found.</p>
    # @!attribute message
    #   <p>The container for the exception message.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The <code>resourceId</code> of the resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The <code>resourceType</code> of the resource that caused the exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service quota has been exceeded for this resource.</p>
    # @!attribute message
    #   <p>The container for the exception message.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The <code>resourceId</code> of the resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The <code>resourceType</code> of the resource that caused the exception.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The container for the <code>serviceCode</code>.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The container for the <code>quotaCode</code>.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request or operation couldn't be performed because a service is throttling 
    #       requests. The most common source of throttling errors is when you create resources 
    #       that exceed your service limit for this resource type. Request a limit increase or 
    #       delete unused resources, if possible.</p>
    # @!attribute message
    #   <p>The container for the exception message.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The container for the <code>serviceCode</code>.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The container for the <code>quotaCode</code>.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The container of the <code>retryAfterSeconds</code> value.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This container is used to specify a time frame.</p>
    # @!attribute from
    #   <p>The container for time.</p>
    #   @return [Types::BlockchainInstant]
    # @!attribute to
    #   <p>The container for time.</p>
    #   @return [Types::BlockchainInstant]
    class TimeFilter < Struct.new(
      :from,
      :to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The balance of the token.</p>
    # @!attribute owner_identifier
    #   <p>The container for the identifier of the owner.</p>
    #   @return [Types::OwnerIdentifier]
    # @!attribute token_identifier
    #   <p>The identifier for the token, including the unique token ID and its blockchain network.</p>
    #   @return [Types::TokenIdentifier]
    # @!attribute balance
    #   <p>The container of the token balance.</p>
    #   @return [String]
    # @!attribute at_blockchain_instant
    #   <p>The time for when the TokenBalance is requested or 
    #            the current time if a time is not provided in the request.</p>
    #            <note>
    #               <p>This time will only be recorded up to the second.</p>
    #            </note>
    #   @return [Types::BlockchainInstant]
    # @!attribute last_updated_time
    #   <p>The <code>Timestamp</code> of the last transaction at which the balance for the token in the wallet was updated.</p>
    #   @return [Types::BlockchainInstant]
    class TokenBalance < Struct.new(
      :owner_identifier,
      :token_identifier,
      :balance,
      :at_blockchain_instant,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container of the token filter like the contract address 
    #        on a given blockchain network or a unique token identifier on a given 
    #        blockchain network.</p>
    #          <note>
    #             <p>You must always specify the network property of this 
    #                            container when using this operation.</p>
    #          </note>
    # @!attribute network
    #   <p>The blockchain network of the token.</p>
    #   @return [String]
    # @!attribute contract_address
    #   <p>This is the address of the contract.</p>
    #   @return [String]
    # @!attribute token_id
    #   <p>The unique identifier of the token.</p>
    #   @return [String]
    class TokenFilter < Struct.new(
      :network,
      :contract_address,
      :token_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the identifier for the token including the unique token ID and its blockchain network.</p>
    #          <note>
    #             <p>Only the native tokens BTC and ETH, and the ERC-20, 
    #          ERC-721, and ERC 1155 token standards are supported.</p>
    #          </note>
    # @!attribute network
    #   <p>The blockchain network of the token.</p>
    #   @return [String]
    # @!attribute contract_address
    #   <p>This is the token's contract address.</p>
    #   @return [String]
    # @!attribute token_id
    #   <p>The unique identifier of the token.</p>
    #            <note>
    #               <p>For native tokens, use the 3 character abbreviation that best matches your token. 
    #            For example, btc for Bitcoin, eth for Ether, etc. For all other token types you must 
    #            specify the <code>tokenId</code> in the 64 character hexadecimal <code>tokenid</code> format.</p>
    #            </note>
    #   @return [String]
    class TokenIdentifier < Struct.new(
      :network,
      :contract_address,
      :token_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There are two possible types of transactions used for this data type:</p>
    #          <ul>
    #             <li>
    #                <p>A Bitcoin transaction is a movement of BTC from one address to 
    #             another.</p>
    #             </li>
    #             <li>
    #                <p>An Ethereum transaction refers to an action initiated by an externally 
    #            owned account, which is an account managed by a human, not a contract. 
    #             For example, if Bob sends Alice 1 ETH, Bob's account must be debited and 
    #             Alice's must be credited. This state-changing action occurs within a transaction.</p>
    #             </li>
    #          </ul>
    # @!attribute network
    #   <p>The blockchain network where the transaction occurred.</p>
    #   @return [String]
    # @!attribute block_hash
    #   <p>The block hash is a unique identifier for a block. It is a fixed-size 
    #            string that is calculated by using the information in the block. The block 
    #            hash is used to verify the integrity of the data in the block.</p>
    #   @return [String]
    # @!attribute transaction_hash
    #   <p>The hash of a transaction. It is generated when a transaction is created.</p>
    #   @return [String]
    # @!attribute block_number
    #   <p>The block number in which the transaction is recorded.</p>
    #   @return [String]
    # @!attribute transaction_timestamp
    #   <p>The <code>Timestamp</code> of the transaction. </p>
    #   @return [Time]
    # @!attribute transaction_index
    #   <p>The index of the transaction within a blockchain.</p>
    #   @return [Integer]
    # @!attribute number_of_transactions
    #   <p>The number of transactions in the block.</p>
    #   @return [Integer]
    # @!attribute to
    #   <p>The identifier of the transaction. It is generated whenever a transaction is verified and added to the blockchain.</p>
    #   @return [String]
    # @!attribute from
    #   <p>The initiator of the transaction. It is either in the form a public key or a 
    #            contract address.</p>
    #   @return [String]
    # @!attribute contract_address
    #   <p>The blockchain address for the contract.</p>
    #   @return [String]
    # @!attribute gas_used
    #   <p>The amount of gas used for the transaction.</p>
    #   @return [String]
    # @!attribute cumulative_gas_used
    #   <p>The amount of gas used up to the specified point in the block.</p>
    #   @return [String]
    # @!attribute effective_gas_price
    #   <p>The effective gas price.</p>
    #   @return [String]
    # @!attribute signature_v
    #   <p>The signature of the transaction. The Z coordinate of a point V.</p>
    #   @return [Integer]
    # @!attribute signature_r
    #   <p>The signature of the transaction. The X coordinate of a point R.</p>
    #   @return [String]
    # @!attribute signature_s
    #   <p>The signature of the transaction. The Y coordinate of a point S.</p>
    #   @return [String]
    # @!attribute transaction_fee
    #   <p>The transaction fee.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>
    #   @return [String]
    # @!attribute confirmation_status
    #   <p>Specifies whether the transaction has reached Finality.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>Identifies whether the transaction has succeeded or failed.</p>
    #   @return [String]
    class Transaction < Struct.new(
      :network,
      :block_hash,
      :transaction_hash,
      :block_number,
      :transaction_timestamp,
      :transaction_index,
      :number_of_transactions,
      :to,
      :from,
      :contract_address,
      :gas_used,
      :cumulative_gas_used,
      :effective_gas_price,
      :signature_v,
      :signature_r,
      :signature_s,
      :transaction_fee,
      :transaction_id,
      :confirmation_status,
      :execution_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the properties of a transaction event.</p>
    # @!attribute network
    #   <p>The blockchain network where the transaction occurred.</p>
    #   @return [String]
    # @!attribute transaction_hash
    #   <p>The hash of a transaction. It is generated when a transaction is created.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of transaction event.</p>
    #   @return [String]
    # @!attribute from
    #   <p>The wallet address initiating the transaction. It can either be a public key or a contract.</p>
    #   @return [String]
    # @!attribute to
    #   <p>The wallet address receiving the transaction.  It can either be a public key or a contract.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that was transacted.</p>
    #   @return [String]
    # @!attribute contract_address
    #   <p>The blockchain address for the contract</p>
    #   @return [String]
    # @!attribute token_id
    #   <p>The unique identifier for the token involved in the transaction.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>
    #   @return [String]
    # @!attribute vout_index
    #   <p>The position of the transaction output in the transaction output list.</p>
    #   @return [Integer]
    # @!attribute vout_spent
    #   <p>Specifies if the transaction output is spent or unspent. This is only returned for BITCOIN_VOUT event types.</p>
    #            <note>
    #               <p>This is only returned for <code>BITCOIN_VOUT</code> event types.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute spent_vout_transaction_id
    #   <p>The transactionId that <i>created</i> the spent transaction output.</p>
    #            <note>
    #               <p>This is only returned for <code>BITCOIN_VIN</code> event types.</p>
    #            </note>
    #   @return [String]
    # @!attribute spent_vout_transaction_hash
    #   <p>The transactionHash that <i>created</i> the spent transaction output.</p>
    #            <note>
    #               <p>This is only returned for <code>BITCOIN_VIN</code> event types.</p>
    #            </note>
    #   @return [String]
    # @!attribute spent_vout_index
    #   <p>The position of the spent transaction output in the output list of the <i>creating transaction</i>.</p>
    #            <note>
    #               <p>This is only returned for <code>BITCOIN_VIN</code> event types.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute blockchain_instant
    #   <p>The container for time.</p>
    #   @return [Types::BlockchainInstant]
    # @!attribute confirmation_status
    #   <p>This container specifies whether the transaction has reached Finality.</p>
    #   @return [String]
    class TransactionEvent < Struct.new(
      :network,
      :transaction_hash,
      :event_type,
      :from,
      :to,
      :value,
      :contract_address,
      :token_id,
      :transaction_id,
      :vout_index,
      :vout_spent,
      :spent_vout_transaction_id,
      :spent_vout_transaction_hash,
      :spent_vout_index,
      :blockchain_instant,
      :confirmation_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container of the transaction output.</p>
    # @!attribute transaction_hash
    #   <p>The hash of a transaction. It is generated when a transaction is created.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>
    #   @return [String]
    # @!attribute network
    #   <p>The blockchain network where the transaction occurred.</p>
    #   @return [String]
    # @!attribute transaction_timestamp
    #   <p>The time when the transaction occurred.</p>
    #   @return [Time]
    # @!attribute confirmation_status
    #   <p>Specifies whether to list transactions that have not reached Finality.</p>
    #   @return [String]
    class TransactionOutputItem < Struct.new(
      :transaction_hash,
      :transaction_id,
      :network,
      :transaction_timestamp,
      :confirmation_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource passed is invalid.</p>
    # @!attribute message
    #   <p>The container for the exception message.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The container for the reason for the exception</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The container for the <code>fieldList</code> of the exception.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource passed is invalid.</p>
    # @!attribute name
    #   <p>The name of the field that triggered the <code>ValidationException</code>.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The <code>ValidationException</code> message.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This container specifies filtering attributes related to <code>BITCOIN_VOUT</code> event types</p>
    # @!attribute vout_spent
    #   <p>Specifies if the transaction output is spent or unspent.</p>
    #   @return [Boolean]
    class VoutFilter < Struct.new(
      :vout_spent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
