# frozen_string_literal: true

# This is generated code!

module Aws::Billingconductor
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSCost = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#AWSCost", name: "AWSCost")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountAssociationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#AccountAssociationsList", name: "AccountAssociationsList")
    AccountAssociationsListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AccountAssociationsListElement", name: "AccountAssociationsListElement")
    AccountEmail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#AccountEmail", name: "AccountEmail", traits: {"smithy.api#sensitive" => {}})
    AccountGrouping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AccountGrouping", name: "AccountGrouping")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AccountIdFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#AccountIdFilterList", name: "AccountIdFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#AccountIdList", name: "AccountIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#AccountName", name: "AccountName", traits: {"smithy.api#sensitive" => {}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/?[0-9]{12}$|^arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingplan/[a-zA-Z0-9]{10}$|^arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingrule/[a-zA-Z0-9]{10}$|^(arn:aws(-cn)?:billingconductor::[0-9]{12}:customlineitem/)?[a-zA-Z0-9]{10}$"})
    AssociateAccountsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociateAccountsOperationInput", name: "AssociateAccountsOperationInput")
    AssociateAccountsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociateAccountsOperationOutput", name: "AssociateAccountsOperationOutput")
    AssociatePricingRulesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociatePricingRulesOperationInput", name: "AssociatePricingRulesOperationInput")
    AssociatePricingRulesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociatePricingRulesOperationOutput", name: "AssociatePricingRulesOperationOutput")
    AssociateResourceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociateResourceError", name: "AssociateResourceError")
    AssociateResourceErrorReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#AssociateResourceErrorReason", name: "AssociateResourceErrorReason")
    AssociateResourceResponseElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociateResourceResponseElement", name: "AssociateResourceResponseElement")
    AssociateResourcesResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#AssociateResourcesResponseList", name: "AssociateResourcesResponseList")
    Association = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#Association", name: "Association", traits: {"smithy.api#pattern" => "^((arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/)?[a-zA-Z0-9]{10,12}|MONITORED|UNMONITORED)$"})
    Attribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#Attribute", name: "Attribute")
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#AttributeValue", name: "AttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    AttributeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#AttributeValueList", name: "AttributeValueList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    AttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#AttributesList", name: "AttributesList")
    AutoTransferBillingGroupCreationPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AutoTransferBillingGroupCreationPreference", name: "AutoTransferBillingGroupCreationPreference")
    BatchAssociateResourcesToCustomLineItemOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BatchAssociateResourcesToCustomLineItemOperationInput", name: "BatchAssociateResourcesToCustomLineItemOperationInput")
    BatchAssociateResourcesToCustomLineItemOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BatchAssociateResourcesToCustomLineItemOperationOutput", name: "BatchAssociateResourcesToCustomLineItemOperationOutput")
    BatchDisassociateResourcesFromCustomLineItemOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BatchDisassociateResourcesFromCustomLineItemOperationInput", name: "BatchDisassociateResourcesFromCustomLineItemOperationInput")
    BatchDisassociateResourcesFromCustomLineItemOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BatchDisassociateResourcesFromCustomLineItemOperationOutput", name: "BatchDisassociateResourcesFromCustomLineItemOperationOutput")
    BillingEntity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingEntity", name: "BillingEntity", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9() ]+$"})
    BillingGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingGroupArn", name: "BillingGroupArn", traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/)?[a-zA-Z0-9]{10,12}$"})
    BillingGroupArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#BillingGroupArnList", name: "BillingGroupArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BillingGroupCostReportElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BillingGroupCostReportElement", name: "BillingGroupCostReportElement")
    BillingGroupCostReportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#BillingGroupCostReportList", name: "BillingGroupCostReportList")
    BillingGroupCostReportResultElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BillingGroupCostReportResultElement", name: "BillingGroupCostReportResultElement")
    BillingGroupCostReportResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#BillingGroupCostReportResultsList", name: "BillingGroupCostReportResultsList")
    BillingGroupDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingGroupDescription", name: "BillingGroupDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    BillingGroupFullArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingGroupFullArn", name: "BillingGroupFullArn", traits: {"smithy.api#pattern" => "^arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/[a-zA-Z0-9]{10,12}$"})
    BillingGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#BillingGroupList", name: "BillingGroupList")
    BillingGroupListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BillingGroupListElement", name: "BillingGroupListElement")
    BillingGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingGroupName", name: "BillingGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    BillingGroupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#BillingGroupStatus", name: "BillingGroupStatus")
    BillingGroupStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#BillingGroupStatusList", name: "BillingGroupStatusList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    BillingGroupStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingGroupStatusReason", name: "BillingGroupStatusReason")
    BillingGroupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#BillingGroupType", name: "BillingGroupType")
    BillingGroupTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#BillingGroupTypeList", name: "BillingGroupTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    BillingPeriod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingPeriod", name: "BillingPeriod", traits: {"smithy.api#pattern" => "^\\d{4}-(0?[1-9]|1[012])$"})
    BillingPeriodRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BillingPeriodRange", name: "BillingPeriodRange")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ComputationPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ComputationPreference", name: "ComputationPreference")
    ComputationRuleEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#ComputationRuleEnum", name: "ComputationRuleEnum")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#ConflictExceptionReason", name: "ConflictExceptionReason")
    CreateBillingGroupOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CreateBillingGroupOperationInput", name: "CreateBillingGroupOperationInput")
    CreateBillingGroupOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CreateBillingGroupOperationOutput", name: "CreateBillingGroupOperationOutput")
    CreateCustomLineItemOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CreateCustomLineItemOperationInput", name: "CreateCustomLineItemOperationInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.billingconductor#BillingGroup", "ids" => {"Arn" => "BillingGroupArn"}}]})
    CreateCustomLineItemOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CreateCustomLineItemOperationOutput", name: "CreateCustomLineItemOperationOutput")
    CreateFreeTierConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CreateFreeTierConfig", name: "CreateFreeTierConfig")
    CreatePricingPlanOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CreatePricingPlanOperationInput", name: "CreatePricingPlanOperationInput")
    CreatePricingPlanOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CreatePricingPlanOperationOutput", name: "CreatePricingPlanOperationOutput")
    CreatePricingRuleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CreatePricingRuleOperationInput", name: "CreatePricingRuleOperationInput")
    CreatePricingRuleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CreatePricingRuleOperationOutput", name: "CreatePricingRuleOperationOutput")
    CreateTieringInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CreateTieringInput", name: "CreateTieringInput")
    Currency = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#Currency", name: "Currency")
    CurrencyCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#CurrencyCode", name: "CurrencyCode")
    CustomLineItemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#CustomLineItemArn", name: "CustomLineItemArn", traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::[0-9]{12}:customlineitem/)?[a-zA-Z0-9]{10}$"})
    CustomLineItemArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#CustomLineItemArns", name: "CustomLineItemArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CustomLineItemAssociationElement = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#CustomLineItemAssociationElement", name: "CustomLineItemAssociationElement", traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::[0-9]{12}:(customlineitem|billinggroup)/)?[a-zA-Z0-9]{10,12}$"})
    CustomLineItemAssociationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#CustomLineItemAssociationsList", name: "CustomLineItemAssociationsList", traits: {"smithy.api#length" => {"max" => 5}})
    CustomLineItemBatchAssociationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#CustomLineItemBatchAssociationsList", name: "CustomLineItemBatchAssociationsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    CustomLineItemBatchDisassociationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#CustomLineItemBatchDisassociationsList", name: "CustomLineItemBatchDisassociationsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    CustomLineItemBillingPeriodRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CustomLineItemBillingPeriodRange", name: "CustomLineItemBillingPeriodRange")
    CustomLineItemChargeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CustomLineItemChargeDetails", name: "CustomLineItemChargeDetails")
    CustomLineItemChargeValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.billingconductor#CustomLineItemChargeValue", name: "CustomLineItemChargeValue", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    CustomLineItemDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#CustomLineItemDescription", name: "CustomLineItemDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    CustomLineItemFlatChargeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CustomLineItemFlatChargeDetails", name: "CustomLineItemFlatChargeDetails")
    CustomLineItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#CustomLineItemList", name: "CustomLineItemList")
    CustomLineItemListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CustomLineItemListElement", name: "CustomLineItemListElement")
    CustomLineItemName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#CustomLineItemName", name: "CustomLineItemName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    CustomLineItemNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#CustomLineItemNameList", name: "CustomLineItemNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CustomLineItemPercentageChargeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CustomLineItemPercentageChargeDetails", name: "CustomLineItemPercentageChargeDetails")
    CustomLineItemPercentageChargeValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.billingconductor#CustomLineItemPercentageChargeValue", name: "CustomLineItemPercentageChargeValue", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    CustomLineItemProductCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#CustomLineItemProductCode", name: "CustomLineItemProductCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 29}})
    CustomLineItemRelationship = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#CustomLineItemRelationship", name: "CustomLineItemRelationship")
    CustomLineItemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#CustomLineItemType", name: "CustomLineItemType")
    CustomLineItemVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#CustomLineItemVersionList", name: "CustomLineItemVersionList")
    CustomLineItemVersionListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CustomLineItemVersionListElement", name: "CustomLineItemVersionListElement")
    CustomTier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CustomTier", name: "CustomTier")
    CustomTierBeginRangeInclusive = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.billingconductor#CustomTierBeginRangeInclusive", name: "CustomTierBeginRangeInclusive", traits: {"smithy.api#range" => {"min" => 0}})
    CustomTierEndRangeExclusive = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.billingconductor#CustomTierEndRangeExclusive", name: "CustomTierEndRangeExclusive", traits: {"smithy.api#range" => {"min" => 0}})
    CustomTierRateValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.billingconductor#CustomTierRateValue", name: "CustomTierRateValue", traits: {"smithy.api#range" => {"min" => 0}})
    CustomTiersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#CustomTiersList", name: "CustomTiersList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DeleteBillingGroupOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DeleteBillingGroupOperationInput", name: "DeleteBillingGroupOperationInput")
    DeleteBillingGroupOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DeleteBillingGroupOperationOutput", name: "DeleteBillingGroupOperationOutput")
    DeleteCustomLineItemOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DeleteCustomLineItemOperationInput", name: "DeleteCustomLineItemOperationInput")
    DeleteCustomLineItemOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DeleteCustomLineItemOperationOutput", name: "DeleteCustomLineItemOperationOutput")
    DeletePricingPlanOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DeletePricingPlanOperationInput", name: "DeletePricingPlanOperationInput")
    DeletePricingPlanOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DeletePricingPlanOperationOutput", name: "DeletePricingPlanOperationOutput")
    DeletePricingRuleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DeletePricingRuleOperationInput", name: "DeletePricingRuleOperationInput")
    DeletePricingRuleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DeletePricingRuleOperationOutput", name: "DeletePricingRuleOperationOutput")
    DisassociateAccountsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DisassociateAccountsOperationInput", name: "DisassociateAccountsOperationInput")
    DisassociateAccountsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DisassociateAccountsOperationOutput", name: "DisassociateAccountsOperationOutput")
    DisassociatePricingRulesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DisassociatePricingRulesOperationInput", name: "DisassociatePricingRulesOperationInput")
    DisassociatePricingRulesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DisassociatePricingRulesOperationOutput", name: "DisassociatePricingRulesOperationOutput")
    DisassociateResourceResponseElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#DisassociateResourceResponseElement", name: "DisassociateResourceResponseElement")
    DisassociateResourcesResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#DisassociateResourcesResponseList", name: "DisassociateResourcesResponseList")
    FreeTierConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#FreeTierConfig", name: "FreeTierConfig")
    GetBillingGroupCostReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#GetBillingGroupCostReportInput", name: "GetBillingGroupCostReportInput")
    GetBillingGroupCostReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#GetBillingGroupCostReportOutput", name: "GetBillingGroupCostReportOutput")
    GetBillingTransferPreferenceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#GetBillingTransferPreferenceInput", name: "GetBillingTransferPreferenceInput")
    GetBillingTransferPreferenceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#GetBillingTransferPreferenceOutput", name: "GetBillingTransferPreferenceOutput")
    GroupByAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#GroupByAttributeName", name: "GroupByAttributeName")
    GroupByAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#GroupByAttributesList", name: "GroupByAttributesList")
    Instant = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#Instant", name: "Instant", traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LineItemFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#LineItemFilter", name: "LineItemFilter")
    LineItemFilterAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#LineItemFilterAttributeName", name: "LineItemFilterAttributeName")
    LineItemFilterValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#LineItemFilterValue", name: "LineItemFilterValue")
    LineItemFilterValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#LineItemFilterValuesList", name: "LineItemFilterValuesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    LineItemFiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#LineItemFiltersList", name: "LineItemFiltersList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ListAccountAssociationsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListAccountAssociationsFilter", name: "ListAccountAssociationsFilter")
    ListAccountAssociationsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListAccountAssociationsOperationInput", name: "ListAccountAssociationsOperationInput")
    ListAccountAssociationsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListAccountAssociationsOperationOutput", name: "ListAccountAssociationsOperationOutput")
    ListBillingGroupAccountGrouping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListBillingGroupAccountGrouping", name: "ListBillingGroupAccountGrouping")
    ListBillingGroupCostReportsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListBillingGroupCostReportsFilter", name: "ListBillingGroupCostReportsFilter")
    ListBillingGroupCostReportsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListBillingGroupCostReportsOperationInput", name: "ListBillingGroupCostReportsOperationInput")
    ListBillingGroupCostReportsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListBillingGroupCostReportsOperationOutput", name: "ListBillingGroupCostReportsOperationOutput")
    ListBillingGroupsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListBillingGroupsFilter", name: "ListBillingGroupsFilter")
    ListBillingGroupsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListBillingGroupsOperationInput", name: "ListBillingGroupsOperationInput")
    ListBillingGroupsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListBillingGroupsOperationOutput", name: "ListBillingGroupsOperationOutput")
    ListCustomLineItemChargeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListCustomLineItemChargeDetails", name: "ListCustomLineItemChargeDetails")
    ListCustomLineItemFlatChargeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListCustomLineItemFlatChargeDetails", name: "ListCustomLineItemFlatChargeDetails")
    ListCustomLineItemPercentageChargeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListCustomLineItemPercentageChargeDetails", name: "ListCustomLineItemPercentageChargeDetails")
    ListCustomLineItemVersionsBillingPeriodRangeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListCustomLineItemVersionsBillingPeriodRangeFilter", name: "ListCustomLineItemVersionsBillingPeriodRangeFilter")
    ListCustomLineItemVersionsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListCustomLineItemVersionsFilter", name: "ListCustomLineItemVersionsFilter")
    ListCustomLineItemVersionsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListCustomLineItemVersionsOperationInput", name: "ListCustomLineItemVersionsOperationInput")
    ListCustomLineItemVersionsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListCustomLineItemVersionsOperationOutput", name: "ListCustomLineItemVersionsOperationOutput")
    ListCustomLineItemsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListCustomLineItemsFilter", name: "ListCustomLineItemsFilter")
    ListCustomLineItemsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListCustomLineItemsOperationInput", name: "ListCustomLineItemsOperationInput")
    ListCustomLineItemsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListCustomLineItemsOperationOutput", name: "ListCustomLineItemsOperationOutput")
    ListPricingPlansAssociatedWithPricingRuleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListPricingPlansAssociatedWithPricingRuleOperationInput", name: "ListPricingPlansAssociatedWithPricingRuleOperationInput")
    ListPricingPlansAssociatedWithPricingRuleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListPricingPlansAssociatedWithPricingRuleOperationOutput", name: "ListPricingPlansAssociatedWithPricingRuleOperationOutput")
    ListPricingPlansFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListPricingPlansFilter", name: "ListPricingPlansFilter")
    ListPricingPlansOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListPricingPlansOperationInput", name: "ListPricingPlansOperationInput")
    ListPricingPlansOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListPricingPlansOperationOutput", name: "ListPricingPlansOperationOutput")
    ListPricingRulesAssociatedToPricingPlanOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListPricingRulesAssociatedToPricingPlanOperationInput", name: "ListPricingRulesAssociatedToPricingPlanOperationInput")
    ListPricingRulesAssociatedToPricingPlanOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListPricingRulesAssociatedToPricingPlanOperationOutput", name: "ListPricingRulesAssociatedToPricingPlanOperationOutput")
    ListPricingRulesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListPricingRulesFilter", name: "ListPricingRulesFilter")
    ListPricingRulesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListPricingRulesOperationInput", name: "ListPricingRulesOperationInput")
    ListPricingRulesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListPricingRulesOperationOutput", name: "ListPricingRulesOperationOutput")
    ListResourcesAssociatedToCustomLineItemFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItemFilter", name: "ListResourcesAssociatedToCustomLineItemFilter")
    ListResourcesAssociatedToCustomLineItemOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItemOperationInput", name: "ListResourcesAssociatedToCustomLineItemOperationInput")
    ListResourcesAssociatedToCustomLineItemOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItemOperationOutput", name: "ListResourcesAssociatedToCustomLineItemOperationOutput")
    ListResourcesAssociatedToCustomLineItemResponseElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItemResponseElement", name: "ListResourcesAssociatedToCustomLineItemResponseElement")
    ListResourcesAssociatedToCustomLineItemResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItemResponseList", name: "ListResourcesAssociatedToCustomLineItemResponseList")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListTagsForResourceInput", name: "ListTagsForResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.billingconductor#BillingGroup", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingPlan", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingRule", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#CustomLineItem", "ids" => {"Arn" => "ResourceArn"}}]})
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    Margin = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#Margin", name: "Margin")
    MarginPercentage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#MarginPercentage", name: "MarginPercentage")
    MatchOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#MatchOption", name: "MatchOption")
    MaxBillingGroupCostReportResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#MaxBillingGroupCostReportResults", name: "MaxBillingGroupCostReportResults", traits: {"smithy.api#range" => {"min" => 200, "max" => 300}})
    MaxBillingGroupResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#MaxBillingGroupResults", name: "MaxBillingGroupResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxCustomLineItemResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#MaxCustomLineItemResults", name: "MaxCustomLineItemResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxPricingPlanResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#MaxPricingPlanResults", name: "MaxPricingPlanResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxPricingRuleResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#MaxPricingRuleResults", name: "MaxPricingRuleResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ModifierPercentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.billingconductor#ModifierPercentage", name: "ModifierPercentage", traits: {"smithy.api#range" => {"min" => 0}})
    NumberOfAccounts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#NumberOfAccounts", name: "NumberOfAccounts", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    NumberOfAssociatedPricingRules = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#NumberOfAssociatedPricingRules", name: "NumberOfAssociatedPricingRules", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1}})
    NumberOfAssociations = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#NumberOfAssociations", name: "NumberOfAssociations", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    NumberOfPricingPlansAssociatedWith = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#NumberOfPricingPlansAssociatedWith", name: "NumberOfPricingPlansAssociatedWith", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Operation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#Operation", name: "Operation", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    PresentationObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#PresentationObject", name: "PresentationObject")
    PricingPlanArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingPlanArn", name: "PricingPlanArn", traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::(aws|[0-9]{12}):pricingplan/)?(BasicPricingPlan|Passthrough|[a-zA-Z0-9]{10})$"})
    PricingPlanArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#PricingPlanArns", name: "PricingPlanArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PricingPlanDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingPlanDescription", name: "PricingPlanDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    PricingPlanFullArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingPlanFullArn", name: "PricingPlanFullArn", traits: {"smithy.api#pattern" => "^arn:aws(-cn)?:billingconductor::(aws|[0-9]{12}):pricingplan/(BasicPricingPlan|Passthrough|[a-zA-Z0-9]{10})$"})
    PricingPlanList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#PricingPlanList", name: "PricingPlanList")
    PricingPlanListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#PricingPlanListElement", name: "PricingPlanListElement")
    PricingPlanName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingPlanName", name: "PricingPlanName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    PricingRuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingRuleArn", name: "PricingRuleArn", traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingrule/)?[a-zA-Z0-9]{10}$"})
    PricingRuleArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#PricingRuleArns", name: "PricingRuleArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PricingRuleArnsInput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#PricingRuleArnsInput", name: "PricingRuleArnsInput", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    PricingRuleArnsNonEmptyInput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#PricingRuleArnsNonEmptyInput", name: "PricingRuleArnsNonEmptyInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    PricingRuleDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingRuleDescription", name: "PricingRuleDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    PricingRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#PricingRuleList", name: "PricingRuleList")
    PricingRuleListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#PricingRuleListElement", name: "PricingRuleListElement")
    PricingRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingRuleName", name: "PricingRuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    PricingRuleScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#PricingRuleScope", name: "PricingRuleScope")
    PricingRuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#PricingRuleType", name: "PricingRuleType")
    PrimaryAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#PrimaryAccountIdList", name: "PrimaryAccountIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProformaCost = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#ProformaCost", name: "ProformaCost")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponsibilityTransferArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#ResponsibilityTransferArn", name: "ResponsibilityTransferArn", traits: {"smithy.api#pattern" => "^arn:[a-z0-9][a-z0-9-.]{0,62}:organizations::\\d{12}:transfer/o-[a-z0-9]{10,32}/(billing)/(inbound|outbound)/rt-[0-9a-z]{8,32}$"})
    ResponsibilityTransferArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#ResponsibilityTransferArnsList", name: "ResponsibilityTransferArnsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    SearchOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#SearchOption", name: "SearchOption")
    SearchValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#SearchValue", name: "SearchValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\+=\\.\\-@ ]+$"})
    Service = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#Service", name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    ServiceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ServiceLimitExceededException", name: "ServiceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#String", name: "String")
    StringSearch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#StringSearch", name: "StringSearch")
    StringSearches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#StringSearches", name: "StringSearches", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.billingconductor#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#TagResourceInput", name: "TagResourceInput", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.billingconductor#BillingGroup", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingPlan", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingRule", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#CustomLineItem", "ids" => {"Arn" => "ResourceArn"}}]})
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Tiering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#Tiering", name: "Tiering")
    TieringActivated = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.billingconductor#TieringActivated", name: "TieringActivated")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#Token", name: "Token")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UntagResourceInput", name: "UntagResourceInput", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.billingconductor#BillingGroup", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingPlan", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingRule", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#CustomLineItem", "ids" => {"Arn" => "ResourceArn"}}]})
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateBillingGroupAccountGrouping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateBillingGroupAccountGrouping", name: "UpdateBillingGroupAccountGrouping")
    UpdateBillingGroupOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateBillingGroupOperationInput", name: "UpdateBillingGroupOperationInput")
    UpdateBillingGroupOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateBillingGroupOperationOutput", name: "UpdateBillingGroupOperationOutput")
    UpdateBillingTransferPreferenceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateBillingTransferPreferenceInput", name: "UpdateBillingTransferPreferenceInput")
    UpdateBillingTransferPreferenceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateBillingTransferPreferenceOutput", name: "UpdateBillingTransferPreferenceOutput")
    UpdateCustomLineItemChargeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateCustomLineItemChargeDetails", name: "UpdateCustomLineItemChargeDetails")
    UpdateCustomLineItemFlatChargeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateCustomLineItemFlatChargeDetails", name: "UpdateCustomLineItemFlatChargeDetails")
    UpdateCustomLineItemOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateCustomLineItemOperationInput", name: "UpdateCustomLineItemOperationInput")
    UpdateCustomLineItemOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateCustomLineItemOperationOutput", name: "UpdateCustomLineItemOperationOutput")
    UpdateCustomLineItemPercentageChargeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateCustomLineItemPercentageChargeDetails", name: "UpdateCustomLineItemPercentageChargeDetails")
    UpdateFreeTierConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateFreeTierConfig", name: "UpdateFreeTierConfig")
    UpdatePricingPlanOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdatePricingPlanOperationInput", name: "UpdatePricingPlanOperationInput")
    UpdatePricingPlanOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdatePricingPlanOperationOutput", name: "UpdatePricingPlanOperationOutput")
    UpdatePricingRuleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdatePricingRuleOperationInput", name: "UpdatePricingRuleOperationInput")
    UpdatePricingRuleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdatePricingRuleOperationOutput", name: "UpdatePricingRuleOperationOutput")
    UpdateTieringInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#UpdateTieringInput", name: "UpdateTieringInput")
    UsageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#UsageType", name: "UsageType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billingconductor#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountAssociationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationsListElement, name: "member"))
    AccountAssociationsListElement.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    AccountAssociationsListElement.add_member(:billing_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "BillingGroupArn"))
    AccountAssociationsListElement.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountName, name: "AccountName"))
    AccountAssociationsListElement.add_member(:account_email, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountEmail, name: "AccountEmail"))
    AccountAssociationsListElement.type = Types::AccountAssociationsListElement
    AccountGrouping.add_member(:linked_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "LinkedAccountIds", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => []}))
    AccountGrouping.add_member(:auto_associate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AutoAssociate"))
    AccountGrouping.add_member(:responsibility_transfer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferArn, name: "ResponsibilityTransferArn"))
    AccountGrouping.type = Types::AccountGrouping
    AccountIdFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AssociateAccountsOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    AssociateAccountsOperationInput.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds", traits: {"smithy.api#required" => {}}))
    AssociateAccountsOperationInput.type = Types::AssociateAccountsOperationInput
    AssociateAccountsOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn"))
    AssociateAccountsOperationOutput.type = Types::AssociateAccountsOperationOutput
    AssociatePricingRulesOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    AssociatePricingRulesOperationInput.add_member(:pricing_rule_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArnsNonEmptyInput, name: "PricingRuleArns", traits: {"smithy.api#required" => {}}))
    AssociatePricingRulesOperationInput.type = Types::AssociatePricingRulesOperationInput
    AssociatePricingRulesOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "Arn"))
    AssociatePricingRulesOperationOutput.type = Types::AssociatePricingRulesOperationOutput
    AssociateResourceError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AssociateResourceError.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateResourceErrorReason, name: "Reason"))
    AssociateResourceError.type = Types::AssociateResourceError
    AssociateResourceErrorReason.add_member(:invalid_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ARN", traits: {"smithy.api#enumValue" => "INVALID_ARN"}))
    AssociateResourceErrorReason.add_member(:service_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "SERVICE_LIMIT_EXCEEDED"}))
    AssociateResourceErrorReason.add_member(:illegal_customlineitem, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_CUSTOMLINEITEM", traits: {"smithy.api#enumValue" => "ILLEGAL_CUSTOMLINEITEM"}))
    AssociateResourceErrorReason.add_member(:internal_server_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVER_EXCEPTION", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_EXCEPTION"}))
    AssociateResourceErrorReason.add_member(:invalid_billing_period_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_BILLING_PERIOD_RANGE", traits: {"smithy.api#enumValue" => "INVALID_BILLING_PERIOD_RANGE"}))
    AssociateResourceResponseElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemAssociationElement, name: "Arn"))
    AssociateResourceResponseElement.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateResourceError, name: "Error"))
    AssociateResourceResponseElement.type = Types::AssociateResourceResponseElement
    AssociateResourcesResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateResourceResponseElement, name: "member"))
    Attribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Key"))
    Attribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Value"))
    Attribute.type = Types::Attribute
    AttributeValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "member"))
    AttributesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Attribute, name: "member"))
    AutoTransferBillingGroupCreationPreference.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    AutoTransferBillingGroupCreationPreference.add_member(:pricing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "PricingPlanArn"))
    AutoTransferBillingGroupCreationPreference.type = Types::AutoTransferBillingGroupCreationPreference
    BatchAssociateResourcesToCustomLineItemOperationInput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "TargetArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    BatchAssociateResourcesToCustomLineItemOperationInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemBatchAssociationsList, name: "ResourceArns", traits: {"smithy.api#required" => {}}))
    BatchAssociateResourcesToCustomLineItemOperationInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemBillingPeriodRange, name: "BillingPeriodRange"))
    BatchAssociateResourcesToCustomLineItemOperationInput.type = Types::BatchAssociateResourcesToCustomLineItemOperationInput
    BatchAssociateResourcesToCustomLineItemOperationOutput.add_member(:successfully_associated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateResourcesResponseList, name: "SuccessfullyAssociatedResources"))
    BatchAssociateResourcesToCustomLineItemOperationOutput.add_member(:failed_associated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateResourcesResponseList, name: "FailedAssociatedResources"))
    BatchAssociateResourcesToCustomLineItemOperationOutput.type = Types::BatchAssociateResourcesToCustomLineItemOperationOutput
    BatchDisassociateResourcesFromCustomLineItemOperationInput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "TargetArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    BatchDisassociateResourcesFromCustomLineItemOperationInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemBatchDisassociationsList, name: "ResourceArns", traits: {"smithy.api#required" => {}}))
    BatchDisassociateResourcesFromCustomLineItemOperationInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemBillingPeriodRange, name: "BillingPeriodRange"))
    BatchDisassociateResourcesFromCustomLineItemOperationInput.type = Types::BatchDisassociateResourcesFromCustomLineItemOperationInput
    BatchDisassociateResourcesFromCustomLineItemOperationOutput.add_member(:successfully_disassociated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateResourcesResponseList, name: "SuccessfullyDisassociatedResources"))
    BatchDisassociateResourcesFromCustomLineItemOperationOutput.add_member(:failed_disassociated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateResourcesResponseList, name: "FailedDisassociatedResources"))
    BatchDisassociateResourcesFromCustomLineItemOperationOutput.type = Types::BatchDisassociateResourcesFromCustomLineItemOperationOutput
    BillingGroupArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "member"))
    BillingGroupCostReportElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn"))
    BillingGroupCostReportElement.add_member(:aws_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSCost, name: "AWSCost"))
    BillingGroupCostReportElement.add_member(:proforma_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ProformaCost, name: "ProformaCost"))
    BillingGroupCostReportElement.add_member(:margin, ::Smithy::Schema::Shapes::MemberShape.new(target: Margin, name: "Margin"))
    BillingGroupCostReportElement.add_member(:margin_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: MarginPercentage, name: "MarginPercentage"))
    BillingGroupCostReportElement.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "Currency"))
    BillingGroupCostReportElement.type = Types::BillingGroupCostReportElement
    BillingGroupCostReportList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupCostReportElement, name: "member"))
    BillingGroupCostReportResultElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn"))
    BillingGroupCostReportResultElement.add_member(:aws_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSCost, name: "AWSCost"))
    BillingGroupCostReportResultElement.add_member(:proforma_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ProformaCost, name: "ProformaCost"))
    BillingGroupCostReportResultElement.add_member(:margin, ::Smithy::Schema::Shapes::MemberShape.new(target: Margin, name: "Margin"))
    BillingGroupCostReportResultElement.add_member(:margin_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: MarginPercentage, name: "MarginPercentage"))
    BillingGroupCostReportResultElement.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "Currency"))
    BillingGroupCostReportResultElement.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributesList, name: "Attributes"))
    BillingGroupCostReportResultElement.type = Types::BillingGroupCostReportResultElement
    BillingGroupCostReportResultsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupCostReportResultElement, name: "member"))
    BillingGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupListElement, name: "member"))
    BillingGroupListElement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupName, name: "Name"))
    BillingGroupListElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn"))
    BillingGroupListElement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupDescription, name: "Description"))
    BillingGroupListElement.add_member(:primary_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "PrimaryAccountId"))
    BillingGroupListElement.add_member(:computation_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationPreference, name: "ComputationPreference"))
    BillingGroupListElement.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAccounts, name: "Size", traits: {"smithy.api#default" => 0}))
    BillingGroupListElement.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "CreationTime", traits: {"smithy.api#default" => 0}))
    BillingGroupListElement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    BillingGroupListElement.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupStatus, name: "Status"))
    BillingGroupListElement.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupStatusReason, name: "StatusReason"))
    BillingGroupListElement.add_member(:account_grouping, ::Smithy::Schema::Shapes::MemberShape.new(target: ListBillingGroupAccountGrouping, name: "AccountGrouping"))
    BillingGroupListElement.add_member(:billing_group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupType, name: "BillingGroupType"))
    BillingGroupListElement.type = Types::BillingGroupListElement
    BillingGroupStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    BillingGroupStatus.add_member(:primary_account_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY_ACCOUNT_MISSING", traits: {"smithy.api#enumValue" => "PRIMARY_ACCOUNT_MISSING"}))
    BillingGroupStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    BillingGroupStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupStatus, name: "member"))
    BillingGroupType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    BillingGroupType.add_member(:transfer_billing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFER_BILLING", traits: {"smithy.api#enumValue" => "TRANSFER_BILLING"}))
    BillingGroupTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupType, name: "member"))
    BillingPeriodRange.add_member(:inclusive_start_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "InclusiveStartBillingPeriod", traits: {"smithy.api#required" => {}}))
    BillingPeriodRange.add_member(:exclusive_end_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "ExclusiveEndBillingPeriod", traits: {"smithy.api#required" => {}}))
    BillingPeriodRange.type = Types::BillingPeriodRange
    ComputationPreference.add_member(:pricing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanFullArn, name: "PricingPlanArn", traits: {"smithy.api#required" => {}}))
    ComputationPreference.type = Types::ComputationPreference
    ComputationRuleEnum.add_member(:itemized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITEMIZED", traits: {"smithy.api#enumValue" => "ITEMIZED"}))
    ComputationRuleEnum.add_member(:consolidated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONSOLIDATED", traits: {"smithy.api#enumValue" => "CONSOLIDATED"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionReason, name: "Reason"))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:resource_name_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NAME_CONFLICT", traits: {"smithy.api#enumValue" => "RESOURCE_NAME_CONFLICT"}))
    ConflictExceptionReason.add_member(:pricing_rule_in_pricing_plan_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICING_RULE_IN_PRICING_PLAN_CONFLICT", traits: {"smithy.api#enumValue" => "PRICING_RULE_IN_PRICING_PLAN_CONFLICT"}))
    ConflictExceptionReason.add_member(:pricing_plan_attached_to_billing_group_delete_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICING_PLAN_ATTACHED_TO_BILLING_GROUP_DELETE_CONFLICT", traits: {"smithy.api#enumValue" => "PRICING_PLAN_ATTACHED_TO_BILLING_GROUP_DELETE_CONFLICT"}))
    ConflictExceptionReason.add_member(:pricing_plan_referenced_by_preference_delete_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICING_PLAN_REFERENCED_BY_PREFERENCE_DELETE_CONFLICT", traits: {"smithy.api#enumValue" => "PRICING_PLAN_REFERENCED_BY_PREFERENCE_DELETE_CONFLICT"}))
    ConflictExceptionReason.add_member(:pricing_rule_attached_to_pricing_plan_delete_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICING_RULE_ATTACHED_TO_PRICING_PLAN_DELETE_CONFLICT", traits: {"smithy.api#enumValue" => "PRICING_RULE_ATTACHED_TO_PRICING_PLAN_DELETE_CONFLICT"}))
    ConflictExceptionReason.add_member(:write_conflict_retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE_CONFLICT_RETRY", traits: {"smithy.api#enumValue" => "WRITE_CONFLICT_RETRY"}))
    CreateBillingGroupOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateBillingGroupOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateBillingGroupOperationInput.add_member(:account_grouping, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountGrouping, name: "AccountGrouping", traits: {"smithy.api#required" => {}}))
    CreateBillingGroupOperationInput.add_member(:computation_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationPreference, name: "ComputationPreference", traits: {"smithy.api#required" => {}}))
    CreateBillingGroupOperationInput.add_member(:primary_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "PrimaryAccountId"))
    CreateBillingGroupOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupDescription, name: "Description"))
    CreateBillingGroupOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateBillingGroupOperationInput.type = Types::CreateBillingGroupOperationInput
    CreateBillingGroupOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn"))
    CreateBillingGroupOperationOutput.type = Types::CreateBillingGroupOperationOutput
    CreateCustomLineItemOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateCustomLineItemOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemDescription, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:billing_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "BillingGroupArn", traits: {"smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemBillingPeriodRange, name: "BillingPeriodRange"))
    CreateCustomLineItemOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateCustomLineItemOperationInput.add_member(:charge_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemChargeDetails, name: "ChargeDetails", traits: {"smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    CreateCustomLineItemOperationInput.add_member(:computation_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationRuleEnum, name: "ComputationRule"))
    CreateCustomLineItemOperationInput.add_member(:presentation_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PresentationObject, name: "PresentationDetails"))
    CreateCustomLineItemOperationInput.type = Types::CreateCustomLineItemOperationInput
    CreateCustomLineItemOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "Arn"))
    CreateCustomLineItemOperationOutput.type = Types::CreateCustomLineItemOperationOutput
    CreateFreeTierConfig.add_member(:activated, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringActivated, name: "Activated", traits: {"smithy.api#required" => {}}))
    CreateFreeTierConfig.type = Types::CreateFreeTierConfig
    CreatePricingPlanOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreatePricingPlanOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePricingPlanOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanDescription, name: "Description"))
    CreatePricingPlanOperationInput.add_member(:pricing_rule_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArnsInput, name: "PricingRuleArns"))
    CreatePricingPlanOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreatePricingPlanOperationInput.type = Types::CreatePricingPlanOperationInput
    CreatePricingPlanOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "Arn"))
    CreatePricingPlanOperationOutput.type = Types::CreatePricingPlanOperationOutput
    CreatePricingRuleOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreatePricingRuleOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePricingRuleOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleDescription, name: "Description"))
    CreatePricingRuleOperationInput.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleScope, name: "Scope", traits: {"smithy.api#required" => {}}))
    CreatePricingRuleOperationInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleType, name: "Type", traits: {"smithy.api#required" => {}}))
    CreatePricingRuleOperationInput.add_member(:modifier_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifierPercentage, name: "ModifierPercentage"))
    CreatePricingRuleOperationInput.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "Service"))
    CreatePricingRuleOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreatePricingRuleOperationInput.add_member(:billing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingEntity, name: "BillingEntity"))
    CreatePricingRuleOperationInput.add_member(:tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateTieringInput, name: "Tiering"))
    CreatePricingRuleOperationInput.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageType, name: "UsageType"))
    CreatePricingRuleOperationInput.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "Operation"))
    CreatePricingRuleOperationInput.type = Types::CreatePricingRuleOperationInput
    CreatePricingRuleOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArn, name: "Arn"))
    CreatePricingRuleOperationOutput.type = Types::CreatePricingRuleOperationOutput
    CreateTieringInput.add_member(:free_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFreeTierConfig, name: "FreeTier"))
    CreateTieringInput.add_member(:custom_tiers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTiersList, name: "CustomTiers"))
    CreateTieringInput.type = Types::CreateTieringInput
    CurrencyCode.add_member(:usd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USD", traits: {"smithy.api#enumValue" => "USD"}))
    CurrencyCode.add_member(:cny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CNY", traits: {"smithy.api#enumValue" => "CNY"}))
    CustomLineItemArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "member"))
    CustomLineItemAssociationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemAssociationElement, name: "member"))
    CustomLineItemBatchAssociationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemAssociationElement, name: "member"))
    CustomLineItemBatchDisassociationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemAssociationElement, name: "member"))
    CustomLineItemBillingPeriodRange.add_member(:inclusive_start_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "InclusiveStartBillingPeriod", traits: {"smithy.api#required" => {}}))
    CustomLineItemBillingPeriodRange.add_member(:exclusive_end_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "ExclusiveEndBillingPeriod"))
    CustomLineItemBillingPeriodRange.type = Types::CustomLineItemBillingPeriodRange
    CustomLineItemChargeDetails.add_member(:flat, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemFlatChargeDetails, name: "Flat"))
    CustomLineItemChargeDetails.add_member(:percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemPercentageChargeDetails, name: "Percentage"))
    CustomLineItemChargeDetails.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemType, name: "Type", traits: {"smithy.api#required" => {}}))
    CustomLineItemChargeDetails.add_member(:line_item_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemFiltersList, name: "LineItemFilters"))
    CustomLineItemChargeDetails.type = Types::CustomLineItemChargeDetails
    CustomLineItemFlatChargeDetails.add_member(:charge_value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemChargeValue, name: "ChargeValue", traits: {"smithy.api#required" => {}}))
    CustomLineItemFlatChargeDetails.type = Types::CustomLineItemFlatChargeDetails
    CustomLineItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemListElement, name: "member"))
    CustomLineItemListElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "Arn"))
    CustomLineItemListElement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemName, name: "Name"))
    CustomLineItemListElement.add_member(:charge_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCustomLineItemChargeDetails, name: "ChargeDetails"))
    CustomLineItemListElement.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "CurrencyCode"))
    CustomLineItemListElement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemDescription, name: "Description"))
    CustomLineItemListElement.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemProductCode, name: "ProductCode"))
    CustomLineItemListElement.add_member(:billing_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "BillingGroupArn"))
    CustomLineItemListElement.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "CreationTime", traits: {"smithy.api#default" => 0}))
    CustomLineItemListElement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    CustomLineItemListElement.add_member(:association_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAssociations, name: "AssociationSize", traits: {"smithy.api#default" => 0}))
    CustomLineItemListElement.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    CustomLineItemListElement.add_member(:computation_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationRuleEnum, name: "ComputationRule"))
    CustomLineItemListElement.add_member(:presentation_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PresentationObject, name: "PresentationDetails"))
    CustomLineItemListElement.type = Types::CustomLineItemListElement
    CustomLineItemNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemName, name: "member"))
    CustomLineItemPercentageChargeDetails.add_member(:percentage_value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemPercentageChargeValue, name: "PercentageValue", traits: {"smithy.api#required" => {}}))
    CustomLineItemPercentageChargeDetails.add_member(:associated_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemAssociationsList, name: "AssociatedValues"))
    CustomLineItemPercentageChargeDetails.type = Types::CustomLineItemPercentageChargeDetails
    CustomLineItemRelationship.add_member(:parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARENT", traits: {"smithy.api#enumValue" => "PARENT"}))
    CustomLineItemRelationship.add_member(:child, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHILD", traits: {"smithy.api#enumValue" => "CHILD"}))
    CustomLineItemType.add_member(:credit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT", traits: {"smithy.api#enumValue" => "CREDIT"}))
    CustomLineItemType.add_member(:fee, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FEE", traits: {"smithy.api#enumValue" => "FEE"}))
    CustomLineItemVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemVersionListElement, name: "member"))
    CustomLineItemVersionListElement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemName, name: "Name"))
    CustomLineItemVersionListElement.add_member(:charge_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCustomLineItemChargeDetails, name: "ChargeDetails"))
    CustomLineItemVersionListElement.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "CurrencyCode"))
    CustomLineItemVersionListElement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemDescription, name: "Description"))
    CustomLineItemVersionListElement.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemProductCode, name: "ProductCode"))
    CustomLineItemVersionListElement.add_member(:billing_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "BillingGroupArn"))
    CustomLineItemVersionListElement.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "CreationTime", traits: {"smithy.api#default" => 0}))
    CustomLineItemVersionListElement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    CustomLineItemVersionListElement.add_member(:association_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAssociations, name: "AssociationSize", traits: {"smithy.api#default" => 0}))
    CustomLineItemVersionListElement.add_member(:start_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "StartBillingPeriod"))
    CustomLineItemVersionListElement.add_member(:end_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "EndBillingPeriod"))
    CustomLineItemVersionListElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "Arn"))
    CustomLineItemVersionListElement.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "StartTime", traits: {"smithy.api#default" => 0}))
    CustomLineItemVersionListElement.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    CustomLineItemVersionListElement.add_member(:computation_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationRuleEnum, name: "ComputationRule"))
    CustomLineItemVersionListElement.add_member(:presentation_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PresentationObject, name: "PresentationDetails"))
    CustomLineItemVersionListElement.type = Types::CustomLineItemVersionListElement
    CustomTier.add_member(:begin_range_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTierBeginRangeInclusive, name: "BeginRangeInclusive", traits: {"smithy.api#required" => {}}))
    CustomTier.add_member(:end_range_exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTierEndRangeExclusive, name: "EndRangeExclusive"))
    CustomTier.add_member(:rate_value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTierRateValue, name: "RateValue", traits: {"smithy.api#required" => {}}))
    CustomTier.type = Types::CustomTier
    CustomTiersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTier, name: "member"))
    DeleteBillingGroupOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DeleteBillingGroupOperationInput.type = Types::DeleteBillingGroupOperationInput
    DeleteBillingGroupOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn"))
    DeleteBillingGroupOperationOutput.type = Types::DeleteBillingGroupOperationOutput
    DeleteCustomLineItemOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DeleteCustomLineItemOperationInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemBillingPeriodRange, name: "BillingPeriodRange"))
    DeleteCustomLineItemOperationInput.type = Types::DeleteCustomLineItemOperationInput
    DeleteCustomLineItemOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "Arn"))
    DeleteCustomLineItemOperationOutput.type = Types::DeleteCustomLineItemOperationOutput
    DeletePricingPlanOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DeletePricingPlanOperationInput.type = Types::DeletePricingPlanOperationInput
    DeletePricingPlanOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "Arn"))
    DeletePricingPlanOperationOutput.type = Types::DeletePricingPlanOperationOutput
    DeletePricingRuleOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DeletePricingRuleOperationInput.type = Types::DeletePricingRuleOperationInput
    DeletePricingRuleOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArn, name: "Arn"))
    DeletePricingRuleOperationOutput.type = Types::DeletePricingRuleOperationOutput
    DisassociateAccountsOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DisassociateAccountsOperationInput.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds", traits: {"smithy.api#required" => {}}))
    DisassociateAccountsOperationInput.type = Types::DisassociateAccountsOperationInput
    DisassociateAccountsOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn"))
    DisassociateAccountsOperationOutput.type = Types::DisassociateAccountsOperationOutput
    DisassociatePricingRulesOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DisassociatePricingRulesOperationInput.add_member(:pricing_rule_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArnsNonEmptyInput, name: "PricingRuleArns", traits: {"smithy.api#required" => {}}))
    DisassociatePricingRulesOperationInput.type = Types::DisassociatePricingRulesOperationInput
    DisassociatePricingRulesOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "Arn"))
    DisassociatePricingRulesOperationOutput.type = Types::DisassociatePricingRulesOperationOutput
    DisassociateResourceResponseElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemAssociationElement, name: "Arn"))
    DisassociateResourceResponseElement.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateResourceError, name: "Error"))
    DisassociateResourceResponseElement.type = Types::DisassociateResourceResponseElement
    DisassociateResourcesResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateResourceResponseElement, name: "member"))
    FreeTierConfig.add_member(:activated, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringActivated, name: "Activated", traits: {"smithy.api#required" => {}}))
    FreeTierConfig.type = Types::FreeTierConfig
    GetBillingGroupCostReportInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetBillingGroupCostReportInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriodRange, name: "BillingPeriodRange"))
    GetBillingGroupCostReportInput.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupByAttributesList, name: "GroupBy"))
    GetBillingGroupCostReportInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBillingGroupCostReportResults, name: "MaxResults"))
    GetBillingGroupCostReportInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetBillingGroupCostReportInput.type = Types::GetBillingGroupCostReportInput
    GetBillingGroupCostReportOutput.add_member(:billing_group_cost_report_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupCostReportResultsList, name: "BillingGroupCostReportResults"))
    GetBillingGroupCostReportOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetBillingGroupCostReportOutput.type = Types::GetBillingGroupCostReportOutput
    GetBillingTransferPreferenceInput.add_member(:responsibility_transfer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferArn, name: "ResponsibilityTransferArn", traits: {"smithy.api#required" => {}}))
    GetBillingTransferPreferenceInput.type = Types::GetBillingTransferPreferenceInput
    GetBillingTransferPreferenceOutput.add_member(:responsibility_transfer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferArn, name: "ResponsibilityTransferArn", traits: {"smithy.api#required" => {}}))
    GetBillingTransferPreferenceOutput.add_member(:auto_billing_transfer_billing_group_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoTransferBillingGroupCreationPreference, name: "AutoBillingTransferBillingGroupCreation", traits: {"smithy.api#required" => {}}))
    GetBillingTransferPreferenceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "LastModifiedTime", traits: {"smithy.api#default" => nil}))
    GetBillingTransferPreferenceOutput.type = Types::GetBillingTransferPreferenceOutput
    GroupByAttributeName.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCT_NAME", traits: {"smithy.api#enumValue" => "PRODUCT_NAME"}))
    GroupByAttributeName.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_PERIOD", traits: {"smithy.api#enumValue" => "BILLING_PERIOD"}))
    GroupByAttributesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupByAttributeName, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    LineItemFilter.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemFilterAttributeName, name: "Attribute", traits: {"smithy.api#required" => {}}))
    LineItemFilter.add_member(:match_option, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchOption, name: "MatchOption", traits: {"smithy.api#required" => {}}))
    LineItemFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemFilterValuesList, name: "Values", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => []}))
    LineItemFilter.add_member(:attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "AttributeValues"))
    LineItemFilter.type = Types::LineItemFilter
    LineItemFilterAttributeName.add_member(:line_item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINE_ITEM_TYPE", traits: {"smithy.api#enumValue" => "LINE_ITEM_TYPE"}))
    LineItemFilterAttributeName.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    LineItemFilterValue.add_member(:savings_plan_negation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAVINGS_PLAN_NEGATION", traits: {"smithy.api#enumValue" => "SAVINGS_PLAN_NEGATION"}))
    LineItemFilterValuesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemFilterValue, name: "member"))
    LineItemFiltersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemFilter, name: "member"))
    ListAccountAssociationsFilter.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: Association, name: "Association"))
    ListAccountAssociationsFilter.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    ListAccountAssociationsFilter.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdFilterList, name: "AccountIds"))
    ListAccountAssociationsFilter.type = Types::ListAccountAssociationsFilter
    ListAccountAssociationsOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListAccountAssociationsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAccountAssociationsFilter, name: "Filters"))
    ListAccountAssociationsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountAssociationsOperationInput.type = Types::ListAccountAssociationsOperationInput
    ListAccountAssociationsOperationOutput.add_member(:linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssociationsList, name: "LinkedAccounts"))
    ListAccountAssociationsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountAssociationsOperationOutput.type = Types::ListAccountAssociationsOperationOutput
    ListBillingGroupAccountGrouping.add_member(:auto_associate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AutoAssociate"))
    ListBillingGroupAccountGrouping.add_member(:responsibility_transfer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferArn, name: "ResponsibilityTransferArn"))
    ListBillingGroupAccountGrouping.type = Types::ListBillingGroupAccountGrouping
    ListBillingGroupCostReportsFilter.add_member(:billing_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArnList, name: "BillingGroupArns"))
    ListBillingGroupCostReportsFilter.type = Types::ListBillingGroupCostReportsFilter
    ListBillingGroupCostReportsOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListBillingGroupCostReportsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBillingGroupResults, name: "MaxResults"))
    ListBillingGroupCostReportsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListBillingGroupCostReportsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListBillingGroupCostReportsFilter, name: "Filters"))
    ListBillingGroupCostReportsOperationInput.type = Types::ListBillingGroupCostReportsOperationInput
    ListBillingGroupCostReportsOperationOutput.add_member(:billing_group_cost_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupCostReportList, name: "BillingGroupCostReports"))
    ListBillingGroupCostReportsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListBillingGroupCostReportsOperationOutput.type = Types::ListBillingGroupCostReportsOperationOutput
    ListBillingGroupsFilter.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArnList, name: "Arns"))
    ListBillingGroupsFilter.add_member(:pricing_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanFullArn, name: "PricingPlan"))
    ListBillingGroupsFilter.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupStatusList, name: "Statuses"))
    ListBillingGroupsFilter.add_member(:auto_associate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AutoAssociate"))
    ListBillingGroupsFilter.add_member(:primary_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountIdList, name: "PrimaryAccountIds"))
    ListBillingGroupsFilter.add_member(:billing_group_types, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupTypeList, name: "BillingGroupTypes"))
    ListBillingGroupsFilter.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSearches, name: "Names"))
    ListBillingGroupsFilter.add_member(:responsibility_transfer_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferArnsList, name: "ResponsibilityTransferArns"))
    ListBillingGroupsFilter.type = Types::ListBillingGroupsFilter
    ListBillingGroupsOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListBillingGroupsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBillingGroupResults, name: "MaxResults"))
    ListBillingGroupsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListBillingGroupsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListBillingGroupsFilter, name: "Filters"))
    ListBillingGroupsOperationInput.type = Types::ListBillingGroupsOperationInput
    ListBillingGroupsOperationOutput.add_member(:billing_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupList, name: "BillingGroups"))
    ListBillingGroupsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListBillingGroupsOperationOutput.type = Types::ListBillingGroupsOperationOutput
    ListCustomLineItemChargeDetails.add_member(:flat, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCustomLineItemFlatChargeDetails, name: "Flat"))
    ListCustomLineItemChargeDetails.add_member(:percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCustomLineItemPercentageChargeDetails, name: "Percentage"))
    ListCustomLineItemChargeDetails.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemType, name: "Type", traits: {"smithy.api#required" => {}}))
    ListCustomLineItemChargeDetails.add_member(:line_item_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemFiltersList, name: "LineItemFilters"))
    ListCustomLineItemChargeDetails.type = Types::ListCustomLineItemChargeDetails
    ListCustomLineItemFlatChargeDetails.add_member(:charge_value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemChargeValue, name: "ChargeValue", traits: {"smithy.api#required" => {}}))
    ListCustomLineItemFlatChargeDetails.type = Types::ListCustomLineItemFlatChargeDetails
    ListCustomLineItemPercentageChargeDetails.add_member(:percentage_value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemPercentageChargeValue, name: "PercentageValue", traits: {"smithy.api#required" => {}}))
    ListCustomLineItemPercentageChargeDetails.type = Types::ListCustomLineItemPercentageChargeDetails
    ListCustomLineItemVersionsBillingPeriodRangeFilter.add_member(:start_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "StartBillingPeriod"))
    ListCustomLineItemVersionsBillingPeriodRangeFilter.add_member(:end_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "EndBillingPeriod"))
    ListCustomLineItemVersionsBillingPeriodRangeFilter.type = Types::ListCustomLineItemVersionsBillingPeriodRangeFilter
    ListCustomLineItemVersionsFilter.add_member(:billing_period_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCustomLineItemVersionsBillingPeriodRangeFilter, name: "BillingPeriodRange"))
    ListCustomLineItemVersionsFilter.type = Types::ListCustomLineItemVersionsFilter
    ListCustomLineItemVersionsOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ListCustomLineItemVersionsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCustomLineItemResults, name: "MaxResults"))
    ListCustomLineItemVersionsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCustomLineItemVersionsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCustomLineItemVersionsFilter, name: "Filters"))
    ListCustomLineItemVersionsOperationInput.type = Types::ListCustomLineItemVersionsOperationInput
    ListCustomLineItemVersionsOperationOutput.add_member(:custom_line_item_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemVersionList, name: "CustomLineItemVersions"))
    ListCustomLineItemVersionsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCustomLineItemVersionsOperationOutput.type = Types::ListCustomLineItemVersionsOperationOutput
    ListCustomLineItemsFilter.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemNameList, name: "Names"))
    ListCustomLineItemsFilter.add_member(:billing_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArnList, name: "BillingGroups"))
    ListCustomLineItemsFilter.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArns, name: "Arns"))
    ListCustomLineItemsFilter.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds"))
    ListCustomLineItemsFilter.type = Types::ListCustomLineItemsFilter
    ListCustomLineItemsOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListCustomLineItemsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCustomLineItemResults, name: "MaxResults"))
    ListCustomLineItemsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCustomLineItemsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCustomLineItemsFilter, name: "Filters"))
    ListCustomLineItemsOperationInput.type = Types::ListCustomLineItemsOperationInput
    ListCustomLineItemsOperationOutput.add_member(:custom_line_items, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemList, name: "CustomLineItems"))
    ListCustomLineItemsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCustomLineItemsOperationOutput.type = Types::ListCustomLineItemsOperationOutput
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:pricing_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArn, name: "PricingRuleArn", traits: {"smithy.api#required" => {}}))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPricingRuleResults, name: "MaxResults"))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.type = Types::ListPricingPlansAssociatedWithPricingRuleOperationInput
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:pricing_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArn, name: "PricingRuleArn"))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:pricing_plan_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArns, name: "PricingPlanArns"))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.type = Types::ListPricingPlansAssociatedWithPricingRuleOperationOutput
    ListPricingPlansFilter.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArns, name: "Arns"))
    ListPricingPlansFilter.type = Types::ListPricingPlansFilter
    ListPricingPlansOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListPricingPlansOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPricingPlansFilter, name: "Filters"))
    ListPricingPlansOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPricingPlanResults, name: "MaxResults"))
    ListPricingPlansOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPricingPlansOperationInput.type = Types::ListPricingPlansOperationInput
    ListPricingPlansOperationOutput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListPricingPlansOperationOutput.add_member(:pricing_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanList, name: "PricingPlans"))
    ListPricingPlansOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPricingPlansOperationOutput.type = Types::ListPricingPlansOperationOutput
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:pricing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "PricingPlanArn", traits: {"smithy.api#required" => {}}))
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPricingPlanResults, name: "MaxResults"))
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPricingRulesAssociatedToPricingPlanOperationInput.type = Types::ListPricingRulesAssociatedToPricingPlanOperationInput
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:pricing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "PricingPlanArn"))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:pricing_rule_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArns, name: "PricingRuleArns"))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.type = Types::ListPricingRulesAssociatedToPricingPlanOperationOutput
    ListPricingRulesFilter.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArns, name: "Arns"))
    ListPricingRulesFilter.type = Types::ListPricingRulesFilter
    ListPricingRulesOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListPricingRulesOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPricingRulesFilter, name: "Filters"))
    ListPricingRulesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPricingRuleResults, name: "MaxResults"))
    ListPricingRulesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPricingRulesOperationInput.type = Types::ListPricingRulesOperationInput
    ListPricingRulesOperationOutput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListPricingRulesOperationOutput.add_member(:pricing_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleList, name: "PricingRules"))
    ListPricingRulesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPricingRulesOperationOutput.type = Types::ListPricingRulesOperationOutput
    ListResourcesAssociatedToCustomLineItemFilter.add_member(:relationship, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemRelationship, name: "Relationship"))
    ListResourcesAssociatedToCustomLineItemFilter.type = Types::ListResourcesAssociatedToCustomLineItemFilter
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCustomLineItemResults, name: "MaxResults"))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourcesAssociatedToCustomLineItemFilter, name: "Filters"))
    ListResourcesAssociatedToCustomLineItemOperationInput.type = Types::ListResourcesAssociatedToCustomLineItemOperationInput
    ListResourcesAssociatedToCustomLineItemOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "Arn"))
    ListResourcesAssociatedToCustomLineItemOperationOutput.add_member(:associated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourcesAssociatedToCustomLineItemResponseList, name: "AssociatedResources"))
    ListResourcesAssociatedToCustomLineItemOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListResourcesAssociatedToCustomLineItemOperationOutput.type = Types::ListResourcesAssociatedToCustomLineItemOperationOutput
    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemAssociationElement, name: "Arn"))
    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:relationship, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemRelationship, name: "Relationship"))
    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:end_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "EndBillingPeriod"))
    ListResourcesAssociatedToCustomLineItemResponseElement.type = Types::ListResourcesAssociatedToCustomLineItemResponseElement
    ListResourcesAssociatedToCustomLineItemResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourcesAssociatedToCustomLineItemResponseElement, name: "member"))
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MatchOption.add_member(:not_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL", traits: {"smithy.api#enumValue" => "NOT_EQUAL"}))
    MatchOption.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "EQUAL"}))
    PresentationObject.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "Service", traits: {"smithy.api#required" => {}}))
    PresentationObject.type = Types::PresentationObject
    PricingPlanArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "member"))
    PricingPlanList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanListElement, name: "member"))
    PricingPlanListElement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanName, name: "Name"))
    PricingPlanListElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "Arn"))
    PricingPlanListElement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanDescription, name: "Description"))
    PricingPlanListElement.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAssociatedPricingRules, name: "Size", traits: {"smithy.api#default" => 0}))
    PricingPlanListElement.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "CreationTime", traits: {"smithy.api#default" => 0}))
    PricingPlanListElement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    PricingPlanListElement.type = Types::PricingPlanListElement
    PricingRuleArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArn, name: "member"))
    PricingRuleArnsInput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArn, name: "member"))
    PricingRuleArnsNonEmptyInput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArn, name: "member"))
    PricingRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleListElement, name: "member"))
    PricingRuleListElement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleName, name: "Name"))
    PricingRuleListElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArn, name: "Arn"))
    PricingRuleListElement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleDescription, name: "Description"))
    PricingRuleListElement.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleScope, name: "Scope"))
    PricingRuleListElement.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleType, name: "Type"))
    PricingRuleListElement.add_member(:modifier_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifierPercentage, name: "ModifierPercentage"))
    PricingRuleListElement.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "Service"))
    PricingRuleListElement.add_member(:associated_pricing_plan_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfPricingPlansAssociatedWith, name: "AssociatedPricingPlanCount", traits: {"smithy.api#default" => 0}))
    PricingRuleListElement.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "CreationTime", traits: {"smithy.api#default" => 0}))
    PricingRuleListElement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    PricingRuleListElement.add_member(:billing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingEntity, name: "BillingEntity"))
    PricingRuleListElement.add_member(:tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: Tiering, name: "Tiering"))
    PricingRuleListElement.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageType, name: "UsageType"))
    PricingRuleListElement.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "Operation"))
    PricingRuleListElement.type = Types::PricingRuleListElement
    PricingRuleScope.add_member(:global, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLOBAL", traits: {"smithy.api#enumValue" => "GLOBAL"}))
    PricingRuleScope.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    PricingRuleScope.add_member(:billing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_ENTITY", traits: {"smithy.api#enumValue" => "BILLING_ENTITY"}))
    PricingRuleScope.add_member(:sku, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKU", traits: {"smithy.api#enumValue" => "SKU"}))
    PricingRuleType.add_member(:markup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARKUP", traits: {"smithy.api#enumValue" => "MARKUP"}))
    PricingRuleType.add_member(:discount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCOUNT", traits: {"smithy.api#enumValue" => "DISCOUNT"}))
    PricingRuleType.add_member(:tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIERING", traits: {"smithy.api#enumValue" => "TIERING"}))
    PrimaryAccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponsibilityTransferArnsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferArn, name: "member"))
    SearchOption.add_member(:starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTS_WITH", traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    ServiceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId"))
    ServiceLimitExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    ServiceLimitExceededException.add_member(:limit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LimitCode", traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.type = Types::ServiceLimitExceededException
    StringSearch.add_member(:search_option, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchOption, name: "SearchOption", traits: {"smithy.api#required" => {}}))
    StringSearch.add_member(:search_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchValue, name: "SearchValue", traits: {"smithy.api#required" => {}}))
    StringSearch.type = Types::StringSearch
    StringSearches.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSearch, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    Tiering.add_member(:free_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTierConfig, name: "FreeTier"))
    Tiering.add_member(:custom_tiers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTiersList, name: "CustomTiers"))
    Tiering.type = Types::Tiering
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateBillingGroupAccountGrouping.add_member(:auto_associate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AutoAssociate"))
    UpdateBillingGroupAccountGrouping.add_member(:responsibility_transfer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferArn, name: "ResponsibilityTransferArn"))
    UpdateBillingGroupAccountGrouping.type = Types::UpdateBillingGroupAccountGrouping
    UpdateBillingGroupOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateBillingGroupOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupName, name: "Name"))
    UpdateBillingGroupOperationInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupStatus, name: "Status"))
    UpdateBillingGroupOperationInput.add_member(:computation_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationPreference, name: "ComputationPreference"))
    UpdateBillingGroupOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupDescription, name: "Description"))
    UpdateBillingGroupOperationInput.add_member(:account_grouping, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateBillingGroupAccountGrouping, name: "AccountGrouping"))
    UpdateBillingGroupOperationInput.type = Types::UpdateBillingGroupOperationInput
    UpdateBillingGroupOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupArn, name: "Arn"))
    UpdateBillingGroupOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupName, name: "Name"))
    UpdateBillingGroupOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupDescription, name: "Description"))
    UpdateBillingGroupOperationOutput.add_member(:primary_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "PrimaryAccountId"))
    UpdateBillingGroupOperationOutput.add_member(:pricing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "PricingPlanArn"))
    UpdateBillingGroupOperationOutput.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAccounts, name: "Size", traits: {"smithy.api#default" => 0}))
    UpdateBillingGroupOperationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    UpdateBillingGroupOperationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupStatus, name: "Status"))
    UpdateBillingGroupOperationOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupStatusReason, name: "StatusReason"))
    UpdateBillingGroupOperationOutput.add_member(:account_grouping, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateBillingGroupAccountGrouping, name: "AccountGrouping"))
    UpdateBillingGroupOperationOutput.type = Types::UpdateBillingGroupOperationOutput
    UpdateBillingTransferPreferenceInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    UpdateBillingTransferPreferenceInput.add_member(:responsibility_transfer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferArn, name: "ResponsibilityTransferArn", traits: {"smithy.api#required" => {}}))
    UpdateBillingTransferPreferenceInput.add_member(:auto_billing_transfer_billing_group_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoTransferBillingGroupCreationPreference, name: "AutoBillingTransferBillingGroupCreation", traits: {"smithy.api#required" => {}}))
    UpdateBillingTransferPreferenceInput.type = Types::UpdateBillingTransferPreferenceInput
    UpdateBillingTransferPreferenceOutput.add_member(:responsibility_transfer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsibilityTransferArn, name: "ResponsibilityTransferArn", traits: {"smithy.api#required" => {}}))
    UpdateBillingTransferPreferenceOutput.add_member(:auto_billing_transfer_billing_group_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoTransferBillingGroupCreationPreference, name: "AutoBillingTransferBillingGroupCreation", traits: {"smithy.api#required" => {}}))
    UpdateBillingTransferPreferenceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "LastModifiedTime", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    UpdateBillingTransferPreferenceOutput.type = Types::UpdateBillingTransferPreferenceOutput
    UpdateCustomLineItemChargeDetails.add_member(:flat, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCustomLineItemFlatChargeDetails, name: "Flat"))
    UpdateCustomLineItemChargeDetails.add_member(:percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCustomLineItemPercentageChargeDetails, name: "Percentage"))
    UpdateCustomLineItemChargeDetails.add_member(:line_item_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemFiltersList, name: "LineItemFilters"))
    UpdateCustomLineItemChargeDetails.type = Types::UpdateCustomLineItemChargeDetails
    UpdateCustomLineItemFlatChargeDetails.add_member(:charge_value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemChargeValue, name: "ChargeValue", traits: {"smithy.api#required" => {}}))
    UpdateCustomLineItemFlatChargeDetails.type = Types::UpdateCustomLineItemFlatChargeDetails
    UpdateCustomLineItemOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateCustomLineItemOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemName, name: "Name"))
    UpdateCustomLineItemOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemDescription, name: "Description"))
    UpdateCustomLineItemOperationInput.add_member(:charge_details, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCustomLineItemChargeDetails, name: "ChargeDetails"))
    UpdateCustomLineItemOperationInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemBillingPeriodRange, name: "BillingPeriodRange"))
    UpdateCustomLineItemOperationInput.type = Types::UpdateCustomLineItemOperationInput
    UpdateCustomLineItemOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemArn, name: "Arn"))
    UpdateCustomLineItemOperationOutput.add_member(:billing_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingGroupFullArn, name: "BillingGroupArn"))
    UpdateCustomLineItemOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemName, name: "Name"))
    UpdateCustomLineItemOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemDescription, name: "Description"))
    UpdateCustomLineItemOperationOutput.add_member(:charge_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCustomLineItemChargeDetails, name: "ChargeDetails"))
    UpdateCustomLineItemOperationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    UpdateCustomLineItemOperationOutput.add_member(:association_size, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAssociations, name: "AssociationSize", traits: {"smithy.api#default" => 0}))
    UpdateCustomLineItemOperationOutput.type = Types::UpdateCustomLineItemOperationOutput
    UpdateCustomLineItemPercentageChargeDetails.add_member(:percentage_value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLineItemPercentageChargeValue, name: "PercentageValue", traits: {"smithy.api#required" => {}}))
    UpdateCustomLineItemPercentageChargeDetails.type = Types::UpdateCustomLineItemPercentageChargeDetails
    UpdateFreeTierConfig.add_member(:activated, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringActivated, name: "Activated", traits: {"smithy.api#required" => {}}))
    UpdateFreeTierConfig.type = Types::UpdateFreeTierConfig
    UpdatePricingPlanOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdatePricingPlanOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanName, name: "Name"))
    UpdatePricingPlanOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanDescription, name: "Description"))
    UpdatePricingPlanOperationInput.type = Types::UpdatePricingPlanOperationInput
    UpdatePricingPlanOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanArn, name: "Arn"))
    UpdatePricingPlanOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanName, name: "Name"))
    UpdatePricingPlanOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlanDescription, name: "Description"))
    UpdatePricingPlanOperationOutput.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAssociatedPricingRules, name: "Size", traits: {"smithy.api#default" => 0}))
    UpdatePricingPlanOperationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    UpdatePricingPlanOperationOutput.type = Types::UpdatePricingPlanOperationOutput
    UpdatePricingRuleOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdatePricingRuleOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleName, name: "Name"))
    UpdatePricingRuleOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleDescription, name: "Description"))
    UpdatePricingRuleOperationInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleType, name: "Type"))
    UpdatePricingRuleOperationInput.add_member(:modifier_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifierPercentage, name: "ModifierPercentage"))
    UpdatePricingRuleOperationInput.add_member(:tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTieringInput, name: "Tiering"))
    UpdatePricingRuleOperationInput.type = Types::UpdatePricingRuleOperationInput
    UpdatePricingRuleOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleArn, name: "Arn"))
    UpdatePricingRuleOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleName, name: "Name"))
    UpdatePricingRuleOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleDescription, name: "Description"))
    UpdatePricingRuleOperationOutput.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleScope, name: "Scope"))
    UpdatePricingRuleOperationOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingRuleType, name: "Type"))
    UpdatePricingRuleOperationOutput.add_member(:modifier_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifierPercentage, name: "ModifierPercentage"))
    UpdatePricingRuleOperationOutput.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "Service"))
    UpdatePricingRuleOperationOutput.add_member(:associated_pricing_plan_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfPricingPlansAssociatedWith, name: "AssociatedPricingPlanCount", traits: {"smithy.api#default" => 0}))
    UpdatePricingRuleOperationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    UpdatePricingRuleOperationOutput.add_member(:billing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingEntity, name: "BillingEntity"))
    UpdatePricingRuleOperationOutput.add_member(:tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTieringInput, name: "Tiering"))
    UpdatePricingRuleOperationOutput.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageType, name: "UsageType"))
    UpdatePricingRuleOperationOutput.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "Operation"))
    UpdatePricingRuleOperationOutput.type = Types::UpdatePricingRuleOperationOutput
    UpdateTieringInput.add_member(:free_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFreeTierConfig, name: "FreeTier"))
    UpdateTieringInput.add_member(:custom_tiers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTiersList, name: "CustomTiers"))
    UpdateTieringInput.type = Types::UpdateTieringInput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "Fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    ValidationExceptionReason.add_member(:primary_not_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY_NOT_ASSOCIATED", traits: {"smithy.api#enumValue" => "PRIMARY_NOT_ASSOCIATED"}))
    ValidationExceptionReason.add_member(:primary_cannot_disassociate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY_CANNOT_DISASSOCIATE", traits: {"smithy.api#enumValue" => "PRIMARY_CANNOT_DISASSOCIATE"}))
    ValidationExceptionReason.add_member(:accounts_not_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNTS_NOT_ASSOCIATED", traits: {"smithy.api#enumValue" => "ACCOUNTS_NOT_ASSOCIATED"}))
    ValidationExceptionReason.add_member(:accounts_already_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNTS_ALREADY_ASSOCIATED", traits: {"smithy.api#enumValue" => "ACCOUNTS_ALREADY_ASSOCIATED"}))
    ValidationExceptionReason.add_member(:illegal_primary_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_PRIMARY_ACCOUNT", traits: {"smithy.api#enumValue" => "ILLEGAL_PRIMARY_ACCOUNT"}))
    ValidationExceptionReason.add_member(:illegal_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_ACCOUNTS", traits: {"smithy.api#enumValue" => "ILLEGAL_ACCOUNTS"}))
    ValidationExceptionReason.add_member(:mismatched_billinggroup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISMATCHED_BILLINGGROUP_ARN", traits: {"smithy.api#enumValue" => "MISMATCHED_BILLINGGROUP_ARN"}))
    ValidationExceptionReason.add_member(:missing_billinggroup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_BILLINGGROUP", traits: {"smithy.api#enumValue" => "MISSING_BILLINGGROUP"}))
    ValidationExceptionReason.add_member(:mismatched_customlineitem_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISMATCHED_CUSTOMLINEITEM_ARN", traits: {"smithy.api#enumValue" => "MISMATCHED_CUSTOMLINEITEM_ARN"}))
    ValidationExceptionReason.add_member(:illegal_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_BILLING_PERIOD", traits: {"smithy.api#enumValue" => "ILLEGAL_BILLING_PERIOD"}))
    ValidationExceptionReason.add_member(:illegal_billing_period_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_BILLING_PERIOD_RANGE", traits: {"smithy.api#enumValue" => "ILLEGAL_BILLING_PERIOD_RANGE"}))
    ValidationExceptionReason.add_member(:too_many_accounts_in_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOO_MANY_ACCOUNTS_IN_REQUEST", traits: {"smithy.api#enumValue" => "TOO_MANY_ACCOUNTS_IN_REQUEST"}))
    ValidationExceptionReason.add_member(:duplicate_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_ACCOUNT", traits: {"smithy.api#enumValue" => "DUPLICATE_ACCOUNT"}))
    ValidationExceptionReason.add_member(:invalid_billing_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_BILLING_GROUP_STATUS", traits: {"smithy.api#enumValue" => "INVALID_BILLING_GROUP_STATUS"}))
    ValidationExceptionReason.add_member(:mismatched_pricingplan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISMATCHED_PRICINGPLAN_ARN", traits: {"smithy.api#enumValue" => "MISMATCHED_PRICINGPLAN_ARN"}))
    ValidationExceptionReason.add_member(:missing_pricingplan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_PRICINGPLAN", traits: {"smithy.api#enumValue" => "MISSING_PRICINGPLAN"}))
    ValidationExceptionReason.add_member(:mismatched_pricingrule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISMATCHED_PRICINGRULE_ARN", traits: {"smithy.api#enumValue" => "MISMATCHED_PRICINGRULE_ARN"}))
    ValidationExceptionReason.add_member(:duplicate_pricingrule_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_PRICINGRULE_ARNS", traits: {"smithy.api#enumValue" => "DUPLICATE_PRICINGRULE_ARNS"}))
    ValidationExceptionReason.add_member(:missing_costcategory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_COSTCATEGORY", traits: {"smithy.api#enumValue" => "MISSING_COSTCATEGORY"}))
    ValidationExceptionReason.add_member(:illegal_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_EXPRESSION", traits: {"smithy.api#enumValue" => "ILLEGAL_EXPRESSION"}))
    ValidationExceptionReason.add_member(:illegal_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_SCOPE", traits: {"smithy.api#enumValue" => "ILLEGAL_SCOPE"}))
    ValidationExceptionReason.add_member(:illegal_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_SERVICE", traits: {"smithy.api#enumValue" => "ILLEGAL_SERVICE"}))
    ValidationExceptionReason.add_member(:pricingrules_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICINGRULES_NOT_EXIST", traits: {"smithy.api#enumValue" => "PRICINGRULES_NOT_EXIST"}))
    ValidationExceptionReason.add_member(:pricingrules_already_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICINGRULES_ALREADY_ASSOCIATED", traits: {"smithy.api#enumValue" => "PRICINGRULES_ALREADY_ASSOCIATED"}))
    ValidationExceptionReason.add_member(:pricingrules_not_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICINGRULES_NOT_ASSOCIATED", traits: {"smithy.api#enumValue" => "PRICINGRULES_NOT_ASSOCIATED"}))
    ValidationExceptionReason.add_member(:invalid_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_TIME_RANGE", traits: {"smithy.api#enumValue" => "INVALID_TIME_RANGE"}))
    ValidationExceptionReason.add_member(:invalid_billingview_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_BILLINGVIEW_ARN", traits: {"smithy.api#enumValue" => "INVALID_BILLINGVIEW_ARN"}))
    ValidationExceptionReason.add_member(:mismatched_billingview_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISMATCHED_BILLINGVIEW_ARN", traits: {"smithy.api#enumValue" => "MISMATCHED_BILLINGVIEW_ARN"}))
    ValidationExceptionReason.add_member(:illegal_customlineitem, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_CUSTOMLINEITEM", traits: {"smithy.api#enumValue" => "ILLEGAL_CUSTOMLINEITEM"}))
    ValidationExceptionReason.add_member(:missing_customlineitem, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_CUSTOMLINEITEM", traits: {"smithy.api#enumValue" => "MISSING_CUSTOMLINEITEM"}))
    ValidationExceptionReason.add_member(:illegal_customlineitem_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_CUSTOMLINEITEM_UPDATE", traits: {"smithy.api#enumValue" => "ILLEGAL_CUSTOMLINEITEM_UPDATE"}))
    ValidationExceptionReason.add_member(:too_many_customlineitems_in_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOO_MANY_CUSTOMLINEITEMS_IN_REQUEST", traits: {"smithy.api#enumValue" => "TOO_MANY_CUSTOMLINEITEMS_IN_REQUEST"}))
    ValidationExceptionReason.add_member(:illegal_charge_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_CHARGE_DETAILS", traits: {"smithy.api#enumValue" => "ILLEGAL_CHARGE_DETAILS"}))
    ValidationExceptionReason.add_member(:illegal_update_charge_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_UPDATE_CHARGE_DETAILS", traits: {"smithy.api#enumValue" => "ILLEGAL_UPDATE_CHARGE_DETAILS"}))
    ValidationExceptionReason.add_member(:invalid_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ARN", traits: {"smithy.api#enumValue" => "INVALID_ARN"}))
    ValidationExceptionReason.add_member(:illegal_resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_RESOURCE_ARNS", traits: {"smithy.api#enumValue" => "ILLEGAL_RESOURCE_ARNS"}))
    ValidationExceptionReason.add_member(:illegal_customlineitem_modification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_CUSTOMLINEITEM_MODIFICATION", traits: {"smithy.api#enumValue" => "ILLEGAL_CUSTOMLINEITEM_MODIFICATION"}))
    ValidationExceptionReason.add_member(:missing_linked_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_LINKED_ACCOUNT_IDS", traits: {"smithy.api#enumValue" => "MISSING_LINKED_ACCOUNT_IDS"}))
    ValidationExceptionReason.add_member(:multiple_linked_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIPLE_LINKED_ACCOUNT_IDS", traits: {"smithy.api#enumValue" => "MULTIPLE_LINKED_ACCOUNT_IDS"}))
    ValidationExceptionReason.add_member(:missing_pricing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_PRICING_PLAN_ARN", traits: {"smithy.api#enumValue" => "MISSING_PRICING_PLAN_ARN"}))
    ValidationExceptionReason.add_member(:multiple_pricing_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIPLE_PRICING_PLAN_ARN", traits: {"smithy.api#enumValue" => "MULTIPLE_PRICING_PLAN_ARN"}))
    ValidationExceptionReason.add_member(:illegal_child_associate_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_CHILD_ASSOCIATE_RESOURCE", traits: {"smithy.api#enumValue" => "ILLEGAL_CHILD_ASSOCIATE_RESOURCE"}))
    ValidationExceptionReason.add_member(:custom_line_item_association_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_LINE_ITEM_ASSOCIATION_EXISTS", traits: {"smithy.api#enumValue" => "CUSTOM_LINE_ITEM_ASSOCIATION_EXISTS"}))
    ValidationExceptionReason.add_member(:invalid_billing_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_BILLING_GROUP", traits: {"smithy.api#enumValue" => "INVALID_BILLING_GROUP"}))
    ValidationExceptionReason.add_member(:invalid_billing_period_for_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_BILLING_PERIOD_FOR_OPERATION", traits: {"smithy.api#enumValue" => "INVALID_BILLING_PERIOD_FOR_OPERATION"}))
    ValidationExceptionReason.add_member(:illegal_billing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_BILLING_ENTITY", traits: {"smithy.api#enumValue" => "ILLEGAL_BILLING_ENTITY"}))
    ValidationExceptionReason.add_member(:illegal_modifier_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_MODIFIER_PERCENTAGE", traits: {"smithy.api#enumValue" => "ILLEGAL_MODIFIER_PERCENTAGE"}))
    ValidationExceptionReason.add_member(:illegal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_TYPE", traits: {"smithy.api#enumValue" => "ILLEGAL_TYPE"}))
    ValidationExceptionReason.add_member(:illegal_billing_group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_BILLING_GROUP_TYPE", traits: {"smithy.api#enumValue" => "ILLEGAL_BILLING_GROUP_TYPE"}))
    ValidationExceptionReason.add_member(:illegal_billing_group_pricing_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_BILLING_GROUP_PRICING_PLAN", traits: {"smithy.api#enumValue" => "ILLEGAL_BILLING_GROUP_PRICING_PLAN"}))
    ValidationExceptionReason.add_member(:illegal_ended_billinggroup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_ENDED_BILLINGGROUP", traits: {"smithy.api#enumValue" => "ILLEGAL_ENDED_BILLINGGROUP"}))
    ValidationExceptionReason.add_member(:illegal_tiering_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_TIERING_INPUT", traits: {"smithy.api#enumValue" => "ILLEGAL_TIERING_INPUT"}))
    ValidationExceptionReason.add_member(:illegal_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_OPERATION", traits: {"smithy.api#enumValue" => "ILLEGAL_OPERATION"}))
    ValidationExceptionReason.add_member(:illegal_usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_USAGE_TYPE", traits: {"smithy.api#enumValue" => "ILLEGAL_USAGE_TYPE"}))
    ValidationExceptionReason.add_member(:invalid_sku_combo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SKU_COMBO", traits: {"smithy.api#enumValue" => "INVALID_SKU_COMBO"}))
    ValidationExceptionReason.add_member(:invalid_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_FILTER", traits: {"smithy.api#enumValue" => "INVALID_FILTER"}))
    ValidationExceptionReason.add_member(:too_many_auto_associate_billing_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOO_MANY_AUTO_ASSOCIATE_BILLING_GROUPS", traits: {"smithy.api#enumValue" => "TOO_MANY_AUTO_ASSOCIATE_BILLING_GROUPS"}))
    ValidationExceptionReason.add_member(:cannot_delete_auto_associate_billing_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_DELETE_AUTO_ASSOCIATE_BILLING_GROUP", traits: {"smithy.api#enumValue" => "CANNOT_DELETE_AUTO_ASSOCIATE_BILLING_GROUP"}))
    ValidationExceptionReason.add_member(:illegal_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ILLEGAL_ACCOUNT_ID"}))
    ValidationExceptionReason.add_member(:billing_group_already_exist_in_current_billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_GROUP_ALREADY_EXIST_IN_CURRENT_BILLING_PERIOD", traits: {"smithy.api#enumValue" => "BILLING_GROUP_ALREADY_EXIST_IN_CURRENT_BILLING_PERIOD"}))
    ValidationExceptionReason.add_member(:illegal_computation_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_COMPUTATION_RULE", traits: {"smithy.api#enumValue" => "ILLEGAL_COMPUTATION_RULE"}))
    ValidationExceptionReason.add_member(:illegal_line_item_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILLEGAL_LINE_ITEM_FILTER", traits: {"smithy.api#enumValue" => "ILLEGAL_LINE_ITEM_FILTER"}))

    AWSBillingConductor = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.billingconductor#AWSBillingConductor"
      service.name = "AWSBillingConductor"
      service.version = "2021-07-30"
      service.traits = {"aws.api#service" => {"sdkId" => "billingconductor", "arnNamespace" => "billingconductor"}, "aws.auth#sigv4" => {"name" => "billingconductor"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "String", "documentation" => "Filters access based on the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "billingconductor:PricingPlanArn" => {"type" => "ARN", "documentation" => "Filters access based on the pricing plan ARN that is passed in the request", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["X-Api-Key"]}, "smithy.api#title" => "AWSBillingConductor", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://billingconductor.us-east-1.amazonaws.com", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "billingconductor", "signingRegion" => "us-east-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://billingconductor-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://billingconductor-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://billingconductor.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://billingconductor.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAkAAAAGAAAABQAAAAgAAAAHAAAABwX14QQF9eELAAAABgX14QkF9eEKAAAABAAAAAsAAAAKAAAABQX14QYF9eEIAAAABQAAAAwF9eEHAAAABgX14QUF9eEGAAAAAwX14QEAAAAOAAAABQX14QIF9eED"}}
      service.add_operation(:associate_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#AssociateAccounts"
        operation.name = "AssociateAccounts"
        operation.input = AssociateAccountsOperationInput
        operation.output = AssociateAccountsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/associate-accounts", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_pricing_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#AssociatePricingRules"
        operation.name = "AssociatePricingRules"
        operation.input = AssociatePricingRulesOperationInput
        operation.output = AssociatePricingRulesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/associate-pricing-rules", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_associate_resources_to_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#BatchAssociateResourcesToCustomLineItem"
        operation.name = "BatchAssociateResourcesToCustomLineItem"
        operation.input = BatchAssociateResourcesToCustomLineItemOperationInput
        operation.output = BatchAssociateResourcesToCustomLineItemOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/batch-associate-resources-to-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_disassociate_resources_from_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#BatchDisassociateResourcesFromCustomLineItem"
        operation.name = "BatchDisassociateResourcesFromCustomLineItem"
        operation.input = BatchDisassociateResourcesFromCustomLineItemOperationInput
        operation.output = BatchDisassociateResourcesFromCustomLineItemOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/batch-disassociate-resources-from-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_billing_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreateBillingGroup"
        operation.name = "CreateBillingGroup"
        operation.input = CreateBillingGroupOperationInput
        operation.output = CreateBillingGroupOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-billing-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreateCustomLineItem"
        operation.name = "CreateCustomLineItem"
        operation.input = CreateCustomLineItemOperationInput
        operation.output = CreateCustomLineItemOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-custom-line-item", "code" => 200}}
      end)
      service.add_operation(:create_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreatePricingPlan"
        operation.name = "CreatePricingPlan"
        operation.input = CreatePricingPlanOperationInput
        operation.output = CreatePricingPlanOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-pricing-plan", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_pricing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreatePricingRule"
        operation.name = "CreatePricingRule"
        operation.input = CreatePricingRuleOperationInput
        operation.output = CreatePricingRuleOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-pricing-rule", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_billing_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeleteBillingGroup"
        operation.name = "DeleteBillingGroup"
        operation.input = DeleteBillingGroupOperationInput
        operation.output = DeleteBillingGroupOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-billing-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeleteCustomLineItem"
        operation.name = "DeleteCustomLineItem"
        operation.input = DeleteCustomLineItemOperationInput
        operation.output = DeleteCustomLineItemOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeletePricingPlan"
        operation.name = "DeletePricingPlan"
        operation.input = DeletePricingPlanOperationInput
        operation.output = DeletePricingPlanOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-pricing-plan", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_pricing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeletePricingRule"
        operation.name = "DeletePricingRule"
        operation.input = DeletePricingRuleOperationInput
        operation.output = DeletePricingRuleOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-pricing-rule", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DisassociateAccounts"
        operation.name = "DisassociateAccounts"
        operation.input = DisassociateAccountsOperationInput
        operation.output = DisassociateAccountsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/disassociate-accounts", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_pricing_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DisassociatePricingRules"
        operation.name = "DisassociatePricingRules"
        operation.input = DisassociatePricingRulesOperationInput
        operation.output = DisassociatePricingRulesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/disassociate-pricing-rules", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_billing_group_cost_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#GetBillingGroupCostReport"
        operation.name = "GetBillingGroupCostReport"
        operation.input = GetBillingGroupCostReportInput
        operation.output = GetBillingGroupCostReportOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-billing-group-cost-report", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetBillingGroupCostReport.new
      end)
      service.add_operation(:get_billing_transfer_preference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#GetBillingTransferPreference"
        operation.name = "GetBillingTransferPreference"
        operation.input = GetBillingTransferPreferenceInput
        operation.output = GetBillingTransferPreferenceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-billing-transfer-preference", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_account_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListAccountAssociations"
        operation.name = "ListAccountAssociations"
        operation.input = ListAccountAssociationsOperationInput
        operation.output = ListAccountAssociationsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-account-associations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccountAssociations.new
      end)
      service.add_operation(:list_billing_group_cost_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListBillingGroupCostReports"
        operation.name = "ListBillingGroupCostReports"
        operation.input = ListBillingGroupCostReportsOperationInput
        operation.output = ListBillingGroupCostReportsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-billing-group-cost-reports", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillingGroupCostReports.new
      end)
      service.add_operation(:list_billing_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListBillingGroups"
        operation.name = "ListBillingGroups"
        operation.input = ListBillingGroupsOperationInput
        operation.output = ListBillingGroupsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-billing-groups", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillingGroups.new
      end)
      service.add_operation(:list_custom_line_item_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListCustomLineItemVersions"
        operation.name = "ListCustomLineItemVersions"
        operation.input = ListCustomLineItemVersionsOperationInput
        operation.output = ListCustomLineItemVersionsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-custom-line-item-versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomLineItemVersions.new
      end)
      service.add_operation(:list_custom_line_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListCustomLineItems"
        operation.name = "ListCustomLineItems"
        operation.input = ListCustomLineItemsOperationInput
        operation.output = ListCustomLineItemsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-custom-line-items", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomLineItems.new
      end)
      service.add_operation(:list_pricing_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingPlans"
        operation.name = "ListPricingPlans"
        operation.input = ListPricingPlansOperationInput
        operation.output = ListPricingPlansOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-plans", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingPlans.new
      end)
      service.add_operation(:list_pricing_plans_associated_with_pricing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingPlansAssociatedWithPricingRule"
        operation.name = "ListPricingPlansAssociatedWithPricingRule"
        operation.input = ListPricingPlansAssociatedWithPricingRuleOperationInput
        operation.output = ListPricingPlansAssociatedWithPricingRuleOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-plans-associated-with-pricing-rule", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingPlansAssociatedWithPricingRule.new
      end)
      service.add_operation(:list_pricing_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingRules"
        operation.name = "ListPricingRules"
        operation.input = ListPricingRulesOperationInput
        operation.output = ListPricingRulesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-rules", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingRules.new
      end)
      service.add_operation(:list_pricing_rules_associated_to_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingRulesAssociatedToPricingPlan"
        operation.name = "ListPricingRulesAssociatedToPricingPlan"
        operation.input = ListPricingRulesAssociatedToPricingPlanOperationInput
        operation.output = ListPricingRulesAssociatedToPricingPlanOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-rules-associated-to-pricing-plan", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingRulesAssociatedToPricingPlan.new
      end)
      service.add_operation(:list_resources_associated_to_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItem"
        operation.name = "ListResourcesAssociatedToCustomLineItem"
        operation.input = ListResourcesAssociatedToCustomLineItemOperationInput
        operation.output = ListResourcesAssociatedToCustomLineItemOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-resources-associated-to-custom-line-item", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourcesAssociatedToCustomLineItem.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_billing_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdateBillingGroup"
        operation.name = "UpdateBillingGroup"
        operation.input = UpdateBillingGroupOperationInput
        operation.output = UpdateBillingGroupOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-billing-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_billing_transfer_preference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdateBillingTransferPreference"
        operation.name = "UpdateBillingTransferPreference"
        operation.input = UpdateBillingTransferPreferenceInput
        operation.output = UpdateBillingTransferPreferenceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["billingconductor:PricingPlanArn"], "smithy.api#http" => {"method" => "PUT", "uri" => "/update-billing-transfer-preference", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdateCustomLineItem"
        operation.name = "UpdateCustomLineItem"
        operation.input = UpdateCustomLineItemOperationInput
        operation.output = UpdateCustomLineItemOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdatePricingPlan"
        operation.name = "UpdatePricingPlan"
        operation.input = UpdatePricingPlanOperationInput
        operation.output = UpdatePricingPlanOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/update-pricing-plan", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_pricing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdatePricingRule"
        operation.name = "UpdatePricingRule"
        operation.input = UpdatePricingRuleOperationInput
        operation.output = UpdatePricingRuleOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/update-pricing-rule", "code" => 200}, "smithy.api#idempotent" => {}}
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
