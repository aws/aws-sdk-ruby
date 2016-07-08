# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ServiceCatalog
    # @api private
    module ClientApi

      include Seahorse::Model

      AcceptLanguage = Shapes::StringShape.new(name: 'AcceptLanguage')
      AllowedValue = Shapes::StringShape.new(name: 'AllowedValue')
      AllowedValues = Shapes::ListShape.new(name: 'AllowedValues')
      ApproximateCount = Shapes::IntegerShape.new(name: 'ApproximateCount')
      AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
      ConstraintDescription = Shapes::StringShape.new(name: 'ConstraintDescription')
      ConstraintSummaries = Shapes::ListShape.new(name: 'ConstraintSummaries')
      ConstraintSummary = Shapes::StructureShape.new(name: 'ConstraintSummary')
      ConstraintType = Shapes::StringShape.new(name: 'ConstraintType')
      CreatedTime = Shapes::TimestampShape.new(name: 'CreatedTime')
      DefaultValue = Shapes::StringShape.new(name: 'DefaultValue')
      DescribeProductInput = Shapes::StructureShape.new(name: 'DescribeProductInput')
      DescribeProductOutput = Shapes::StructureShape.new(name: 'DescribeProductOutput')
      DescribeProductViewInput = Shapes::StructureShape.new(name: 'DescribeProductViewInput')
      DescribeProductViewOutput = Shapes::StructureShape.new(name: 'DescribeProductViewOutput')
      DescribeProvisioningParametersInput = Shapes::StructureShape.new(name: 'DescribeProvisioningParametersInput')
      DescribeProvisioningParametersOutput = Shapes::StructureShape.new(name: 'DescribeProvisioningParametersOutput')
      DescribeRecordInput = Shapes::StructureShape.new(name: 'DescribeRecordInput')
      DescribeRecordOutput = Shapes::StructureShape.new(name: 'DescribeRecordOutput')
      Description = Shapes::StringShape.new(name: 'Description')
      DuplicateResourceException = Shapes::StructureShape.new(name: 'DuplicateResourceException')
      ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
      ErrorDescription = Shapes::StringShape.new(name: 'ErrorDescription')
      HasDefaultPath = Shapes::BooleanShape.new(name: 'HasDefaultPath')
      Id = Shapes::StringShape.new(name: 'Id')
      IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
      IgnoreErrors = Shapes::BooleanShape.new(name: 'IgnoreErrors')
      InstructionType = Shapes::StringShape.new(name: 'InstructionType')
      InstructionValue = Shapes::StringShape.new(name: 'InstructionValue')
      InvalidParametersException = Shapes::StructureShape.new(name: 'InvalidParametersException')
      LastRequestId = Shapes::StringShape.new(name: 'LastRequestId')
      LaunchPathSummaries = Shapes::ListShape.new(name: 'LaunchPathSummaries')
      LaunchPathSummary = Shapes::StructureShape.new(name: 'LaunchPathSummary')
      ListLaunchPathsInput = Shapes::StructureShape.new(name: 'ListLaunchPathsInput')
      ListLaunchPathsOutput = Shapes::StructureShape.new(name: 'ListLaunchPathsOutput')
      ListRecordHistoryInput = Shapes::StructureShape.new(name: 'ListRecordHistoryInput')
      ListRecordHistoryOutput = Shapes::StructureShape.new(name: 'ListRecordHistoryOutput')
      ListRecordHistorySearchFilter = Shapes::StructureShape.new(name: 'ListRecordHistorySearchFilter')
      NoEcho = Shapes::BooleanShape.new(name: 'NoEcho')
      NotificationArn = Shapes::StringShape.new(name: 'NotificationArn')
      NotificationArns = Shapes::ListShape.new(name: 'NotificationArns')
      OutputKey = Shapes::StringShape.new(name: 'OutputKey')
      OutputValue = Shapes::StringShape.new(name: 'OutputValue')
      PageSize = Shapes::IntegerShape.new(name: 'PageSize')
      PageToken = Shapes::StringShape.new(name: 'PageToken')
      ParameterConstraints = Shapes::StructureShape.new(name: 'ParameterConstraints')
      ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
      ParameterType = Shapes::StringShape.new(name: 'ParameterType')
      ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
      PortfolioName = Shapes::StringShape.new(name: 'PortfolioName')
      ProductType = Shapes::StringShape.new(name: 'ProductType')
      ProductViewAggregationType = Shapes::StringShape.new(name: 'ProductViewAggregationType')
      ProductViewAggregationValue = Shapes::StructureShape.new(name: 'ProductViewAggregationValue')
      ProductViewAggregationValues = Shapes::ListShape.new(name: 'ProductViewAggregationValues')
      ProductViewAggregations = Shapes::MapShape.new(name: 'ProductViewAggregations')
      ProductViewDistributor = Shapes::StringShape.new(name: 'ProductViewDistributor')
      ProductViewFilterBy = Shapes::StringShape.new(name: 'ProductViewFilterBy')
      ProductViewFilterValue = Shapes::StringShape.new(name: 'ProductViewFilterValue')
      ProductViewFilterValues = Shapes::ListShape.new(name: 'ProductViewFilterValues')
      ProductViewFilters = Shapes::MapShape.new(name: 'ProductViewFilters')
      ProductViewName = Shapes::StringShape.new(name: 'ProductViewName')
      ProductViewOwner = Shapes::StringShape.new(name: 'ProductViewOwner')
      ProductViewShortDescription = Shapes::StringShape.new(name: 'ProductViewShortDescription')
      ProductViewSortBy = Shapes::StringShape.new(name: 'ProductViewSortBy')
      ProductViewSummaries = Shapes::ListShape.new(name: 'ProductViewSummaries')
      ProductViewSummary = Shapes::StructureShape.new(name: 'ProductViewSummary')
      ProvisionProductInput = Shapes::StructureShape.new(name: 'ProvisionProductInput')
      ProvisionProductOutput = Shapes::StructureShape.new(name: 'ProvisionProductOutput')
      ProvisionedProductDetail = Shapes::StructureShape.new(name: 'ProvisionedProductDetail')
      ProvisionedProductDetails = Shapes::ListShape.new(name: 'ProvisionedProductDetails')
      ProvisionedProductId = Shapes::StringShape.new(name: 'ProvisionedProductId')
      ProvisionedProductName = Shapes::StringShape.new(name: 'ProvisionedProductName')
      ProvisionedProductNameOrArn = Shapes::StringShape.new(name: 'ProvisionedProductNameOrArn')
      ProvisionedProductStatusMessage = Shapes::StringShape.new(name: 'ProvisionedProductStatusMessage')
      ProvisionedProductType = Shapes::StringShape.new(name: 'ProvisionedProductType')
      ProvisioningArtifact = Shapes::StructureShape.new(name: 'ProvisioningArtifact')
      ProvisioningArtifactCreatedTime = Shapes::TimestampShape.new(name: 'ProvisioningArtifactCreatedTime')
      ProvisioningArtifactDescription = Shapes::StringShape.new(name: 'ProvisioningArtifactDescription')
      ProvisioningArtifactName = Shapes::StringShape.new(name: 'ProvisioningArtifactName')
      ProvisioningArtifactParameter = Shapes::StructureShape.new(name: 'ProvisioningArtifactParameter')
      ProvisioningArtifactParameters = Shapes::ListShape.new(name: 'ProvisioningArtifactParameters')
      ProvisioningArtifacts = Shapes::ListShape.new(name: 'ProvisioningArtifacts')
      ProvisioningParameter = Shapes::StructureShape.new(name: 'ProvisioningParameter')
      ProvisioningParameters = Shapes::ListShape.new(name: 'ProvisioningParameters')
      RecordDetail = Shapes::StructureShape.new(name: 'RecordDetail')
      RecordDetails = Shapes::ListShape.new(name: 'RecordDetails')
      RecordError = Shapes::StructureShape.new(name: 'RecordError')
      RecordErrors = Shapes::ListShape.new(name: 'RecordErrors')
      RecordOutput = Shapes::StructureShape.new(name: 'RecordOutput')
      RecordOutputs = Shapes::ListShape.new(name: 'RecordOutputs')
      RecordStatus = Shapes::StringShape.new(name: 'RecordStatus')
      RecordTag = Shapes::StructureShape.new(name: 'RecordTag')
      RecordTagKey = Shapes::StringShape.new(name: 'RecordTagKey')
      RecordTagValue = Shapes::StringShape.new(name: 'RecordTagValue')
      RecordTags = Shapes::ListShape.new(name: 'RecordTags')
      RecordType = Shapes::StringShape.new(name: 'RecordType')
      ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
      ScanProvisionedProductsInput = Shapes::StructureShape.new(name: 'ScanProvisionedProductsInput')
      ScanProvisionedProductsOutput = Shapes::StructureShape.new(name: 'ScanProvisionedProductsOutput')
      SearchFilterKey = Shapes::StringShape.new(name: 'SearchFilterKey')
      SearchFilterValue = Shapes::StringShape.new(name: 'SearchFilterValue')
      SearchProductsInput = Shapes::StructureShape.new(name: 'SearchProductsInput')
      SearchProductsOutput = Shapes::StructureShape.new(name: 'SearchProductsOutput')
      SortOrder = Shapes::StringShape.new(name: 'SortOrder')
      SupportDescription = Shapes::StringShape.new(name: 'SupportDescription')
      SupportEmail = Shapes::StringShape.new(name: 'SupportEmail')
      SupportUrl = Shapes::StringShape.new(name: 'SupportUrl')
      Tag = Shapes::StructureShape.new(name: 'Tag')
      TagKey = Shapes::StringShape.new(name: 'TagKey')
      TagValue = Shapes::StringShape.new(name: 'TagValue')
      Tags = Shapes::ListShape.new(name: 'Tags')
      TerminateProvisionedProductInput = Shapes::StructureShape.new(name: 'TerminateProvisionedProductInput')
      TerminateProvisionedProductOutput = Shapes::StructureShape.new(name: 'TerminateProvisionedProductOutput')
      UpdateProvisionedProductInput = Shapes::StructureShape.new(name: 'UpdateProvisionedProductInput')
      UpdateProvisionedProductOutput = Shapes::StructureShape.new(name: 'UpdateProvisionedProductOutput')
      UpdateProvisioningParameter = Shapes::StructureShape.new(name: 'UpdateProvisioningParameter')
      UpdateProvisioningParameters = Shapes::ListShape.new(name: 'UpdateProvisioningParameters')
      UpdatedTime = Shapes::TimestampShape.new(name: 'UpdatedTime')
      UsageInstruction = Shapes::StructureShape.new(name: 'UsageInstruction')
      UsageInstructions = Shapes::ListShape.new(name: 'UsageInstructions')
      UsePreviousValue = Shapes::BooleanShape.new(name: 'UsePreviousValue')

      AllowedValues.member = Shapes::ShapeRef.new(shape: AllowedValue)

      ConstraintSummaries.member = Shapes::ShapeRef.new(shape: ConstraintSummary)

      ConstraintSummary.add_member(:type, Shapes::ShapeRef.new(shape: ConstraintType, location_name: "Type"))
      ConstraintSummary.add_member(:description, Shapes::ShapeRef.new(shape: ConstraintDescription, location_name: "Description"))
      ConstraintSummary.struct_class = Types::ConstraintSummary

      DescribeProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
      DescribeProductInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
      DescribeProductInput.struct_class = Types::DescribeProductInput

      DescribeProductOutput.add_member(:product_view_summary, Shapes::ShapeRef.new(shape: ProductViewSummary, location_name: "ProductViewSummary"))
      DescribeProductOutput.add_member(:provisioning_artifacts, Shapes::ShapeRef.new(shape: ProvisioningArtifacts, location_name: "ProvisioningArtifacts"))
      DescribeProductOutput.struct_class = Types::DescribeProductOutput

      DescribeProductViewInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
      DescribeProductViewInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
      DescribeProductViewInput.struct_class = Types::DescribeProductViewInput

      DescribeProductViewOutput.add_member(:product_view_summary, Shapes::ShapeRef.new(shape: ProductViewSummary, location_name: "ProductViewSummary"))
      DescribeProductViewOutput.add_member(:provisioning_artifacts, Shapes::ShapeRef.new(shape: ProvisioningArtifacts, location_name: "ProvisioningArtifacts"))
      DescribeProductViewOutput.struct_class = Types::DescribeProductViewOutput

      DescribeProvisioningParametersInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
      DescribeProvisioningParametersInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
      DescribeProvisioningParametersInput.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProvisioningArtifactId"))
      DescribeProvisioningParametersInput.add_member(:path_id, Shapes::ShapeRef.new(shape: Id, location_name: "PathId"))
      DescribeProvisioningParametersInput.struct_class = Types::DescribeProvisioningParametersInput

      DescribeProvisioningParametersOutput.add_member(:provisioning_artifact_parameters, Shapes::ShapeRef.new(shape: ProvisioningArtifactParameters, location_name: "ProvisioningArtifactParameters"))
      DescribeProvisioningParametersOutput.add_member(:constraint_summaries, Shapes::ShapeRef.new(shape: ConstraintSummaries, location_name: "ConstraintSummaries"))
      DescribeProvisioningParametersOutput.add_member(:usage_instructions, Shapes::ShapeRef.new(shape: UsageInstructions, location_name: "UsageInstructions"))
      DescribeProvisioningParametersOutput.struct_class = Types::DescribeProvisioningParametersOutput

      DescribeRecordInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
      DescribeRecordInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
      DescribeRecordInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
      DescribeRecordInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
      DescribeRecordInput.struct_class = Types::DescribeRecordInput

      DescribeRecordOutput.add_member(:record_detail, Shapes::ShapeRef.new(shape: RecordDetail, location_name: "RecordDetail"))
      DescribeRecordOutput.add_member(:record_outputs, Shapes::ShapeRef.new(shape: RecordOutputs, location_name: "RecordOutputs"))
      DescribeRecordOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
      DescribeRecordOutput.struct_class = Types::DescribeRecordOutput

      LaunchPathSummaries.member = Shapes::ShapeRef.new(shape: LaunchPathSummary)

      LaunchPathSummary.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
      LaunchPathSummary.add_member(:constraint_summaries, Shapes::ShapeRef.new(shape: ConstraintSummaries, location_name: "ConstraintSummaries"))
      LaunchPathSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
      LaunchPathSummary.add_member(:name, Shapes::ShapeRef.new(shape: PortfolioName, location_name: "Name"))
      LaunchPathSummary.struct_class = Types::LaunchPathSummary

      ListLaunchPathsInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
      ListLaunchPathsInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
      ListLaunchPathsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
      ListLaunchPathsInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
      ListLaunchPathsInput.struct_class = Types::ListLaunchPathsInput

      ListLaunchPathsOutput.add_member(:launch_path_summaries, Shapes::ShapeRef.new(shape: LaunchPathSummaries, location_name: "LaunchPathSummaries"))
      ListLaunchPathsOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
      ListLaunchPathsOutput.struct_class = Types::ListLaunchPathsOutput

      ListRecordHistoryInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
      ListRecordHistoryInput.add_member(:search_filter, Shapes::ShapeRef.new(shape: ListRecordHistorySearchFilter, location_name: "SearchFilter"))
      ListRecordHistoryInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
      ListRecordHistoryInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
      ListRecordHistoryInput.struct_class = Types::ListRecordHistoryInput

      ListRecordHistoryOutput.add_member(:record_details, Shapes::ShapeRef.new(shape: RecordDetails, location_name: "RecordDetails"))
      ListRecordHistoryOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
      ListRecordHistoryOutput.struct_class = Types::ListRecordHistoryOutput

      ListRecordHistorySearchFilter.add_member(:key, Shapes::ShapeRef.new(shape: SearchFilterKey, location_name: "Key"))
      ListRecordHistorySearchFilter.add_member(:value, Shapes::ShapeRef.new(shape: SearchFilterValue, location_name: "Value"))
      ListRecordHistorySearchFilter.struct_class = Types::ListRecordHistorySearchFilter

      NotificationArns.member = Shapes::ShapeRef.new(shape: NotificationArn)

      ParameterConstraints.add_member(:allowed_values, Shapes::ShapeRef.new(shape: AllowedValues, location_name: "AllowedValues"))
      ParameterConstraints.struct_class = Types::ParameterConstraints

      ProductViewAggregationValue.add_member(:value, Shapes::ShapeRef.new(shape: AttributeValue, location_name: "Value"))
      ProductViewAggregationValue.add_member(:approximate_count, Shapes::ShapeRef.new(shape: ApproximateCount, location_name: "ApproximateCount"))
      ProductViewAggregationValue.struct_class = Types::ProductViewAggregationValue

      ProductViewAggregationValues.member = Shapes::ShapeRef.new(shape: ProductViewAggregationValue)

      ProductViewAggregations.key = Shapes::ShapeRef.new(shape: ProductViewAggregationType)
      ProductViewAggregations.value = Shapes::ShapeRef.new(shape: ProductViewAggregationValues)

      ProductViewFilterValues.member = Shapes::ShapeRef.new(shape: ProductViewFilterValue)

      ProductViewFilters.key = Shapes::ShapeRef.new(shape: ProductViewFilterBy)
      ProductViewFilters.value = Shapes::ShapeRef.new(shape: ProductViewFilterValues)

      ProductViewSummaries.member = Shapes::ShapeRef.new(shape: ProductViewSummary)

      ProductViewSummary.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
      ProductViewSummary.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProductId"))
      ProductViewSummary.add_member(:name, Shapes::ShapeRef.new(shape: ProductViewName, location_name: "Name"))
      ProductViewSummary.add_member(:owner, Shapes::ShapeRef.new(shape: ProductViewOwner, location_name: "Owner"))
      ProductViewSummary.add_member(:short_description, Shapes::ShapeRef.new(shape: ProductViewShortDescription, location_name: "ShortDescription"))
      ProductViewSummary.add_member(:type, Shapes::ShapeRef.new(shape: ProductType, location_name: "Type"))
      ProductViewSummary.add_member(:distributor, Shapes::ShapeRef.new(shape: ProductViewDistributor, location_name: "Distributor"))
      ProductViewSummary.add_member(:has_default_path, Shapes::ShapeRef.new(shape: HasDefaultPath, location_name: "HasDefaultPath"))
      ProductViewSummary.add_member(:support_email, Shapes::ShapeRef.new(shape: SupportEmail, location_name: "SupportEmail"))
      ProductViewSummary.add_member(:support_description, Shapes::ShapeRef.new(shape: SupportDescription, location_name: "SupportDescription"))
      ProductViewSummary.add_member(:support_url, Shapes::ShapeRef.new(shape: SupportUrl, location_name: "SupportUrl"))
      ProductViewSummary.struct_class = Types::ProductViewSummary

      ProvisionProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
      ProvisionProductInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProductId"))
      ProvisionProductInput.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ProvisioningArtifactId"))
      ProvisionProductInput.add_member(:path_id, Shapes::ShapeRef.new(shape: Id, location_name: "PathId"))
      ProvisionProductInput.add_member(:provisioned_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductName, required: true, location_name: "ProvisionedProductName"))
      ProvisionProductInput.add_member(:provisioning_parameters, Shapes::ShapeRef.new(shape: ProvisioningParameters, location_name: "ProvisioningParameters"))
      ProvisionProductInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
      ProvisionProductInput.add_member(:notification_arns, Shapes::ShapeRef.new(shape: NotificationArns, location_name: "NotificationArns"))
      ProvisionProductInput.add_member(:provision_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "ProvisionToken", metadata: {"idempotencyToken"=>true}))
      ProvisionProductInput.struct_class = Types::ProvisionProductInput

      ProvisionProductOutput.add_member(:record_detail, Shapes::ShapeRef.new(shape: RecordDetail, location_name: "RecordDetail"))
      ProvisionProductOutput.struct_class = Types::ProvisionProductOutput

      ProvisionedProductDetail.add_member(:name, Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: "Name"))
      ProvisionedProductDetail.add_member(:arn, Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: "Arn"))
      ProvisionedProductDetail.add_member(:type, Shapes::ShapeRef.new(shape: ProvisionedProductType, location_name: "Type"))
      ProvisionedProductDetail.add_member(:id, Shapes::ShapeRef.new(shape: ProvisionedProductId, location_name: "Id"))
      ProvisionedProductDetail.add_member(:status, Shapes::ShapeRef.new(shape: RecordStatus, location_name: "Status"))
      ProvisionedProductDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: ProvisionedProductStatusMessage, location_name: "StatusMessage"))
      ProvisionedProductDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
      ProvisionedProductDetail.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken"))
      ProvisionedProductDetail.add_member(:last_record_id, Shapes::ShapeRef.new(shape: LastRequestId, location_name: "LastRecordId"))
      ProvisionedProductDetail.struct_class = Types::ProvisionedProductDetail

      ProvisionedProductDetails.member = Shapes::ShapeRef.new(shape: ProvisionedProductDetail)

      ProvisioningArtifact.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
      ProvisioningArtifact.add_member(:name, Shapes::ShapeRef.new(shape: ProvisioningArtifactName, location_name: "Name"))
      ProvisioningArtifact.add_member(:description, Shapes::ShapeRef.new(shape: ProvisioningArtifactDescription, location_name: "Description"))
      ProvisioningArtifact.add_member(:created_time, Shapes::ShapeRef.new(shape: ProvisioningArtifactCreatedTime, location_name: "CreatedTime"))
      ProvisioningArtifact.struct_class = Types::ProvisioningArtifact

      ProvisioningArtifactParameter.add_member(:parameter_key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "ParameterKey"))
      ProvisioningArtifactParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: DefaultValue, location_name: "DefaultValue"))
      ProvisioningArtifactParameter.add_member(:parameter_type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "ParameterType"))
      ProvisioningArtifactParameter.add_member(:is_no_echo, Shapes::ShapeRef.new(shape: NoEcho, location_name: "IsNoEcho"))
      ProvisioningArtifactParameter.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
      ProvisioningArtifactParameter.add_member(:parameter_constraints, Shapes::ShapeRef.new(shape: ParameterConstraints, location_name: "ParameterConstraints"))
      ProvisioningArtifactParameter.struct_class = Types::ProvisioningArtifactParameter

      ProvisioningArtifactParameters.member = Shapes::ShapeRef.new(shape: ProvisioningArtifactParameter)

      ProvisioningArtifacts.member = Shapes::ShapeRef.new(shape: ProvisioningArtifact)

      ProvisioningParameter.add_member(:key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "Key"))
      ProvisioningParameter.add_member(:value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "Value"))
      ProvisioningParameter.struct_class = Types::ProvisioningParameter

      ProvisioningParameters.member = Shapes::ShapeRef.new(shape: ProvisioningParameter)

      RecordDetail.add_member(:record_id, Shapes::ShapeRef.new(shape: Id, location_name: "RecordId"))
      RecordDetail.add_member(:provisioned_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductName, location_name: "ProvisionedProductName"))
      RecordDetail.add_member(:status, Shapes::ShapeRef.new(shape: RecordStatus, location_name: "Status"))
      RecordDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
      RecordDetail.add_member(:updated_time, Shapes::ShapeRef.new(shape: UpdatedTime, location_name: "UpdatedTime"))
      RecordDetail.add_member(:provisioned_product_type, Shapes::ShapeRef.new(shape: ProvisionedProductType, location_name: "ProvisionedProductType"))
      RecordDetail.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, location_name: "RecordType"))
      RecordDetail.add_member(:provisioned_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisionedProductId"))
      RecordDetail.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProductId"))
      RecordDetail.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisioningArtifactId"))
      RecordDetail.add_member(:path_id, Shapes::ShapeRef.new(shape: Id, location_name: "PathId"))
      RecordDetail.add_member(:record_errors, Shapes::ShapeRef.new(shape: RecordErrors, location_name: "RecordErrors"))
      RecordDetail.add_member(:record_tags, Shapes::ShapeRef.new(shape: RecordTags, location_name: "RecordTags"))
      RecordDetail.struct_class = Types::RecordDetail

      RecordDetails.member = Shapes::ShapeRef.new(shape: RecordDetail)

      RecordError.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
      RecordError.add_member(:description, Shapes::ShapeRef.new(shape: ErrorDescription, location_name: "Description"))
      RecordError.struct_class = Types::RecordError

      RecordErrors.member = Shapes::ShapeRef.new(shape: RecordError)

      RecordOutput.add_member(:output_key, Shapes::ShapeRef.new(shape: OutputKey, location_name: "OutputKey"))
      RecordOutput.add_member(:output_value, Shapes::ShapeRef.new(shape: OutputValue, location_name: "OutputValue"))
      RecordOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
      RecordOutput.struct_class = Types::RecordOutput

      RecordOutputs.member = Shapes::ShapeRef.new(shape: RecordOutput)

      RecordTag.add_member(:key, Shapes::ShapeRef.new(shape: RecordTagKey, location_name: "Key"))
      RecordTag.add_member(:value, Shapes::ShapeRef.new(shape: RecordTagValue, location_name: "Value"))
      RecordTag.struct_class = Types::RecordTag

      RecordTags.member = Shapes::ShapeRef.new(shape: RecordTag)

      ScanProvisionedProductsInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
      ScanProvisionedProductsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
      ScanProvisionedProductsInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
      ScanProvisionedProductsInput.struct_class = Types::ScanProvisionedProductsInput

      ScanProvisionedProductsOutput.add_member(:provisioned_products, Shapes::ShapeRef.new(shape: ProvisionedProductDetails, location_name: "ProvisionedProducts"))
      ScanProvisionedProductsOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
      ScanProvisionedProductsOutput.struct_class = Types::ScanProvisionedProductsOutput

      SearchProductsInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
      SearchProductsInput.add_member(:filters, Shapes::ShapeRef.new(shape: ProductViewFilters, location_name: "Filters"))
      SearchProductsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
      SearchProductsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ProductViewSortBy, location_name: "SortBy"))
      SearchProductsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
      SearchProductsInput.add_member(:page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "PageToken"))
      SearchProductsInput.struct_class = Types::SearchProductsInput

      SearchProductsOutput.add_member(:product_view_summaries, Shapes::ShapeRef.new(shape: ProductViewSummaries, location_name: "ProductViewSummaries"))
      SearchProductsOutput.add_member(:product_view_aggregations, Shapes::ShapeRef.new(shape: ProductViewAggregations, location_name: "ProductViewAggregations"))
      SearchProductsOutput.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
      SearchProductsOutput.struct_class = Types::SearchProductsOutput

      Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
      Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
      Tag.struct_class = Types::Tag

      Tags.member = Shapes::ShapeRef.new(shape: Tag)

      TerminateProvisionedProductInput.add_member(:provisioned_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: "ProvisionedProductName"))
      TerminateProvisionedProductInput.add_member(:provisioned_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisionedProductId"))
      TerminateProvisionedProductInput.add_member(:terminate_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "TerminateToken", metadata: {"idempotencyToken"=>true}))
      TerminateProvisionedProductInput.add_member(:ignore_errors, Shapes::ShapeRef.new(shape: IgnoreErrors, location_name: "IgnoreErrors"))
      TerminateProvisionedProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
      TerminateProvisionedProductInput.struct_class = Types::TerminateProvisionedProductInput

      TerminateProvisionedProductOutput.add_member(:record_detail, Shapes::ShapeRef.new(shape: RecordDetail, location_name: "RecordDetail"))
      TerminateProvisionedProductOutput.struct_class = Types::TerminateProvisionedProductOutput

      UpdateProvisionedProductInput.add_member(:accept_language, Shapes::ShapeRef.new(shape: AcceptLanguage, location_name: "AcceptLanguage"))
      UpdateProvisionedProductInput.add_member(:provisioned_product_name, Shapes::ShapeRef.new(shape: ProvisionedProductNameOrArn, location_name: "ProvisionedProductName"))
      UpdateProvisionedProductInput.add_member(:provisioned_product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisionedProductId"))
      UpdateProvisionedProductInput.add_member(:product_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProductId"))
      UpdateProvisionedProductInput.add_member(:provisioning_artifact_id, Shapes::ShapeRef.new(shape: Id, location_name: "ProvisioningArtifactId"))
      UpdateProvisionedProductInput.add_member(:path_id, Shapes::ShapeRef.new(shape: Id, location_name: "PathId"))
      UpdateProvisionedProductInput.add_member(:provisioning_parameters, Shapes::ShapeRef.new(shape: UpdateProvisioningParameters, location_name: "ProvisioningParameters"))
      UpdateProvisionedProductInput.add_member(:update_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "UpdateToken", metadata: {"idempotencyToken"=>true}))
      UpdateProvisionedProductInput.struct_class = Types::UpdateProvisionedProductInput

      UpdateProvisionedProductOutput.add_member(:record_detail, Shapes::ShapeRef.new(shape: RecordDetail, location_name: "RecordDetail"))
      UpdateProvisionedProductOutput.struct_class = Types::UpdateProvisionedProductOutput

      UpdateProvisioningParameter.add_member(:key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "Key"))
      UpdateProvisioningParameter.add_member(:value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "Value"))
      UpdateProvisioningParameter.add_member(:use_previous_value, Shapes::ShapeRef.new(shape: UsePreviousValue, location_name: "UsePreviousValue"))
      UpdateProvisioningParameter.struct_class = Types::UpdateProvisioningParameter

      UpdateProvisioningParameters.member = Shapes::ShapeRef.new(shape: UpdateProvisioningParameter)

      UsageInstruction.add_member(:type, Shapes::ShapeRef.new(shape: InstructionType, location_name: "Type"))
      UsageInstruction.add_member(:value, Shapes::ShapeRef.new(shape: InstructionValue, location_name: "Value"))
      UsageInstruction.struct_class = Types::UsageInstruction

      UsageInstructions.member = Shapes::ShapeRef.new(shape: UsageInstruction)


      # @api private
      API = Seahorse::Model::Api.new.tap do |api|

        api.version = "2015-12-10"

        api.metadata = {
          "endpointPrefix" => "servicecatalog",
          "jsonVersion" => "1.1",
          "protocol" => "json",
          "serviceFullName" => "AWS Service Catalog",
          "signatureVersion" => "v4",
          "targetPrefix" => "AWS242ServiceCatalogService",
        }

        api.add_operation(:describe_product, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DescribeProduct"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DescribeProductInput)
          o.output = Shapes::ShapeRef.new(shape: DescribeProductOutput)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        end)

        api.add_operation(:describe_product_view, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DescribeProductView"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DescribeProductViewInput)
          o.output = Shapes::ShapeRef.new(shape: DescribeProductViewOutput)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        end)

        api.add_operation(:describe_provisioning_parameters, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DescribeProvisioningParameters"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DescribeProvisioningParametersInput)
          o.output = Shapes::ShapeRef.new(shape: DescribeProvisioningParametersOutput)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        end)

        api.add_operation(:describe_record, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DescribeRecord"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DescribeRecordInput)
          o.output = Shapes::ShapeRef.new(shape: DescribeRecordOutput)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        end)

        api.add_operation(:list_launch_paths, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListLaunchPaths"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListLaunchPathsInput)
          o.output = Shapes::ShapeRef.new(shape: ListLaunchPathsOutput)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        end)

        api.add_operation(:list_record_history, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListRecordHistory"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListRecordHistoryInput)
          o.output = Shapes::ShapeRef.new(shape: ListRecordHistoryOutput)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        end)

        api.add_operation(:provision_product, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ProvisionProduct"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ProvisionProductInput)
          o.output = Shapes::ShapeRef.new(shape: ProvisionProductOutput)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        end)

        api.add_operation(:scan_provisioned_products, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ScanProvisionedProducts"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ScanProvisionedProductsInput)
          o.output = Shapes::ShapeRef.new(shape: ScanProvisionedProductsOutput)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        end)

        api.add_operation(:search_products, Seahorse::Model::Operation.new.tap do |o|
          o.name = "SearchProducts"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: SearchProductsInput)
          o.output = Shapes::ShapeRef.new(shape: SearchProductsOutput)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
        end)

        api.add_operation(:terminate_provisioned_product, Seahorse::Model::Operation.new.tap do |o|
          o.name = "TerminateProvisionedProduct"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: TerminateProvisionedProductInput)
          o.output = Shapes::ShapeRef.new(shape: TerminateProvisionedProductOutput)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        end)

        api.add_operation(:update_provisioned_product, Seahorse::Model::Operation.new.tap do |o|
          o.name = "UpdateProvisionedProduct"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: UpdateProvisionedProductInput)
          o.output = Shapes::ShapeRef.new(shape: UpdateProvisionedProductOutput)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParametersException)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        end)
      end

    end
  end
end
