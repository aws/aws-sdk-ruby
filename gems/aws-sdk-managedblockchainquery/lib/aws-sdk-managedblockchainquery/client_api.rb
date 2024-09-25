# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ManagedBlockchainQuery
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddressIdentifierFilter = Shapes::StructureShape.new(name: 'AddressIdentifierFilter')
    AddressIdentifierFilterTransactionEventToAddressList = Shapes::ListShape.new(name: 'AddressIdentifierFilterTransactionEventToAddressList')
    AssetContract = Shapes::StructureShape.new(name: 'AssetContract')
    AssetContractList = Shapes::ListShape.new(name: 'AssetContractList')
    BatchGetTokenBalanceErrorItem = Shapes::StructureShape.new(name: 'BatchGetTokenBalanceErrorItem')
    BatchGetTokenBalanceErrors = Shapes::ListShape.new(name: 'BatchGetTokenBalanceErrors')
    BatchGetTokenBalanceInput = Shapes::StructureShape.new(name: 'BatchGetTokenBalanceInput')
    BatchGetTokenBalanceInputItem = Shapes::StructureShape.new(name: 'BatchGetTokenBalanceInputItem')
    BatchGetTokenBalanceOutput = Shapes::StructureShape.new(name: 'BatchGetTokenBalanceOutput')
    BatchGetTokenBalanceOutputItem = Shapes::StructureShape.new(name: 'BatchGetTokenBalanceOutputItem')
    BatchGetTokenBalanceOutputList = Shapes::ListShape.new(name: 'BatchGetTokenBalanceOutputList')
    BlockHash = Shapes::StringShape.new(name: 'BlockHash')
    BlockchainInstant = Shapes::StructureShape.new(name: 'BlockchainInstant')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChainAddress = Shapes::StringShape.new(name: 'ChainAddress')
    ConfirmationStatus = Shapes::StringShape.new(name: 'ConfirmationStatus')
    ConfirmationStatusFilter = Shapes::StructureShape.new(name: 'ConfirmationStatusFilter')
    ConfirmationStatusIncludeList = Shapes::ListShape.new(name: 'ConfirmationStatusIncludeList')
    ContractFilter = Shapes::StructureShape.new(name: 'ContractFilter')
    ContractIdentifier = Shapes::StructureShape.new(name: 'ContractIdentifier')
    ContractMetadata = Shapes::StructureShape.new(name: 'ContractMetadata')
    ErrorType = Shapes::StringShape.new(name: 'ErrorType')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    GetAssetContractInput = Shapes::StructureShape.new(name: 'GetAssetContractInput')
    GetAssetContractOutput = Shapes::StructureShape.new(name: 'GetAssetContractOutput')
    GetTokenBalanceInput = Shapes::StructureShape.new(name: 'GetTokenBalanceInput')
    GetTokenBalanceInputList = Shapes::ListShape.new(name: 'GetTokenBalanceInputList')
    GetTokenBalanceOutput = Shapes::StructureShape.new(name: 'GetTokenBalanceOutput')
    GetTransactionInput = Shapes::StructureShape.new(name: 'GetTransactionInput')
    GetTransactionOutput = Shapes::StructureShape.new(name: 'GetTransactionOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAssetContractsInput = Shapes::StructureShape.new(name: 'ListAssetContractsInput')
    ListAssetContractsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAssetContractsInputMaxResultsInteger')
    ListAssetContractsOutput = Shapes::StructureShape.new(name: 'ListAssetContractsOutput')
    ListFilteredTransactionEventsInput = Shapes::StructureShape.new(name: 'ListFilteredTransactionEventsInput')
    ListFilteredTransactionEventsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListFilteredTransactionEventsInputMaxResultsInteger')
    ListFilteredTransactionEventsOutput = Shapes::StructureShape.new(name: 'ListFilteredTransactionEventsOutput')
    ListFilteredTransactionEventsSort = Shapes::StructureShape.new(name: 'ListFilteredTransactionEventsSort')
    ListFilteredTransactionEventsSortBy = Shapes::StringShape.new(name: 'ListFilteredTransactionEventsSortBy')
    ListTokenBalancesInput = Shapes::StructureShape.new(name: 'ListTokenBalancesInput')
    ListTokenBalancesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListTokenBalancesInputMaxResultsInteger')
    ListTokenBalancesOutput = Shapes::StructureShape.new(name: 'ListTokenBalancesOutput')
    ListTransactionEventsInput = Shapes::StructureShape.new(name: 'ListTransactionEventsInput')
    ListTransactionEventsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListTransactionEventsInputMaxResultsInteger')
    ListTransactionEventsOutput = Shapes::StructureShape.new(name: 'ListTransactionEventsOutput')
    ListTransactionsInput = Shapes::StructureShape.new(name: 'ListTransactionsInput')
    ListTransactionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListTransactionsInputMaxResultsInteger')
    ListTransactionsOutput = Shapes::StructureShape.new(name: 'ListTransactionsOutput')
    ListTransactionsSort = Shapes::StructureShape.new(name: 'ListTransactionsSort')
    ListTransactionsSortBy = Shapes::StringShape.new(name: 'ListTransactionsSortBy')
    Long = Shapes::IntegerShape.new(name: 'Long')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OwnerFilter = Shapes::StructureShape.new(name: 'OwnerFilter')
    OwnerIdentifier = Shapes::StructureShape.new(name: 'OwnerIdentifier')
    QueryNetwork = Shapes::StringShape.new(name: 'QueryNetwork')
    QueryTokenId = Shapes::StringShape.new(name: 'QueryTokenId')
    QueryTokenStandard = Shapes::StringShape.new(name: 'QueryTokenStandard')
    QueryTransactionEventType = Shapes::StringShape.new(name: 'QueryTransactionEventType')
    QueryTransactionHash = Shapes::StringShape.new(name: 'QueryTransactionHash')
    QueryTransactionId = Shapes::StringShape.new(name: 'QueryTransactionId')
    QuotaCode = Shapes::StringShape.new(name: 'QuotaCode')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeFilter = Shapes::StructureShape.new(name: 'TimeFilter')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TokenBalance = Shapes::StructureShape.new(name: 'TokenBalance')
    TokenBalanceList = Shapes::ListShape.new(name: 'TokenBalanceList')
    TokenFilter = Shapes::StructureShape.new(name: 'TokenFilter')
    TokenIdentifier = Shapes::StructureShape.new(name: 'TokenIdentifier')
    Transaction = Shapes::StructureShape.new(name: 'Transaction')
    TransactionEvent = Shapes::StructureShape.new(name: 'TransactionEvent')
    TransactionEventList = Shapes::ListShape.new(name: 'TransactionEventList')
    TransactionOutputItem = Shapes::StructureShape.new(name: 'TransactionOutputItem')
    TransactionOutputList = Shapes::ListShape.new(name: 'TransactionOutputList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VoutFilter = Shapes::StructureShape.new(name: 'VoutFilter')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddressIdentifierFilter.add_member(:transaction_event_to_address, Shapes::ShapeRef.new(shape: AddressIdentifierFilterTransactionEventToAddressList, required: true, location_name: "transactionEventToAddress"))
    AddressIdentifierFilter.struct_class = Types::AddressIdentifierFilter

    AddressIdentifierFilterTransactionEventToAddressList.member = Shapes::ShapeRef.new(shape: ChainAddress)

    AssetContract.add_member(:contract_identifier, Shapes::ShapeRef.new(shape: ContractIdentifier, required: true, location_name: "contractIdentifier"))
    AssetContract.add_member(:token_standard, Shapes::ShapeRef.new(shape: QueryTokenStandard, required: true, location_name: "tokenStandard"))
    AssetContract.add_member(:deployer_address, Shapes::ShapeRef.new(shape: ChainAddress, required: true, location_name: "deployerAddress"))
    AssetContract.struct_class = Types::AssetContract

    AssetContractList.member = Shapes::ShapeRef.new(shape: AssetContract)

    BatchGetTokenBalanceErrorItem.add_member(:token_identifier, Shapes::ShapeRef.new(shape: TokenIdentifier, location_name: "tokenIdentifier"))
    BatchGetTokenBalanceErrorItem.add_member(:owner_identifier, Shapes::ShapeRef.new(shape: OwnerIdentifier, location_name: "ownerIdentifier"))
    BatchGetTokenBalanceErrorItem.add_member(:at_blockchain_instant, Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: "atBlockchainInstant"))
    BatchGetTokenBalanceErrorItem.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorCode"))
    BatchGetTokenBalanceErrorItem.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorMessage"))
    BatchGetTokenBalanceErrorItem.add_member(:error_type, Shapes::ShapeRef.new(shape: ErrorType, required: true, location_name: "errorType"))
    BatchGetTokenBalanceErrorItem.struct_class = Types::BatchGetTokenBalanceErrorItem

    BatchGetTokenBalanceErrors.member = Shapes::ShapeRef.new(shape: BatchGetTokenBalanceErrorItem)

    BatchGetTokenBalanceInput.add_member(:get_token_balance_inputs, Shapes::ShapeRef.new(shape: GetTokenBalanceInputList, location_name: "getTokenBalanceInputs"))
    BatchGetTokenBalanceInput.struct_class = Types::BatchGetTokenBalanceInput

    BatchGetTokenBalanceInputItem.add_member(:token_identifier, Shapes::ShapeRef.new(shape: TokenIdentifier, required: true, location_name: "tokenIdentifier"))
    BatchGetTokenBalanceInputItem.add_member(:owner_identifier, Shapes::ShapeRef.new(shape: OwnerIdentifier, required: true, location_name: "ownerIdentifier"))
    BatchGetTokenBalanceInputItem.add_member(:at_blockchain_instant, Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: "atBlockchainInstant"))
    BatchGetTokenBalanceInputItem.struct_class = Types::BatchGetTokenBalanceInputItem

    BatchGetTokenBalanceOutput.add_member(:token_balances, Shapes::ShapeRef.new(shape: BatchGetTokenBalanceOutputList, required: true, location_name: "tokenBalances"))
    BatchGetTokenBalanceOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetTokenBalanceErrors, required: true, location_name: "errors"))
    BatchGetTokenBalanceOutput.struct_class = Types::BatchGetTokenBalanceOutput

    BatchGetTokenBalanceOutputItem.add_member(:owner_identifier, Shapes::ShapeRef.new(shape: OwnerIdentifier, location_name: "ownerIdentifier"))
    BatchGetTokenBalanceOutputItem.add_member(:token_identifier, Shapes::ShapeRef.new(shape: TokenIdentifier, location_name: "tokenIdentifier"))
    BatchGetTokenBalanceOutputItem.add_member(:balance, Shapes::ShapeRef.new(shape: String, required: true, location_name: "balance"))
    BatchGetTokenBalanceOutputItem.add_member(:at_blockchain_instant, Shapes::ShapeRef.new(shape: BlockchainInstant, required: true, location_name: "atBlockchainInstant"))
    BatchGetTokenBalanceOutputItem.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: "lastUpdatedTime"))
    BatchGetTokenBalanceOutputItem.struct_class = Types::BatchGetTokenBalanceOutputItem

    BatchGetTokenBalanceOutputList.member = Shapes::ShapeRef.new(shape: BatchGetTokenBalanceOutputItem)

    BlockchainInstant.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "time"))
    BlockchainInstant.struct_class = Types::BlockchainInstant

    ConfirmationStatusFilter.add_member(:include, Shapes::ShapeRef.new(shape: ConfirmationStatusIncludeList, required: true, location_name: "include"))
    ConfirmationStatusFilter.struct_class = Types::ConfirmationStatusFilter

    ConfirmationStatusIncludeList.member = Shapes::ShapeRef.new(shape: ConfirmationStatus)

    ContractFilter.add_member(:network, Shapes::ShapeRef.new(shape: QueryNetwork, required: true, location_name: "network"))
    ContractFilter.add_member(:token_standard, Shapes::ShapeRef.new(shape: QueryTokenStandard, required: true, location_name: "tokenStandard"))
    ContractFilter.add_member(:deployer_address, Shapes::ShapeRef.new(shape: ChainAddress, required: true, location_name: "deployerAddress"))
    ContractFilter.struct_class = Types::ContractFilter

    ContractIdentifier.add_member(:network, Shapes::ShapeRef.new(shape: QueryNetwork, required: true, location_name: "network"))
    ContractIdentifier.add_member(:contract_address, Shapes::ShapeRef.new(shape: ChainAddress, required: true, location_name: "contractAddress"))
    ContractIdentifier.struct_class = Types::ContractIdentifier

    ContractMetadata.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ContractMetadata.add_member(:symbol, Shapes::ShapeRef.new(shape: String, location_name: "symbol"))
    ContractMetadata.add_member(:decimals, Shapes::ShapeRef.new(shape: Integer, location_name: "decimals"))
    ContractMetadata.struct_class = Types::ContractMetadata

    GetAssetContractInput.add_member(:contract_identifier, Shapes::ShapeRef.new(shape: ContractIdentifier, required: true, location_name: "contractIdentifier"))
    GetAssetContractInput.struct_class = Types::GetAssetContractInput

    GetAssetContractOutput.add_member(:contract_identifier, Shapes::ShapeRef.new(shape: ContractIdentifier, required: true, location_name: "contractIdentifier"))
    GetAssetContractOutput.add_member(:token_standard, Shapes::ShapeRef.new(shape: QueryTokenStandard, required: true, location_name: "tokenStandard"))
    GetAssetContractOutput.add_member(:deployer_address, Shapes::ShapeRef.new(shape: ChainAddress, required: true, location_name: "deployerAddress"))
    GetAssetContractOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: ContractMetadata, location_name: "metadata"))
    GetAssetContractOutput.struct_class = Types::GetAssetContractOutput

    GetTokenBalanceInput.add_member(:token_identifier, Shapes::ShapeRef.new(shape: TokenIdentifier, required: true, location_name: "tokenIdentifier"))
    GetTokenBalanceInput.add_member(:owner_identifier, Shapes::ShapeRef.new(shape: OwnerIdentifier, required: true, location_name: "ownerIdentifier"))
    GetTokenBalanceInput.add_member(:at_blockchain_instant, Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: "atBlockchainInstant"))
    GetTokenBalanceInput.struct_class = Types::GetTokenBalanceInput

    GetTokenBalanceInputList.member = Shapes::ShapeRef.new(shape: BatchGetTokenBalanceInputItem)

    GetTokenBalanceOutput.add_member(:owner_identifier, Shapes::ShapeRef.new(shape: OwnerIdentifier, location_name: "ownerIdentifier"))
    GetTokenBalanceOutput.add_member(:token_identifier, Shapes::ShapeRef.new(shape: TokenIdentifier, location_name: "tokenIdentifier"))
    GetTokenBalanceOutput.add_member(:balance, Shapes::ShapeRef.new(shape: String, required: true, location_name: "balance"))
    GetTokenBalanceOutput.add_member(:at_blockchain_instant, Shapes::ShapeRef.new(shape: BlockchainInstant, required: true, location_name: "atBlockchainInstant"))
    GetTokenBalanceOutput.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: "lastUpdatedTime"))
    GetTokenBalanceOutput.struct_class = Types::GetTokenBalanceOutput

    GetTransactionInput.add_member(:transaction_hash, Shapes::ShapeRef.new(shape: QueryTransactionHash, location_name: "transactionHash"))
    GetTransactionInput.add_member(:transaction_id, Shapes::ShapeRef.new(shape: QueryTransactionId, location_name: "transactionId"))
    GetTransactionInput.add_member(:network, Shapes::ShapeRef.new(shape: QueryNetwork, required: true, location_name: "network"))
    GetTransactionInput.struct_class = Types::GetTransactionInput

    GetTransactionOutput.add_member(:transaction, Shapes::ShapeRef.new(shape: Transaction, required: true, location_name: "transaction"))
    GetTransactionOutput.struct_class = Types::GetTransactionOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAssetContractsInput.add_member(:contract_filter, Shapes::ShapeRef.new(shape: ContractFilter, required: true, location_name: "contractFilter"))
    ListAssetContractsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssetContractsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAssetContractsInputMaxResultsInteger, location_name: "maxResults"))
    ListAssetContractsInput.struct_class = Types::ListAssetContractsInput

    ListAssetContractsOutput.add_member(:contracts, Shapes::ShapeRef.new(shape: AssetContractList, required: true, location_name: "contracts"))
    ListAssetContractsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssetContractsOutput.struct_class = Types::ListAssetContractsOutput

    ListFilteredTransactionEventsInput.add_member(:network, Shapes::ShapeRef.new(shape: String, required: true, location_name: "network"))
    ListFilteredTransactionEventsInput.add_member(:address_identifier_filter, Shapes::ShapeRef.new(shape: AddressIdentifierFilter, required: true, location_name: "addressIdentifierFilter"))
    ListFilteredTransactionEventsInput.add_member(:time_filter, Shapes::ShapeRef.new(shape: TimeFilter, location_name: "timeFilter"))
    ListFilteredTransactionEventsInput.add_member(:vout_filter, Shapes::ShapeRef.new(shape: VoutFilter, location_name: "voutFilter"))
    ListFilteredTransactionEventsInput.add_member(:confirmation_status_filter, Shapes::ShapeRef.new(shape: ConfirmationStatusFilter, location_name: "confirmationStatusFilter"))
    ListFilteredTransactionEventsInput.add_member(:sort, Shapes::ShapeRef.new(shape: ListFilteredTransactionEventsSort, location_name: "sort"))
    ListFilteredTransactionEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFilteredTransactionEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFilteredTransactionEventsInputMaxResultsInteger, location_name: "maxResults"))
    ListFilteredTransactionEventsInput.struct_class = Types::ListFilteredTransactionEventsInput

    ListFilteredTransactionEventsOutput.add_member(:events, Shapes::ShapeRef.new(shape: TransactionEventList, required: true, location_name: "events"))
    ListFilteredTransactionEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFilteredTransactionEventsOutput.struct_class = Types::ListFilteredTransactionEventsOutput

    ListFilteredTransactionEventsSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListFilteredTransactionEventsSortBy, location_name: "sortBy"))
    ListFilteredTransactionEventsSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListFilteredTransactionEventsSort.struct_class = Types::ListFilteredTransactionEventsSort

    ListTokenBalancesInput.add_member(:owner_filter, Shapes::ShapeRef.new(shape: OwnerFilter, location_name: "ownerFilter"))
    ListTokenBalancesInput.add_member(:token_filter, Shapes::ShapeRef.new(shape: TokenFilter, required: true, location_name: "tokenFilter"))
    ListTokenBalancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTokenBalancesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTokenBalancesInputMaxResultsInteger, location_name: "maxResults"))
    ListTokenBalancesInput.struct_class = Types::ListTokenBalancesInput

    ListTokenBalancesOutput.add_member(:token_balances, Shapes::ShapeRef.new(shape: TokenBalanceList, required: true, location_name: "tokenBalances"))
    ListTokenBalancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTokenBalancesOutput.struct_class = Types::ListTokenBalancesOutput

    ListTransactionEventsInput.add_member(:transaction_hash, Shapes::ShapeRef.new(shape: QueryTransactionHash, location_name: "transactionHash"))
    ListTransactionEventsInput.add_member(:transaction_id, Shapes::ShapeRef.new(shape: QueryTransactionId, location_name: "transactionId"))
    ListTransactionEventsInput.add_member(:network, Shapes::ShapeRef.new(shape: QueryNetwork, required: true, location_name: "network"))
    ListTransactionEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTransactionEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTransactionEventsInputMaxResultsInteger, location_name: "maxResults"))
    ListTransactionEventsInput.struct_class = Types::ListTransactionEventsInput

    ListTransactionEventsOutput.add_member(:events, Shapes::ShapeRef.new(shape: TransactionEventList, required: true, location_name: "events"))
    ListTransactionEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTransactionEventsOutput.struct_class = Types::ListTransactionEventsOutput

    ListTransactionsInput.add_member(:address, Shapes::ShapeRef.new(shape: ChainAddress, required: true, location_name: "address"))
    ListTransactionsInput.add_member(:network, Shapes::ShapeRef.new(shape: QueryNetwork, required: true, location_name: "network"))
    ListTransactionsInput.add_member(:from_blockchain_instant, Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: "fromBlockchainInstant"))
    ListTransactionsInput.add_member(:to_blockchain_instant, Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: "toBlockchainInstant"))
    ListTransactionsInput.add_member(:sort, Shapes::ShapeRef.new(shape: ListTransactionsSort, location_name: "sort"))
    ListTransactionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTransactionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTransactionsInputMaxResultsInteger, location_name: "maxResults"))
    ListTransactionsInput.add_member(:confirmation_status_filter, Shapes::ShapeRef.new(shape: ConfirmationStatusFilter, location_name: "confirmationStatusFilter"))
    ListTransactionsInput.struct_class = Types::ListTransactionsInput

    ListTransactionsOutput.add_member(:transactions, Shapes::ShapeRef.new(shape: TransactionOutputList, required: true, location_name: "transactions"))
    ListTransactionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTransactionsOutput.struct_class = Types::ListTransactionsOutput

    ListTransactionsSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListTransactionsSortBy, location_name: "sortBy"))
    ListTransactionsSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListTransactionsSort.struct_class = Types::ListTransactionsSort

    OwnerFilter.add_member(:address, Shapes::ShapeRef.new(shape: ChainAddress, required: true, location_name: "address"))
    OwnerFilter.struct_class = Types::OwnerFilter

    OwnerIdentifier.add_member(:address, Shapes::ShapeRef.new(shape: ChainAddress, required: true, location_name: "address"))
    OwnerIdentifier.struct_class = Types::OwnerIdentifier

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeFilter.add_member(:from, Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: "from"))
    TimeFilter.add_member(:to, Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: "to"))
    TimeFilter.struct_class = Types::TimeFilter

    TokenBalance.add_member(:owner_identifier, Shapes::ShapeRef.new(shape: OwnerIdentifier, location_name: "ownerIdentifier"))
    TokenBalance.add_member(:token_identifier, Shapes::ShapeRef.new(shape: TokenIdentifier, location_name: "tokenIdentifier"))
    TokenBalance.add_member(:balance, Shapes::ShapeRef.new(shape: String, required: true, location_name: "balance"))
    TokenBalance.add_member(:at_blockchain_instant, Shapes::ShapeRef.new(shape: BlockchainInstant, required: true, location_name: "atBlockchainInstant"))
    TokenBalance.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: "lastUpdatedTime"))
    TokenBalance.struct_class = Types::TokenBalance

    TokenBalanceList.member = Shapes::ShapeRef.new(shape: TokenBalance)

    TokenFilter.add_member(:network, Shapes::ShapeRef.new(shape: QueryNetwork, required: true, location_name: "network"))
    TokenFilter.add_member(:contract_address, Shapes::ShapeRef.new(shape: ChainAddress, location_name: "contractAddress"))
    TokenFilter.add_member(:token_id, Shapes::ShapeRef.new(shape: QueryTokenId, location_name: "tokenId"))
    TokenFilter.struct_class = Types::TokenFilter

    TokenIdentifier.add_member(:network, Shapes::ShapeRef.new(shape: QueryNetwork, required: true, location_name: "network"))
    TokenIdentifier.add_member(:contract_address, Shapes::ShapeRef.new(shape: ChainAddress, location_name: "contractAddress"))
    TokenIdentifier.add_member(:token_id, Shapes::ShapeRef.new(shape: QueryTokenId, location_name: "tokenId"))
    TokenIdentifier.struct_class = Types::TokenIdentifier

    Transaction.add_member(:network, Shapes::ShapeRef.new(shape: QueryNetwork, required: true, location_name: "network"))
    Transaction.add_member(:block_hash, Shapes::ShapeRef.new(shape: BlockHash, location_name: "blockHash"))
    Transaction.add_member(:transaction_hash, Shapes::ShapeRef.new(shape: QueryTransactionHash, required: true, location_name: "transactionHash"))
    Transaction.add_member(:block_number, Shapes::ShapeRef.new(shape: String, location_name: "blockNumber"))
    Transaction.add_member(:transaction_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "transactionTimestamp"))
    Transaction.add_member(:transaction_index, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "transactionIndex"))
    Transaction.add_member(:number_of_transactions, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "numberOfTransactions"))
    Transaction.add_member(:to, Shapes::ShapeRef.new(shape: ChainAddress, required: true, location_name: "to"))
    Transaction.add_member(:from, Shapes::ShapeRef.new(shape: ChainAddress, location_name: "from"))
    Transaction.add_member(:contract_address, Shapes::ShapeRef.new(shape: ChainAddress, location_name: "contractAddress"))
    Transaction.add_member(:gas_used, Shapes::ShapeRef.new(shape: String, location_name: "gasUsed"))
    Transaction.add_member(:cumulative_gas_used, Shapes::ShapeRef.new(shape: String, location_name: "cumulativeGasUsed"))
    Transaction.add_member(:effective_gas_price, Shapes::ShapeRef.new(shape: String, location_name: "effectiveGasPrice"))
    Transaction.add_member(:signature_v, Shapes::ShapeRef.new(shape: Integer, location_name: "signatureV"))
    Transaction.add_member(:signature_r, Shapes::ShapeRef.new(shape: String, location_name: "signatureR"))
    Transaction.add_member(:signature_s, Shapes::ShapeRef.new(shape: String, location_name: "signatureS"))
    Transaction.add_member(:transaction_fee, Shapes::ShapeRef.new(shape: String, location_name: "transactionFee"))
    Transaction.add_member(:transaction_id, Shapes::ShapeRef.new(shape: String, location_name: "transactionId"))
    Transaction.add_member(:confirmation_status, Shapes::ShapeRef.new(shape: ConfirmationStatus, location_name: "confirmationStatus"))
    Transaction.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "executionStatus"))
    Transaction.struct_class = Types::Transaction

    TransactionEvent.add_member(:network, Shapes::ShapeRef.new(shape: QueryNetwork, required: true, location_name: "network"))
    TransactionEvent.add_member(:transaction_hash, Shapes::ShapeRef.new(shape: QueryTransactionHash, required: true, location_name: "transactionHash"))
    TransactionEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: QueryTransactionEventType, required: true, location_name: "eventType"))
    TransactionEvent.add_member(:from, Shapes::ShapeRef.new(shape: ChainAddress, location_name: "from"))
    TransactionEvent.add_member(:to, Shapes::ShapeRef.new(shape: ChainAddress, location_name: "to"))
    TransactionEvent.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    TransactionEvent.add_member(:contract_address, Shapes::ShapeRef.new(shape: ChainAddress, location_name: "contractAddress"))
    TransactionEvent.add_member(:token_id, Shapes::ShapeRef.new(shape: QueryTokenId, location_name: "tokenId"))
    TransactionEvent.add_member(:transaction_id, Shapes::ShapeRef.new(shape: String, location_name: "transactionId"))
    TransactionEvent.add_member(:vout_index, Shapes::ShapeRef.new(shape: Integer, location_name: "voutIndex"))
    TransactionEvent.add_member(:vout_spent, Shapes::ShapeRef.new(shape: Boolean, location_name: "voutSpent"))
    TransactionEvent.add_member(:spent_vout_transaction_id, Shapes::ShapeRef.new(shape: String, location_name: "spentVoutTransactionId"))
    TransactionEvent.add_member(:spent_vout_transaction_hash, Shapes::ShapeRef.new(shape: String, location_name: "spentVoutTransactionHash"))
    TransactionEvent.add_member(:spent_vout_index, Shapes::ShapeRef.new(shape: Integer, location_name: "spentVoutIndex"))
    TransactionEvent.add_member(:blockchain_instant, Shapes::ShapeRef.new(shape: BlockchainInstant, location_name: "blockchainInstant"))
    TransactionEvent.add_member(:confirmation_status, Shapes::ShapeRef.new(shape: ConfirmationStatus, location_name: "confirmationStatus"))
    TransactionEvent.struct_class = Types::TransactionEvent

    TransactionEventList.member = Shapes::ShapeRef.new(shape: TransactionEvent)

    TransactionOutputItem.add_member(:transaction_hash, Shapes::ShapeRef.new(shape: QueryTransactionHash, required: true, location_name: "transactionHash"))
    TransactionOutputItem.add_member(:transaction_id, Shapes::ShapeRef.new(shape: QueryTransactionId, location_name: "transactionId"))
    TransactionOutputItem.add_member(:network, Shapes::ShapeRef.new(shape: QueryNetwork, required: true, location_name: "network"))
    TransactionOutputItem.add_member(:transaction_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "transactionTimestamp"))
    TransactionOutputItem.add_member(:confirmation_status, Shapes::ShapeRef.new(shape: ConfirmationStatus, location_name: "confirmationStatus"))
    TransactionOutputItem.struct_class = Types::TransactionOutputItem

    TransactionOutputList.member = Shapes::ShapeRef.new(shape: TransactionOutputItem)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VoutFilter.add_member(:vout_spent, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "voutSpent"))
    VoutFilter.struct_class = Types::VoutFilter


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-05-04"

      api.metadata = {
        "apiVersion" => "2023-05-04",
        "endpointPrefix" => "managedblockchain-query",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Managed Blockchain Query",
        "serviceId" => "ManagedBlockchain Query",
        "signatureVersion" => "v4",
        "signingName" => "managedblockchain-query",
        "uid" => "managedblockchain-query-2023-05-04",
      }

      api.add_operation(:batch_get_token_balance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetTokenBalance"
        o.http_method = "POST"
        o.http_request_uri = "/batch-get-token-balance"
        o.input = Shapes::ShapeRef.new(shape: BatchGetTokenBalanceInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetTokenBalanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_asset_contract, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssetContract"
        o.http_method = "POST"
        o.http_request_uri = "/get-asset-contract"
        o.input = Shapes::ShapeRef.new(shape: GetAssetContractInput)
        o.output = Shapes::ShapeRef.new(shape: GetAssetContractOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_token_balance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTokenBalance"
        o.http_method = "POST"
        o.http_request_uri = "/get-token-balance"
        o.input = Shapes::ShapeRef.new(shape: GetTokenBalanceInput)
        o.output = Shapes::ShapeRef.new(shape: GetTokenBalanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_transaction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTransaction"
        o.http_method = "POST"
        o.http_request_uri = "/get-transaction"
        o.input = Shapes::ShapeRef.new(shape: GetTransactionInput)
        o.output = Shapes::ShapeRef.new(shape: GetTransactionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:list_asset_contracts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssetContracts"
        o.http_method = "POST"
        o.http_request_uri = "/list-asset-contracts"
        o.input = Shapes::ShapeRef.new(shape: ListAssetContractsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAssetContractsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_filtered_transaction_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFilteredTransactionEvents"
        o.http_method = "POST"
        o.http_request_uri = "/list-filtered-transaction-events"
        o.input = Shapes::ShapeRef.new(shape: ListFilteredTransactionEventsInput)
        o.output = Shapes::ShapeRef.new(shape: ListFilteredTransactionEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_token_balances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTokenBalances"
        o.http_method = "POST"
        o.http_request_uri = "/list-token-balances"
        o.input = Shapes::ShapeRef.new(shape: ListTokenBalancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListTokenBalancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_transaction_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTransactionEvents"
        o.http_method = "POST"
        o.http_request_uri = "/list-transaction-events"
        o.input = Shapes::ShapeRef.new(shape: ListTransactionEventsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTransactionEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_transactions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTransactions"
        o.http_method = "POST"
        o.http_request_uri = "/list-transactions"
        o.input = Shapes::ShapeRef.new(shape: ListTransactionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTransactionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
