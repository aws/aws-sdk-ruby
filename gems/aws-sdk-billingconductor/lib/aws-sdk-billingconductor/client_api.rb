# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BillingConductor
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSCost = Shapes::StringShape.new(name: 'AWSCost')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountAssociationsList = Shapes::ListShape.new(name: 'AccountAssociationsList')
    AccountAssociationsListElement = Shapes::StructureShape.new(name: 'AccountAssociationsListElement')
    AccountEmail = Shapes::StringShape.new(name: 'AccountEmail')
    AccountGrouping = Shapes::StructureShape.new(name: 'AccountGrouping')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdFilterList = Shapes::ListShape.new(name: 'AccountIdFilterList')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AccountName = Shapes::StringShape.new(name: 'AccountName')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateAccountsInput = Shapes::StructureShape.new(name: 'AssociateAccountsInput')
    AssociateAccountsOutput = Shapes::StructureShape.new(name: 'AssociateAccountsOutput')
    AssociatePricingRulesInput = Shapes::StructureShape.new(name: 'AssociatePricingRulesInput')
    AssociatePricingRulesOutput = Shapes::StructureShape.new(name: 'AssociatePricingRulesOutput')
    AssociateResourceError = Shapes::StructureShape.new(name: 'AssociateResourceError')
    AssociateResourceErrorReason = Shapes::StringShape.new(name: 'AssociateResourceErrorReason')
    AssociateResourceResponseElement = Shapes::StructureShape.new(name: 'AssociateResourceResponseElement')
    AssociateResourcesResponseList = Shapes::ListShape.new(name: 'AssociateResourcesResponseList')
    Association = Shapes::StringShape.new(name: 'Association')
    BatchAssociateResourcesToCustomLineItemInput = Shapes::StructureShape.new(name: 'BatchAssociateResourcesToCustomLineItemInput')
    BatchAssociateResourcesToCustomLineItemOutput = Shapes::StructureShape.new(name: 'BatchAssociateResourcesToCustomLineItemOutput')
    BatchDisassociateResourcesFromCustomLineItemInput = Shapes::StructureShape.new(name: 'BatchDisassociateResourcesFromCustomLineItemInput')
    BatchDisassociateResourcesFromCustomLineItemOutput = Shapes::StructureShape.new(name: 'BatchDisassociateResourcesFromCustomLineItemOutput')
    BillingEntity = Shapes::StringShape.new(name: 'BillingEntity')
    BillingGroupArn = Shapes::StringShape.new(name: 'BillingGroupArn')
    BillingGroupArnList = Shapes::ListShape.new(name: 'BillingGroupArnList')
    BillingGroupCostReportElement = Shapes::StructureShape.new(name: 'BillingGroupCostReportElement')
    BillingGroupCostReportList = Shapes::ListShape.new(name: 'BillingGroupCostReportList')
    BillingGroupDescription = Shapes::StringShape.new(name: 'BillingGroupDescription')
    BillingGroupFullArn = Shapes::StringShape.new(name: 'BillingGroupFullArn')
    BillingGroupList = Shapes::ListShape.new(name: 'BillingGroupList')
    BillingGroupListElement = Shapes::StructureShape.new(name: 'BillingGroupListElement')
    BillingGroupName = Shapes::StringShape.new(name: 'BillingGroupName')
    BillingGroupStatus = Shapes::StringShape.new(name: 'BillingGroupStatus')
    BillingGroupStatusList = Shapes::ListShape.new(name: 'BillingGroupStatusList')
    BillingGroupStatusReason = Shapes::StringShape.new(name: 'BillingGroupStatusReason')
    BillingPeriod = Shapes::StringShape.new(name: 'BillingPeriod')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ComputationPreference = Shapes::StructureShape.new(name: 'ComputationPreference')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    CreateBillingGroupInput = Shapes::StructureShape.new(name: 'CreateBillingGroupInput')
    CreateBillingGroupOutput = Shapes::StructureShape.new(name: 'CreateBillingGroupOutput')
    CreateCustomLineItemInput = Shapes::StructureShape.new(name: 'CreateCustomLineItemInput')
    CreateCustomLineItemOutput = Shapes::StructureShape.new(name: 'CreateCustomLineItemOutput')
    CreateFreeTierConfig = Shapes::StructureShape.new(name: 'CreateFreeTierConfig')
    CreatePricingPlanInput = Shapes::StructureShape.new(name: 'CreatePricingPlanInput')
    CreatePricingPlanOutput = Shapes::StructureShape.new(name: 'CreatePricingPlanOutput')
    CreatePricingRuleInput = Shapes::StructureShape.new(name: 'CreatePricingRuleInput')
    CreatePricingRuleOutput = Shapes::StructureShape.new(name: 'CreatePricingRuleOutput')
    CreateTieringInput = Shapes::StructureShape.new(name: 'CreateTieringInput')
    Currency = Shapes::StringShape.new(name: 'Currency')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    CustomLineItemArn = Shapes::StringShape.new(name: 'CustomLineItemArn')
    CustomLineItemArns = Shapes::ListShape.new(name: 'CustomLineItemArns')
    CustomLineItemAssociationElement = Shapes::StringShape.new(name: 'CustomLineItemAssociationElement')
    CustomLineItemAssociationsList = Shapes::ListShape.new(name: 'CustomLineItemAssociationsList')
    CustomLineItemBatchAssociationsList = Shapes::ListShape.new(name: 'CustomLineItemBatchAssociationsList')
    CustomLineItemBatchDisassociationsList = Shapes::ListShape.new(name: 'CustomLineItemBatchDisassociationsList')
    CustomLineItemBillingPeriodRange = Shapes::StructureShape.new(name: 'CustomLineItemBillingPeriodRange')
    CustomLineItemChargeDetails = Shapes::StructureShape.new(name: 'CustomLineItemChargeDetails')
    CustomLineItemChargeValue = Shapes::FloatShape.new(name: 'CustomLineItemChargeValue')
    CustomLineItemDescription = Shapes::StringShape.new(name: 'CustomLineItemDescription')
    CustomLineItemFlatChargeDetails = Shapes::StructureShape.new(name: 'CustomLineItemFlatChargeDetails')
    CustomLineItemList = Shapes::ListShape.new(name: 'CustomLineItemList')
    CustomLineItemListElement = Shapes::StructureShape.new(name: 'CustomLineItemListElement')
    CustomLineItemName = Shapes::StringShape.new(name: 'CustomLineItemName')
    CustomLineItemNameList = Shapes::ListShape.new(name: 'CustomLineItemNameList')
    CustomLineItemPercentageChargeDetails = Shapes::StructureShape.new(name: 'CustomLineItemPercentageChargeDetails')
    CustomLineItemPercentageChargeValue = Shapes::FloatShape.new(name: 'CustomLineItemPercentageChargeValue')
    CustomLineItemProductCode = Shapes::StringShape.new(name: 'CustomLineItemProductCode')
    CustomLineItemRelationship = Shapes::StringShape.new(name: 'CustomLineItemRelationship')
    CustomLineItemType = Shapes::StringShape.new(name: 'CustomLineItemType')
    CustomLineItemVersionList = Shapes::ListShape.new(name: 'CustomLineItemVersionList')
    CustomLineItemVersionListElement = Shapes::StructureShape.new(name: 'CustomLineItemVersionListElement')
    DeleteBillingGroupInput = Shapes::StructureShape.new(name: 'DeleteBillingGroupInput')
    DeleteBillingGroupOutput = Shapes::StructureShape.new(name: 'DeleteBillingGroupOutput')
    DeleteCustomLineItemInput = Shapes::StructureShape.new(name: 'DeleteCustomLineItemInput')
    DeleteCustomLineItemOutput = Shapes::StructureShape.new(name: 'DeleteCustomLineItemOutput')
    DeletePricingPlanInput = Shapes::StructureShape.new(name: 'DeletePricingPlanInput')
    DeletePricingPlanOutput = Shapes::StructureShape.new(name: 'DeletePricingPlanOutput')
    DeletePricingRuleInput = Shapes::StructureShape.new(name: 'DeletePricingRuleInput')
    DeletePricingRuleOutput = Shapes::StructureShape.new(name: 'DeletePricingRuleOutput')
    DisassociateAccountsInput = Shapes::StructureShape.new(name: 'DisassociateAccountsInput')
    DisassociateAccountsOutput = Shapes::StructureShape.new(name: 'DisassociateAccountsOutput')
    DisassociatePricingRulesInput = Shapes::StructureShape.new(name: 'DisassociatePricingRulesInput')
    DisassociatePricingRulesOutput = Shapes::StructureShape.new(name: 'DisassociatePricingRulesOutput')
    DisassociateResourceResponseElement = Shapes::StructureShape.new(name: 'DisassociateResourceResponseElement')
    DisassociateResourcesResponseList = Shapes::ListShape.new(name: 'DisassociateResourcesResponseList')
    FreeTierConfig = Shapes::StructureShape.new(name: 'FreeTierConfig')
    Instant = Shapes::IntegerShape.new(name: 'Instant')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAccountAssociationsFilter = Shapes::StructureShape.new(name: 'ListAccountAssociationsFilter')
    ListAccountAssociationsInput = Shapes::StructureShape.new(name: 'ListAccountAssociationsInput')
    ListAccountAssociationsOutput = Shapes::StructureShape.new(name: 'ListAccountAssociationsOutput')
    ListBillingGroupCostReportsFilter = Shapes::StructureShape.new(name: 'ListBillingGroupCostReportsFilter')
    ListBillingGroupCostReportsInput = Shapes::StructureShape.new(name: 'ListBillingGroupCostReportsInput')
    ListBillingGroupCostReportsOutput = Shapes::StructureShape.new(name: 'ListBillingGroupCostReportsOutput')
    ListBillingGroupsFilter = Shapes::StructureShape.new(name: 'ListBillingGroupsFilter')
    ListBillingGroupsInput = Shapes::StructureShape.new(name: 'ListBillingGroupsInput')
    ListBillingGroupsOutput = Shapes::StructureShape.new(name: 'ListBillingGroupsOutput')
    ListCustomLineItemChargeDetails = Shapes::StructureShape.new(name: 'ListCustomLineItemChargeDetails')
    ListCustomLineItemFlatChargeDetails = Shapes::StructureShape.new(name: 'ListCustomLineItemFlatChargeDetails')
    ListCustomLineItemPercentageChargeDetails = Shapes::StructureShape.new(name: 'ListCustomLineItemPercentageChargeDetails')
    ListCustomLineItemVersionsBillingPeriodRangeFilter = Shapes::StructureShape.new(name: 'ListCustomLineItemVersionsBillingPeriodRangeFilter')
    ListCustomLineItemVersionsFilter = Shapes::StructureShape.new(name: 'ListCustomLineItemVersionsFilter')
    ListCustomLineItemVersionsInput = Shapes::StructureShape.new(name: 'ListCustomLineItemVersionsInput')
    ListCustomLineItemVersionsOutput = Shapes::StructureShape.new(name: 'ListCustomLineItemVersionsOutput')
    ListCustomLineItemsFilter = Shapes::StructureShape.new(name: 'ListCustomLineItemsFilter')
    ListCustomLineItemsInput = Shapes::StructureShape.new(name: 'ListCustomLineItemsInput')
    ListCustomLineItemsOutput = Shapes::StructureShape.new(name: 'ListCustomLineItemsOutput')
    ListPricingPlansAssociatedWithPricingRuleInput = Shapes::StructureShape.new(name: 'ListPricingPlansAssociatedWithPricingRuleInput')
    ListPricingPlansAssociatedWithPricingRuleOutput = Shapes::StructureShape.new(name: 'ListPricingPlansAssociatedWithPricingRuleOutput')
    ListPricingPlansFilter = Shapes::StructureShape.new(name: 'ListPricingPlansFilter')
    ListPricingPlansInput = Shapes::StructureShape.new(name: 'ListPricingPlansInput')
    ListPricingPlansOutput = Shapes::StructureShape.new(name: 'ListPricingPlansOutput')
    ListPricingRulesAssociatedToPricingPlanInput = Shapes::StructureShape.new(name: 'ListPricingRulesAssociatedToPricingPlanInput')
    ListPricingRulesAssociatedToPricingPlanOutput = Shapes::StructureShape.new(name: 'ListPricingRulesAssociatedToPricingPlanOutput')
    ListPricingRulesFilter = Shapes::StructureShape.new(name: 'ListPricingRulesFilter')
    ListPricingRulesInput = Shapes::StructureShape.new(name: 'ListPricingRulesInput')
    ListPricingRulesOutput = Shapes::StructureShape.new(name: 'ListPricingRulesOutput')
    ListResourcesAssociatedToCustomLineItemFilter = Shapes::StructureShape.new(name: 'ListResourcesAssociatedToCustomLineItemFilter')
    ListResourcesAssociatedToCustomLineItemInput = Shapes::StructureShape.new(name: 'ListResourcesAssociatedToCustomLineItemInput')
    ListResourcesAssociatedToCustomLineItemOutput = Shapes::StructureShape.new(name: 'ListResourcesAssociatedToCustomLineItemOutput')
    ListResourcesAssociatedToCustomLineItemResponseElement = Shapes::StructureShape.new(name: 'ListResourcesAssociatedToCustomLineItemResponseElement')
    ListResourcesAssociatedToCustomLineItemResponseList = Shapes::ListShape.new(name: 'ListResourcesAssociatedToCustomLineItemResponseList')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Margin = Shapes::StringShape.new(name: 'Margin')
    MarginPercentage = Shapes::StringShape.new(name: 'MarginPercentage')
    MaxBillingGroupResults = Shapes::IntegerShape.new(name: 'MaxBillingGroupResults')
    MaxCustomLineItemResults = Shapes::IntegerShape.new(name: 'MaxCustomLineItemResults')
    MaxPricingPlanResults = Shapes::IntegerShape.new(name: 'MaxPricingPlanResults')
    MaxPricingRuleResults = Shapes::IntegerShape.new(name: 'MaxPricingRuleResults')
    ModifierPercentage = Shapes::FloatShape.new(name: 'ModifierPercentage')
    NumberOfAccounts = Shapes::IntegerShape.new(name: 'NumberOfAccounts')
    NumberOfAssociatedPricingRules = Shapes::IntegerShape.new(name: 'NumberOfAssociatedPricingRules')
    NumberOfAssociations = Shapes::IntegerShape.new(name: 'NumberOfAssociations')
    NumberOfPricingPlansAssociatedWith = Shapes::IntegerShape.new(name: 'NumberOfPricingPlansAssociatedWith')
    Operation = Shapes::StringShape.new(name: 'Operation')
    PricingPlanArn = Shapes::StringShape.new(name: 'PricingPlanArn')
    PricingPlanArns = Shapes::ListShape.new(name: 'PricingPlanArns')
    PricingPlanDescription = Shapes::StringShape.new(name: 'PricingPlanDescription')
    PricingPlanFullArn = Shapes::StringShape.new(name: 'PricingPlanFullArn')
    PricingPlanList = Shapes::ListShape.new(name: 'PricingPlanList')
    PricingPlanListElement = Shapes::StructureShape.new(name: 'PricingPlanListElement')
    PricingPlanName = Shapes::StringShape.new(name: 'PricingPlanName')
    PricingRuleArn = Shapes::StringShape.new(name: 'PricingRuleArn')
    PricingRuleArns = Shapes::ListShape.new(name: 'PricingRuleArns')
    PricingRuleArnsInput = Shapes::ListShape.new(name: 'PricingRuleArnsInput')
    PricingRuleArnsNonEmptyInput = Shapes::ListShape.new(name: 'PricingRuleArnsNonEmptyInput')
    PricingRuleDescription = Shapes::StringShape.new(name: 'PricingRuleDescription')
    PricingRuleList = Shapes::ListShape.new(name: 'PricingRuleList')
    PricingRuleListElement = Shapes::StructureShape.new(name: 'PricingRuleListElement')
    PricingRuleName = Shapes::StringShape.new(name: 'PricingRuleName')
    PricingRuleScope = Shapes::StringShape.new(name: 'PricingRuleScope')
    PricingRuleType = Shapes::StringShape.new(name: 'PricingRuleType')
    ProformaCost = Shapes::StringShape.new(name: 'ProformaCost')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    Service = Shapes::StringShape.new(name: 'Service')
    ServiceLimitExceededException = Shapes::StructureShape.new(name: 'ServiceLimitExceededException')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Tiering = Shapes::StructureShape.new(name: 'Tiering')
    TieringActivated = Shapes::BooleanShape.new(name: 'TieringActivated')
    Token = Shapes::StringShape.new(name: 'Token')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateBillingGroupInput = Shapes::StructureShape.new(name: 'UpdateBillingGroupInput')
    UpdateBillingGroupOutput = Shapes::StructureShape.new(name: 'UpdateBillingGroupOutput')
    UpdateCustomLineItemChargeDetails = Shapes::StructureShape.new(name: 'UpdateCustomLineItemChargeDetails')
    UpdateCustomLineItemFlatChargeDetails = Shapes::StructureShape.new(name: 'UpdateCustomLineItemFlatChargeDetails')
    UpdateCustomLineItemInput = Shapes::StructureShape.new(name: 'UpdateCustomLineItemInput')
    UpdateCustomLineItemOutput = Shapes::StructureShape.new(name: 'UpdateCustomLineItemOutput')
    UpdateCustomLineItemPercentageChargeDetails = Shapes::StructureShape.new(name: 'UpdateCustomLineItemPercentageChargeDetails')
    UpdateFreeTierConfig = Shapes::StructureShape.new(name: 'UpdateFreeTierConfig')
    UpdatePricingPlanInput = Shapes::StructureShape.new(name: 'UpdatePricingPlanInput')
    UpdatePricingPlanOutput = Shapes::StructureShape.new(name: 'UpdatePricingPlanOutput')
    UpdatePricingRuleInput = Shapes::StructureShape.new(name: 'UpdatePricingRuleInput')
    UpdatePricingRuleOutput = Shapes::StructureShape.new(name: 'UpdatePricingRuleOutput')
    UpdateTieringInput = Shapes::StructureShape.new(name: 'UpdateTieringInput')
    UsageType = Shapes::StringShape.new(name: 'UsageType')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountAssociationsList.member = Shapes::ShapeRef.new(shape: AccountAssociationsListElement)

    AccountAssociationsListElement.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AccountAssociationsListElement.add_member(:billing_group_arn, Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "BillingGroupArn"))
    AccountAssociationsListElement.add_member(:account_name, Shapes::ShapeRef.new(shape: AccountName, location_name: "AccountName"))
    AccountAssociationsListElement.add_member(:account_email, Shapes::ShapeRef.new(shape: AccountEmail, location_name: "AccountEmail"))
    AccountAssociationsListElement.struct_class = Types::AccountAssociationsListElement

    AccountGrouping.add_member(:linked_account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "LinkedAccountIds"))
    AccountGrouping.struct_class = Types::AccountGrouping

    AccountIdFilterList.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    AssociateAccountsInput.add_member(:arn, Shapes::ShapeRef.new(shape: BillingGroupArn, required: true, location_name: "Arn"))
    AssociateAccountsInput.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    AssociateAccountsInput.struct_class = Types::AssociateAccountsInput

    AssociateAccountsOutput.add_member(:arn, Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    AssociateAccountsOutput.struct_class = Types::AssociateAccountsOutput

    AssociatePricingRulesInput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingPlanArn, required: true, location_name: "Arn"))
    AssociatePricingRulesInput.add_member(:pricing_rule_arns, Shapes::ShapeRef.new(shape: PricingRuleArnsNonEmptyInput, required: true, location_name: "PricingRuleArns"))
    AssociatePricingRulesInput.struct_class = Types::AssociatePricingRulesInput

    AssociatePricingRulesOutput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    AssociatePricingRulesOutput.struct_class = Types::AssociatePricingRulesOutput

    AssociateResourceError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AssociateResourceError.add_member(:reason, Shapes::ShapeRef.new(shape: AssociateResourceErrorReason, location_name: "Reason"))
    AssociateResourceError.struct_class = Types::AssociateResourceError

    AssociateResourceResponseElement.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement, location_name: "Arn"))
    AssociateResourceResponseElement.add_member(:error, Shapes::ShapeRef.new(shape: AssociateResourceError, location_name: "Error"))
    AssociateResourceResponseElement.struct_class = Types::AssociateResourceResponseElement

    AssociateResourcesResponseList.member = Shapes::ShapeRef.new(shape: AssociateResourceResponseElement)

    BatchAssociateResourcesToCustomLineItemInput.add_member(:target_arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, required: true, location_name: "TargetArn"))
    BatchAssociateResourcesToCustomLineItemInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: CustomLineItemBatchAssociationsList, required: true, location_name: "ResourceArns"))
    BatchAssociateResourcesToCustomLineItemInput.add_member(:billing_period_range, Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: "BillingPeriodRange"))
    BatchAssociateResourcesToCustomLineItemInput.struct_class = Types::BatchAssociateResourcesToCustomLineItemInput

    BatchAssociateResourcesToCustomLineItemOutput.add_member(:successfully_associated_resources, Shapes::ShapeRef.new(shape: AssociateResourcesResponseList, location_name: "SuccessfullyAssociatedResources"))
    BatchAssociateResourcesToCustomLineItemOutput.add_member(:failed_associated_resources, Shapes::ShapeRef.new(shape: AssociateResourcesResponseList, location_name: "FailedAssociatedResources"))
    BatchAssociateResourcesToCustomLineItemOutput.struct_class = Types::BatchAssociateResourcesToCustomLineItemOutput

    BatchDisassociateResourcesFromCustomLineItemInput.add_member(:target_arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, required: true, location_name: "TargetArn"))
    BatchDisassociateResourcesFromCustomLineItemInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: CustomLineItemBatchDisassociationsList, required: true, location_name: "ResourceArns"))
    BatchDisassociateResourcesFromCustomLineItemInput.add_member(:billing_period_range, Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: "BillingPeriodRange"))
    BatchDisassociateResourcesFromCustomLineItemInput.struct_class = Types::BatchDisassociateResourcesFromCustomLineItemInput

    BatchDisassociateResourcesFromCustomLineItemOutput.add_member(:successfully_disassociated_resources, Shapes::ShapeRef.new(shape: DisassociateResourcesResponseList, location_name: "SuccessfullyDisassociatedResources"))
    BatchDisassociateResourcesFromCustomLineItemOutput.add_member(:failed_disassociated_resources, Shapes::ShapeRef.new(shape: DisassociateResourcesResponseList, location_name: "FailedDisassociatedResources"))
    BatchDisassociateResourcesFromCustomLineItemOutput.struct_class = Types::BatchDisassociateResourcesFromCustomLineItemOutput

    BillingGroupArnList.member = Shapes::ShapeRef.new(shape: BillingGroupArn)

    BillingGroupCostReportElement.add_member(:arn, Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    BillingGroupCostReportElement.add_member(:aws_cost, Shapes::ShapeRef.new(shape: AWSCost, location_name: "AWSCost"))
    BillingGroupCostReportElement.add_member(:proforma_cost, Shapes::ShapeRef.new(shape: ProformaCost, location_name: "ProformaCost"))
    BillingGroupCostReportElement.add_member(:margin, Shapes::ShapeRef.new(shape: Margin, location_name: "Margin"))
    BillingGroupCostReportElement.add_member(:margin_percentage, Shapes::ShapeRef.new(shape: MarginPercentage, location_name: "MarginPercentage"))
    BillingGroupCostReportElement.add_member(:currency, Shapes::ShapeRef.new(shape: Currency, location_name: "Currency"))
    BillingGroupCostReportElement.struct_class = Types::BillingGroupCostReportElement

    BillingGroupCostReportList.member = Shapes::ShapeRef.new(shape: BillingGroupCostReportElement)

    BillingGroupList.member = Shapes::ShapeRef.new(shape: BillingGroupListElement)

    BillingGroupListElement.add_member(:name, Shapes::ShapeRef.new(shape: BillingGroupName, location_name: "Name"))
    BillingGroupListElement.add_member(:arn, Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    BillingGroupListElement.add_member(:description, Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: "Description"))
    BillingGroupListElement.add_member(:primary_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "PrimaryAccountId"))
    BillingGroupListElement.add_member(:computation_preference, Shapes::ShapeRef.new(shape: ComputationPreference, location_name: "ComputationPreference"))
    BillingGroupListElement.add_member(:size, Shapes::ShapeRef.new(shape: NumberOfAccounts, location_name: "Size"))
    BillingGroupListElement.add_member(:creation_time, Shapes::ShapeRef.new(shape: Instant, location_name: "CreationTime"))
    BillingGroupListElement.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime"))
    BillingGroupListElement.add_member(:status, Shapes::ShapeRef.new(shape: BillingGroupStatus, location_name: "Status"))
    BillingGroupListElement.add_member(:status_reason, Shapes::ShapeRef.new(shape: BillingGroupStatusReason, location_name: "StatusReason"))
    BillingGroupListElement.struct_class = Types::BillingGroupListElement

    BillingGroupStatusList.member = Shapes::ShapeRef.new(shape: BillingGroupStatus)

    ComputationPreference.add_member(:pricing_plan_arn, Shapes::ShapeRef.new(shape: PricingPlanFullArn, required: true, location_name: "PricingPlanArn"))
    ComputationPreference.struct_class = Types::ComputationPreference

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: "Reason"))
    ConflictException.struct_class = Types::ConflictException

    CreateBillingGroupInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateBillingGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: BillingGroupName, required: true, location_name: "Name"))
    CreateBillingGroupInput.add_member(:account_grouping, Shapes::ShapeRef.new(shape: AccountGrouping, required: true, location_name: "AccountGrouping"))
    CreateBillingGroupInput.add_member(:computation_preference, Shapes::ShapeRef.new(shape: ComputationPreference, required: true, location_name: "ComputationPreference"))
    CreateBillingGroupInput.add_member(:primary_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "PrimaryAccountId"))
    CreateBillingGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: "Description"))
    CreateBillingGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateBillingGroupInput.struct_class = Types::CreateBillingGroupInput

    CreateBillingGroupOutput.add_member(:arn, Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    CreateBillingGroupOutput.struct_class = Types::CreateBillingGroupOutput

    CreateCustomLineItemInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreateCustomLineItemInput.add_member(:name, Shapes::ShapeRef.new(shape: CustomLineItemName, required: true, location_name: "Name"))
    CreateCustomLineItemInput.add_member(:description, Shapes::ShapeRef.new(shape: CustomLineItemDescription, required: true, location_name: "Description"))
    CreateCustomLineItemInput.add_member(:billing_group_arn, Shapes::ShapeRef.new(shape: BillingGroupArn, required: true, location_name: "BillingGroupArn"))
    CreateCustomLineItemInput.add_member(:billing_period_range, Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: "BillingPeriodRange"))
    CreateCustomLineItemInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateCustomLineItemInput.add_member(:charge_details, Shapes::ShapeRef.new(shape: CustomLineItemChargeDetails, required: true, location_name: "ChargeDetails"))
    CreateCustomLineItemInput.struct_class = Types::CreateCustomLineItemInput

    CreateCustomLineItemOutput.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    CreateCustomLineItemOutput.struct_class = Types::CreateCustomLineItemOutput

    CreateFreeTierConfig.add_member(:activated, Shapes::ShapeRef.new(shape: TieringActivated, required: true, location_name: "Activated"))
    CreateFreeTierConfig.struct_class = Types::CreateFreeTierConfig

    CreatePricingPlanInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreatePricingPlanInput.add_member(:name, Shapes::ShapeRef.new(shape: PricingPlanName, required: true, location_name: "Name"))
    CreatePricingPlanInput.add_member(:description, Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: "Description"))
    CreatePricingPlanInput.add_member(:pricing_rule_arns, Shapes::ShapeRef.new(shape: PricingRuleArnsInput, location_name: "PricingRuleArns"))
    CreatePricingPlanInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreatePricingPlanInput.struct_class = Types::CreatePricingPlanInput

    CreatePricingPlanOutput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    CreatePricingPlanOutput.struct_class = Types::CreatePricingPlanOutput

    CreatePricingRuleInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "header", location_name: "X-Amzn-Client-Token", metadata: {"idempotencyToken"=>true}))
    CreatePricingRuleInput.add_member(:name, Shapes::ShapeRef.new(shape: PricingRuleName, required: true, location_name: "Name"))
    CreatePricingRuleInput.add_member(:description, Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: "Description"))
    CreatePricingRuleInput.add_member(:scope, Shapes::ShapeRef.new(shape: PricingRuleScope, required: true, location_name: "Scope"))
    CreatePricingRuleInput.add_member(:type, Shapes::ShapeRef.new(shape: PricingRuleType, required: true, location_name: "Type"))
    CreatePricingRuleInput.add_member(:modifier_percentage, Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: "ModifierPercentage"))
    CreatePricingRuleInput.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "Service"))
    CreatePricingRuleInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreatePricingRuleInput.add_member(:billing_entity, Shapes::ShapeRef.new(shape: BillingEntity, location_name: "BillingEntity"))
    CreatePricingRuleInput.add_member(:tiering, Shapes::ShapeRef.new(shape: CreateTieringInput, location_name: "Tiering"))
    CreatePricingRuleInput.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, location_name: "UsageType"))
    CreatePricingRuleInput.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "Operation"))
    CreatePricingRuleInput.struct_class = Types::CreatePricingRuleInput

    CreatePricingRuleOutput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "Arn"))
    CreatePricingRuleOutput.struct_class = Types::CreatePricingRuleOutput

    CreateTieringInput.add_member(:free_tier, Shapes::ShapeRef.new(shape: CreateFreeTierConfig, required: true, location_name: "FreeTier"))
    CreateTieringInput.struct_class = Types::CreateTieringInput

    CustomLineItemArns.member = Shapes::ShapeRef.new(shape: CustomLineItemArn)

    CustomLineItemAssociationsList.member = Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement)

    CustomLineItemBatchAssociationsList.member = Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement)

    CustomLineItemBatchDisassociationsList.member = Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement)

    CustomLineItemBillingPeriodRange.add_member(:inclusive_start_billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, required: true, location_name: "InclusiveStartBillingPeriod"))
    CustomLineItemBillingPeriodRange.add_member(:exclusive_end_billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "ExclusiveEndBillingPeriod"))
    CustomLineItemBillingPeriodRange.struct_class = Types::CustomLineItemBillingPeriodRange

    CustomLineItemChargeDetails.add_member(:flat, Shapes::ShapeRef.new(shape: CustomLineItemFlatChargeDetails, location_name: "Flat"))
    CustomLineItemChargeDetails.add_member(:percentage, Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeDetails, location_name: "Percentage"))
    CustomLineItemChargeDetails.add_member(:type, Shapes::ShapeRef.new(shape: CustomLineItemType, required: true, location_name: "Type"))
    CustomLineItemChargeDetails.struct_class = Types::CustomLineItemChargeDetails

    CustomLineItemFlatChargeDetails.add_member(:charge_value, Shapes::ShapeRef.new(shape: CustomLineItemChargeValue, required: true, location_name: "ChargeValue"))
    CustomLineItemFlatChargeDetails.struct_class = Types::CustomLineItemFlatChargeDetails

    CustomLineItemList.member = Shapes::ShapeRef.new(shape: CustomLineItemListElement)

    CustomLineItemListElement.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    CustomLineItemListElement.add_member(:name, Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: "Name"))
    CustomLineItemListElement.add_member(:charge_details, Shapes::ShapeRef.new(shape: ListCustomLineItemChargeDetails, location_name: "ChargeDetails"))
    CustomLineItemListElement.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "CurrencyCode"))
    CustomLineItemListElement.add_member(:description, Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: "Description"))
    CustomLineItemListElement.add_member(:product_code, Shapes::ShapeRef.new(shape: CustomLineItemProductCode, location_name: "ProductCode"))
    CustomLineItemListElement.add_member(:billing_group_arn, Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "BillingGroupArn"))
    CustomLineItemListElement.add_member(:creation_time, Shapes::ShapeRef.new(shape: Instant, location_name: "CreationTime"))
    CustomLineItemListElement.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime"))
    CustomLineItemListElement.add_member(:association_size, Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "AssociationSize"))
    CustomLineItemListElement.struct_class = Types::CustomLineItemListElement

    CustomLineItemNameList.member = Shapes::ShapeRef.new(shape: CustomLineItemName)

    CustomLineItemPercentageChargeDetails.add_member(:percentage_value, Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeValue, required: true, location_name: "PercentageValue"))
    CustomLineItemPercentageChargeDetails.add_member(:associated_values, Shapes::ShapeRef.new(shape: CustomLineItemAssociationsList, location_name: "AssociatedValues"))
    CustomLineItemPercentageChargeDetails.struct_class = Types::CustomLineItemPercentageChargeDetails

    CustomLineItemVersionList.member = Shapes::ShapeRef.new(shape: CustomLineItemVersionListElement)

    CustomLineItemVersionListElement.add_member(:name, Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: "Name"))
    CustomLineItemVersionListElement.add_member(:charge_details, Shapes::ShapeRef.new(shape: ListCustomLineItemChargeDetails, location_name: "ChargeDetails"))
    CustomLineItemVersionListElement.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "CurrencyCode"))
    CustomLineItemVersionListElement.add_member(:description, Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: "Description"))
    CustomLineItemVersionListElement.add_member(:product_code, Shapes::ShapeRef.new(shape: CustomLineItemProductCode, location_name: "ProductCode"))
    CustomLineItemVersionListElement.add_member(:billing_group_arn, Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "BillingGroupArn"))
    CustomLineItemVersionListElement.add_member(:creation_time, Shapes::ShapeRef.new(shape: Instant, location_name: "CreationTime"))
    CustomLineItemVersionListElement.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime"))
    CustomLineItemVersionListElement.add_member(:association_size, Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "AssociationSize"))
    CustomLineItemVersionListElement.add_member(:start_billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "StartBillingPeriod"))
    CustomLineItemVersionListElement.add_member(:end_billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "EndBillingPeriod"))
    CustomLineItemVersionListElement.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    CustomLineItemVersionListElement.add_member(:start_time, Shapes::ShapeRef.new(shape: Instant, location_name: "StartTime"))
    CustomLineItemVersionListElement.struct_class = Types::CustomLineItemVersionListElement

    DeleteBillingGroupInput.add_member(:arn, Shapes::ShapeRef.new(shape: BillingGroupArn, required: true, location_name: "Arn"))
    DeleteBillingGroupInput.struct_class = Types::DeleteBillingGroupInput

    DeleteBillingGroupOutput.add_member(:arn, Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    DeleteBillingGroupOutput.struct_class = Types::DeleteBillingGroupOutput

    DeleteCustomLineItemInput.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, required: true, location_name: "Arn"))
    DeleteCustomLineItemInput.add_member(:billing_period_range, Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: "BillingPeriodRange"))
    DeleteCustomLineItemInput.struct_class = Types::DeleteCustomLineItemInput

    DeleteCustomLineItemOutput.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    DeleteCustomLineItemOutput.struct_class = Types::DeleteCustomLineItemOutput

    DeletePricingPlanInput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingPlanArn, required: true, location_name: "Arn"))
    DeletePricingPlanInput.struct_class = Types::DeletePricingPlanInput

    DeletePricingPlanOutput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    DeletePricingPlanOutput.struct_class = Types::DeletePricingPlanOutput

    DeletePricingRuleInput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingRuleArn, required: true, location_name: "Arn"))
    DeletePricingRuleInput.struct_class = Types::DeletePricingRuleInput

    DeletePricingRuleOutput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "Arn"))
    DeletePricingRuleOutput.struct_class = Types::DeletePricingRuleOutput

    DisassociateAccountsInput.add_member(:arn, Shapes::ShapeRef.new(shape: BillingGroupArn, required: true, location_name: "Arn"))
    DisassociateAccountsInput.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    DisassociateAccountsInput.struct_class = Types::DisassociateAccountsInput

    DisassociateAccountsOutput.add_member(:arn, Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    DisassociateAccountsOutput.struct_class = Types::DisassociateAccountsOutput

    DisassociatePricingRulesInput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingPlanArn, required: true, location_name: "Arn"))
    DisassociatePricingRulesInput.add_member(:pricing_rule_arns, Shapes::ShapeRef.new(shape: PricingRuleArnsNonEmptyInput, required: true, location_name: "PricingRuleArns"))
    DisassociatePricingRulesInput.struct_class = Types::DisassociatePricingRulesInput

    DisassociatePricingRulesOutput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    DisassociatePricingRulesOutput.struct_class = Types::DisassociatePricingRulesOutput

    DisassociateResourceResponseElement.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement, location_name: "Arn"))
    DisassociateResourceResponseElement.add_member(:error, Shapes::ShapeRef.new(shape: AssociateResourceError, location_name: "Error"))
    DisassociateResourceResponseElement.struct_class = Types::DisassociateResourceResponseElement

    DisassociateResourcesResponseList.member = Shapes::ShapeRef.new(shape: DisassociateResourceResponseElement)

    FreeTierConfig.add_member(:activated, Shapes::ShapeRef.new(shape: TieringActivated, required: true, location_name: "Activated"))
    FreeTierConfig.struct_class = Types::FreeTierConfig

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAccountAssociationsFilter.add_member(:association, Shapes::ShapeRef.new(shape: Association, location_name: "Association"))
    ListAccountAssociationsFilter.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    ListAccountAssociationsFilter.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdFilterList, location_name: "AccountIds"))
    ListAccountAssociationsFilter.struct_class = Types::ListAccountAssociationsFilter

    ListAccountAssociationsInput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListAccountAssociationsInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListAccountAssociationsFilter, location_name: "Filters"))
    ListAccountAssociationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssociationsInput.struct_class = Types::ListAccountAssociationsInput

    ListAccountAssociationsOutput.add_member(:linked_accounts, Shapes::ShapeRef.new(shape: AccountAssociationsList, location_name: "LinkedAccounts"))
    ListAccountAssociationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssociationsOutput.struct_class = Types::ListAccountAssociationsOutput

    ListBillingGroupCostReportsFilter.add_member(:billing_group_arns, Shapes::ShapeRef.new(shape: BillingGroupArnList, location_name: "BillingGroupArns"))
    ListBillingGroupCostReportsFilter.struct_class = Types::ListBillingGroupCostReportsFilter

    ListBillingGroupCostReportsInput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListBillingGroupCostReportsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxBillingGroupResults, location_name: "MaxResults"))
    ListBillingGroupCostReportsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListBillingGroupCostReportsInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListBillingGroupCostReportsFilter, location_name: "Filters"))
    ListBillingGroupCostReportsInput.struct_class = Types::ListBillingGroupCostReportsInput

    ListBillingGroupCostReportsOutput.add_member(:billing_group_cost_reports, Shapes::ShapeRef.new(shape: BillingGroupCostReportList, location_name: "BillingGroupCostReports"))
    ListBillingGroupCostReportsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListBillingGroupCostReportsOutput.struct_class = Types::ListBillingGroupCostReportsOutput

    ListBillingGroupsFilter.add_member(:arns, Shapes::ShapeRef.new(shape: BillingGroupArnList, location_name: "Arns"))
    ListBillingGroupsFilter.add_member(:pricing_plan, Shapes::ShapeRef.new(shape: PricingPlanFullArn, location_name: "PricingPlan"))
    ListBillingGroupsFilter.add_member(:statuses, Shapes::ShapeRef.new(shape: BillingGroupStatusList, location_name: "Statuses"))
    ListBillingGroupsFilter.struct_class = Types::ListBillingGroupsFilter

    ListBillingGroupsInput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListBillingGroupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxBillingGroupResults, location_name: "MaxResults"))
    ListBillingGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListBillingGroupsInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListBillingGroupsFilter, location_name: "Filters"))
    ListBillingGroupsInput.struct_class = Types::ListBillingGroupsInput

    ListBillingGroupsOutput.add_member(:billing_groups, Shapes::ShapeRef.new(shape: BillingGroupList, location_name: "BillingGroups"))
    ListBillingGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListBillingGroupsOutput.struct_class = Types::ListBillingGroupsOutput

    ListCustomLineItemChargeDetails.add_member(:flat, Shapes::ShapeRef.new(shape: ListCustomLineItemFlatChargeDetails, location_name: "Flat"))
    ListCustomLineItemChargeDetails.add_member(:percentage, Shapes::ShapeRef.new(shape: ListCustomLineItemPercentageChargeDetails, location_name: "Percentage"))
    ListCustomLineItemChargeDetails.add_member(:type, Shapes::ShapeRef.new(shape: CustomLineItemType, required: true, location_name: "Type"))
    ListCustomLineItemChargeDetails.struct_class = Types::ListCustomLineItemChargeDetails

    ListCustomLineItemFlatChargeDetails.add_member(:charge_value, Shapes::ShapeRef.new(shape: CustomLineItemChargeValue, required: true, location_name: "ChargeValue"))
    ListCustomLineItemFlatChargeDetails.struct_class = Types::ListCustomLineItemFlatChargeDetails

    ListCustomLineItemPercentageChargeDetails.add_member(:percentage_value, Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeValue, required: true, location_name: "PercentageValue"))
    ListCustomLineItemPercentageChargeDetails.struct_class = Types::ListCustomLineItemPercentageChargeDetails

    ListCustomLineItemVersionsBillingPeriodRangeFilter.add_member(:start_billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "StartBillingPeriod"))
    ListCustomLineItemVersionsBillingPeriodRangeFilter.add_member(:end_billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "EndBillingPeriod"))
    ListCustomLineItemVersionsBillingPeriodRangeFilter.struct_class = Types::ListCustomLineItemVersionsBillingPeriodRangeFilter

    ListCustomLineItemVersionsFilter.add_member(:billing_period_range, Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsBillingPeriodRangeFilter, location_name: "BillingPeriodRange"))
    ListCustomLineItemVersionsFilter.struct_class = Types::ListCustomLineItemVersionsFilter

    ListCustomLineItemVersionsInput.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, required: true, location_name: "Arn"))
    ListCustomLineItemVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxCustomLineItemResults, location_name: "MaxResults"))
    ListCustomLineItemVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomLineItemVersionsInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsFilter, location_name: "Filters"))
    ListCustomLineItemVersionsInput.struct_class = Types::ListCustomLineItemVersionsInput

    ListCustomLineItemVersionsOutput.add_member(:custom_line_item_versions, Shapes::ShapeRef.new(shape: CustomLineItemVersionList, location_name: "CustomLineItemVersions"))
    ListCustomLineItemVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomLineItemVersionsOutput.struct_class = Types::ListCustomLineItemVersionsOutput

    ListCustomLineItemsFilter.add_member(:names, Shapes::ShapeRef.new(shape: CustomLineItemNameList, location_name: "Names"))
    ListCustomLineItemsFilter.add_member(:billing_groups, Shapes::ShapeRef.new(shape: BillingGroupArnList, location_name: "BillingGroups"))
    ListCustomLineItemsFilter.add_member(:arns, Shapes::ShapeRef.new(shape: CustomLineItemArns, location_name: "Arns"))
    ListCustomLineItemsFilter.struct_class = Types::ListCustomLineItemsFilter

    ListCustomLineItemsInput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListCustomLineItemsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxCustomLineItemResults, location_name: "MaxResults"))
    ListCustomLineItemsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomLineItemsInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListCustomLineItemsFilter, location_name: "Filters"))
    ListCustomLineItemsInput.struct_class = Types::ListCustomLineItemsInput

    ListCustomLineItemsOutput.add_member(:custom_line_items, Shapes::ShapeRef.new(shape: CustomLineItemList, location_name: "CustomLineItems"))
    ListCustomLineItemsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomLineItemsOutput.struct_class = Types::ListCustomLineItemsOutput

    ListPricingPlansAssociatedWithPricingRuleInput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingPlansAssociatedWithPricingRuleInput.add_member(:pricing_rule_arn, Shapes::ShapeRef.new(shape: PricingRuleArn, required: true, location_name: "PricingRuleArn"))
    ListPricingPlansAssociatedWithPricingRuleInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPricingRuleResults, location_name: "MaxResults"))
    ListPricingPlansAssociatedWithPricingRuleInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingPlansAssociatedWithPricingRuleInput.struct_class = Types::ListPricingPlansAssociatedWithPricingRuleInput

    ListPricingPlansAssociatedWithPricingRuleOutput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingPlansAssociatedWithPricingRuleOutput.add_member(:pricing_rule_arn, Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "PricingRuleArn"))
    ListPricingPlansAssociatedWithPricingRuleOutput.add_member(:pricing_plan_arns, Shapes::ShapeRef.new(shape: PricingPlanArns, location_name: "PricingPlanArns"))
    ListPricingPlansAssociatedWithPricingRuleOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingPlansAssociatedWithPricingRuleOutput.struct_class = Types::ListPricingPlansAssociatedWithPricingRuleOutput

    ListPricingPlansFilter.add_member(:arns, Shapes::ShapeRef.new(shape: PricingPlanArns, location_name: "Arns"))
    ListPricingPlansFilter.struct_class = Types::ListPricingPlansFilter

    ListPricingPlansInput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingPlansInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListPricingPlansFilter, location_name: "Filters"))
    ListPricingPlansInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPricingPlanResults, location_name: "MaxResults"))
    ListPricingPlansInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingPlansInput.struct_class = Types::ListPricingPlansInput

    ListPricingPlansOutput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingPlansOutput.add_member(:pricing_plans, Shapes::ShapeRef.new(shape: PricingPlanList, location_name: "PricingPlans"))
    ListPricingPlansOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingPlansOutput.struct_class = Types::ListPricingPlansOutput

    ListPricingRulesAssociatedToPricingPlanInput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingRulesAssociatedToPricingPlanInput.add_member(:pricing_plan_arn, Shapes::ShapeRef.new(shape: PricingPlanArn, required: true, location_name: "PricingPlanArn"))
    ListPricingRulesAssociatedToPricingPlanInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPricingPlanResults, location_name: "MaxResults"))
    ListPricingRulesAssociatedToPricingPlanInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingRulesAssociatedToPricingPlanInput.struct_class = Types::ListPricingRulesAssociatedToPricingPlanInput

    ListPricingRulesAssociatedToPricingPlanOutput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingRulesAssociatedToPricingPlanOutput.add_member(:pricing_plan_arn, Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "PricingPlanArn"))
    ListPricingRulesAssociatedToPricingPlanOutput.add_member(:pricing_rule_arns, Shapes::ShapeRef.new(shape: PricingRuleArns, location_name: "PricingRuleArns"))
    ListPricingRulesAssociatedToPricingPlanOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingRulesAssociatedToPricingPlanOutput.struct_class = Types::ListPricingRulesAssociatedToPricingPlanOutput

    ListPricingRulesFilter.add_member(:arns, Shapes::ShapeRef.new(shape: PricingRuleArns, location_name: "Arns"))
    ListPricingRulesFilter.struct_class = Types::ListPricingRulesFilter

    ListPricingRulesInput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingRulesInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListPricingRulesFilter, location_name: "Filters"))
    ListPricingRulesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPricingRuleResults, location_name: "MaxResults"))
    ListPricingRulesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingRulesInput.struct_class = Types::ListPricingRulesInput

    ListPricingRulesOutput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingRulesOutput.add_member(:pricing_rules, Shapes::ShapeRef.new(shape: PricingRuleList, location_name: "PricingRules"))
    ListPricingRulesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingRulesOutput.struct_class = Types::ListPricingRulesOutput

    ListResourcesAssociatedToCustomLineItemFilter.add_member(:relationship, Shapes::ShapeRef.new(shape: CustomLineItemRelationship, location_name: "Relationship"))
    ListResourcesAssociatedToCustomLineItemFilter.struct_class = Types::ListResourcesAssociatedToCustomLineItemFilter

    ListResourcesAssociatedToCustomLineItemInput.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListResourcesAssociatedToCustomLineItemInput.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, required: true, location_name: "Arn"))
    ListResourcesAssociatedToCustomLineItemInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxCustomLineItemResults, location_name: "MaxResults"))
    ListResourcesAssociatedToCustomLineItemInput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListResourcesAssociatedToCustomLineItemInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemFilter, location_name: "Filters"))
    ListResourcesAssociatedToCustomLineItemInput.struct_class = Types::ListResourcesAssociatedToCustomLineItemInput

    ListResourcesAssociatedToCustomLineItemOutput.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    ListResourcesAssociatedToCustomLineItemOutput.add_member(:associated_resources, Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemResponseList, location_name: "AssociatedResources"))
    ListResourcesAssociatedToCustomLineItemOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListResourcesAssociatedToCustomLineItemOutput.struct_class = Types::ListResourcesAssociatedToCustomLineItemOutput

    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement, location_name: "Arn"))
    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:relationship, Shapes::ShapeRef.new(shape: CustomLineItemRelationship, location_name: "Relationship"))
    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:end_billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "EndBillingPeriod"))
    ListResourcesAssociatedToCustomLineItemResponseElement.struct_class = Types::ListResourcesAssociatedToCustomLineItemResponseElement

    ListResourcesAssociatedToCustomLineItemResponseList.member = Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemResponseElement)

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PricingPlanArns.member = Shapes::ShapeRef.new(shape: PricingPlanArn)

    PricingPlanList.member = Shapes::ShapeRef.new(shape: PricingPlanListElement)

    PricingPlanListElement.add_member(:name, Shapes::ShapeRef.new(shape: PricingPlanName, location_name: "Name"))
    PricingPlanListElement.add_member(:arn, Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    PricingPlanListElement.add_member(:description, Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: "Description"))
    PricingPlanListElement.add_member(:size, Shapes::ShapeRef.new(shape: NumberOfAssociatedPricingRules, location_name: "Size"))
    PricingPlanListElement.add_member(:creation_time, Shapes::ShapeRef.new(shape: Instant, location_name: "CreationTime"))
    PricingPlanListElement.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime"))
    PricingPlanListElement.struct_class = Types::PricingPlanListElement

    PricingRuleArns.member = Shapes::ShapeRef.new(shape: PricingRuleArn)

    PricingRuleArnsInput.member = Shapes::ShapeRef.new(shape: PricingRuleArn)

    PricingRuleArnsNonEmptyInput.member = Shapes::ShapeRef.new(shape: PricingRuleArn)

    PricingRuleList.member = Shapes::ShapeRef.new(shape: PricingRuleListElement)

    PricingRuleListElement.add_member(:name, Shapes::ShapeRef.new(shape: PricingRuleName, location_name: "Name"))
    PricingRuleListElement.add_member(:arn, Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "Arn"))
    PricingRuleListElement.add_member(:description, Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: "Description"))
    PricingRuleListElement.add_member(:scope, Shapes::ShapeRef.new(shape: PricingRuleScope, location_name: "Scope"))
    PricingRuleListElement.add_member(:type, Shapes::ShapeRef.new(shape: PricingRuleType, location_name: "Type"))
    PricingRuleListElement.add_member(:modifier_percentage, Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: "ModifierPercentage"))
    PricingRuleListElement.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "Service"))
    PricingRuleListElement.add_member(:associated_pricing_plan_count, Shapes::ShapeRef.new(shape: NumberOfPricingPlansAssociatedWith, location_name: "AssociatedPricingPlanCount"))
    PricingRuleListElement.add_member(:creation_time, Shapes::ShapeRef.new(shape: Instant, location_name: "CreationTime"))
    PricingRuleListElement.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime"))
    PricingRuleListElement.add_member(:billing_entity, Shapes::ShapeRef.new(shape: BillingEntity, location_name: "BillingEntity"))
    PricingRuleListElement.add_member(:tiering, Shapes::ShapeRef.new(shape: Tiering, location_name: "Tiering"))
    PricingRuleListElement.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, location_name: "UsageType"))
    PricingRuleListElement.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "Operation"))
    PricingRuleListElement.struct_class = Types::PricingRuleListElement

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceLimitExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ServiceLimitExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ServiceLimitExceededException.add_member(:limit_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LimitCode"))
    ServiceLimitExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ServiceLimitExceededException.struct_class = Types::ServiceLimitExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Tiering.add_member(:free_tier, Shapes::ShapeRef.new(shape: FreeTierConfig, required: true, location_name: "FreeTier"))
    Tiering.struct_class = Types::Tiering

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateBillingGroupInput.add_member(:arn, Shapes::ShapeRef.new(shape: BillingGroupArn, required: true, location_name: "Arn"))
    UpdateBillingGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: BillingGroupName, location_name: "Name"))
    UpdateBillingGroupInput.add_member(:status, Shapes::ShapeRef.new(shape: BillingGroupStatus, location_name: "Status"))
    UpdateBillingGroupInput.add_member(:computation_preference, Shapes::ShapeRef.new(shape: ComputationPreference, location_name: "ComputationPreference"))
    UpdateBillingGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: "Description"))
    UpdateBillingGroupInput.struct_class = Types::UpdateBillingGroupInput

    UpdateBillingGroupOutput.add_member(:arn, Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    UpdateBillingGroupOutput.add_member(:name, Shapes::ShapeRef.new(shape: BillingGroupName, location_name: "Name"))
    UpdateBillingGroupOutput.add_member(:description, Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: "Description"))
    UpdateBillingGroupOutput.add_member(:primary_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "PrimaryAccountId"))
    UpdateBillingGroupOutput.add_member(:pricing_plan_arn, Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "PricingPlanArn"))
    UpdateBillingGroupOutput.add_member(:size, Shapes::ShapeRef.new(shape: NumberOfAccounts, location_name: "Size"))
    UpdateBillingGroupOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime"))
    UpdateBillingGroupOutput.add_member(:status, Shapes::ShapeRef.new(shape: BillingGroupStatus, location_name: "Status"))
    UpdateBillingGroupOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: BillingGroupStatusReason, location_name: "StatusReason"))
    UpdateBillingGroupOutput.struct_class = Types::UpdateBillingGroupOutput

    UpdateCustomLineItemChargeDetails.add_member(:flat, Shapes::ShapeRef.new(shape: UpdateCustomLineItemFlatChargeDetails, location_name: "Flat"))
    UpdateCustomLineItemChargeDetails.add_member(:percentage, Shapes::ShapeRef.new(shape: UpdateCustomLineItemPercentageChargeDetails, location_name: "Percentage"))
    UpdateCustomLineItemChargeDetails.struct_class = Types::UpdateCustomLineItemChargeDetails

    UpdateCustomLineItemFlatChargeDetails.add_member(:charge_value, Shapes::ShapeRef.new(shape: CustomLineItemChargeValue, required: true, location_name: "ChargeValue"))
    UpdateCustomLineItemFlatChargeDetails.struct_class = Types::UpdateCustomLineItemFlatChargeDetails

    UpdateCustomLineItemInput.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, required: true, location_name: "Arn"))
    UpdateCustomLineItemInput.add_member(:name, Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: "Name"))
    UpdateCustomLineItemInput.add_member(:description, Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: "Description"))
    UpdateCustomLineItemInput.add_member(:charge_details, Shapes::ShapeRef.new(shape: UpdateCustomLineItemChargeDetails, location_name: "ChargeDetails"))
    UpdateCustomLineItemInput.add_member(:billing_period_range, Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: "BillingPeriodRange"))
    UpdateCustomLineItemInput.struct_class = Types::UpdateCustomLineItemInput

    UpdateCustomLineItemOutput.add_member(:arn, Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    UpdateCustomLineItemOutput.add_member(:billing_group_arn, Shapes::ShapeRef.new(shape: BillingGroupFullArn, location_name: "BillingGroupArn"))
    UpdateCustomLineItemOutput.add_member(:name, Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: "Name"))
    UpdateCustomLineItemOutput.add_member(:description, Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: "Description"))
    UpdateCustomLineItemOutput.add_member(:charge_details, Shapes::ShapeRef.new(shape: ListCustomLineItemChargeDetails, location_name: "ChargeDetails"))
    UpdateCustomLineItemOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime"))
    UpdateCustomLineItemOutput.add_member(:association_size, Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "AssociationSize"))
    UpdateCustomLineItemOutput.struct_class = Types::UpdateCustomLineItemOutput

    UpdateCustomLineItemPercentageChargeDetails.add_member(:percentage_value, Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeValue, required: true, location_name: "PercentageValue"))
    UpdateCustomLineItemPercentageChargeDetails.struct_class = Types::UpdateCustomLineItemPercentageChargeDetails

    UpdateFreeTierConfig.add_member(:activated, Shapes::ShapeRef.new(shape: TieringActivated, required: true, location_name: "Activated"))
    UpdateFreeTierConfig.struct_class = Types::UpdateFreeTierConfig

    UpdatePricingPlanInput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingPlanArn, required: true, location_name: "Arn"))
    UpdatePricingPlanInput.add_member(:name, Shapes::ShapeRef.new(shape: PricingPlanName, location_name: "Name"))
    UpdatePricingPlanInput.add_member(:description, Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: "Description"))
    UpdatePricingPlanInput.struct_class = Types::UpdatePricingPlanInput

    UpdatePricingPlanOutput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    UpdatePricingPlanOutput.add_member(:name, Shapes::ShapeRef.new(shape: PricingPlanName, location_name: "Name"))
    UpdatePricingPlanOutput.add_member(:description, Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: "Description"))
    UpdatePricingPlanOutput.add_member(:size, Shapes::ShapeRef.new(shape: NumberOfAssociatedPricingRules, location_name: "Size"))
    UpdatePricingPlanOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime"))
    UpdatePricingPlanOutput.struct_class = Types::UpdatePricingPlanOutput

    UpdatePricingRuleInput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingRuleArn, required: true, location_name: "Arn"))
    UpdatePricingRuleInput.add_member(:name, Shapes::ShapeRef.new(shape: PricingRuleName, location_name: "Name"))
    UpdatePricingRuleInput.add_member(:description, Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: "Description"))
    UpdatePricingRuleInput.add_member(:type, Shapes::ShapeRef.new(shape: PricingRuleType, location_name: "Type"))
    UpdatePricingRuleInput.add_member(:modifier_percentage, Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: "ModifierPercentage"))
    UpdatePricingRuleInput.add_member(:tiering, Shapes::ShapeRef.new(shape: UpdateTieringInput, location_name: "Tiering"))
    UpdatePricingRuleInput.struct_class = Types::UpdatePricingRuleInput

    UpdatePricingRuleOutput.add_member(:arn, Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "Arn"))
    UpdatePricingRuleOutput.add_member(:name, Shapes::ShapeRef.new(shape: PricingRuleName, location_name: "Name"))
    UpdatePricingRuleOutput.add_member(:description, Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: "Description"))
    UpdatePricingRuleOutput.add_member(:scope, Shapes::ShapeRef.new(shape: PricingRuleScope, location_name: "Scope"))
    UpdatePricingRuleOutput.add_member(:type, Shapes::ShapeRef.new(shape: PricingRuleType, location_name: "Type"))
    UpdatePricingRuleOutput.add_member(:modifier_percentage, Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: "ModifierPercentage"))
    UpdatePricingRuleOutput.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "Service"))
    UpdatePricingRuleOutput.add_member(:associated_pricing_plan_count, Shapes::ShapeRef.new(shape: NumberOfPricingPlansAssociatedWith, location_name: "AssociatedPricingPlanCount"))
    UpdatePricingRuleOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime"))
    UpdatePricingRuleOutput.add_member(:billing_entity, Shapes::ShapeRef.new(shape: BillingEntity, location_name: "BillingEntity"))
    UpdatePricingRuleOutput.add_member(:tiering, Shapes::ShapeRef.new(shape: UpdateTieringInput, location_name: "Tiering"))
    UpdatePricingRuleOutput.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageType, location_name: "UsageType"))
    UpdatePricingRuleOutput.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "Operation"))
    UpdatePricingRuleOutput.struct_class = Types::UpdatePricingRuleOutput

    UpdateTieringInput.add_member(:free_tier, Shapes::ShapeRef.new(shape: UpdateFreeTierConfig, required: true, location_name: "FreeTier"))
    UpdateTieringInput.struct_class = Types::UpdateTieringInput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-07-30"

      api.metadata = {
        "apiVersion" => "2021-07-30",
        "endpointPrefix" => "billingconductor",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWSBillingConductor",
        "serviceId" => "billingconductor",
        "signatureVersion" => "v4",
        "signingName" => "billingconductor",
        "uid" => "billingconductor-2021-07-30",
      }

      api.add_operation(:associate_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/associate-accounts"
        o.input = Shapes::ShapeRef.new(shape: AssociateAccountsInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateAccountsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:associate_pricing_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePricingRules"
        o.http_method = "PUT"
        o.http_request_uri = "/associate-pricing-rules"
        o.input = Shapes::ShapeRef.new(shape: AssociatePricingRulesInput)
        o.output = Shapes::ShapeRef.new(shape: AssociatePricingRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_associate_resources_to_custom_line_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAssociateResourcesToCustomLineItem"
        o.http_method = "PUT"
        o.http_request_uri = "/batch-associate-resources-to-custom-line-item"
        o.input = Shapes::ShapeRef.new(shape: BatchAssociateResourcesToCustomLineItemInput)
        o.output = Shapes::ShapeRef.new(shape: BatchAssociateResourcesToCustomLineItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_disassociate_resources_from_custom_line_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisassociateResourcesFromCustomLineItem"
        o.http_method = "PUT"
        o.http_request_uri = "/batch-disassociate-resources-from-custom-line-item"
        o.input = Shapes::ShapeRef.new(shape: BatchDisassociateResourcesFromCustomLineItemInput)
        o.output = Shapes::ShapeRef.new(shape: BatchDisassociateResourcesFromCustomLineItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_billing_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBillingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/create-billing-group"
        o.input = Shapes::ShapeRef.new(shape: CreateBillingGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBillingGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_custom_line_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomLineItem"
        o.http_method = "POST"
        o.http_request_uri = "/create-custom-line-item"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomLineItemInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomLineItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_pricing_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePricingPlan"
        o.http_method = "POST"
        o.http_request_uri = "/create-pricing-plan"
        o.input = Shapes::ShapeRef.new(shape: CreatePricingPlanInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePricingPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_pricing_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePricingRule"
        o.http_method = "POST"
        o.http_request_uri = "/create-pricing-rule"
        o.input = Shapes::ShapeRef.new(shape: CreatePricingRuleInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePricingRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_billing_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBillingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/delete-billing-group"
        o.input = Shapes::ShapeRef.new(shape: DeleteBillingGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteBillingGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_custom_line_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomLineItem"
        o.http_method = "POST"
        o.http_request_uri = "/delete-custom-line-item"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomLineItemInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomLineItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_pricing_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePricingPlan"
        o.http_method = "POST"
        o.http_request_uri = "/delete-pricing-plan"
        o.input = Shapes::ShapeRef.new(shape: DeletePricingPlanInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePricingPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_pricing_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePricingRule"
        o.http_method = "POST"
        o.http_request_uri = "/delete-pricing-rule"
        o.input = Shapes::ShapeRef.new(shape: DeletePricingRuleInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePricingRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/disassociate-accounts"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAccountsInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateAccountsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_pricing_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePricingRules"
        o.http_method = "PUT"
        o.http_request_uri = "/disassociate-pricing-rules"
        o.input = Shapes::ShapeRef.new(shape: DisassociatePricingRulesInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociatePricingRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_account_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/list-account-associations"
        o.input = Shapes::ShapeRef.new(shape: ListAccountAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAccountAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_billing_group_cost_reports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillingGroupCostReports"
        o.http_method = "POST"
        o.http_request_uri = "/list-billing-group-cost-reports"
        o.input = Shapes::ShapeRef.new(shape: ListBillingGroupCostReportsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBillingGroupCostReportsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_billing_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillingGroups"
        o.http_method = "POST"
        o.http_request_uri = "/list-billing-groups"
        o.input = Shapes::ShapeRef.new(shape: ListBillingGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBillingGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_line_item_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomLineItemVersions"
        o.http_method = "POST"
        o.http_request_uri = "/list-custom-line-item-versions"
        o.input = Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_line_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomLineItems"
        o.http_method = "POST"
        o.http_request_uri = "/list-custom-line-items"
        o.input = Shapes::ShapeRef.new(shape: ListCustomLineItemsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCustomLineItemsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pricing_plans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPricingPlans"
        o.http_method = "POST"
        o.http_request_uri = "/list-pricing-plans"
        o.input = Shapes::ShapeRef.new(shape: ListPricingPlansInput)
        o.output = Shapes::ShapeRef.new(shape: ListPricingPlansOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pricing_plans_associated_with_pricing_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPricingPlansAssociatedWithPricingRule"
        o.http_method = "POST"
        o.http_request_uri = "/list-pricing-plans-associated-with-pricing-rule"
        o.input = Shapes::ShapeRef.new(shape: ListPricingPlansAssociatedWithPricingRuleInput)
        o.output = Shapes::ShapeRef.new(shape: ListPricingPlansAssociatedWithPricingRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pricing_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPricingRules"
        o.http_method = "POST"
        o.http_request_uri = "/list-pricing-rules"
        o.input = Shapes::ShapeRef.new(shape: ListPricingRulesInput)
        o.output = Shapes::ShapeRef.new(shape: ListPricingRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pricing_rules_associated_to_pricing_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPricingRulesAssociatedToPricingPlan"
        o.http_method = "POST"
        o.http_request_uri = "/list-pricing-rules-associated-to-pricing-plan"
        o.input = Shapes::ShapeRef.new(shape: ListPricingRulesAssociatedToPricingPlanInput)
        o.output = Shapes::ShapeRef.new(shape: ListPricingRulesAssociatedToPricingPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resources_associated_to_custom_line_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourcesAssociatedToCustomLineItem"
        o.http_method = "POST"
        o.http_request_uri = "/list-resources-associated-to-custom-line-item"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_billing_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBillingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/update-billing-group"
        o.input = Shapes::ShapeRef.new(shape: UpdateBillingGroupInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateBillingGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_custom_line_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCustomLineItem"
        o.http_method = "POST"
        o.http_request_uri = "/update-custom-line-item"
        o.input = Shapes::ShapeRef.new(shape: UpdateCustomLineItemInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCustomLineItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_pricing_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePricingPlan"
        o.http_method = "PUT"
        o.http_request_uri = "/update-pricing-plan"
        o.input = Shapes::ShapeRef.new(shape: UpdatePricingPlanInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePricingPlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_pricing_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePricingRule"
        o.http_method = "PUT"
        o.http_request_uri = "/update-pricing-rule"
        o.input = Shapes::ShapeRef.new(shape: UpdatePricingRuleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePricingRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
