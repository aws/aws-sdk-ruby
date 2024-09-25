# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ManagedBlockchainQuery
  module Types

    # The Amazon Web Services account doesn’t have access to this resource.
    #
    # @!attribute [rw] message
    #   The container for the exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is the container for the unique public address on the blockchain.
    #
    # @!attribute [rw] transaction_event_to_address
    #   The container for the recipient address of the transaction.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/AddressIdentifierFilter AWS API Documentation
    #
    class AddressIdentifierFilter < Struct.new(
      :transaction_event_to_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # This container contains information about an contract.
    #
    # @!attribute [rw] contract_identifier
    #   The container for the contract identifier containing its blockchain
    #   network and address.
    #   @return [Types::ContractIdentifier]
    #
    # @!attribute [rw] token_standard
    #   The token standard of the contract.
    #   @return [String]
    #
    # @!attribute [rw] deployer_address
    #   The address of the contract deployer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/AssetContract AWS API Documentation
    #
    class AssetContract < Struct.new(
      :contract_identifier,
      :token_standard,
      :deployer_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error generated from a failed `BatchGetTokenBalance` request.
    #
    # @!attribute [rw] token_identifier
    #   The container for the identifier for the token including the unique
    #   token ID and its blockchain network.
    #
    #   <note markdown="1"> Only the native tokens BTC and ETH, and the ERC-20, ERC-721, and ERC
    #   1155 token standards are supported.
    #
    #    </note>
    #   @return [Types::TokenIdentifier]
    #
    # @!attribute [rw] owner_identifier
    #   The container for the owner identifier.
    #   @return [Types::OwnerIdentifier]
    #
    # @!attribute [rw] at_blockchain_instant
    #   The container for time.
    #   @return [Types::BlockchainInstant]
    #
    # @!attribute [rw] error_code
    #   The error code associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   The type of error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/BatchGetTokenBalanceErrorItem AWS API Documentation
    #
    class BatchGetTokenBalanceErrorItem < Struct.new(
      :token_identifier,
      :owner_identifier,
      :at_blockchain_instant,
      :error_code,
      :error_message,
      :error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] get_token_balance_inputs
    #   An array of `BatchGetTokenBalanceInputItem` objects whose balance is
    #   being requested.
    #   @return [Array<Types::BatchGetTokenBalanceInputItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/BatchGetTokenBalanceInput AWS API Documentation
    #
    class BatchGetTokenBalanceInput < Struct.new(
      :get_token_balance_inputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the input for getting a token balance.
    #
    # @!attribute [rw] token_identifier
    #   The container for the identifier for the token including the unique
    #   token ID and its blockchain network.
    #
    #   <note markdown="1"> Only the native tokens BTC and ETH, and the ERC-20, ERC-721, and ERC
    #   1155 token standards are supported.
    #
    #    </note>
    #   @return [Types::TokenIdentifier]
    #
    # @!attribute [rw] owner_identifier
    #   The container for the owner identifier.
    #   @return [Types::OwnerIdentifier]
    #
    # @!attribute [rw] at_blockchain_instant
    #   The container for time.
    #   @return [Types::BlockchainInstant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/BatchGetTokenBalanceInputItem AWS API Documentation
    #
    class BatchGetTokenBalanceInputItem < Struct.new(
      :token_identifier,
      :owner_identifier,
      :at_blockchain_instant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token_balances
    #   An array of `BatchGetTokenBalanceOutputItem` objects returned by the
    #   response.
    #   @return [Array<Types::BatchGetTokenBalanceOutputItem>]
    #
    # @!attribute [rw] errors
    #   An array of `BatchGetTokenBalanceErrorItem` objects returned from
    #   the request.
    #   @return [Array<Types::BatchGetTokenBalanceErrorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/BatchGetTokenBalanceOutput AWS API Documentation
    #
    class BatchGetTokenBalanceOutput < Struct.new(
      :token_balances,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the properties of a token balance output.
    #
    # @!attribute [rw] owner_identifier
    #   The container for the owner identifier.
    #   @return [Types::OwnerIdentifier]
    #
    # @!attribute [rw] token_identifier
    #   The container for the identifier for the token including the unique
    #   token ID and its blockchain network.
    #
    #   <note markdown="1"> Only the native tokens BTC and ETH, and the ERC-20, ERC-721, and ERC
    #   1155 token standards are supported.
    #
    #    </note>
    #   @return [Types::TokenIdentifier]
    #
    # @!attribute [rw] balance
    #   The container for the token balance.
    #   @return [String]
    #
    # @!attribute [rw] at_blockchain_instant
    #   The container for time.
    #   @return [Types::BlockchainInstant]
    #
    # @!attribute [rw] last_updated_time
    #   The container for time.
    #   @return [Types::BlockchainInstant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/BatchGetTokenBalanceOutputItem AWS API Documentation
    #
    class BatchGetTokenBalanceOutputItem < Struct.new(
      :owner_identifier,
      :token_identifier,
      :balance,
      :at_blockchain_instant,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for time.
    #
    # @!attribute [rw] time
    #   The container of the `Timestamp` of the blockchain instant.
    #
    #   <note markdown="1"> This `timestamp` will only be recorded up to the second.
    #
    #    </note>
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/BlockchainInstant AWS API Documentation
    #
    class BlockchainInstant < Struct.new(
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the `ConfirmationStatusFilter` that filters for the
    # [ *finality* ][1] of the results.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality
    #
    # @!attribute [rw] include
    #   The container to determine whether to list results that have only
    #   reached [ *finality* ][1]. Transactions that have reached finality
    #   are always part of the response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ConfirmationStatusFilter AWS API Documentation
    #
    class ConfirmationStatusFilter < Struct.new(
      :include)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contract or wallet address by which to filter the request.
    #
    # @!attribute [rw] network
    #   The blockchain network of the contract.
    #   @return [String]
    #
    # @!attribute [rw] token_standard
    #   The container for the token standard.
    #   @return [String]
    #
    # @!attribute [rw] deployer_address
    #   The network address of the deployer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ContractFilter AWS API Documentation
    #
    class ContractFilter < Struct.new(
      :network,
      :token_standard,
      :deployer_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the blockchain address and network information about a
    # contract.
    #
    # @!attribute [rw] network
    #   The blockchain network of the contract.
    #   @return [String]
    #
    # @!attribute [rw] contract_address
    #   Container for the blockchain address about a contract.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ContractIdentifier AWS API Documentation
    #
    class ContractIdentifier < Struct.new(
      :network,
      :contract_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of the contract.
    #
    # @!attribute [rw] name
    #   The name of the token contract.
    #   @return [String]
    #
    # @!attribute [rw] symbol
    #   The symbol of the token contract.
    #   @return [String]
    #
    # @!attribute [rw] decimals
    #   The decimals used by the token contract.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ContractMetadata AWS API Documentation
    #
    class ContractMetadata < Struct.new(
      :name,
      :symbol,
      :decimals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contract_identifier
    #   Contains the blockchain address and network information about the
    #   contract.
    #   @return [Types::ContractIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/GetAssetContractInput AWS API Documentation
    #
    class GetAssetContractInput < Struct.new(
      :contract_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contract_identifier
    #   Contains the blockchain address and network information about the
    #   contract.
    #   @return [Types::ContractIdentifier]
    #
    # @!attribute [rw] token_standard
    #   The token standard of the contract requested.
    #   @return [String]
    #
    # @!attribute [rw] deployer_address
    #   The address of the deployer of contract.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the contract.
    #   @return [Types::ContractMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/GetAssetContractOutput AWS API Documentation
    #
    class GetAssetContractOutput < Struct.new(
      :contract_identifier,
      :token_standard,
      :deployer_address,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token_identifier
    #   The container for the identifier for the token, including the unique
    #   token ID and its blockchain network.
    #   @return [Types::TokenIdentifier]
    #
    # @!attribute [rw] owner_identifier
    #   The container for the identifier for the owner.
    #   @return [Types::OwnerIdentifier]
    #
    # @!attribute [rw] at_blockchain_instant
    #   The time for when the TokenBalance is requested or the current time
    #   if a time is not provided in the request.
    #
    #   <note markdown="1"> This time will only be recorded up to the second.
    #
    #    </note>
    #   @return [Types::BlockchainInstant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/GetTokenBalanceInput AWS API Documentation
    #
    class GetTokenBalanceInput < Struct.new(
      :token_identifier,
      :owner_identifier,
      :at_blockchain_instant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] owner_identifier
    #   The container for the owner identifier.
    #   @return [Types::OwnerIdentifier]
    #
    # @!attribute [rw] token_identifier
    #   The container for the identifier for the token including the unique
    #   token ID and its blockchain network.
    #
    #   <note markdown="1"> Only the native tokens BTC and ETH, and the ERC-20, ERC-721, and ERC
    #   1155 token standards are supported.
    #
    #    </note>
    #   @return [Types::TokenIdentifier]
    #
    # @!attribute [rw] balance
    #   The container for the token balance.
    #   @return [String]
    #
    # @!attribute [rw] at_blockchain_instant
    #   The container for time.
    #   @return [Types::BlockchainInstant]
    #
    # @!attribute [rw] last_updated_time
    #   The container for time.
    #   @return [Types::BlockchainInstant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/GetTokenBalanceOutput AWS API Documentation
    #
    class GetTokenBalanceOutput < Struct.new(
      :owner_identifier,
      :token_identifier,
      :balance,
      :at_blockchain_instant,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction_hash
    #   The hash of a transaction. It is generated when a transaction is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The identifier of a Bitcoin transaction. It is generated when a
    #   transaction is created.
    #
    #   <note markdown="1"> `transactionId` is only supported on the Bitcoin networks.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] network
    #   The blockchain network where the transaction occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/GetTransactionInput AWS API Documentation
    #
    class GetTransactionInput < Struct.new(
      :transaction_hash,
      :transaction_id,
      :network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction
    #   Contains the details of the transaction.
    #   @return [Types::Transaction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/GetTransactionOutput AWS API Documentation
    #
    class GetTransactionOutput < Struct.new(
      :transaction)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an internal error in the
    # service.
    #
    # @!attribute [rw] message
    #   The container for the exception message.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Specifies the `retryAfterSeconds` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contract_filter
    #   Contains the filter parameter for the request.
    #   @return [Types::ContractFilter]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of contracts to list.
    #
    #   Default: `100`
    #
    #   <note markdown="1"> Even if additional results can be retrieved, the request can return
    #   less results than `maxResults` or an empty array of results.
    #
    #    To retrieve the next set of results, make another request with the
    #   returned `nextToken` value. The value of `nextToken` is `null` when
    #   there are no more results to return
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListAssetContractsInput AWS API Documentation
    #
    class ListAssetContractsInput < Struct.new(
      :contract_filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contracts
    #   An array of contract objects that contain the properties for each
    #   contract.
    #   @return [Array<Types::AssetContract>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListAssetContractsOutput AWS API Documentation
    #
    class ListAssetContractsOutput < Struct.new(
      :contracts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network
    #   The blockchain network where the transaction occurred.
    #
    #   Valid Values: `BITCOIN_MAINNET` \| `BITCOIN_TESTNET`
    #   @return [String]
    #
    # @!attribute [rw] address_identifier_filter
    #   This is the unique public address on the blockchain for which the
    #   transaction events are being requested.
    #   @return [Types::AddressIdentifierFilter]
    #
    # @!attribute [rw] time_filter
    #   This container specifies the time frame for the transaction events
    #   returned in the response.
    #   @return [Types::TimeFilter]
    #
    # @!attribute [rw] vout_filter
    #   This container specifies filtering attributes related to
    #   BITCOIN\_VOUT event types
    #   @return [Types::VoutFilter]
    #
    # @!attribute [rw] confirmation_status_filter
    #   The container for the `ConfirmationStatusFilter` that filters for
    #   the [ *finality* ][1] of the results.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality
    #   @return [Types::ConfirmationStatusFilter]
    #
    # @!attribute [rw] sort
    #   The order by which the results will be sorted.
    #   @return [Types::ListFilteredTransactionEventsSort]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of transaction events to list.
    #
    #   Default: `100`
    #
    #   <note markdown="1"> Even if additional results can be retrieved, the request can return
    #   less results than `maxResults` or an empty array of results.
    #
    #    To retrieve the next set of results, make another request with the
    #   returned `nextToken` value. The value of `nextToken` is `null` when
    #   there are no more results to return
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListFilteredTransactionEventsInput AWS API Documentation
    #
    class ListFilteredTransactionEventsInput < Struct.new(
      :network,
      :address_identifier_filter,
      :time_filter,
      :vout_filter,
      :confirmation_status_filter,
      :sort,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The transaction events returned by the request.
    #   @return [Array<Types::TransactionEvent>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListFilteredTransactionEventsOutput AWS API Documentation
    #
    class ListFilteredTransactionEventsOutput < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists all the transaction events for an address on the blockchain.
    #
    # <note markdown="1"> This operation is only supported on the Bitcoin blockchain networks.
    #
    #  </note>
    #
    # @!attribute [rw] sort_by
    #   Container on how the results will be sorted by?
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The container for the *sort order* for
    #   `ListFilteredTransactionEvents`. The `SortOrder` field only accepts
    #   the values `ASCENDING` and `DESCENDING`. Not providing `SortOrder`
    #   will default to `ASCENDING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListFilteredTransactionEventsSort AWS API Documentation
    #
    class ListFilteredTransactionEventsSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] owner_filter
    #   The contract or wallet address on the blockchain network by which to
    #   filter the request. You must specify the `address` property of the
    #   `ownerFilter` when listing balances of tokens owned by the address.
    #   @return [Types::OwnerFilter]
    #
    # @!attribute [rw] token_filter
    #   The contract address or a token identifier on the blockchain network
    #   by which to filter the request. You must specify the
    #   `contractAddress` property of this container when listing tokens
    #   minted by a contract.
    #
    #   <note markdown="1"> You must always specify the network property of this container when
    #   using this operation.
    #
    #    </note>
    #   @return [Types::TokenFilter]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of token balances to return.
    #
    #   Default: `100`
    #
    #   <note markdown="1"> Even if additional results can be retrieved, the request can return
    #   less results than `maxResults` or an empty array of results.
    #
    #    To retrieve the next set of results, make another request with the
    #   returned `nextToken` value. The value of `nextToken` is `null` when
    #   there are no more results to return
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListTokenBalancesInput AWS API Documentation
    #
    class ListTokenBalancesInput < Struct.new(
      :owner_filter,
      :token_filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token_balances
    #   An array of `TokenBalance` objects. Each object contains details
    #   about the token balance.
    #   @return [Array<Types::TokenBalance>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListTokenBalancesOutput AWS API Documentation
    #
    class ListTokenBalancesOutput < Struct.new(
      :token_balances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction_hash
    #   The hash of a transaction. It is generated when a transaction is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The identifier of a Bitcoin transaction. It is generated when a
    #   transaction is created.
    #
    #   <note markdown="1"> `transactionId` is only supported on the Bitcoin networks.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] network
    #   The blockchain network where the transaction events occurred.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of transaction events to list.
    #
    #   Default: `100`
    #
    #   <note markdown="1"> Even if additional results can be retrieved, the request can return
    #   less results than `maxResults` or an empty array of results.
    #
    #    To retrieve the next set of results, make another request with the
    #   returned `nextToken` value. The value of `nextToken` is `null` when
    #   there are no more results to return
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListTransactionEventsInput AWS API Documentation
    #
    class ListTransactionEventsInput < Struct.new(
      :transaction_hash,
      :transaction_id,
      :network,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   An array of `TransactionEvent` objects. Each object contains details
    #   about the transaction events.
    #   @return [Array<Types::TransactionEvent>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListTransactionEventsOutput AWS API Documentation
    #
    class ListTransactionEventsOutput < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address
    #   The address (either a contract or wallet), whose transactions are
    #   being requested.
    #   @return [String]
    #
    # @!attribute [rw] network
    #   The blockchain network where the transactions occurred.
    #   @return [String]
    #
    # @!attribute [rw] from_blockchain_instant
    #   The container for time.
    #   @return [Types::BlockchainInstant]
    #
    # @!attribute [rw] to_blockchain_instant
    #   The container for time.
    #   @return [Types::BlockchainInstant]
    #
    # @!attribute [rw] sort
    #   The order by which the results will be sorted.
    #   @return [Types::ListTransactionsSort]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of transactions to list.
    #
    #   Default: `100`
    #
    #   <note markdown="1"> Even if additional results can be retrieved, the request can return
    #   less results than `maxResults` or an empty array of results.
    #
    #    To retrieve the next set of results, make another request with the
    #   returned `nextToken` value. The value of `nextToken` is `null` when
    #   there are no more results to return
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] confirmation_status_filter
    #   This filter is used to include transactions in the response that
    #   haven't reached [ *finality* ][1]. Transactions that have reached
    #   finality are always part of the response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality
    #   @return [Types::ConfirmationStatusFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListTransactionsInput AWS API Documentation
    #
    class ListTransactionsInput < Struct.new(
      :address,
      :network,
      :from_blockchain_instant,
      :to_blockchain_instant,
      :sort,
      :next_token,
      :max_results,
      :confirmation_status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transactions
    #   The array of transactions returned by the request.
    #   @return [Array<Types::TransactionOutputItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListTransactionsOutput AWS API Documentation
    #
    class ListTransactionsOutput < Struct.new(
      :transactions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for determining how the list transaction result will be
    # sorted.
    #
    # @!attribute [rw] sort_by
    #   Defaults to the value `TRANSACTION_TIMESTAMP`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The container for the *sort order* for `ListTransactions`. The
    #   `SortOrder` field only accepts the values `ASCENDING` and
    #   `DESCENDING`. Not providing `SortOrder` will default to `ASCENDING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ListTransactionsSort AWS API Documentation
    #
    class ListTransactionsSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the owner information to filter by.
    #
    # @!attribute [rw] address
    #   The contract or wallet address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/OwnerFilter AWS API Documentation
    #
    class OwnerFilter < Struct.new(
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the owner identifier.
    #
    # @!attribute [rw] address
    #   The contract or wallet address for the owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/OwnerIdentifier AWS API Documentation
    #
    class OwnerIdentifier < Struct.new(
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource was not found.
    #
    # @!attribute [rw] message
    #   The container for the exception message.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The `resourceId` of the resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The `resourceType` of the resource that caused the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service quota has been exceeded for this resource.
    #
    # @!attribute [rw] message
    #   The container for the exception message.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The `resourceId` of the resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The `resourceType` of the resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The container for the `serviceCode`.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The container for the `quotaCode`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request or operation couldn't be performed because a service is
    # throttling requests. The most common source of throttling errors is
    # when you create resources that exceed your service limit for this
    # resource type. Request a limit increase or delete unused resources, if
    # possible.
    #
    # @!attribute [rw] message
    #   The container for the exception message.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The container for the `serviceCode`.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The container for the `quotaCode`.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The container of the `retryAfterSeconds` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # This container is used to specify a time frame.
    #
    # @!attribute [rw] from
    #   The container for time.
    #   @return [Types::BlockchainInstant]
    #
    # @!attribute [rw] to
    #   The container for time.
    #   @return [Types::BlockchainInstant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/TimeFilter AWS API Documentation
    #
    class TimeFilter < Struct.new(
      :from,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # The balance of the token.
    #
    # @!attribute [rw] owner_identifier
    #   The container for the identifier of the owner.
    #   @return [Types::OwnerIdentifier]
    #
    # @!attribute [rw] token_identifier
    #   The identifier for the token, including the unique token ID and its
    #   blockchain network.
    #   @return [Types::TokenIdentifier]
    #
    # @!attribute [rw] balance
    #   The container of the token balance.
    #   @return [String]
    #
    # @!attribute [rw] at_blockchain_instant
    #   The time for when the TokenBalance is requested or the current time
    #   if a time is not provided in the request.
    #
    #   <note markdown="1"> This time will only be recorded up to the second.
    #
    #    </note>
    #   @return [Types::BlockchainInstant]
    #
    # @!attribute [rw] last_updated_time
    #   The `Timestamp` of the last transaction at which the balance for the
    #   token in the wallet was updated.
    #   @return [Types::BlockchainInstant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/TokenBalance AWS API Documentation
    #
    class TokenBalance < Struct.new(
      :owner_identifier,
      :token_identifier,
      :balance,
      :at_blockchain_instant,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container of the token filter like the contract address on a given
    # blockchain network or a unique token identifier on a given blockchain
    # network.
    #
    # <note markdown="1"> You must always specify the network property of this container when
    # using this operation.
    #
    #  </note>
    #
    # @!attribute [rw] network
    #   The blockchain network of the token.
    #   @return [String]
    #
    # @!attribute [rw] contract_address
    #   This is the address of the contract.
    #   @return [String]
    #
    # @!attribute [rw] token_id
    #   The unique identifier of the token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/TokenFilter AWS API Documentation
    #
    class TokenFilter < Struct.new(
      :network,
      :contract_address,
      :token_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the identifier for the token including the unique
    # token ID and its blockchain network.
    #
    # <note markdown="1"> Only the native tokens BTC and ETH, and the ERC-20, ERC-721, and ERC
    # 1155 token standards are supported.
    #
    #  </note>
    #
    # @!attribute [rw] network
    #   The blockchain network of the token.
    #   @return [String]
    #
    # @!attribute [rw] contract_address
    #   This is the token's contract address.
    #   @return [String]
    #
    # @!attribute [rw] token_id
    #   The unique identifier of the token.
    #
    #   <note markdown="1"> For native tokens, use the 3 character abbreviation that best
    #   matches your token. For example, btc for Bitcoin, eth for Ether,
    #   etc. For all other token types you must specify the `tokenId` in the
    #   64 character hexadecimal `tokenid` format.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/TokenIdentifier AWS API Documentation
    #
    class TokenIdentifier < Struct.new(
      :network,
      :contract_address,
      :token_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # There are two possible types of transactions used for this data type:
    #
    # * A Bitcoin transaction is a movement of BTC from one address to
    #   another.
    #
    # * An Ethereum transaction refers to an action initiated by an
    #   externally owned account, which is an account managed by a human,
    #   not a contract. For example, if Bob sends Alice 1 ETH, Bob's
    #   account must be debited and Alice's must be credited. This
    #   state-changing action occurs within a transaction.
    #
    # @!attribute [rw] network
    #   The blockchain network where the transaction occurred.
    #   @return [String]
    #
    # @!attribute [rw] block_hash
    #   The block hash is a unique identifier for a block. It is a
    #   fixed-size string that is calculated by using the information in the
    #   block. The block hash is used to verify the integrity of the data in
    #   the block.
    #   @return [String]
    #
    # @!attribute [rw] transaction_hash
    #   The hash of a transaction. It is generated when a transaction is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] block_number
    #   The block number in which the transaction is recorded.
    #   @return [String]
    #
    # @!attribute [rw] transaction_timestamp
    #   The `Timestamp` of the transaction.
    #   @return [Time]
    #
    # @!attribute [rw] transaction_index
    #   The index of the transaction within a blockchain.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_transactions
    #   The number of transactions in the block.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The identifier of the transaction. It is generated whenever a
    #   transaction is verified and added to the blockchain.
    #   @return [String]
    #
    # @!attribute [rw] from
    #   The initiator of the transaction. It is either in the form a public
    #   key or a contract address.
    #   @return [String]
    #
    # @!attribute [rw] contract_address
    #   The blockchain address for the contract.
    #   @return [String]
    #
    # @!attribute [rw] gas_used
    #   The amount of gas used for the transaction.
    #   @return [String]
    #
    # @!attribute [rw] cumulative_gas_used
    #   The amount of gas used up to the specified point in the block.
    #   @return [String]
    #
    # @!attribute [rw] effective_gas_price
    #   The effective gas price.
    #   @return [String]
    #
    # @!attribute [rw] signature_v
    #   The signature of the transaction. The Z coordinate of a point V.
    #   @return [Integer]
    #
    # @!attribute [rw] signature_r
    #   The signature of the transaction. The X coordinate of a point R.
    #   @return [String]
    #
    # @!attribute [rw] signature_s
    #   The signature of the transaction. The Y coordinate of a point S.
    #   @return [String]
    #
    # @!attribute [rw] transaction_fee
    #   The transaction fee.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The identifier of a Bitcoin transaction. It is generated when a
    #   transaction is created.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_status
    #   Specifies whether the transaction has reached Finality.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   Identifies whether the transaction has succeeded or failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/Transaction AWS API Documentation
    #
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
      :execution_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the properties of a transaction event.
    #
    # @!attribute [rw] network
    #   The blockchain network where the transaction occurred.
    #   @return [String]
    #
    # @!attribute [rw] transaction_hash
    #   The hash of a transaction. It is generated when a transaction is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The type of transaction event.
    #   @return [String]
    #
    # @!attribute [rw] from
    #   The wallet address initiating the transaction. It can either be a
    #   public key or a contract.
    #   @return [String]
    #
    # @!attribute [rw] to
    #   The wallet address receiving the transaction. It can either be a
    #   public key or a contract.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that was transacted.
    #   @return [String]
    #
    # @!attribute [rw] contract_address
    #   The blockchain address for the contract
    #   @return [String]
    #
    # @!attribute [rw] token_id
    #   The unique identifier for the token involved in the transaction.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The identifier of a Bitcoin transaction. It is generated when a
    #   transaction is created.
    #   @return [String]
    #
    # @!attribute [rw] vout_index
    #   The position of the transaction output in the transaction output
    #   list.
    #   @return [Integer]
    #
    # @!attribute [rw] vout_spent
    #   Specifies if the transaction output is spent or unspent. This is
    #   only returned for BITCOIN\_VOUT event types.
    #
    #   <note markdown="1"> This is only returned for `BITCOIN_VOUT` event types.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] spent_vout_transaction_id
    #   The transactionId that *created* the spent transaction output.
    #
    #   <note markdown="1"> This is only returned for `BITCOIN_VIN` event types.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] spent_vout_transaction_hash
    #   The transactionHash that *created* the spent transaction output.
    #
    #   <note markdown="1"> This is only returned for `BITCOIN_VIN` event types.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] spent_vout_index
    #   The position of the spent transaction output in the output list of
    #   the *creating transaction*.
    #
    #   <note markdown="1"> This is only returned for `BITCOIN_VIN` event types.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] blockchain_instant
    #   The container for time.
    #   @return [Types::BlockchainInstant]
    #
    # @!attribute [rw] confirmation_status
    #   This container specifies whether the transaction has reached
    #   Finality.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/TransactionEvent AWS API Documentation
    #
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
      :confirmation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container of the transaction output.
    #
    # @!attribute [rw] transaction_hash
    #   The hash of a transaction. It is generated when a transaction is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The identifier of a Bitcoin transaction. It is generated when a
    #   transaction is created.
    #   @return [String]
    #
    # @!attribute [rw] network
    #   The blockchain network where the transaction occurred.
    #   @return [String]
    #
    # @!attribute [rw] transaction_timestamp
    #   The time when the transaction occurred.
    #   @return [Time]
    #
    # @!attribute [rw] confirmation_status
    #   Specifies whether to list transactions that have not reached
    #   Finality.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/TransactionOutputItem AWS API Documentation
    #
    class TransactionOutputItem < Struct.new(
      :transaction_hash,
      :transaction_id,
      :network,
      :transaction_timestamp,
      :confirmation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource passed is invalid.
    #
    # @!attribute [rw] message
    #   The container for the exception message.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The container for the reason for the exception
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The container for the `fieldList` of the exception.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource passed is invalid.
    #
    # @!attribute [rw] name
    #   The name of the field that triggered the `ValidationException`.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The `ValidationException` message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This container specifies filtering attributes related to
    # `BITCOIN_VOUT` event types
    #
    # @!attribute [rw] vout_spent
    #   Specifies if the transaction output is spent or unspent.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-query-2023-05-04/VoutFilter AWS API Documentation
    #
    class VoutFilter < Struct.new(
      :vout_spent)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

