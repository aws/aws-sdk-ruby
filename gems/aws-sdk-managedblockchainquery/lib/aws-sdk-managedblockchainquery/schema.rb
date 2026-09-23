# frozen_string_literal: true

# This is generated code!

module Aws::ManagedBlockchainQuery
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddressIdentifierFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#AddressIdentifierFilter", name: "AddressIdentifierFilter")
    AssetContract = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#AssetContract", name: "AssetContract")
    AssetContractList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.managedblockchainquery#AssetContractList", name: "AssetContractList", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    BatchGetTokenBalanceErrorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#BatchGetTokenBalanceErrorItem", name: "BatchGetTokenBalanceErrorItem")
    BatchGetTokenBalanceErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.managedblockchainquery#BatchGetTokenBalanceErrors", name: "BatchGetTokenBalanceErrors", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BatchGetTokenBalanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#BatchGetTokenBalanceInput", name: "BatchGetTokenBalanceInput")
    BatchGetTokenBalanceInputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#BatchGetTokenBalanceInputItem", name: "BatchGetTokenBalanceInputItem")
    BatchGetTokenBalanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#BatchGetTokenBalanceOutput", name: "BatchGetTokenBalanceOutput")
    BatchGetTokenBalanceOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#BatchGetTokenBalanceOutputItem", name: "BatchGetTokenBalanceOutputItem")
    BatchGetTokenBalanceOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.managedblockchainquery#BatchGetTokenBalanceOutputList", name: "BatchGetTokenBalanceOutputList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BlockHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#BlockHash", name: "BlockHash", traits: {"smithy.api#pattern" => "^(0x[A-Fa-f0-9]{64}|[A-Fa-f0-9]{64})$"})
    BlockchainInstant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#BlockchainInstant", name: "BlockchainInstant")
    ChainAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#ChainAddress", name: "ChainAddress", traits: {"smithy.api#pattern" => "^[-A-Za-z0-9]{13,74}$"})
    ChainAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.managedblockchainquery#ChainAddresses", name: "ChainAddresses")
    ConfirmationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#ConfirmationStatus", name: "ConfirmationStatus", traits: {"smithy.api#enum" => [{"value" => "FINAL", "name" => "FINAL"}, {"value" => "NONFINAL", "name" => "NONFINAL"}]})
    ConfirmationStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ConfirmationStatusFilter", name: "ConfirmationStatusFilter")
    ConfirmationStatusIncludeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.managedblockchainquery#ConfirmationStatusIncludeList", name: "ConfirmationStatusIncludeList", traits: {"smithy.api#length" => {"min" => 1}})
    ContractFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ContractFilter", name: "ContractFilter")
    ContractIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ContractIdentifier", name: "ContractIdentifier")
    ContractMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ContractMetadata", name: "ContractMetadata")
    ErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#ErrorType", name: "ErrorType", traits: {"smithy.api#enum" => [{"value" => "VALIDATION_EXCEPTION", "name" => "VALIDATION_EXCEPTION", "documentation" => "An API request validation exception"}, {"value" => "RESOURCE_NOT_FOUND_EXCEPTION", "name" => "RESOURCE_NOT_FOUND_EXCEPTION", "documentation" => "An API request retrieving an item that can't be found"}]})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#ExceptionMessage", name: "ExceptionMessage", traits: {"smithy.api#length" => {"min" => 1}})
    ExecutionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#ExecutionStatus", name: "ExecutionStatus", traits: {"smithy.api#enum" => [{"value" => "FAILED", "name" => "FAILED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}]})
    GetAssetContractInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#GetAssetContractInput", name: "GetAssetContractInput")
    GetAssetContractOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#GetAssetContractOutput", name: "GetAssetContractOutput")
    GetTokenBalanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#GetTokenBalanceInput", name: "GetTokenBalanceInput")
    GetTokenBalanceInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.managedblockchainquery#GetTokenBalanceInputList", name: "GetTokenBalanceInputList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    GetTokenBalanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#GetTokenBalanceOutput", name: "GetTokenBalanceOutput")
    GetTransactionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#GetTransactionInput", name: "GetTransactionInput")
    GetTransactionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#GetTransactionOutput", name: "GetTransactionOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListAssetContractsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListAssetContractsInput", name: "ListAssetContractsInput")
    ListAssetContractsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListAssetContractsOutput", name: "ListAssetContractsOutput")
    ListFilteredTransactionEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListFilteredTransactionEventsInput", name: "ListFilteredTransactionEventsInput")
    ListFilteredTransactionEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListFilteredTransactionEventsOutput", name: "ListFilteredTransactionEventsOutput")
    ListFilteredTransactionEventsSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListFilteredTransactionEventsSort", name: "ListFilteredTransactionEventsSort")
    ListFilteredTransactionEventsSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#ListFilteredTransactionEventsSortBy", name: "ListFilteredTransactionEventsSortBy", traits: {"smithy.api#enum" => [{"value" => "blockchainInstant", "name" => "blockchainInstant", "documentation" => "Timestamp of a transaction"}]})
    ListTokenBalancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListTokenBalancesInput", name: "ListTokenBalancesInput")
    ListTokenBalancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListTokenBalancesOutput", name: "ListTokenBalancesOutput")
    ListTransactionEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListTransactionEventsInput", name: "ListTransactionEventsInput")
    ListTransactionEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListTransactionEventsOutput", name: "ListTransactionEventsOutput")
    ListTransactionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListTransactionsInput", name: "ListTransactionsInput")
    ListTransactionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListTransactionsOutput", name: "ListTransactionsOutput")
    ListTransactionsSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ListTransactionsSort", name: "ListTransactionsSort")
    ListTransactionsSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#ListTransactionsSortBy", name: "ListTransactionsSortBy", traits: {"smithy.api#enum" => [{"value" => "TRANSACTION_TIMESTAMP", "name" => "TRANSACTION_TIMESTAMP", "documentation" => "Timestamp of a transaction"}]})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 131070}})
    OwnerFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#OwnerFilter", name: "OwnerFilter")
    OwnerIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#OwnerIdentifier", name: "OwnerIdentifier")
    QueryNetwork = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#QueryNetwork", name: "QueryNetwork", traits: {"smithy.api#enum" => [{"value" => "ETHEREUM_MAINNET", "name" => "ETHEREUM_MAINNET", "documentation" => "Ethereum main network"}, {"value" => "ETHEREUM_SEPOLIA_TESTNET", "name" => "ETHEREUM_SEPOLIA_TESTNET", "documentation" => "SEPOLIA network (ethereum testnet)"}, {"value" => "BITCOIN_MAINNET", "name" => "BITCOIN_MAINNET", "documentation" => "Bitcoin main network"}, {"value" => "BITCOIN_TESTNET", "name" => "BITCOIN_TESTNET", "documentation" => "Bitcoin test network"}]})
    QueryTokenId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#QueryTokenId", name: "QueryTokenId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{1,66}$"})
    QueryTokenStandard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#QueryTokenStandard", name: "QueryTokenStandard", traits: {"smithy.api#enum" => [{"value" => "ERC20", "name" => "ERC20"}, {"value" => "ERC721", "name" => "ERC721"}, {"value" => "ERC1155", "name" => "ERC1155"}]})
    QueryTransactionEventType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#QueryTransactionEventType", name: "QueryTransactionEventType", traits: {"smithy.api#enum" => [{"value" => "ERC20_TRANSFER", "name" => "ERC20_TRANSFER", "documentation" => "An ERC20 transfer type"}, {"value" => "ERC20_MINT", "name" => "ERC20_MINT", "documentation" => "An ERC20_MINT transfer type"}, {"value" => "ERC20_BURN", "name" => "ERC20_BURN", "documentation" => "An ERC20_BURN transfer type"}, {"value" => "ERC20_DEPOSIT", "name" => "ERC20_DEPOSIT", "documentation" => "An ERC20_DEPOSIT transfer type"}, {"value" => "ERC20_WITHDRAWAL", "name" => "ERC20_WITHDRAWAL", "documentation" => "An ERC20_WITHDRAWAL transfer type"}, {"value" => "ERC721_TRANSFER", "name" => "ERC721_TRANSFER", "documentation" => "An ERC721 transfer type"}, {"value" => "ERC1155_TRANSFER", "name" => "ERC1155_TRANSFER", "documentation" => "An ERC1155 transfer type"}, {"value" => "BITCOIN_VIN", "name" => "BITCOIN_VIN", "documentation" => "A Bitcoin Vin transfer type"}, {"value" => "BITCOIN_VOUT", "name" => "BITCOIN_VOUT", "documentation" => "A Bitcoin Vout transfer type"}, {"value" => "INTERNAL_ETH_TRANSFER", "name" => "INTERNAL_ETH_TRANSFER", "documentation" => "An internal ETH transfer type"}, {"value" => "ETH_TRANSFER", "name" => "ETH_TRANSFER", "documentation" => "An ETH transfer type"}]})
    QueryTransactionHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#QueryTransactionHash", name: "QueryTransactionHash", traits: {"smithy.api#pattern" => "^(0x[A-Fa-f0-9]{64}|[A-Fa-f0-9]{64})$"})
    QueryTransactionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#QueryTransactionId", name: "QueryTransactionId", traits: {"smithy.api#pattern" => "^(0x[A-Fa-f0-9]{64}|[A-Fa-f0-9]{64})$"})
    QuotaCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#QuotaCode", name: "QuotaCode")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#ResourceId", name: "ResourceId")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#ResourceType", name: "ResourceType", traits: {"smithy.api#enum" => [{"value" => "collection", "name" => "COLLECTION"}]})
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#ServiceCode", name: "ServiceCode")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SortOrder = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#SortOrder", name: "SortOrder", traits: {"smithy.api#enum" => [{"value" => "ASCENDING", "name" => "ASCENDING", "documentation" => "Result sorted in ascending order"}, {"value" => "DESCENDING", "name" => "DESCENDING", "documentation" => "Result sorted in descending order"}]})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TimeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#TimeFilter", name: "TimeFilter")
    TokenBalance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#TokenBalance", name: "TokenBalance")
    TokenBalanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.managedblockchainquery#TokenBalanceList", name: "TokenBalanceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    TokenFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#TokenFilter", name: "TokenFilter")
    TokenIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#TokenIdentifier", name: "TokenIdentifier")
    Transaction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#Transaction", name: "Transaction")
    TransactionEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#TransactionEvent", name: "TransactionEvent")
    TransactionEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.managedblockchainquery#TransactionEventList", name: "TransactionEventList", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    TransactionOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#TransactionOutputItem", name: "TransactionOutputItem")
    TransactionOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.managedblockchainquery#TransactionOutputList", name: "TransactionOutputList", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.managedblockchainquery#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.managedblockchainquery#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VoutFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.managedblockchainquery#VoutFilter", name: "VoutFilter")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AddressIdentifierFilter.add_member(:transaction_event_to_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddresses, name: "transactionEventToAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    AddressIdentifierFilter.type = Types::AddressIdentifierFilter
    AssetContract.add_member(:contract_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ContractIdentifier, name: "contractIdentifier", traits: {"smithy.api#required" => {}}))
    AssetContract.add_member(:token_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTokenStandard, name: "tokenStandard", traits: {"smithy.api#required" => {}}))
    AssetContract.add_member(:deployer_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "deployerAddress", traits: {"smithy.api#required" => {}}))
    AssetContract.type = Types::AssetContract
    AssetContractList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetContract, name: "member"))
    BatchGetTokenBalanceErrorItem.add_member(:token_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenIdentifier, name: "tokenIdentifier"))
    BatchGetTokenBalanceErrorItem.add_member(:owner_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerIdentifier, name: "ownerIdentifier"))
    BatchGetTokenBalanceErrorItem.add_member(:at_blockchain_instant, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "atBlockchainInstant"))
    BatchGetTokenBalanceErrorItem.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceErrorItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceErrorItem.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorType, name: "errorType", traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceErrorItem.type = Types::BatchGetTokenBalanceErrorItem
    BatchGetTokenBalanceErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetTokenBalanceErrorItem, name: "member"))
    BatchGetTokenBalanceInput.add_member(:get_token_balance_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: GetTokenBalanceInputList, name: "getTokenBalanceInputs"))
    BatchGetTokenBalanceInput.type = Types::BatchGetTokenBalanceInput
    BatchGetTokenBalanceInputItem.add_member(:token_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenIdentifier, name: "tokenIdentifier", traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceInputItem.add_member(:owner_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerIdentifier, name: "ownerIdentifier", traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceInputItem.add_member(:at_blockchain_instant, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "atBlockchainInstant"))
    BatchGetTokenBalanceInputItem.type = Types::BatchGetTokenBalanceInputItem
    BatchGetTokenBalanceOutput.add_member(:token_balances, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetTokenBalanceOutputList, name: "tokenBalances", traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetTokenBalanceErrors, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceOutput.type = Types::BatchGetTokenBalanceOutput
    BatchGetTokenBalanceOutputItem.add_member(:owner_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerIdentifier, name: "ownerIdentifier"))
    BatchGetTokenBalanceOutputItem.add_member(:token_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenIdentifier, name: "tokenIdentifier"))
    BatchGetTokenBalanceOutputItem.add_member(:balance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "balance", traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceOutputItem.add_member(:at_blockchain_instant, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "atBlockchainInstant", traits: {"smithy.api#required" => {}}))
    BatchGetTokenBalanceOutputItem.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "lastUpdatedTime"))
    BatchGetTokenBalanceOutputItem.type = Types::BatchGetTokenBalanceOutputItem
    BatchGetTokenBalanceOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetTokenBalanceOutputItem, name: "member"))
    BlockchainInstant.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "time"))
    BlockchainInstant.type = Types::BlockchainInstant
    ChainAddresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "member"))
    ConfirmationStatusFilter.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationStatusIncludeList, name: "include", traits: {"smithy.api#required" => {}}))
    ConfirmationStatusFilter.type = Types::ConfirmationStatusFilter
    ConfirmationStatusIncludeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationStatus, name: "member"))
    ContractFilter.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    ContractFilter.add_member(:token_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTokenStandard, name: "tokenStandard", traits: {"smithy.api#required" => {}}))
    ContractFilter.add_member(:deployer_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "deployerAddress", traits: {"smithy.api#required" => {}}))
    ContractFilter.type = Types::ContractFilter
    ContractIdentifier.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    ContractIdentifier.add_member(:contract_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "contractAddress", traits: {"smithy.api#required" => {}}))
    ContractIdentifier.type = Types::ContractIdentifier
    ContractMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    ContractMetadata.add_member(:symbol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "symbol"))
    ContractMetadata.add_member(:decimals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "decimals"))
    ContractMetadata.type = Types::ContractMetadata
    GetAssetContractInput.add_member(:contract_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ContractIdentifier, name: "contractIdentifier", traits: {"smithy.api#required" => {}}))
    GetAssetContractInput.type = Types::GetAssetContractInput
    GetAssetContractOutput.add_member(:contract_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ContractIdentifier, name: "contractIdentifier", traits: {"smithy.api#required" => {}}))
    GetAssetContractOutput.add_member(:token_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTokenStandard, name: "tokenStandard", traits: {"smithy.api#required" => {}}))
    GetAssetContractOutput.add_member(:deployer_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "deployerAddress", traits: {"smithy.api#required" => {}}))
    GetAssetContractOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContractMetadata, name: "metadata"))
    GetAssetContractOutput.type = Types::GetAssetContractOutput
    GetTokenBalanceInput.add_member(:token_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenIdentifier, name: "tokenIdentifier", traits: {"smithy.api#required" => {}}))
    GetTokenBalanceInput.add_member(:owner_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerIdentifier, name: "ownerIdentifier", traits: {"smithy.api#required" => {}}))
    GetTokenBalanceInput.add_member(:at_blockchain_instant, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "atBlockchainInstant"))
    GetTokenBalanceInput.type = Types::GetTokenBalanceInput
    GetTokenBalanceInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetTokenBalanceInputItem, name: "member"))
    GetTokenBalanceOutput.add_member(:owner_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerIdentifier, name: "ownerIdentifier"))
    GetTokenBalanceOutput.add_member(:token_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenIdentifier, name: "tokenIdentifier"))
    GetTokenBalanceOutput.add_member(:balance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "balance", traits: {"smithy.api#required" => {}}))
    GetTokenBalanceOutput.add_member(:at_blockchain_instant, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "atBlockchainInstant", traits: {"smithy.api#required" => {}}))
    GetTokenBalanceOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "lastUpdatedTime"))
    GetTokenBalanceOutput.type = Types::GetTokenBalanceOutput
    GetTransactionInput.add_member(:transaction_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransactionHash, name: "transactionHash"))
    GetTransactionInput.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransactionId, name: "transactionId"))
    GetTransactionInput.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    GetTransactionInput.type = Types::GetTransactionInput
    GetTransactionOutput.add_member(:transaction, ::Smithy::Schema::Shapes::MemberShape.new(target: Transaction, name: "transaction", traits: {"smithy.api#required" => {}}))
    GetTransactionOutput.type = Types::GetTransactionOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListAssetContractsInput.add_member(:contract_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ContractFilter, name: "contractFilter", traits: {"smithy.api#required" => {}}))
    ListAssetContractsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetContractsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}}))
    ListAssetContractsInput.type = Types::ListAssetContractsInput
    ListAssetContractsOutput.add_member(:contracts, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetContractList, name: "contracts", traits: {"smithy.api#required" => {}}))
    ListAssetContractsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetContractsOutput.type = Types::ListAssetContractsOutput
    ListFilteredTransactionEventsInput.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "network", traits: {"smithy.api#required" => {}}))
    ListFilteredTransactionEventsInput.add_member(:address_identifier_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressIdentifierFilter, name: "addressIdentifierFilter", traits: {"smithy.api#required" => {}}))
    ListFilteredTransactionEventsInput.add_member(:time_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeFilter, name: "timeFilter"))
    ListFilteredTransactionEventsInput.add_member(:vout_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: VoutFilter, name: "voutFilter"))
    ListFilteredTransactionEventsInput.add_member(:confirmation_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationStatusFilter, name: "confirmationStatusFilter"))
    ListFilteredTransactionEventsInput.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: ListFilteredTransactionEventsSort, name: "sort"))
    ListFilteredTransactionEventsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFilteredTransactionEventsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}}))
    ListFilteredTransactionEventsInput.type = Types::ListFilteredTransactionEventsInput
    ListFilteredTransactionEventsOutput.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionEventList, name: "events", traits: {"smithy.api#required" => {}}))
    ListFilteredTransactionEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFilteredTransactionEventsOutput.type = Types::ListFilteredTransactionEventsOutput
    ListFilteredTransactionEventsSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ListFilteredTransactionEventsSortBy, name: "sortBy"))
    ListFilteredTransactionEventsSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    ListFilteredTransactionEventsSort.type = Types::ListFilteredTransactionEventsSort
    ListTokenBalancesInput.add_member(:owner_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerFilter, name: "ownerFilter"))
    ListTokenBalancesInput.add_member(:token_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenFilter, name: "tokenFilter", traits: {"smithy.api#required" => {}}))
    ListTokenBalancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTokenBalancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}}))
    ListTokenBalancesInput.type = Types::ListTokenBalancesInput
    ListTokenBalancesOutput.add_member(:token_balances, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenBalanceList, name: "tokenBalances", traits: {"smithy.api#required" => {}}))
    ListTokenBalancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTokenBalancesOutput.type = Types::ListTokenBalancesOutput
    ListTransactionEventsInput.add_member(:transaction_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransactionHash, name: "transactionHash"))
    ListTransactionEventsInput.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransactionId, name: "transactionId"))
    ListTransactionEventsInput.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    ListTransactionEventsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTransactionEventsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}}))
    ListTransactionEventsInput.type = Types::ListTransactionEventsInput
    ListTransactionEventsOutput.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionEventList, name: "events", traits: {"smithy.api#required" => {}}))
    ListTransactionEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTransactionEventsOutput.type = Types::ListTransactionEventsOutput
    ListTransactionsInput.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "address", traits: {"smithy.api#required" => {}}))
    ListTransactionsInput.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    ListTransactionsInput.add_member(:from_blockchain_instant, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "fromBlockchainInstant"))
    ListTransactionsInput.add_member(:to_blockchain_instant, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "toBlockchainInstant"))
    ListTransactionsInput.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTransactionsSort, name: "sort"))
    ListTransactionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTransactionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}}))
    ListTransactionsInput.add_member(:confirmation_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationStatusFilter, name: "confirmationStatusFilter"))
    ListTransactionsInput.type = Types::ListTransactionsInput
    ListTransactionsOutput.add_member(:transactions, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionOutputList, name: "transactions", traits: {"smithy.api#required" => {}}))
    ListTransactionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTransactionsOutput.type = Types::ListTransactionsOutput
    ListTransactionsSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTransactionsSortBy, name: "sortBy"))
    ListTransactionsSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    ListTransactionsSort.type = Types::ListTransactionsSort
    OwnerFilter.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "address", traits: {"smithy.api#required" => {}}))
    OwnerFilter.type = Types::OwnerFilter
    OwnerIdentifier.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "address", traits: {"smithy.api#required" => {}}))
    OwnerIdentifier.type = Types::OwnerIdentifier
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaCode, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaCode, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeFilter.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "from"))
    TimeFilter.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "to"))
    TimeFilter.type = Types::TimeFilter
    TokenBalance.add_member(:owner_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerIdentifier, name: "ownerIdentifier"))
    TokenBalance.add_member(:token_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenIdentifier, name: "tokenIdentifier"))
    TokenBalance.add_member(:balance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "balance", traits: {"smithy.api#required" => {}}))
    TokenBalance.add_member(:at_blockchain_instant, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "atBlockchainInstant", traits: {"smithy.api#required" => {}}))
    TokenBalance.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "lastUpdatedTime"))
    TokenBalance.type = Types::TokenBalance
    TokenBalanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenBalance, name: "member"))
    TokenFilter.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    TokenFilter.add_member(:contract_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "contractAddress"))
    TokenFilter.add_member(:token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTokenId, name: "tokenId"))
    TokenFilter.type = Types::TokenFilter
    TokenIdentifier.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    TokenIdentifier.add_member(:contract_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "contractAddress"))
    TokenIdentifier.add_member(:token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTokenId, name: "tokenId"))
    TokenIdentifier.type = Types::TokenIdentifier
    Transaction.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    Transaction.add_member(:block_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockHash, name: "blockHash"))
    Transaction.add_member(:transaction_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransactionHash, name: "transactionHash", traits: {"smithy.api#required" => {}}))
    Transaction.add_member(:block_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "blockNumber"))
    Transaction.add_member(:transaction_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "transactionTimestamp", traits: {"smithy.api#required" => {}}))
    Transaction.add_member(:transaction_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "transactionIndex", traits: {"smithy.api#required" => {}}))
    Transaction.add_member(:number_of_transactions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "numberOfTransactions", traits: {"smithy.api#required" => {}}))
    Transaction.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "to", traits: {"smithy.api#required" => {}}))
    Transaction.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "from"))
    Transaction.add_member(:contract_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "contractAddress"))
    Transaction.add_member(:gas_used, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "gasUsed"))
    Transaction.add_member(:cumulative_gas_used, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cumulativeGasUsed"))
    Transaction.add_member(:effective_gas_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "effectiveGasPrice"))
    Transaction.add_member(:signature_v, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "signatureV"))
    Transaction.add_member(:signature_r, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "signatureR"))
    Transaction.add_member(:signature_s, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "signatureS"))
    Transaction.add_member(:transaction_fee, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "transactionFee"))
    Transaction.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "transactionId"))
    Transaction.add_member(:confirmation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationStatus, name: "confirmationStatus"))
    Transaction.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "executionStatus"))
    Transaction.type = Types::Transaction
    TransactionEvent.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    TransactionEvent.add_member(:transaction_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransactionHash, name: "transactionHash", traits: {"smithy.api#required" => {}}))
    TransactionEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransactionEventType, name: "eventType", traits: {"smithy.api#required" => {}}))
    TransactionEvent.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "from"))
    TransactionEvent.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "to"))
    TransactionEvent.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    TransactionEvent.add_member(:contract_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainAddress, name: "contractAddress"))
    TransactionEvent.add_member(:token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTokenId, name: "tokenId"))
    TransactionEvent.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "transactionId"))
    TransactionEvent.add_member(:vout_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "voutIndex"))
    TransactionEvent.add_member(:vout_spent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "voutSpent"))
    TransactionEvent.add_member(:spent_vout_transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "spentVoutTransactionId"))
    TransactionEvent.add_member(:spent_vout_transaction_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "spentVoutTransactionHash"))
    TransactionEvent.add_member(:spent_vout_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "spentVoutIndex"))
    TransactionEvent.add_member(:blockchain_instant, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainInstant, name: "blockchainInstant"))
    TransactionEvent.add_member(:confirmation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationStatus, name: "confirmationStatus"))
    TransactionEvent.type = Types::TransactionEvent
    TransactionEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionEvent, name: "member"))
    TransactionOutputItem.add_member(:transaction_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransactionHash, name: "transactionHash", traits: {"smithy.api#required" => {}}))
    TransactionOutputItem.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTransactionId, name: "transactionId"))
    TransactionOutputItem.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    TransactionOutputItem.add_member(:transaction_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "transactionTimestamp", traits: {"smithy.api#required" => {}}))
    TransactionOutputItem.add_member(:confirmation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationStatus, name: "confirmationStatus"))
    TransactionOutputItem.type = Types::TransactionOutputItem
    TransactionOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionOutputItem, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    VoutFilter.add_member(:vout_spent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "voutSpent", traits: {"smithy.api#required" => {}}))
    VoutFilter.type = Types::VoutFilter

    TietonChainQueryService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.managedblockchainquery#TietonChainQueryService"
      service.name = "TietonChainQueryService"
      service.version = "2023-05-04"
      service.traits = {"aws.api#service" => {"sdkId" => "ManagedBlockchain Query", "arnNamespace" => "managedblockchain-query"}, "aws.auth#sigv4" => {"name" => "managedblockchain-query"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "maxAge" => 86400}, "smithy.api#title" => "Amazon Managed Blockchain Query"}
      service.add_operation(:batch_get_token_balance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#BatchGetTokenBalance"
        operation.name = "BatchGetTokenBalance"
        operation.input = BatchGetTokenBalanceInput
        operation.output = BatchGetTokenBalanceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to batch calls for GetTokenBalance API", "smithy.api#http" => {"uri" => "/batch-get-token-balance", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_asset_contract, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#GetAssetContract"
        operation.name = "GetAssetContract"
        operation.input = GetAssetContractInput
        operation.output = GetAssetContractOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to fetch information about a contract on the blockchain", "smithy.api#http" => {"uri" => "/get-asset-contract", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_token_balance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#GetTokenBalance"
        operation.name = "GetTokenBalance"
        operation.input = GetTokenBalanceInput
        operation.output = GetTokenBalanceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve balance of a token for an address on the blockchain", "smithy.api#http" => {"uri" => "/get-token-balance", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#GetTransaction"
        operation.name = "GetTransaction"
        operation.input = GetTransactionInput
        operation.output = GetTransactionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve a transaction on the blockchain", "smithy.api#http" => {"uri" => "/get-transaction", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_asset_contracts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#ListAssetContracts"
        operation.name = "ListAssetContracts"
        operation.input = ListAssetContractsInput
        operation.output = ListAssetContractsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to fetch multiple contracts on the blockchain", "smithy.api#http" => {"uri" => "/list-asset-contracts", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssetContracts.new
      end)
      service.add_operation(:list_filtered_transaction_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#ListFilteredTransactionEvents"
        operation.name = "ListFilteredTransactionEvents"
        operation.input = ListFilteredTransactionEventsInput
        operation.output = ListFilteredTransactionEventsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve events on the blockchain with additional filters", "smithy.api#http" => {"uri" => "/list-filtered-transaction-events", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFilteredTransactionEvents.new
      end)
      service.add_operation(:list_token_balances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#ListTokenBalances"
        operation.name = "ListTokenBalances"
        operation.input = ListTokenBalancesInput
        operation.output = ListTokenBalancesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve multiple balances on the blockchain", "smithy.api#http" => {"uri" => "/list-token-balances", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTokenBalances.new
      end)
      service.add_operation(:list_transaction_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#ListTransactionEvents"
        operation.name = "ListTransactionEvents"
        operation.input = ListTransactionEventsInput
        operation.output = ListTransactionEventsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve events in a transaction on the blockchain", "smithy.api#http" => {"uri" => "/list-transaction-events", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTransactionEvents.new
      end)
      service.add_operation(:list_transactions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchainquery#ListTransactions"
        operation.name = "ListTransactions"
        operation.input = ListTransactionsInput
        operation.output = ListTransactionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve a multiple transactions on a blockchain", "smithy.api#http" => {"uri" => "/list-transactions", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTransactions.new
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
