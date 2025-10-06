# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ResourceExplorer2
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSServiceAccessStatus = Shapes::StringShape.new(name: 'AWSServiceAccessStatus')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AssociateDefaultViewInput = Shapes::StructureShape.new(name: 'AssociateDefaultViewInput')
    AssociateDefaultViewInputViewArnString = Shapes::StringShape.new(name: 'AssociateDefaultViewInputViewArnString')
    AssociateDefaultViewOutput = Shapes::StructureShape.new(name: 'AssociateDefaultViewOutput')
    BatchGetViewError = Shapes::StructureShape.new(name: 'BatchGetViewError')
    BatchGetViewErrors = Shapes::ListShape.new(name: 'BatchGetViewErrors')
    BatchGetViewInput = Shapes::StructureShape.new(name: 'BatchGetViewInput')
    BatchGetViewInputViewArnsList = Shapes::ListShape.new(name: 'BatchGetViewInputViewArnsList')
    BatchGetViewOutput = Shapes::StructureShape.new(name: 'BatchGetViewOutput')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateIndexInput = Shapes::StructureShape.new(name: 'CreateIndexInput')
    CreateIndexOutput = Shapes::StructureShape.new(name: 'CreateIndexOutput')
    CreateResourceExplorerSetupInput = Shapes::StructureShape.new(name: 'CreateResourceExplorerSetupInput')
    CreateResourceExplorerSetupInputAggregatorRegionsList = Shapes::ListShape.new(name: 'CreateResourceExplorerSetupInputAggregatorRegionsList')
    CreateResourceExplorerSetupInputAggregatorRegionsListMemberString = Shapes::StringShape.new(name: 'CreateResourceExplorerSetupInputAggregatorRegionsListMemberString')
    CreateResourceExplorerSetupInputRegionListList = Shapes::ListShape.new(name: 'CreateResourceExplorerSetupInputRegionListList')
    CreateResourceExplorerSetupInputRegionListListMemberString = Shapes::StringShape.new(name: 'CreateResourceExplorerSetupInputRegionListListMemberString')
    CreateResourceExplorerSetupInputViewNameString = Shapes::StringShape.new(name: 'CreateResourceExplorerSetupInputViewNameString')
    CreateResourceExplorerSetupOutput = Shapes::StructureShape.new(name: 'CreateResourceExplorerSetupOutput')
    CreateResourceExplorerSetupOutputTaskIdString = Shapes::StringShape.new(name: 'CreateResourceExplorerSetupOutputTaskIdString')
    CreateViewInput = Shapes::StructureShape.new(name: 'CreateViewInput')
    CreateViewInputClientTokenString = Shapes::StringShape.new(name: 'CreateViewInputClientTokenString')
    CreateViewInputScopeString = Shapes::StringShape.new(name: 'CreateViewInputScopeString')
    CreateViewOutput = Shapes::StructureShape.new(name: 'CreateViewOutput')
    DeleteIndexInput = Shapes::StructureShape.new(name: 'DeleteIndexInput')
    DeleteIndexOutput = Shapes::StructureShape.new(name: 'DeleteIndexOutput')
    DeleteResourceExplorerSetupInput = Shapes::StructureShape.new(name: 'DeleteResourceExplorerSetupInput')
    DeleteResourceExplorerSetupOutput = Shapes::StructureShape.new(name: 'DeleteResourceExplorerSetupOutput')
    DeleteResourceExplorerSetupOutputTaskIdString = Shapes::StringShape.new(name: 'DeleteResourceExplorerSetupOutputTaskIdString')
    DeleteViewInput = Shapes::StructureShape.new(name: 'DeleteViewInput')
    DeleteViewInputViewArnString = Shapes::StringShape.new(name: 'DeleteViewInputViewArnString')
    DeleteViewOutput = Shapes::StructureShape.new(name: 'DeleteViewOutput')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    GetAccountLevelServiceConfigurationOutput = Shapes::StructureShape.new(name: 'GetAccountLevelServiceConfigurationOutput')
    GetDefaultViewOutput = Shapes::StructureShape.new(name: 'GetDefaultViewOutput')
    GetIndexOutput = Shapes::StructureShape.new(name: 'GetIndexOutput')
    GetManagedViewInput = Shapes::StructureShape.new(name: 'GetManagedViewInput')
    GetManagedViewInputManagedViewArnString = Shapes::StringShape.new(name: 'GetManagedViewInputManagedViewArnString')
    GetManagedViewOutput = Shapes::StructureShape.new(name: 'GetManagedViewOutput')
    GetResourceExplorerSetupInput = Shapes::StructureShape.new(name: 'GetResourceExplorerSetupInput')
    GetResourceExplorerSetupInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetResourceExplorerSetupInputMaxResultsInteger')
    GetResourceExplorerSetupInputNextTokenString = Shapes::StringShape.new(name: 'GetResourceExplorerSetupInputNextTokenString')
    GetResourceExplorerSetupInputTaskIdString = Shapes::StringShape.new(name: 'GetResourceExplorerSetupInputTaskIdString')
    GetResourceExplorerSetupOutput = Shapes::StructureShape.new(name: 'GetResourceExplorerSetupOutput')
    GetResourceExplorerSetupOutputNextTokenString = Shapes::StringShape.new(name: 'GetResourceExplorerSetupOutputNextTokenString')
    GetServiceIndexOutput = Shapes::StructureShape.new(name: 'GetServiceIndexOutput')
    GetServiceViewInput = Shapes::StructureShape.new(name: 'GetServiceViewInput')
    GetServiceViewInputServiceViewArnString = Shapes::StringShape.new(name: 'GetServiceViewInputServiceViewArnString')
    GetServiceViewOutput = Shapes::StructureShape.new(name: 'GetServiceViewOutput')
    GetViewInput = Shapes::StructureShape.new(name: 'GetViewInput')
    GetViewInputViewArnString = Shapes::StringShape.new(name: 'GetViewInputViewArnString')
    GetViewOutput = Shapes::StructureShape.new(name: 'GetViewOutput')
    IncludedProperty = Shapes::StructureShape.new(name: 'IncludedProperty')
    IncludedPropertyList = Shapes::ListShape.new(name: 'IncludedPropertyList')
    IncludedPropertyNameString = Shapes::StringShape.new(name: 'IncludedPropertyNameString')
    Index = Shapes::StructureShape.new(name: 'Index')
    IndexList = Shapes::ListShape.new(name: 'IndexList')
    IndexState = Shapes::StringShape.new(name: 'IndexState')
    IndexStatus = Shapes::StructureShape.new(name: 'IndexStatus')
    IndexType = Shapes::StringShape.new(name: 'IndexType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListIndexesForMembersInput = Shapes::StructureShape.new(name: 'ListIndexesForMembersInput')
    ListIndexesForMembersInputAccountIdListList = Shapes::ListShape.new(name: 'ListIndexesForMembersInputAccountIdListList')
    ListIndexesForMembersInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListIndexesForMembersInputMaxResultsInteger')
    ListIndexesForMembersInputNextTokenString = Shapes::StringShape.new(name: 'ListIndexesForMembersInputNextTokenString')
    ListIndexesForMembersOutput = Shapes::StructureShape.new(name: 'ListIndexesForMembersOutput')
    ListIndexesInput = Shapes::StructureShape.new(name: 'ListIndexesInput')
    ListIndexesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListIndexesInputMaxResultsInteger')
    ListIndexesInputNextTokenString = Shapes::StringShape.new(name: 'ListIndexesInputNextTokenString')
    ListIndexesInputRegionsList = Shapes::ListShape.new(name: 'ListIndexesInputRegionsList')
    ListIndexesInputRegionsListMemberString = Shapes::StringShape.new(name: 'ListIndexesInputRegionsListMemberString')
    ListIndexesOutput = Shapes::StructureShape.new(name: 'ListIndexesOutput')
    ListManagedViewsInput = Shapes::StructureShape.new(name: 'ListManagedViewsInput')
    ListManagedViewsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListManagedViewsInputMaxResultsInteger')
    ListManagedViewsInputNextTokenString = Shapes::StringShape.new(name: 'ListManagedViewsInputNextTokenString')
    ListManagedViewsInputServicePrincipalString = Shapes::StringShape.new(name: 'ListManagedViewsInputServicePrincipalString')
    ListManagedViewsOutput = Shapes::StructureShape.new(name: 'ListManagedViewsOutput')
    ListResourcesInput = Shapes::StructureShape.new(name: 'ListResourcesInput')
    ListResourcesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListResourcesInputMaxResultsInteger')
    ListResourcesInputNextTokenString = Shapes::StringShape.new(name: 'ListResourcesInputNextTokenString')
    ListResourcesInputViewArnString = Shapes::StringShape.new(name: 'ListResourcesInputViewArnString')
    ListResourcesOutput = Shapes::StructureShape.new(name: 'ListResourcesOutput')
    ListResourcesOutputNextTokenString = Shapes::StringShape.new(name: 'ListResourcesOutputNextTokenString')
    ListResourcesOutputViewArnString = Shapes::StringShape.new(name: 'ListResourcesOutputViewArnString')
    ListServiceIndexesInput = Shapes::StructureShape.new(name: 'ListServiceIndexesInput')
    ListServiceIndexesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListServiceIndexesInputMaxResultsInteger')
    ListServiceIndexesInputNextTokenString = Shapes::StringShape.new(name: 'ListServiceIndexesInputNextTokenString')
    ListServiceIndexesInputRegionsList = Shapes::ListShape.new(name: 'ListServiceIndexesInputRegionsList')
    ListServiceIndexesInputRegionsListMemberString = Shapes::StringShape.new(name: 'ListServiceIndexesInputRegionsListMemberString')
    ListServiceIndexesOutput = Shapes::StructureShape.new(name: 'ListServiceIndexesOutput')
    ListServiceViewsInput = Shapes::StructureShape.new(name: 'ListServiceViewsInput')
    ListServiceViewsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListServiceViewsInputMaxResultsInteger')
    ListServiceViewsOutput = Shapes::StructureShape.new(name: 'ListServiceViewsOutput')
    ListStreamingAccessForServicesInput = Shapes::StructureShape.new(name: 'ListStreamingAccessForServicesInput')
    ListStreamingAccessForServicesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListStreamingAccessForServicesInputMaxResultsInteger')
    ListStreamingAccessForServicesOutput = Shapes::StructureShape.new(name: 'ListStreamingAccessForServicesOutput')
    ListSupportedResourceTypesInput = Shapes::StructureShape.new(name: 'ListSupportedResourceTypesInput')
    ListSupportedResourceTypesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSupportedResourceTypesInputMaxResultsInteger')
    ListSupportedResourceTypesOutput = Shapes::StructureShape.new(name: 'ListSupportedResourceTypesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListViewsInput = Shapes::StructureShape.new(name: 'ListViewsInput')
    ListViewsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListViewsInputMaxResultsInteger')
    ListViewsOutput = Shapes::StructureShape.new(name: 'ListViewsOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    ManagedView = Shapes::StructureShape.new(name: 'ManagedView')
    ManagedViewArnList = Shapes::ListShape.new(name: 'ManagedViewArnList')
    MemberIndex = Shapes::StructureShape.new(name: 'MemberIndex')
    MemberIndexList = Shapes::ListShape.new(name: 'MemberIndexList')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OrgConfiguration = Shapes::StructureShape.new(name: 'OrgConfiguration')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    RegionListMemberString = Shapes::StringShape.new(name: 'RegionListMemberString')
    RegionStatus = Shapes::StructureShape.new(name: 'RegionStatus')
    RegionStatusList = Shapes::ListShape.new(name: 'RegionStatusList')
    RegionStatusRegionString = Shapes::StringShape.new(name: 'RegionStatusRegionString')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceCount = Shapes::StructureShape.new(name: 'ResourceCount')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceProperty = Shapes::StructureShape.new(name: 'ResourceProperty')
    ResourcePropertyList = Shapes::ListShape.new(name: 'ResourcePropertyList')
    ResourceTypeList = Shapes::ListShape.new(name: 'ResourceTypeList')
    SearchFilter = Shapes::StructureShape.new(name: 'SearchFilter')
    SearchFilterFilterStringString = Shapes::StringShape.new(name: 'SearchFilterFilterStringString')
    SearchInput = Shapes::StructureShape.new(name: 'SearchInput')
    SearchInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchInputMaxResultsInteger')
    SearchInputNextTokenString = Shapes::StringShape.new(name: 'SearchInputNextTokenString')
    SearchInputViewArnString = Shapes::StringShape.new(name: 'SearchInputViewArnString')
    SearchOutput = Shapes::StructureShape.new(name: 'SearchOutput')
    SearchOutputNextTokenString = Shapes::StringShape.new(name: 'SearchOutputNextTokenString')
    SearchOutputViewArnString = Shapes::StringShape.new(name: 'SearchOutputViewArnString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceView = Shapes::StructureShape.new(name: 'ServiceView')
    ServiceViewArnList = Shapes::ListShape.new(name: 'ServiceViewArnList')
    StreamingAccessDetails = Shapes::StructureShape.new(name: 'StreamingAccessDetails')
    StreamingAccessDetailsList = Shapes::ListShape.new(name: 'StreamingAccessDetailsList')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SupportedResourceType = Shapes::StructureShape.new(name: 'SupportedResourceType')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateIndexTypeInput = Shapes::StructureShape.new(name: 'UpdateIndexTypeInput')
    UpdateIndexTypeOutput = Shapes::StructureShape.new(name: 'UpdateIndexTypeOutput')
    UpdateViewInput = Shapes::StructureShape.new(name: 'UpdateViewInput')
    UpdateViewInputViewArnString = Shapes::StringShape.new(name: 'UpdateViewInputViewArnString')
    UpdateViewOutput = Shapes::StructureShape.new(name: 'UpdateViewOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    View = Shapes::StructureShape.new(name: 'View')
    ViewArnList = Shapes::ListShape.new(name: 'ViewArnList')
    ViewList = Shapes::ListShape.new(name: 'ViewList')
    ViewName = Shapes::StringShape.new(name: 'ViewName')
    ViewStatus = Shapes::StructureShape.new(name: 'ViewStatus')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateDefaultViewInput.add_member(:view_arn, Shapes::ShapeRef.new(shape: AssociateDefaultViewInputViewArnString, required: true, location_name: "ViewArn"))
    AssociateDefaultViewInput.struct_class = Types::AssociateDefaultViewInput

    AssociateDefaultViewOutput.add_member(:view_arn, Shapes::ShapeRef.new(shape: String, location_name: "ViewArn"))
    AssociateDefaultViewOutput.struct_class = Types::AssociateDefaultViewOutput

    BatchGetViewError.add_member(:view_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ViewArn"))
    BatchGetViewError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ErrorMessage"))
    BatchGetViewError.struct_class = Types::BatchGetViewError

    BatchGetViewErrors.member = Shapes::ShapeRef.new(shape: BatchGetViewError)

    BatchGetViewInput.add_member(:view_arns, Shapes::ShapeRef.new(shape: BatchGetViewInputViewArnsList, location_name: "ViewArns"))
    BatchGetViewInput.struct_class = Types::BatchGetViewInput

    BatchGetViewInputViewArnsList.member = Shapes::ShapeRef.new(shape: String)

    BatchGetViewOutput.add_member(:views, Shapes::ShapeRef.new(shape: ViewList, location_name: "Views"))
    BatchGetViewOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetViewErrors, location_name: "Errors"))
    BatchGetViewOutput.struct_class = Types::BatchGetViewOutput

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateIndexInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateIndexInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateIndexInput.struct_class = Types::CreateIndexInput

    CreateIndexOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    CreateIndexOutput.add_member(:state, Shapes::ShapeRef.new(shape: IndexState, location_name: "State"))
    CreateIndexOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "CreatedAt"))
    CreateIndexOutput.struct_class = Types::CreateIndexOutput

    CreateResourceExplorerSetupInput.add_member(:region_list, Shapes::ShapeRef.new(shape: CreateResourceExplorerSetupInputRegionListList, required: true, location_name: "RegionList"))
    CreateResourceExplorerSetupInput.add_member(:aggregator_regions, Shapes::ShapeRef.new(shape: CreateResourceExplorerSetupInputAggregatorRegionsList, location_name: "AggregatorRegions"))
    CreateResourceExplorerSetupInput.add_member(:view_name, Shapes::ShapeRef.new(shape: CreateResourceExplorerSetupInputViewNameString, required: true, location_name: "ViewName"))
    CreateResourceExplorerSetupInput.struct_class = Types::CreateResourceExplorerSetupInput

    CreateResourceExplorerSetupInputAggregatorRegionsList.member = Shapes::ShapeRef.new(shape: CreateResourceExplorerSetupInputAggregatorRegionsListMemberString)

    CreateResourceExplorerSetupInputRegionListList.member = Shapes::ShapeRef.new(shape: CreateResourceExplorerSetupInputRegionListListMemberString)

    CreateResourceExplorerSetupOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: CreateResourceExplorerSetupOutputTaskIdString, required: true, location_name: "TaskId"))
    CreateResourceExplorerSetupOutput.struct_class = Types::CreateResourceExplorerSetupOutput

    CreateViewInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateViewInputClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateViewInput.add_member(:view_name, Shapes::ShapeRef.new(shape: ViewName, required: true, location_name: "ViewName"))
    CreateViewInput.add_member(:included_properties, Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: "IncludedProperties"))
    CreateViewInput.add_member(:scope, Shapes::ShapeRef.new(shape: CreateViewInputScopeString, location_name: "Scope"))
    CreateViewInput.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilter, location_name: "Filters"))
    CreateViewInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateViewInput.struct_class = Types::CreateViewInput

    CreateViewOutput.add_member(:view, Shapes::ShapeRef.new(shape: View, location_name: "View"))
    CreateViewOutput.struct_class = Types::CreateViewOutput

    DeleteIndexInput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    DeleteIndexInput.struct_class = Types::DeleteIndexInput

    DeleteIndexOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    DeleteIndexOutput.add_member(:state, Shapes::ShapeRef.new(shape: IndexState, location_name: "State"))
    DeleteIndexOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "LastUpdatedAt"))
    DeleteIndexOutput.struct_class = Types::DeleteIndexOutput

    DeleteResourceExplorerSetupInput.add_member(:region_list, Shapes::ShapeRef.new(shape: RegionList, location_name: "RegionList"))
    DeleteResourceExplorerSetupInput.add_member(:delete_in_all_regions, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteInAllRegions"))
    DeleteResourceExplorerSetupInput.struct_class = Types::DeleteResourceExplorerSetupInput

    DeleteResourceExplorerSetupOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: DeleteResourceExplorerSetupOutputTaskIdString, required: true, location_name: "TaskId"))
    DeleteResourceExplorerSetupOutput.struct_class = Types::DeleteResourceExplorerSetupOutput

    DeleteViewInput.add_member(:view_arn, Shapes::ShapeRef.new(shape: DeleteViewInputViewArnString, required: true, location_name: "ViewArn"))
    DeleteViewInput.struct_class = Types::DeleteViewInput

    DeleteViewOutput.add_member(:view_arn, Shapes::ShapeRef.new(shape: String, location_name: "ViewArn"))
    DeleteViewOutput.struct_class = Types::DeleteViewOutput

    ErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ErrorDetails.struct_class = Types::ErrorDetails

    GetAccountLevelServiceConfigurationOutput.add_member(:org_configuration, Shapes::ShapeRef.new(shape: OrgConfiguration, location_name: "OrgConfiguration"))
    GetAccountLevelServiceConfigurationOutput.struct_class = Types::GetAccountLevelServiceConfigurationOutput

    GetDefaultViewOutput.add_member(:view_arn, Shapes::ShapeRef.new(shape: String, location_name: "ViewArn"))
    GetDefaultViewOutput.struct_class = Types::GetDefaultViewOutput

    GetIndexOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    GetIndexOutput.add_member(:type, Shapes::ShapeRef.new(shape: IndexType, location_name: "Type"))
    GetIndexOutput.add_member(:state, Shapes::ShapeRef.new(shape: IndexState, location_name: "State"))
    GetIndexOutput.add_member(:replicating_from, Shapes::ShapeRef.new(shape: RegionList, location_name: "ReplicatingFrom"))
    GetIndexOutput.add_member(:replicating_to, Shapes::ShapeRef.new(shape: RegionList, location_name: "ReplicatingTo"))
    GetIndexOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "CreatedAt"))
    GetIndexOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "LastUpdatedAt"))
    GetIndexOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetIndexOutput.struct_class = Types::GetIndexOutput

    GetManagedViewInput.add_member(:managed_view_arn, Shapes::ShapeRef.new(shape: GetManagedViewInputManagedViewArnString, required: true, location_name: "ManagedViewArn"))
    GetManagedViewInput.struct_class = Types::GetManagedViewInput

    GetManagedViewOutput.add_member(:managed_view, Shapes::ShapeRef.new(shape: ManagedView, location_name: "ManagedView"))
    GetManagedViewOutput.struct_class = Types::GetManagedViewOutput

    GetResourceExplorerSetupInput.add_member(:task_id, Shapes::ShapeRef.new(shape: GetResourceExplorerSetupInputTaskIdString, required: true, location_name: "TaskId"))
    GetResourceExplorerSetupInput.add_member(:max_results, Shapes::ShapeRef.new(shape: GetResourceExplorerSetupInputMaxResultsInteger, location_name: "MaxResults"))
    GetResourceExplorerSetupInput.add_member(:next_token, Shapes::ShapeRef.new(shape: GetResourceExplorerSetupInputNextTokenString, location_name: "NextToken"))
    GetResourceExplorerSetupInput.struct_class = Types::GetResourceExplorerSetupInput

    GetResourceExplorerSetupOutput.add_member(:regions, Shapes::ShapeRef.new(shape: RegionStatusList, location_name: "Regions"))
    GetResourceExplorerSetupOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: GetResourceExplorerSetupOutputNextTokenString, location_name: "NextToken"))
    GetResourceExplorerSetupOutput.struct_class = Types::GetResourceExplorerSetupOutput

    GetServiceIndexOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    GetServiceIndexOutput.add_member(:type, Shapes::ShapeRef.new(shape: IndexType, location_name: "Type"))
    GetServiceIndexOutput.struct_class = Types::GetServiceIndexOutput

    GetServiceViewInput.add_member(:service_view_arn, Shapes::ShapeRef.new(shape: GetServiceViewInputServiceViewArnString, required: true, location_name: "ServiceViewArn"))
    GetServiceViewInput.struct_class = Types::GetServiceViewInput

    GetServiceViewOutput.add_member(:view, Shapes::ShapeRef.new(shape: ServiceView, required: true, location_name: "View"))
    GetServiceViewOutput.struct_class = Types::GetServiceViewOutput

    GetViewInput.add_member(:view_arn, Shapes::ShapeRef.new(shape: GetViewInputViewArnString, required: true, location_name: "ViewArn"))
    GetViewInput.struct_class = Types::GetViewInput

    GetViewOutput.add_member(:view, Shapes::ShapeRef.new(shape: View, location_name: "View"))
    GetViewOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetViewOutput.struct_class = Types::GetViewOutput

    IncludedProperty.add_member(:name, Shapes::ShapeRef.new(shape: IncludedPropertyNameString, required: true, location_name: "Name"))
    IncludedProperty.struct_class = Types::IncludedProperty

    IncludedPropertyList.member = Shapes::ShapeRef.new(shape: IncludedProperty)

    Index.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    Index.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Index.add_member(:type, Shapes::ShapeRef.new(shape: IndexType, location_name: "Type"))
    Index.struct_class = Types::Index

    IndexList.member = Shapes::ShapeRef.new(shape: Index)

    IndexStatus.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "Status"))
    IndexStatus.add_member(:index, Shapes::ShapeRef.new(shape: Index, location_name: "Index"))
    IndexStatus.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    IndexStatus.struct_class = Types::IndexStatus

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListIndexesForMembersInput.add_member(:account_id_list, Shapes::ShapeRef.new(shape: ListIndexesForMembersInputAccountIdListList, required: true, location_name: "AccountIdList"))
    ListIndexesForMembersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListIndexesForMembersInputMaxResultsInteger, location_name: "MaxResults"))
    ListIndexesForMembersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListIndexesForMembersInputNextTokenString, location_name: "NextToken"))
    ListIndexesForMembersInput.struct_class = Types::ListIndexesForMembersInput

    ListIndexesForMembersInputAccountIdListList.member = Shapes::ShapeRef.new(shape: AccountId)

    ListIndexesForMembersOutput.add_member(:indexes, Shapes::ShapeRef.new(shape: MemberIndexList, location_name: "Indexes"))
    ListIndexesForMembersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListIndexesForMembersOutput.struct_class = Types::ListIndexesForMembersOutput

    ListIndexesInput.add_member(:type, Shapes::ShapeRef.new(shape: IndexType, location_name: "Type"))
    ListIndexesInput.add_member(:regions, Shapes::ShapeRef.new(shape: ListIndexesInputRegionsList, location_name: "Regions"))
    ListIndexesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListIndexesInputMaxResultsInteger, location_name: "MaxResults"))
    ListIndexesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListIndexesInputNextTokenString, location_name: "NextToken"))
    ListIndexesInput.struct_class = Types::ListIndexesInput

    ListIndexesInputRegionsList.member = Shapes::ShapeRef.new(shape: ListIndexesInputRegionsListMemberString)

    ListIndexesOutput.add_member(:indexes, Shapes::ShapeRef.new(shape: IndexList, location_name: "Indexes"))
    ListIndexesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListIndexesOutput.struct_class = Types::ListIndexesOutput

    ListManagedViewsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListManagedViewsInputMaxResultsInteger, location_name: "MaxResults"))
    ListManagedViewsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListManagedViewsInputNextTokenString, location_name: "NextToken"))
    ListManagedViewsInput.add_member(:service_principal, Shapes::ShapeRef.new(shape: ListManagedViewsInputServicePrincipalString, location_name: "ServicePrincipal"))
    ListManagedViewsInput.struct_class = Types::ListManagedViewsInput

    ListManagedViewsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListManagedViewsOutput.add_member(:managed_views, Shapes::ShapeRef.new(shape: ManagedViewArnList, location_name: "ManagedViews"))
    ListManagedViewsOutput.struct_class = Types::ListManagedViewsOutput

    ListResourcesInput.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilter, location_name: "Filters"))
    ListResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourcesInputMaxResultsInteger, location_name: "MaxResults"))
    ListResourcesInput.add_member(:view_arn, Shapes::ShapeRef.new(shape: ListResourcesInputViewArnString, location_name: "ViewArn"))
    ListResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListResourcesInputNextTokenString, location_name: "NextToken"))
    ListResourcesInput.struct_class = Types::ListResourcesInput

    ListResourcesOutput.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "Resources"))
    ListResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListResourcesOutputNextTokenString, location_name: "NextToken"))
    ListResourcesOutput.add_member(:view_arn, Shapes::ShapeRef.new(shape: ListResourcesOutputViewArnString, location_name: "ViewArn"))
    ListResourcesOutput.struct_class = Types::ListResourcesOutput

    ListServiceIndexesInput.add_member(:regions, Shapes::ShapeRef.new(shape: ListServiceIndexesInputRegionsList, location_name: "Regions"))
    ListServiceIndexesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListServiceIndexesInputMaxResultsInteger, location_name: "MaxResults"))
    ListServiceIndexesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListServiceIndexesInputNextTokenString, location_name: "NextToken"))
    ListServiceIndexesInput.struct_class = Types::ListServiceIndexesInput

    ListServiceIndexesInputRegionsList.member = Shapes::ShapeRef.new(shape: ListServiceIndexesInputRegionsListMemberString)

    ListServiceIndexesOutput.add_member(:indexes, Shapes::ShapeRef.new(shape: IndexList, location_name: "Indexes"))
    ListServiceIndexesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListServiceIndexesOutput.struct_class = Types::ListServiceIndexesOutput

    ListServiceViewsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListServiceViewsInputMaxResultsInteger, location_name: "MaxResults"))
    ListServiceViewsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListServiceViewsInput.struct_class = Types::ListServiceViewsInput

    ListServiceViewsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListServiceViewsOutput.add_member(:service_views, Shapes::ShapeRef.new(shape: ServiceViewArnList, location_name: "ServiceViews"))
    ListServiceViewsOutput.struct_class = Types::ListServiceViewsOutput

    ListStreamingAccessForServicesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListStreamingAccessForServicesInputMaxResultsInteger, location_name: "MaxResults"))
    ListStreamingAccessForServicesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListStreamingAccessForServicesInput.struct_class = Types::ListStreamingAccessForServicesInput

    ListStreamingAccessForServicesOutput.add_member(:streaming_access_for_services, Shapes::ShapeRef.new(shape: StreamingAccessDetailsList, required: true, location_name: "StreamingAccessForServices"))
    ListStreamingAccessForServicesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListStreamingAccessForServicesOutput.struct_class = Types::ListStreamingAccessForServicesOutput

    ListSupportedResourceTypesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSupportedResourceTypesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSupportedResourceTypesInputMaxResultsInteger, location_name: "MaxResults"))
    ListSupportedResourceTypesInput.struct_class = Types::ListSupportedResourceTypesInput

    ListSupportedResourceTypesOutput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "ResourceTypes"))
    ListSupportedResourceTypesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSupportedResourceTypesOutput.struct_class = Types::ListSupportedResourceTypesOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListViewsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListViewsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListViewsInputMaxResultsInteger, location_name: "MaxResults"))
    ListViewsInput.struct_class = Types::ListViewsInput

    ListViewsOutput.add_member(:views, Shapes::ShapeRef.new(shape: ViewArnList, location_name: "Views"))
    ListViewsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListViewsOutput.struct_class = Types::ListViewsOutput

    ManagedView.add_member(:managed_view_arn, Shapes::ShapeRef.new(shape: String, location_name: "ManagedViewArn"))
    ManagedView.add_member(:managed_view_name, Shapes::ShapeRef.new(shape: String, location_name: "ManagedViewName"))
    ManagedView.add_member(:trusted_service, Shapes::ShapeRef.new(shape: String, location_name: "TrustedService"))
    ManagedView.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "LastUpdatedAt"))
    ManagedView.add_member(:owner, Shapes::ShapeRef.new(shape: String, location_name: "Owner"))
    ManagedView.add_member(:scope, Shapes::ShapeRef.new(shape: String, location_name: "Scope"))
    ManagedView.add_member(:included_properties, Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: "IncludedProperties"))
    ManagedView.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilter, location_name: "Filters"))
    ManagedView.add_member(:resource_policy, Shapes::ShapeRef.new(shape: String, location_name: "ResourcePolicy"))
    ManagedView.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    ManagedView.struct_class = Types::ManagedView

    ManagedViewArnList.member = Shapes::ShapeRef.new(shape: String)

    MemberIndex.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountId"))
    MemberIndex.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    MemberIndex.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    MemberIndex.add_member(:type, Shapes::ShapeRef.new(shape: IndexType, location_name: "Type"))
    MemberIndex.struct_class = Types::MemberIndex

    MemberIndexList.member = Shapes::ShapeRef.new(shape: MemberIndex)

    OrgConfiguration.add_member(:aws_service_access_status, Shapes::ShapeRef.new(shape: AWSServiceAccessStatus, required: true, location_name: "AWSServiceAccessStatus"))
    OrgConfiguration.add_member(:service_linked_role, Shapes::ShapeRef.new(shape: String, location_name: "ServiceLinkedRole"))
    OrgConfiguration.struct_class = Types::OrgConfiguration

    RegionList.member = Shapes::ShapeRef.new(shape: RegionListMemberString)

    RegionStatus.add_member(:region, Shapes::ShapeRef.new(shape: RegionStatusRegionString, location_name: "Region"))
    RegionStatus.add_member(:index, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "Index"))
    RegionStatus.add_member(:view, Shapes::ShapeRef.new(shape: ViewStatus, location_name: "View"))
    RegionStatus.struct_class = Types::RegionStatus

    RegionStatusList.member = Shapes::ShapeRef.new(shape: RegionStatus)

    Resource.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Resource.add_member(:owning_account_id, Shapes::ShapeRef.new(shape: String, location_name: "OwningAccountId"))
    Resource.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    Resource.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    Resource.add_member(:service, Shapes::ShapeRef.new(shape: String, location_name: "Service"))
    Resource.add_member(:last_reported_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "LastReportedAt"))
    Resource.add_member(:properties, Shapes::ShapeRef.new(shape: ResourcePropertyList, location_name: "Properties"))
    Resource.struct_class = Types::Resource

    ResourceCount.add_member(:total_resources, Shapes::ShapeRef.new(shape: Long, location_name: "TotalResources"))
    ResourceCount.add_member(:complete, Shapes::ShapeRef.new(shape: Boolean, location_name: "Complete"))
    ResourceCount.struct_class = Types::ResourceCount

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceProperty.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ResourceProperty.add_member(:last_reported_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "LastReportedAt"))
    ResourceProperty.add_member(:data, Shapes::ShapeRef.new(shape: Document, location_name: "Data"))
    ResourceProperty.struct_class = Types::ResourceProperty

    ResourcePropertyList.member = Shapes::ShapeRef.new(shape: ResourceProperty)

    ResourceTypeList.member = Shapes::ShapeRef.new(shape: SupportedResourceType)

    SearchFilter.add_member(:filter_string, Shapes::ShapeRef.new(shape: SearchFilterFilterStringString, required: true, location_name: "FilterString"))
    SearchFilter.struct_class = Types::SearchFilter

    SearchInput.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    SearchInput.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchInputMaxResultsInteger, location_name: "MaxResults"))
    SearchInput.add_member(:view_arn, Shapes::ShapeRef.new(shape: SearchInputViewArnString, location_name: "ViewArn"))
    SearchInput.add_member(:next_token, Shapes::ShapeRef.new(shape: SearchInputNextTokenString, location_name: "NextToken"))
    SearchInput.struct_class = Types::SearchInput

    SearchOutput.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "Resources"))
    SearchOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: SearchOutputNextTokenString, location_name: "NextToken"))
    SearchOutput.add_member(:view_arn, Shapes::ShapeRef.new(shape: SearchOutputViewArnString, location_name: "ViewArn"))
    SearchOutput.add_member(:count, Shapes::ShapeRef.new(shape: ResourceCount, location_name: "Count"))
    SearchOutput.struct_class = Types::SearchOutput

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ServiceQuotaExceededException.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceView.add_member(:service_view_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceViewArn"))
    ServiceView.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilter, location_name: "Filters"))
    ServiceView.add_member(:included_properties, Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: "IncludedProperties"))
    ServiceView.add_member(:streaming_access_for_service, Shapes::ShapeRef.new(shape: String, location_name: "StreamingAccessForService"))
    ServiceView.add_member(:scope_type, Shapes::ShapeRef.new(shape: String, location_name: "ScopeType"))
    ServiceView.struct_class = Types::ServiceView

    ServiceViewArnList.member = Shapes::ShapeRef.new(shape: String)

    StreamingAccessDetails.add_member(:service_principal, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServicePrincipal"))
    StreamingAccessDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "CreatedAt"))
    StreamingAccessDetails.struct_class = Types::StreamingAccessDetails

    StreamingAccessDetailsList.member = Shapes::ShapeRef.new(shape: StreamingAccessDetails)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SupportedResourceType.add_member(:service, Shapes::ShapeRef.new(shape: String, location_name: "Service"))
    SupportedResourceType.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    SupportedResourceType.struct_class = Types::SupportedResourceType

    TagMap.key = Shapes::ShapeRef.new(shape: String)
    TagMap.value = Shapes::ShapeRef.new(shape: String)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateIndexTypeInput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    UpdateIndexTypeInput.add_member(:type, Shapes::ShapeRef.new(shape: IndexType, required: true, location_name: "Type"))
    UpdateIndexTypeInput.struct_class = Types::UpdateIndexTypeInput

    UpdateIndexTypeOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    UpdateIndexTypeOutput.add_member(:type, Shapes::ShapeRef.new(shape: IndexType, location_name: "Type"))
    UpdateIndexTypeOutput.add_member(:state, Shapes::ShapeRef.new(shape: IndexState, location_name: "State"))
    UpdateIndexTypeOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "LastUpdatedAt"))
    UpdateIndexTypeOutput.struct_class = Types::UpdateIndexTypeOutput

    UpdateViewInput.add_member(:view_arn, Shapes::ShapeRef.new(shape: UpdateViewInputViewArnString, required: true, location_name: "ViewArn"))
    UpdateViewInput.add_member(:included_properties, Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: "IncludedProperties"))
    UpdateViewInput.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilter, location_name: "Filters"))
    UpdateViewInput.struct_class = Types::UpdateViewInput

    UpdateViewOutput.add_member(:view, Shapes::ShapeRef.new(shape: View, location_name: "View"))
    UpdateViewOutput.struct_class = Types::UpdateViewOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "FieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:validation_issue, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ValidationIssue"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    View.add_member(:view_arn, Shapes::ShapeRef.new(shape: String, location_name: "ViewArn"))
    View.add_member(:owner, Shapes::ShapeRef.new(shape: String, location_name: "Owner"))
    View.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "LastUpdatedAt"))
    View.add_member(:scope, Shapes::ShapeRef.new(shape: String, location_name: "Scope"))
    View.add_member(:included_properties, Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: "IncludedProperties"))
    View.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilter, location_name: "Filters"))
    View.struct_class = Types::View

    ViewArnList.member = Shapes::ShapeRef.new(shape: String)

    ViewList.member = Shapes::ShapeRef.new(shape: View)

    ViewStatus.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "Status"))
    ViewStatus.add_member(:view, Shapes::ShapeRef.new(shape: View, location_name: "View"))
    ViewStatus.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    ViewStatus.struct_class = Types::ViewStatus


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-07-28"

      api.metadata = {
        "apiVersion" => "2022-07-28",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "resource-explorer-2",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Resource Explorer",
        "serviceId" => "Resource Explorer 2",
        "signatureVersion" => "v4",
        "signingName" => "resource-explorer-2",
        "uid" => "resource-explorer-2-2022-07-28",
      }

      api.add_operation(:associate_default_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDefaultView"
        o.http_method = "POST"
        o.http_request_uri = "/AssociateDefaultView"
        o.input = Shapes::ShapeRef.new(shape: AssociateDefaultViewInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateDefaultViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_get_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetView"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetView"
        o.input = Shapes::ShapeRef.new(shape: BatchGetViewInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIndex"
        o.http_method = "POST"
        o.http_request_uri = "/CreateIndex"
        o.input = Shapes::ShapeRef.new(shape: CreateIndexInput)
        o.output = Shapes::ShapeRef.new(shape: CreateIndexOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_resource_explorer_setup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourceExplorerSetup"
        o.http_method = "POST"
        o.http_request_uri = "/CreateResourceExplorerSetup"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceExplorerSetupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceExplorerSetupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateView"
        o.http_method = "POST"
        o.http_request_uri = "/CreateView"
        o.input = Shapes::ShapeRef.new(shape: CreateViewInput)
        o.output = Shapes::ShapeRef.new(shape: CreateViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIndex"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteIndex"
        o.input = Shapes::ShapeRef.new(shape: DeleteIndexInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteIndexOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_resource_explorer_setup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourceExplorerSetup"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteResourceExplorerSetup"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceExplorerSetupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourceExplorerSetupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteView"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteView"
        o.input = Shapes::ShapeRef.new(shape: DeleteViewInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disassociate_default_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDefaultView"
        o.http_method = "POST"
        o.http_request_uri = "/DisassociateDefaultView"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_account_level_service_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountLevelServiceConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetAccountLevelServiceConfiguration"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetAccountLevelServiceConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_default_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDefaultView"
        o.http_method = "POST"
        o.http_request_uri = "/GetDefaultView"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetDefaultViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIndex"
        o.http_method = "POST"
        o.http_request_uri = "/GetIndex"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetIndexOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_managed_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedView"
        o.http_method = "POST"
        o.http_request_uri = "/GetManagedView"
        o.input = Shapes::ShapeRef.new(shape: GetManagedViewInput)
        o.output = Shapes::ShapeRef.new(shape: GetManagedViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_resource_explorer_setup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceExplorerSetup"
        o.http_method = "POST"
        o.http_request_uri = "/GetResourceExplorerSetup"
        o.input = Shapes::ShapeRef.new(shape: GetResourceExplorerSetupInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourceExplorerSetupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_service_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceIndex"
        o.http_method = "POST"
        o.http_request_uri = "/GetServiceIndex"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetServiceIndexOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_service_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceView"
        o.http_method = "POST"
        o.http_request_uri = "/GetServiceView"
        o.input = Shapes::ShapeRef.new(shape: GetServiceViewInput)
        o.output = Shapes::ShapeRef.new(shape: GetServiceViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetView"
        o.http_method = "POST"
        o.http_request_uri = "/GetView"
        o.input = Shapes::ShapeRef.new(shape: GetViewInput)
        o.output = Shapes::ShapeRef.new(shape: GetViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_indexes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIndexes"
        o.http_method = "POST"
        o.http_request_uri = "/ListIndexes"
        o.input = Shapes::ShapeRef.new(shape: ListIndexesInput)
        o.output = Shapes::ShapeRef.new(shape: ListIndexesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_indexes_for_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIndexesForMembers"
        o.http_method = "POST"
        o.http_request_uri = "/ListIndexesForMembers"
        o.input = Shapes::ShapeRef.new(shape: ListIndexesForMembersInput)
        o.output = Shapes::ShapeRef.new(shape: ListIndexesForMembersOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedViews"
        o.http_method = "POST"
        o.http_request_uri = "/ListManagedViews"
        o.input = Shapes::ShapeRef.new(shape: ListManagedViewsInput)
        o.output = Shapes::ShapeRef.new(shape: ListManagedViewsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResources"
        o.http_method = "POST"
        o.http_request_uri = "/ListResources"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_indexes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceIndexes"
        o.http_method = "POST"
        o.http_request_uri = "/ListServiceIndexes"
        o.input = Shapes::ShapeRef.new(shape: ListServiceIndexesInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceIndexesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceViews"
        o.http_method = "POST"
        o.http_request_uri = "/ListServiceViews"
        o.input = Shapes::ShapeRef.new(shape: ListServiceViewsInput)
        o.output = Shapes::ShapeRef.new(shape: ListServiceViewsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_streaming_access_for_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamingAccessForServices"
        o.http_method = "POST"
        o.http_request_uri = "/ListStreamingAccessForServices"
        o.input = Shapes::ShapeRef.new(shape: ListStreamingAccessForServicesInput)
        o.output = Shapes::ShapeRef.new(shape: ListStreamingAccessForServicesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_supported_resource_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSupportedResourceTypes"
        o.http_method = "POST"
        o.http_request_uri = "/ListSupportedResourceTypes"
        o.input = Shapes::ShapeRef.new(shape: ListSupportedResourceTypesInput)
        o.output = Shapes::ShapeRef.new(shape: ListSupportedResourceTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListViews"
        o.http_method = "POST"
        o.http_request_uri = "/ListViews"
        o.input = Shapes::ShapeRef.new(shape: ListViewsInput)
        o.output = Shapes::ShapeRef.new(shape: ListViewsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Search"
        o.http_method = "POST"
        o.http_request_uri = "/Search"
        o.input = Shapes::ShapeRef.new(shape: SearchInput)
        o.output = Shapes::ShapeRef.new(shape: SearchOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_index_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIndexType"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateIndexType"
        o.input = Shapes::ShapeRef.new(shape: UpdateIndexTypeInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateIndexTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateView"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateView"
        o.input = Shapes::ShapeRef.new(shape: UpdateViewInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
