# frozen_string_literal: true

# This is generated code!

module Aws::ManagedBlockchainQuery
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddressIdentifierFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#AddressIdentifierFilter', name: 'AddressIdentifierFilter')
    AssetContract = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#AssetContract', name: 'AssetContract')
    AssetContractList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchainquery#AssetContractList', name: 'AssetContractList', traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    BatchGetTokenBalanceErrorItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#BatchGetTokenBalanceErrorItem', name: 'BatchGetTokenBalanceErrorItem')
    BatchGetTokenBalanceErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchainquery#BatchGetTokenBalanceErrors', name: 'BatchGetTokenBalanceErrors', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BatchGetTokenBalanceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#BatchGetTokenBalanceInput', name: 'BatchGetTokenBalanceInput')
    BatchGetTokenBalanceInputItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#BatchGetTokenBalanceInputItem', name: 'BatchGetTokenBalanceInputItem')
    BatchGetTokenBalanceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#BatchGetTokenBalanceOutput', name: 'BatchGetTokenBalanceOutput')
    BatchGetTokenBalanceOutputItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#BatchGetTokenBalanceOutputItem', name: 'BatchGetTokenBalanceOutputItem')
    BatchGetTokenBalanceOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchainquery#BatchGetTokenBalanceOutputList', name: 'BatchGetTokenBalanceOutputList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BlockHash = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#BlockHash', name: 'BlockHash', traits: {"smithy.api#pattern" => "^(0x[A-Fa-f0-9]{64}|[A-Fa-f0-9]{64})$"})
    BlockchainInstant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#BlockchainInstant', name: 'BlockchainInstant')
    ChainAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#ChainAddress', name: 'ChainAddress', traits: {"smithy.api#pattern" => "^[-A-Za-z0-9]{13,74}$"})
    ChainAddresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchainquery#ChainAddresses', name: 'ChainAddresses')
    ConfirmationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#ConfirmationStatus', name: 'ConfirmationStatus', traits: {"smithy.api#enum" => [{"value" => "FINAL", "name" => "FINAL"}, {"value" => "NONFINAL", "name" => "NONFINAL"}]})
    ConfirmationStatusFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ConfirmationStatusFilter', name: 'ConfirmationStatusFilter')
    ConfirmationStatusIncludeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchainquery#ConfirmationStatusIncludeList', name: 'ConfirmationStatusIncludeList', traits: {"smithy.api#length" => {"min" => 1}})
    ContractFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ContractFilter', name: 'ContractFilter')
    ContractIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ContractIdentifier', name: 'ContractIdentifier')
    ContractMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ContractMetadata', name: 'ContractMetadata')
    ErrorType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#ErrorType', name: 'ErrorType', traits: {"smithy.api#enum" => [{"value" => "VALIDATION_EXCEPTION", "name" => "VALIDATION_EXCEPTION", "documentation" => "An API request validation exception"}, {"value" => "RESOURCE_NOT_FOUND_EXCEPTION", "name" => "RESOURCE_NOT_FOUND_EXCEPTION", "documentation" => "An API request retrieving an item that can't be found"}]})
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#ExceptionMessage', name: 'ExceptionMessage', traits: {"smithy.api#length" => {"min" => 1}})
    ExecutionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#ExecutionStatus', name: 'ExecutionStatus', traits: {"smithy.api#enum" => [{"value" => "FAILED", "name" => "FAILED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}]})
    GetAssetContractInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#GetAssetContractInput', name: 'GetAssetContractInput')
    GetAssetContractOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#GetAssetContractOutput', name: 'GetAssetContractOutput')
    GetTokenBalanceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#GetTokenBalanceInput', name: 'GetTokenBalanceInput')
    GetTokenBalanceInputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchainquery#GetTokenBalanceInputList', name: 'GetTokenBalanceInputList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    GetTokenBalanceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#GetTokenBalanceOutput', name: 'GetTokenBalanceOutput')
    GetTransactionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#GetTransactionInput', name: 'GetTransactionInput')
    GetTransactionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#GetTransactionOutput', name: 'GetTransactionOutput')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListAssetContractsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListAssetContractsInput', name: 'ListAssetContractsInput')
    ListAssetContractsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListAssetContractsOutput', name: 'ListAssetContractsOutput')
    ListFilteredTransactionEventsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListFilteredTransactionEventsInput', name: 'ListFilteredTransactionEventsInput')
    ListFilteredTransactionEventsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListFilteredTransactionEventsOutput', name: 'ListFilteredTransactionEventsOutput')
    ListFilteredTransactionEventsSort = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListFilteredTransactionEventsSort', name: 'ListFilteredTransactionEventsSort')
    ListFilteredTransactionEventsSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#ListFilteredTransactionEventsSortBy', name: 'ListFilteredTransactionEventsSortBy', traits: {"smithy.api#enum" => [{"value" => "blockchainInstant", "name" => "blockchainInstant", "documentation" => "Timestamp of a transaction"}]})
    ListTokenBalancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListTokenBalancesInput', name: 'ListTokenBalancesInput')
    ListTokenBalancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListTokenBalancesOutput', name: 'ListTokenBalancesOutput')
    ListTransactionEventsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListTransactionEventsInput', name: 'ListTransactionEventsInput')
    ListTransactionEventsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListTransactionEventsOutput', name: 'ListTransactionEventsOutput')
    ListTransactionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListTransactionsInput', name: 'ListTransactionsInput')
    ListTransactionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListTransactionsOutput', name: 'ListTransactionsOutput')
    ListTransactionsSort = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ListTransactionsSort', name: 'ListTransactionsSort')
    ListTransactionsSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#ListTransactionsSortBy', name: 'ListTransactionsSortBy', traits: {"smithy.api#enum" => [{"value" => "TRANSACTION_TIMESTAMP", "name" => "TRANSACTION_TIMESTAMP", "documentation" => "Timestamp of a transaction"}]})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 131070}})
    OwnerFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#OwnerFilter', name: 'OwnerFilter')
    OwnerIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#OwnerIdentifier', name: 'OwnerIdentifier')
    QueryNetwork = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#QueryNetwork', name: 'QueryNetwork', traits: {"smithy.api#enum" => [{"value" => "ETHEREUM_MAINNET", "name" => "ETHEREUM_MAINNET", "documentation" => "Ethereum main network"}, {"value" => "ETHEREUM_SEPOLIA_TESTNET", "name" => "ETHEREUM_SEPOLIA_TESTNET", "documentation" => "SEPOLIA network (ethereum testnet)"}, {"value" => "BITCOIN_MAINNET", "name" => "BITCOIN_MAINNET", "documentation" => "Bitcoin main network"}, {"value" => "BITCOIN_TESTNET", "name" => "BITCOIN_TESTNET", "documentation" => "Bitcoin test network"}]})
    QueryTokenId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#QueryTokenId', name: 'QueryTokenId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{1,66}$"})
    QueryTokenStandard = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#QueryTokenStandard', name: 'QueryTokenStandard', traits: {"smithy.api#enum" => [{"value" => "ERC20", "name" => "ERC20"}, {"value" => "ERC721", "name" => "ERC721"}, {"value" => "ERC1155", "name" => "ERC1155"}]})
    QueryTransactionEventType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#QueryTransactionEventType', name: 'QueryTransactionEventType', traits: {"smithy.api#enum" => [{"value" => "ERC20_TRANSFER", "name" => "ERC20_TRANSFER", "documentation" => "An ERC20 transfer type"}, {"value" => "ERC20_MINT", "name" => "ERC20_MINT", "documentation" => "An ERC20_MINT transfer type"}, {"value" => "ERC20_BURN", "name" => "ERC20_BURN", "documentation" => "An ERC20_BURN transfer type"}, {"value" => "ERC20_DEPOSIT", "name" => "ERC20_DEPOSIT", "documentation" => "An ERC20_DEPOSIT transfer type"}, {"value" => "ERC20_WITHDRAWAL", "name" => "ERC20_WITHDRAWAL", "documentation" => "An ERC20_WITHDRAWAL transfer type"}, {"value" => "ERC721_TRANSFER", "name" => "ERC721_TRANSFER", "documentation" => "An ERC721 transfer type"}, {"value" => "ERC1155_TRANSFER", "name" => "ERC1155_TRANSFER", "documentation" => "An ERC1155 transfer type"}, {"value" => "BITCOIN_VIN", "name" => "BITCOIN_VIN", "documentation" => "A Bitcoin Vin transfer type"}, {"value" => "BITCOIN_VOUT", "name" => "BITCOIN_VOUT", "documentation" => "A Bitcoin Vout transfer type"}, {"value" => "INTERNAL_ETH_TRANSFER", "name" => "INTERNAL_ETH_TRANSFER", "documentation" => "An internal ETH transfer type"}, {"value" => "ETH_TRANSFER", "name" => "ETH_TRANSFER", "documentation" => "An ETH transfer type"}]})
    QueryTransactionHash = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#QueryTransactionHash', name: 'QueryTransactionHash', traits: {"smithy.api#pattern" => "^(0x[A-Fa-f0-9]{64}|[A-Fa-f0-9]{64})$"})
    QueryTransactionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#QueryTransactionId', name: 'QueryTransactionId', traits: {"smithy.api#pattern" => "^(0x[A-Fa-f0-9]{64}|[A-Fa-f0-9]{64})$"})
    QuotaCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#QuotaCode', name: 'QuotaCode')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#ResourceId', name: 'ResourceId')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#ResourceType', name: 'ResourceType', traits: {"smithy.api#enum" => [{"value" => "collection", "name" => "COLLECTION"}]})
    ServiceCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#ServiceCode', name: 'ServiceCode')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SortOrder = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#SortOrder', name: 'SortOrder', traits: {"smithy.api#enum" => [{"value" => "ASCENDING", "name" => "ASCENDING", "documentation" => "Result sorted in ascending order"}, {"value" => "DESCENDING", "name" => "DESCENDING", "documentation" => "Result sorted in descending order"}]})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TimeFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#TimeFilter', name: 'TimeFilter')
    TokenBalance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#TokenBalance', name: 'TokenBalance')
    TokenBalanceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchainquery#TokenBalanceList', name: 'TokenBalanceList', traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    TokenFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#TokenFilter', name: 'TokenFilter')
    TokenIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#TokenIdentifier', name: 'TokenIdentifier')
    Transaction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#Transaction', name: 'Transaction')
    TransactionEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#TransactionEvent', name: 'TransactionEvent')
    TransactionEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchainquery#TransactionEventList', name: 'TransactionEventList', traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    TransactionOutputItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#TransactionOutputItem', name: 'TransactionOutputItem')
    TransactionOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchainquery#TransactionOutputList', name: 'TransactionOutputList', traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchainquery#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchainquery#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VoutFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchainquery#VoutFilter', name: 'VoutFilter')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The container for the exception message.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AddressIdentifierFilter.add_member(:transaction_event_to_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddresses, location_name: 'transactionEventToAddress', traits: {"smithy.api#documentation" => "<p>The container for the recipient address of the transaction. </p>", "smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    AddressIdentifierFilter.type = Types::AddressIdentifierFilter
    AssetContract.add_member(:contract_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ContractIdentifier, location_name: 'contractIdentifier', traits: {"smithy.api#documentation" => "<p>The container for the contract identifier containing its blockchain network \n       and address.</p>", "smithy.api#required" => {}}))
    AssetContract.add_member(:token_standard, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTokenStandard, location_name: 'tokenStandard', traits: {"smithy.api#documentation" => "<p>The token standard of the contract.</p>", "smithy.api#required" => {}}))
    AssetContract.add_member(:deployer_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'deployerAddress', traits: {"smithy.api#documentation" => "<p>The address of the contract deployer.</p>", "smithy.api#required" => {}}))
    AssetContract.type = Types::AssetContract
    AssetContractList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetContract)
    BatchGetTokenBalanceErrorItem.add_member(:token_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenIdentifier, location_name: 'tokenIdentifier'))
    BatchGetTokenBalanceErrorItem.add_member(:owner_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerIdentifier, location_name: 'ownerIdentifier'))
    BatchGetTokenBalanceErrorItem.add_member(:at_blockchain_instant, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'atBlockchainInstant'))
    BatchGetTokenBalanceErrorItem.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code associated with the error.</p>", "smithy.api#required" => {}}))
    BatchGetTokenBalanceErrorItem.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The message associated with the error.</p>", "smithy.api#required" => {}}))
    BatchGetTokenBalanceErrorItem.add_member(:error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorType, location_name: 'errorType', traits: {"smithy.api#documentation" => "<p>The type of error.</p>", "smithy.api#required" => {}}))
    BatchGetTokenBalanceErrorItem.type = Types::BatchGetTokenBalanceErrorItem
    BatchGetTokenBalanceErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTokenBalanceErrorItem)
    BatchGetTokenBalanceInput.add_member(:get_token_balance_inputs, Smithy::Schema::Shapes::ShapeRef.new(shape: GetTokenBalanceInputList, location_name: 'getTokenBalanceInputs', traits: {"smithy.api#documentation" => "<p>An array of <code>BatchGetTokenBalanceInputItem</code> objects whose balance is being requested.</p>"}))
    BatchGetTokenBalanceInput.type = Types::BatchGetTokenBalanceInput
    BatchGetTokenBalanceInputItem.add_member(:token_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenIdentifier, location_name: 'tokenIdentifier', traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceInputItem.add_member(:owner_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerIdentifier, location_name: 'ownerIdentifier', traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceInputItem.add_member(:at_blockchain_instant, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'atBlockchainInstant'))
    BatchGetTokenBalanceInputItem.type = Types::BatchGetTokenBalanceInputItem
    BatchGetTokenBalanceOutput.add_member(:token_balances, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTokenBalanceOutputList, location_name: 'tokenBalances', traits: {"smithy.api#documentation" => "<p>An array of <code>BatchGetTokenBalanceOutputItem</code> objects returned by the response.</p>", "smithy.api#required" => {}}))
    BatchGetTokenBalanceOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTokenBalanceErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>An array of <code>BatchGetTokenBalanceErrorItem</code> objects returned from the request.</p>", "smithy.api#required" => {}}))
    BatchGetTokenBalanceOutput.type = Types::BatchGetTokenBalanceOutput
    BatchGetTokenBalanceOutputItem.add_member(:owner_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerIdentifier, location_name: 'ownerIdentifier'))
    BatchGetTokenBalanceOutputItem.add_member(:token_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenIdentifier, location_name: 'tokenIdentifier'))
    BatchGetTokenBalanceOutputItem.add_member(:balance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'balance', traits: {"smithy.api#documentation" => "<p>The container for the token balance.</p>", "smithy.api#required" => {}}))
    BatchGetTokenBalanceOutputItem.add_member(:at_blockchain_instant, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'atBlockchainInstant', traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceOutputItem.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'lastUpdatedTime'))
    BatchGetTokenBalanceOutputItem.type = Types::BatchGetTokenBalanceOutputItem
    BatchGetTokenBalanceOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTokenBalanceOutputItem)
    BlockchainInstant.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'time', traits: {"smithy.api#documentation" => "<p>The container of the <code>Timestamp</code> of the blockchain instant.</p>\n         <note>\n            <p>This <code>timestamp</code> will only be recorded up to \n         the second.</p>\n         </note>"}))
    BlockchainInstant.type = Types::BlockchainInstant
    ChainAddresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress)
    ConfirmationStatusFilter.add_member(:include, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationStatusIncludeList, location_name: 'include', traits: {"smithy.api#documentation" => "<p>The container to determine whether to list results that have only reached <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality\">\n               <i>finality</i>\n            </a>. Transactions \n         that have reached finality are always part of the response.</p>", "smithy.api#required" => {}}))
    ConfirmationStatusFilter.type = Types::ConfirmationStatusFilter
    ConfirmationStatusIncludeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationStatus)
    ContractFilter.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryNetwork, location_name: 'network', traits: {"smithy.api#documentation" => "<p>The blockchain network of the contract.</p>", "smithy.api#required" => {}}))
    ContractFilter.add_member(:token_standard, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTokenStandard, location_name: 'tokenStandard', traits: {"smithy.api#documentation" => "<p>The container for the token standard.</p>", "smithy.api#required" => {}}))
    ContractFilter.add_member(:deployer_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'deployerAddress', traits: {"smithy.api#documentation" => "<p>The network address of the deployer.</p>", "smithy.api#required" => {}}))
    ContractFilter.type = Types::ContractFilter
    ContractIdentifier.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryNetwork, location_name: 'network', traits: {"smithy.api#documentation" => "<p>The blockchain network of the contract.</p>", "smithy.api#required" => {}}))
    ContractIdentifier.add_member(:contract_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'contractAddress', traits: {"smithy.api#documentation" => "<p>Container for the blockchain address about a contract.</p>", "smithy.api#required" => {}}))
    ContractIdentifier.type = Types::ContractIdentifier
    ContractMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the token contract.</p>"}))
    ContractMetadata.add_member(:symbol, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'symbol', traits: {"smithy.api#documentation" => "<p>The symbol of the token contract.</p>"}))
    ContractMetadata.add_member(:decimals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'decimals', traits: {"smithy.api#documentation" => "<p>The decimals used by the token contract.</p>"}))
    ContractMetadata.type = Types::ContractMetadata
    GetAssetContractInput.add_member(:contract_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ContractIdentifier, location_name: 'contractIdentifier', traits: {"smithy.api#documentation" => "<p>Contains the blockchain address and network information about the contract.</p>", "smithy.api#required" => {}}))
    GetAssetContractInput.type = Types::GetAssetContractInput
    GetAssetContractOutput.add_member(:contract_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ContractIdentifier, location_name: 'contractIdentifier', traits: {"smithy.api#documentation" => "<p>Contains the blockchain address and network information about the contract.</p>", "smithy.api#required" => {}}))
    GetAssetContractOutput.add_member(:token_standard, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTokenStandard, location_name: 'tokenStandard', traits: {"smithy.api#documentation" => "<p>The token standard of the contract requested.</p>", "smithy.api#required" => {}}))
    GetAssetContractOutput.add_member(:deployer_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'deployerAddress', traits: {"smithy.api#documentation" => "<p>The address of the deployer of contract.</p>", "smithy.api#required" => {}}))
    GetAssetContractOutput.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ContractMetadata, location_name: 'metadata'))
    GetAssetContractOutput.type = Types::GetAssetContractOutput
    GetTokenBalanceInput.add_member(:token_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenIdentifier, location_name: 'tokenIdentifier', traits: {"smithy.api#documentation" => "<p>The container for the identifier for the token, including the unique \n         token ID and its blockchain network.</p>", "smithy.api#required" => {}}))
    GetTokenBalanceInput.add_member(:owner_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerIdentifier, location_name: 'ownerIdentifier', traits: {"smithy.api#documentation" => "<p>The container for the identifier for the owner.</p>", "smithy.api#required" => {}}))
    GetTokenBalanceInput.add_member(:at_blockchain_instant, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'atBlockchainInstant', traits: {"smithy.api#documentation" => "<p>The time for when the TokenBalance is requested or \n         the current time if a time is not provided in the request.</p>\n         <note>\n            <p>This time will only be recorded up to the second.</p>\n         </note>"}))
    GetTokenBalanceInput.type = Types::GetTokenBalanceInput
    GetTokenBalanceInputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTokenBalanceInputItem)
    GetTokenBalanceOutput.add_member(:owner_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerIdentifier, location_name: 'ownerIdentifier'))
    GetTokenBalanceOutput.add_member(:token_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenIdentifier, location_name: 'tokenIdentifier'))
    GetTokenBalanceOutput.add_member(:balance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'balance', traits: {"smithy.api#documentation" => "<p>The container for the token balance.</p>", "smithy.api#required" => {}}))
    GetTokenBalanceOutput.add_member(:at_blockchain_instant, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'atBlockchainInstant', traits: {"smithy.api#required" => {}}))
    GetTokenBalanceOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'lastUpdatedTime'))
    GetTokenBalanceOutput.type = Types::GetTokenBalanceOutput
    GetTransactionInput.add_member(:transaction_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTransactionHash, location_name: 'transactionHash', traits: {"smithy.api#documentation" => "<p>The hash of a transaction. It is generated when a transaction is created.</p>"}))
    GetTransactionInput.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTransactionId, location_name: 'transactionId', traits: {"smithy.api#documentation" => "<p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>\n         <note>\n            <p>\n               <code>transactionId</code> is only supported on the Bitcoin networks.</p>\n         </note>"}))
    GetTransactionInput.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryNetwork, location_name: 'network', traits: {"smithy.api#documentation" => "<p>The blockchain network where the transaction occurred.</p>", "smithy.api#required" => {}}))
    GetTransactionInput.type = Types::GetTransactionInput
    GetTransactionOutput.add_member(:transaction, Smithy::Schema::Shapes::ShapeRef.new(shape: Transaction, location_name: 'transaction', traits: {"smithy.api#documentation" => "<p>Contains the details of the transaction.</p>", "smithy.api#required" => {}}))
    GetTransactionOutput.type = Types::GetTransactionOutput
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The container for the exception message.</p>", "smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>Specifies the <code>retryAfterSeconds</code> value.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListAssetContractsInput.add_member(:contract_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ContractFilter, location_name: 'contractFilter', traits: {"smithy.api#documentation" => "<p>Contains the filter parameter for the request.</p>", "smithy.api#required" => {}}))
    ListAssetContractsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListAssetContractsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of contracts to list.</p>\n         <p>Default: <code>100</code>\n         </p>\n         <note>\n            <p>Even if additional results can be retrieved, the request can return less \n       results than <code>maxResults</code> or an empty array of results.</p>\n            <p>To retrieve the next set of results, make another request with the \n         returned <code>nextToken</code> value. The value of <code>nextToken</code> is \n         <code>null</code> when there are no more results to return</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 250}}))
    ListAssetContractsInput.type = Types::ListAssetContractsInput
    ListAssetContractsOutput.add_member(:contracts, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetContractList, location_name: 'contracts', traits: {"smithy.api#documentation" => "<p>An array of contract objects that contain the properties for each contract.</p>", "smithy.api#required" => {}}))
    ListAssetContractsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve. </p>"}))
    ListAssetContractsOutput.type = Types::ListAssetContractsOutput
    ListFilteredTransactionEventsInput.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'network', traits: {"smithy.api#documentation" => "<p>The blockchain network where the transaction occurred.</p>\n         <p>Valid Values: <code>BITCOIN_MAINNET</code> | <code>BITCOIN_TESTNET</code>\n         </p>", "smithy.api#required" => {}}))
    ListFilteredTransactionEventsInput.add_member(:address_identifier_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressIdentifierFilter, location_name: 'addressIdentifierFilter', traits: {"smithy.api#documentation" => "<p>This is the unique public address on the blockchain for which the transaction events are being requested.</p>", "smithy.api#required" => {}}))
    ListFilteredTransactionEventsInput.add_member(:time_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeFilter, location_name: 'timeFilter', traits: {"smithy.api#documentation" => "<p>This container specifies the time frame for the transaction events returned in the response.</p>"}))
    ListFilteredTransactionEventsInput.add_member(:vout_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: VoutFilter, location_name: 'voutFilter', traits: {"smithy.api#documentation" => "<p>This container specifies filtering attributes related to BITCOIN_VOUT event types</p>"}))
    ListFilteredTransactionEventsInput.add_member(:confirmation_status_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationStatusFilter, location_name: 'confirmationStatusFilter'))
    ListFilteredTransactionEventsInput.add_member(:sort, Smithy::Schema::Shapes::ShapeRef.new(shape: ListFilteredTransactionEventsSort, location_name: 'sort', traits: {"smithy.api#documentation" => "<p>The order by which the results will be sorted.</p>"}))
    ListFilteredTransactionEventsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListFilteredTransactionEventsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of transaction events to list.</p>\n         <p>Default: <code>100</code>\n         </p>\n         <note>\n            <p>Even if additional results can be retrieved, the request can return less \n       results than <code>maxResults</code> or an empty array of results.</p>\n            <p>To retrieve the next set of results, make another request with the \n         returned <code>nextToken</code> value. The value of <code>nextToken</code> is \n         <code>null</code> when there are no more results to return</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 250}}))
    ListFilteredTransactionEventsInput.type = Types::ListFilteredTransactionEventsInput
    ListFilteredTransactionEventsOutput.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionEventList, location_name: 'events', traits: {"smithy.api#documentation" => "<p>The transaction events returned by the request.</p>", "smithy.api#required" => {}}))
    ListFilteredTransactionEventsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListFilteredTransactionEventsOutput.type = Types::ListFilteredTransactionEventsOutput
    ListFilteredTransactionEventsSort.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ListFilteredTransactionEventsSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>Container on how the results will be sorted by?</p>"}))
    ListFilteredTransactionEventsSort.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The container for the <i>sort order</i> for <code>ListFilteredTransactionEvents</code>. \n         The <code>SortOrder</code> field only accepts the values <code>ASCENDING</code> \n         and <code>DESCENDING</code>. Not providing <code>SortOrder</code> will default \n         to <code>ASCENDING</code>.</p>"}))
    ListFilteredTransactionEventsSort.type = Types::ListFilteredTransactionEventsSort
    ListTokenBalancesInput.add_member(:owner_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerFilter, location_name: 'ownerFilter', traits: {"smithy.api#documentation" => "<p>The contract or wallet address on the blockchain network by which to filter the \n         request. You must specify the <code>address</code> property of the <code>ownerFilter</code> \n         when listing balances of tokens owned by the address.</p>"}))
    ListTokenBalancesInput.add_member(:token_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenFilter, location_name: 'tokenFilter', traits: {"smithy.api#documentation" => "<p>The contract address or a token identifier on the \n        blockchain network by which to filter the request. You must specify the <code>contractAddress</code> \n        property of this container when listing tokens minted by a contract.</p>\n         <note>\n            <p>You must always specify the network property of this \n                           container when using this operation.</p>\n         </note>", "smithy.api#required" => {}}))
    ListTokenBalancesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListTokenBalancesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of token balances to return.</p>\n         <p>Default: <code>100</code>\n         </p>\n         <note>\n            <p>Even if additional results can be retrieved, the request can return less \n       results than <code>maxResults</code> or an empty array of results.</p>\n            <p>To retrieve the next set of results, make another request with the \n         returned <code>nextToken</code> value. The value of <code>nextToken</code> is \n         <code>null</code> when there are no more results to return</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 250}}))
    ListTokenBalancesInput.type = Types::ListTokenBalancesInput
    ListTokenBalancesOutput.add_member(:token_balances, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenBalanceList, location_name: 'tokenBalances', traits: {"smithy.api#documentation" => "<p>An array of <code>TokenBalance</code> objects. Each object contains details about \n       the token balance.</p>", "smithy.api#required" => {}}))
    ListTokenBalancesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListTokenBalancesOutput.type = Types::ListTokenBalancesOutput
    ListTransactionEventsInput.add_member(:transaction_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTransactionHash, location_name: 'transactionHash', traits: {"smithy.api#documentation" => "<p>The hash of a transaction. It is generated when a transaction is created.</p>"}))
    ListTransactionEventsInput.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTransactionId, location_name: 'transactionId', traits: {"smithy.api#documentation" => "<p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>\n         <note>\n            <p>\n               <code>transactionId</code> is only supported on the Bitcoin networks.</p>\n         </note>"}))
    ListTransactionEventsInput.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryNetwork, location_name: 'network', traits: {"smithy.api#documentation" => "<p>The blockchain network where the transaction events occurred.</p>", "smithy.api#required" => {}}))
    ListTransactionEventsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListTransactionEventsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of transaction events to list.</p>\n         <p>Default: <code>100</code>\n         </p>\n         <note>\n            <p>Even if additional results can be retrieved, the request can return less \n       results than <code>maxResults</code> or an empty array of results.</p>\n            <p>To retrieve the next set of results, make another request with the \n         returned <code>nextToken</code> value. The value of <code>nextToken</code> is \n         <code>null</code> when there are no more results to return</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 250}}))
    ListTransactionEventsInput.type = Types::ListTransactionEventsInput
    ListTransactionEventsOutput.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionEventList, location_name: 'events', traits: {"smithy.api#documentation" => "<p>An array of <code>TransactionEvent</code> objects. Each object contains details \n         about the transaction events.</p>", "smithy.api#required" => {}}))
    ListTransactionEventsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListTransactionEventsOutput.type = Types::ListTransactionEventsOutput
    ListTransactionsInput.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'address', traits: {"smithy.api#documentation" => "<p>The address (either a contract or wallet), whose transactions are being requested.</p>", "smithy.api#required" => {}}))
    ListTransactionsInput.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryNetwork, location_name: 'network', traits: {"smithy.api#documentation" => "<p>The blockchain network where the transactions occurred.</p>", "smithy.api#required" => {}}))
    ListTransactionsInput.add_member(:from_blockchain_instant, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'fromBlockchainInstant'))
    ListTransactionsInput.add_member(:to_blockchain_instant, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'toBlockchainInstant'))
    ListTransactionsInput.add_member(:sort, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTransactionsSort, location_name: 'sort', traits: {"smithy.api#documentation" => "<p>The order by which the results will be sorted. </p>"}))
    ListTransactionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListTransactionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of transactions to list.</p>\n         <p>Default: <code>100</code>\n         </p>\n         <note>\n            <p>Even if additional results can be retrieved, the request can return less \n       results than <code>maxResults</code> or an empty array of results.</p>\n            <p>To retrieve the next set of results, make another request with the \n         returned <code>nextToken</code> value. The value of <code>nextToken</code> is \n         <code>null</code> when there are no more results to return</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 250}}))
    ListTransactionsInput.add_member(:confirmation_status_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationStatusFilter, location_name: 'confirmationStatusFilter', traits: {"smithy.api#documentation" => "<p>This filter is used to include transactions in the response that haven't reached <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality\">\n               <i>finality</i>\n            </a>. Transactions that have reached finality are always \n         part of the response.</p>"}))
    ListTransactionsInput.type = Types::ListTransactionsInput
    ListTransactionsOutput.add_member(:transactions, Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionOutputList, location_name: 'transactions', traits: {"smithy.api#documentation" => "<p>The array of transactions returned by the request.</p>", "smithy.api#required" => {}}))
    ListTransactionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListTransactionsOutput.type = Types::ListTransactionsOutput
    ListTransactionsSort.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTransactionsSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>Defaults to the value <code>TRANSACTION_TIMESTAMP</code>.</p>"}))
    ListTransactionsSort.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>The container for the <i>sort order</i> for <code>ListTransactions</code>. \n             The <code>SortOrder</code> field only accepts the values <code>ASCENDING</code> \n             and <code>DESCENDING</code>. Not providing <code>SortOrder</code> will default \n             to <code>ASCENDING</code>.</p>"}))
    ListTransactionsSort.type = Types::ListTransactionsSort
    OwnerFilter.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'address', traits: {"smithy.api#documentation" => "<p>The contract or wallet address.</p>", "smithy.api#required" => {}}))
    OwnerFilter.type = Types::OwnerFilter
    OwnerIdentifier.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'address', traits: {"smithy.api#documentation" => "<p>The contract or wallet address for the owner.</p>", "smithy.api#required" => {}}))
    OwnerIdentifier.type = Types::OwnerIdentifier
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The container for the exception message.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The <code>resourceId</code> of the resource that caused the exception.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The <code>resourceType</code> of the resource that caused the exception.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The container for the exception message.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The <code>resourceId</code> of the resource that caused the exception.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The <code>resourceType</code> of the resource that caused the exception.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The container for the <code>serviceCode</code>.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The container for the <code>quotaCode</code>.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The container for the exception message.</p>", "smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The container for the <code>serviceCode</code>.</p>", "smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The container for the <code>quotaCode</code>.</p>", "smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The container of the <code>retryAfterSeconds</code> value.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeFilter.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'from'))
    TimeFilter.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'to'))
    TimeFilter.type = Types::TimeFilter
    TokenBalance.add_member(:owner_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerIdentifier, location_name: 'ownerIdentifier', traits: {"smithy.api#documentation" => "<p>The container for the identifier of the owner.</p>"}))
    TokenBalance.add_member(:token_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenIdentifier, location_name: 'tokenIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the token, including the unique token ID and its blockchain network.</p>"}))
    TokenBalance.add_member(:balance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'balance', traits: {"smithy.api#documentation" => "<p>The container of the token balance.</p>", "smithy.api#required" => {}}))
    TokenBalance.add_member(:at_blockchain_instant, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'atBlockchainInstant', traits: {"smithy.api#documentation" => "<p>The time for when the TokenBalance is requested or \n         the current time if a time is not provided in the request.</p>\n         <note>\n            <p>This time will only be recorded up to the second.</p>\n         </note>", "smithy.api#required" => {}}))
    TokenBalance.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The <code>Timestamp</code> of the last transaction at which the balance for the token in the wallet was updated.</p>"}))
    TokenBalance.type = Types::TokenBalance
    TokenBalanceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TokenBalance)
    TokenFilter.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryNetwork, location_name: 'network', traits: {"smithy.api#documentation" => "<p>The blockchain network of the token.</p>", "smithy.api#required" => {}}))
    TokenFilter.add_member(:contract_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'contractAddress', traits: {"smithy.api#documentation" => "<p>This is the address of the contract.</p>"}))
    TokenFilter.add_member(:token_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTokenId, location_name: 'tokenId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the token.</p>"}))
    TokenFilter.type = Types::TokenFilter
    TokenIdentifier.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryNetwork, location_name: 'network', traits: {"smithy.api#documentation" => "<p>The blockchain network of the token.</p>", "smithy.api#required" => {}}))
    TokenIdentifier.add_member(:contract_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'contractAddress', traits: {"smithy.api#documentation" => "<p>This is the token's contract address.</p>"}))
    TokenIdentifier.add_member(:token_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTokenId, location_name: 'tokenId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the token.</p>\n         <note>\n            <p>For native tokens, use the 3 character abbreviation that best matches your token. \n         For example, btc for Bitcoin, eth for Ether, etc. For all other token types you must \n         specify the <code>tokenId</code> in the 64 character hexadecimal <code>tokenid</code> format.</p>\n         </note>"}))
    TokenIdentifier.type = Types::TokenIdentifier
    Transaction.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryNetwork, location_name: 'network', traits: {"smithy.api#documentation" => "<p>The blockchain network where the transaction occurred.</p>", "smithy.api#required" => {}}))
    Transaction.add_member(:block_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockHash, location_name: 'blockHash', traits: {"smithy.api#documentation" => "<p>The block hash is a unique identifier for a block. It is a fixed-size \n         string that is calculated by using the information in the block. The block \n         hash is used to verify the integrity of the data in the block.</p>"}))
    Transaction.add_member(:transaction_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTransactionHash, location_name: 'transactionHash', traits: {"smithy.api#documentation" => "<p>The hash of a transaction. It is generated when a transaction is created.</p>", "smithy.api#required" => {}}))
    Transaction.add_member(:block_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'blockNumber', traits: {"smithy.api#documentation" => "<p>The block number in which the transaction is recorded.</p>"}))
    Transaction.add_member(:transaction_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'transactionTimestamp', traits: {"smithy.api#documentation" => "<p>The <code>Timestamp</code> of the transaction. </p>", "smithy.api#required" => {}}))
    Transaction.add_member(:transaction_index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'transactionIndex', traits: {"smithy.api#documentation" => "<p>The index of the transaction within a blockchain.</p>", "smithy.api#required" => {}}))
    Transaction.add_member(:number_of_transactions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numberOfTransactions', traits: {"smithy.api#documentation" => "<p>The number of transactions in the block.</p>", "smithy.api#required" => {}}))
    Transaction.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'to', traits: {"smithy.api#documentation" => "<p>The identifier of the transaction. It is generated whenever a transaction is verified and added to the blockchain.</p>", "smithy.api#required" => {}}))
    Transaction.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'from', traits: {"smithy.api#documentation" => "<p>The initiator of the transaction. It is either in the form a public key or a \n         contract address.</p>"}))
    Transaction.add_member(:contract_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'contractAddress', traits: {"smithy.api#documentation" => "<p>The blockchain address for the contract.</p>"}))
    Transaction.add_member(:gas_used, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'gasUsed', traits: {"smithy.api#documentation" => "<p>The amount of gas used for the transaction.</p>"}))
    Transaction.add_member(:cumulative_gas_used, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'cumulativeGasUsed', traits: {"smithy.api#documentation" => "<p>The amount of gas used up to the specified point in the block.</p>"}))
    Transaction.add_member(:effective_gas_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'effectiveGasPrice', traits: {"smithy.api#documentation" => "<p>The effective gas price.</p>"}))
    Transaction.add_member(:signature_v, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'signatureV', traits: {"smithy.api#documentation" => "<p>The signature of the transaction. The Z coordinate of a point V.</p>"}))
    Transaction.add_member(:signature_r, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'signatureR', traits: {"smithy.api#documentation" => "<p>The signature of the transaction. The X coordinate of a point R.</p>"}))
    Transaction.add_member(:signature_s, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'signatureS', traits: {"smithy.api#documentation" => "<p>The signature of the transaction. The Y coordinate of a point S.</p>"}))
    Transaction.add_member(:transaction_fee, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'transactionFee', traits: {"smithy.api#documentation" => "<p>The transaction fee.</p>"}))
    Transaction.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'transactionId', traits: {"smithy.api#documentation" => "<p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>"}))
    Transaction.add_member(:confirmation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationStatus, location_name: 'confirmationStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether the transaction has reached Finality.</p>"}))
    Transaction.add_member(:execution_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'executionStatus', traits: {"smithy.api#documentation" => "<p>Identifies whether the transaction has succeeded or failed.</p>"}))
    Transaction.type = Types::Transaction
    TransactionEvent.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryNetwork, location_name: 'network', traits: {"smithy.api#documentation" => "<p>The blockchain network where the transaction occurred.</p>", "smithy.api#required" => {}}))
    TransactionEvent.add_member(:transaction_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTransactionHash, location_name: 'transactionHash', traits: {"smithy.api#documentation" => "<p>The hash of a transaction. It is generated when a transaction is created.</p>", "smithy.api#required" => {}}))
    TransactionEvent.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTransactionEventType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>The type of transaction event.</p>", "smithy.api#required" => {}}))
    TransactionEvent.add_member(:from, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'from', traits: {"smithy.api#documentation" => "<p>The wallet address initiating the transaction. It can either be a public key or a contract.</p>"}))
    TransactionEvent.add_member(:to, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'to', traits: {"smithy.api#documentation" => "<p>The wallet address receiving the transaction.  It can either be a public key or a contract.</p>"}))
    TransactionEvent.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value that was transacted.</p>"}))
    TransactionEvent.add_member(:contract_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ChainAddress, location_name: 'contractAddress', traits: {"smithy.api#documentation" => "<p>The blockchain address for the contract</p>"}))
    TransactionEvent.add_member(:token_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTokenId, location_name: 'tokenId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the token involved in the transaction.</p>"}))
    TransactionEvent.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'transactionId', traits: {"smithy.api#documentation" => "<p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>"}))
    TransactionEvent.add_member(:vout_index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'voutIndex', traits: {"smithy.api#documentation" => "<p>The position of the transaction output in the transaction output list.</p>"}))
    TransactionEvent.add_member(:vout_spent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'voutSpent', traits: {"smithy.api#documentation" => "<p>Specifies if the transaction output is spent or unspent. This is only returned for BITCOIN_VOUT event types.</p>\n         <note>\n            <p>This is only returned for <code>BITCOIN_VOUT</code> event types.</p>\n         </note>"}))
    TransactionEvent.add_member(:spent_vout_transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'spentVoutTransactionId', traits: {"smithy.api#documentation" => "<p>The transactionId that <i>created</i> the spent transaction output.</p>\n         <note>\n            <p>This is only returned for <code>BITCOIN_VIN</code> event types.</p>\n         </note>"}))
    TransactionEvent.add_member(:spent_vout_transaction_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'spentVoutTransactionHash', traits: {"smithy.api#documentation" => "<p>The transactionHash that <i>created</i> the spent transaction output.</p>\n         <note>\n            <p>This is only returned for <code>BITCOIN_VIN</code> event types.</p>\n         </note>"}))
    TransactionEvent.add_member(:spent_vout_index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'spentVoutIndex', traits: {"smithy.api#documentation" => "<p>The position of the spent transaction output in the output list of the <i>creating transaction</i>.</p>\n         <note>\n            <p>This is only returned for <code>BITCOIN_VIN</code> event types.</p>\n         </note>"}))
    TransactionEvent.add_member(:blockchain_instant, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: 'blockchainInstant'))
    TransactionEvent.add_member(:confirmation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationStatus, location_name: 'confirmationStatus', traits: {"smithy.api#documentation" => "<p>This container specifies whether the transaction has reached Finality.</p>"}))
    TransactionEvent.type = Types::TransactionEvent
    TransactionEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionEvent)
    TransactionOutputItem.add_member(:transaction_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTransactionHash, location_name: 'transactionHash', traits: {"smithy.api#documentation" => "<p>The hash of a transaction. It is generated when a transaction is created.</p>", "smithy.api#required" => {}}))
    TransactionOutputItem.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTransactionId, location_name: 'transactionId', traits: {"smithy.api#documentation" => "<p>The identifier of a Bitcoin transaction. It is generated when a transaction is created.</p>"}))
    TransactionOutputItem.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryNetwork, location_name: 'network', traits: {"smithy.api#documentation" => "<p>The blockchain network where the transaction occurred.</p>", "smithy.api#required" => {}}))
    TransactionOutputItem.add_member(:transaction_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'transactionTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the transaction occurred.</p>", "smithy.api#required" => {}}))
    TransactionOutputItem.add_member(:confirmation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationStatus, location_name: 'confirmationStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether to list transactions that have not reached Finality.</p>"}))
    TransactionOutputItem.type = Types::TransactionOutputItem
    TransactionOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionOutputItem)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The container for the exception message.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The container for the reason for the exception</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>The container for the <code>fieldList</code> of the exception.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the field that triggered the <code>ValidationException</code>.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The <code>ValidationException</code> message.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VoutFilter.add_member(:vout_spent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'voutSpent', traits: {"smithy.api#documentation" => "<p>Specifies if the transaction output is spent or unspent.</p>", "smithy.api#required" => {}}))
    VoutFilter.type = Types::VoutFilter

    TietonChainQueryService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.managedblockchainquery#TietonChainQueryService"
      service.name = "TietonChainQueryService"
      service.version = "2023-05-04"
      service.traits = {"aws.api#service" => {"sdkId" => "ManagedBlockchain Query", "arnNamespace" => "managedblockchain-query"}, "aws.auth#sigv4" => {"name" => "managedblockchain-query"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "maxAge" => 86400}, "smithy.api#title" => "Amazon Managed Blockchain Query"}
      service.add_operation(:batch_get_token_balance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#BatchGetTokenBalance"
        operation.name = "BatchGetTokenBalance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTokenBalanceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTokenBalanceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to batch calls for GetTokenBalance API", "smithy.api#http" => {"uri" => "/batch-get-token-balance", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_asset_contract, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#GetAssetContract"
        operation.name = "GetAssetContract"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetContractInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetContractOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to fetch information about a contract on the blockchain", "smithy.api#http" => {"uri" => "/get-asset-contract", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_token_balance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#GetTokenBalance"
        operation.name = "GetTokenBalance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTokenBalanceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTokenBalanceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve balance of a token for an address on the blockchain", "smithy.api#http" => {"uri" => "/get-token-balance", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_transaction, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#GetTransaction"
        operation.name = "GetTransaction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransactionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTransactionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve a transaction on the blockchain", "smithy.api#http" => {"uri" => "/get-transaction", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_asset_contracts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#ListAssetContracts"
        operation.name = "ListAssetContracts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetContractsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetContractsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to fetch multiple contracts on the blockchain", "smithy.api#http" => {"uri" => "/list-asset-contracts", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssetContracts.new
      end)
      service.add_operation(:list_filtered_transaction_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#ListFilteredTransactionEvents"
        operation.name = "ListFilteredTransactionEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFilteredTransactionEventsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFilteredTransactionEventsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve events on the blockchain with additional filters", "smithy.api#http" => {"uri" => "/list-filtered-transaction-events", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFilteredTransactionEvents.new
      end)
      service.add_operation(:list_token_balances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#ListTokenBalances"
        operation.name = "ListTokenBalances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTokenBalancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTokenBalancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve multiple balances on the blockchain", "smithy.api#http" => {"uri" => "/list-token-balances", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTokenBalances.new
      end)
      service.add_operation(:list_transaction_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#ListTransactionEvents"
        operation.name = "ListTransactionEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTransactionEventsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTransactionEventsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve events in a transaction on the blockchain", "smithy.api#http" => {"uri" => "/list-transaction-events", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTransactionEvents.new
      end)
      service.add_operation(:list_transactions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#ListTransactions"
        operation.name = "ListTransactions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTransactionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTransactionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve a multiple transactions on a blockchain", "smithy.api#http" => {"uri" => "/list-transactions", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTransactions.new
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
