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
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#AccountIdList", name: "AccountIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#AccountName", name: "AccountName", traits: {"smithy.api#sensitive" => {}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/?[0-9]{12}$|^arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingplan/[a-zA-Z0-9]{10}$|^arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingrule/[a-zA-Z0-9]{10}$|^(arn:aws(-cn)?:billingconductor::[0-9]{12}:customlineitem/)?[a-zA-Z0-9]{10}$"})
    AssociateAccountsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociateAccountsOperationInput", name: "AssociateAccountsOperationInput")
    AssociateAccountsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociateAccountsOperationOutput", name: "AssociateAccountsOperationOutput")
    AssociatePricingRulesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociatePricingRulesOperationInput", name: "AssociatePricingRulesOperationInput")
    AssociatePricingRulesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociatePricingRulesOperationOutput", name: "AssociatePricingRulesOperationOutput")
    AssociateResourceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociateResourceError", name: "AssociateResourceError")
    AssociateResourceErrorReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#AssociateResourceErrorReason", name: "AssociateResourceErrorReason", traits: {"smithy.api#enum" => [{"value" => "INVALID_ARN", "name" => "INVALID_ARN"}, {"value" => "SERVICE_LIMIT_EXCEEDED", "name" => "SERVICE_LIMIT_EXCEEDED"}, {"value" => "ILLEGAL_CUSTOMLINEITEM", "name" => "ILLEGAL_CUSTOMLINEITEM"}, {"value" => "INTERNAL_SERVER_EXCEPTION", "name" => "INTERNAL_SERVER_EXCEPTION"}, {"value" => "INVALID_BILLING_PERIOD_RANGE", "name" => "INVALID_BILLING_PERIOD_RANGE"}]})
    AssociateResourceResponseElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#AssociateResourceResponseElement", name: "AssociateResourceResponseElement")
    AssociateResourcesResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#AssociateResourcesResponseList", name: "AssociateResourcesResponseList")
    Association = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#Association", name: "Association", traits: {"smithy.api#pattern" => "^((arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/)?[0-9]{12}|MONITORED|UNMONITORED)$"})
    Attribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#Attribute", name: "Attribute")
    AttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#AttributesList", name: "AttributesList")
    BatchAssociateResourcesToCustomLineItemOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BatchAssociateResourcesToCustomLineItemOperationInput", name: "BatchAssociateResourcesToCustomLineItemOperationInput")
    BatchAssociateResourcesToCustomLineItemOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BatchAssociateResourcesToCustomLineItemOperationOutput", name: "BatchAssociateResourcesToCustomLineItemOperationOutput")
    BatchDisassociateResourcesFromCustomLineItemOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BatchDisassociateResourcesFromCustomLineItemOperationInput", name: "BatchDisassociateResourcesFromCustomLineItemOperationInput")
    BatchDisassociateResourcesFromCustomLineItemOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BatchDisassociateResourcesFromCustomLineItemOperationOutput", name: "BatchDisassociateResourcesFromCustomLineItemOperationOutput")
    BillingEntity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingEntity", name: "BillingEntity", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 ]+$"})
    BillingGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingGroupArn", name: "BillingGroupArn", traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/)?[0-9]{12}$"})
    BillingGroupArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#BillingGroupArnList", name: "BillingGroupArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BillingGroupCostReportElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BillingGroupCostReportElement", name: "BillingGroupCostReportElement")
    BillingGroupCostReportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#BillingGroupCostReportList", name: "BillingGroupCostReportList")
    BillingGroupCostReportResultElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BillingGroupCostReportResultElement", name: "BillingGroupCostReportResultElement")
    BillingGroupCostReportResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#BillingGroupCostReportResultsList", name: "BillingGroupCostReportResultsList")
    BillingGroupDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingGroupDescription", name: "BillingGroupDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    BillingGroupFullArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingGroupFullArn", name: "BillingGroupFullArn", traits: {"smithy.api#pattern" => "^arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/[0-9]{12}$"})
    BillingGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#BillingGroupList", name: "BillingGroupList")
    BillingGroupListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BillingGroupListElement", name: "BillingGroupListElement")
    BillingGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingGroupName", name: "BillingGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    BillingGroupStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingGroupStatus", name: "BillingGroupStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "PRIMARY_ACCOUNT_MISSING", "name" => "PRIMARY_ACCOUNT_MISSING"}]})
    BillingGroupStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#BillingGroupStatusList", name: "BillingGroupStatusList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    BillingGroupStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingGroupStatusReason", name: "BillingGroupStatusReason")
    BillingPeriod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#BillingPeriod", name: "BillingPeriod", traits: {"smithy.api#pattern" => "^\\d{4}-(0?[1-9]|1[012])$"})
    BillingPeriodRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#BillingPeriodRange", name: "BillingPeriodRange")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ComputationPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ComputationPreference", name: "ComputationPreference")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#ConflictExceptionReason", name: "ConflictExceptionReason", traits: {"smithy.api#enum" => [{"value" => "RESOURCE_NAME_CONFLICT", "name" => "RESOURCE_NAME_CONFLICT"}, {"value" => "PRICING_RULE_IN_PRICING_PLAN_CONFLICT", "name" => "PRICING_RULE_IN_PRICING_PLAN_CONFLICT"}, {"value" => "PRICING_PLAN_ATTACHED_TO_BILLING_GROUP_DELETE_CONFLICT", "name" => "PRICING_PLAN_ATTACHED_TO_BILLING_GROUP_DELETE_CONFLICT"}, {"value" => "PRICING_RULE_ATTACHED_TO_PRICING_PLAN_DELETE_CONFLICT", "name" => "PRICING_RULE_ATTACHED_TO_PRICING_PLAN_DELETE_CONFLICT"}, {"value" => "WRITE_CONFLICT_RETRY", "name" => "WRITE_CONFLICT_RETRY"}]})
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
    CurrencyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#CurrencyCode", name: "CurrencyCode", traits: {"smithy.api#enum" => [{"value" => "USD", "name" => "USD"}, {"value" => "CNY", "name" => "CNY"}]})
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
    CustomLineItemRelationship = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#CustomLineItemRelationship", name: "CustomLineItemRelationship", traits: {"smithy.api#enum" => [{"value" => "PARENT", "name" => "PARENT"}, {"value" => "CHILD", "name" => "CHILD"}]})
    CustomLineItemType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#CustomLineItemType", name: "CustomLineItemType", traits: {"smithy.api#enum" => [{"value" => "CREDIT", "name" => "CREDIT"}, {"value" => "FEE", "name" => "FEE"}]})
    CustomLineItemVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#CustomLineItemVersionList", name: "CustomLineItemVersionList")
    CustomLineItemVersionListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#CustomLineItemVersionListElement", name: "CustomLineItemVersionListElement")
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
    GroupByAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#GroupByAttributeName", name: "GroupByAttributeName", traits: {"smithy.api#enum" => [{"value" => "PRODUCT_NAME", "name" => "PRODUCT_NAME"}, {"value" => "BILLING_PERIOD", "name" => "BILLING_PERIOD"}]})
    GroupByAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#GroupByAttributesList", name: "GroupByAttributesList")
    Instant = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#Instant", name: "Instant", traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LineItemFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#LineItemFilter", name: "LineItemFilter")
    LineItemFilterAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#LineItemFilterAttributeName", name: "LineItemFilterAttributeName", traits: {"smithy.api#enum" => [{"value" => "LINE_ITEM_TYPE", "name" => "LINE_ITEM_TYPE"}]})
    LineItemFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#LineItemFilterValue", name: "LineItemFilterValue", traits: {"smithy.api#enum" => [{"value" => "SAVINGS_PLAN_NEGATION", "name" => "SAVINGS_PLAN_NEGATION"}]})
    LineItemFilterValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#LineItemFilterValuesList", name: "LineItemFilterValuesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
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
    MatchOption = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#MatchOption", name: "MatchOption", traits: {"smithy.api#enum" => [{"value" => "NOT_EQUAL", "name" => "NOT_EQUAL"}]})
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
    PricingPlanArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingPlanArn", name: "PricingPlanArn", traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingplan/)?[a-zA-Z0-9]{10}$"})
    PricingPlanArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billingconductor#PricingPlanArns", name: "PricingPlanArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PricingPlanDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingPlanDescription", name: "PricingPlanDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    PricingPlanFullArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingPlanFullArn", name: "PricingPlanFullArn", traits: {"smithy.api#pattern" => "^arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingplan/[a-zA-Z0-9]{10}$"})
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
    PricingRuleScope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingRuleScope", name: "PricingRuleScope", traits: {"smithy.api#enum" => [{"value" => "GLOBAL", "name" => "GLOBAL"}, {"value" => "SERVICE", "name" => "SERVICE"}, {"value" => "BILLING_ENTITY", "name" => "BILLING_ENTITY"}, {"value" => "SKU", "name" => "SKU"}]})
    PricingRuleType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#PricingRuleType", name: "PricingRuleType", traits: {"smithy.api#enum" => [{"value" => "MARKUP", "name" => "MARKUP"}, {"value" => "DISCOUNT", "name" => "DISCOUNT"}, {"value" => "TIERING", "name" => "TIERING"}]})
    ProformaCost = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#ProformaCost", name: "ProformaCost")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billingconductor#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    Service = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#Service", name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    ServiceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billingconductor#ServiceLimitExceededException", name: "ServiceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#String", name: "String")
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
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billingconductor#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "UNKNOWN_OPERATION", "name" => "UNKNOWN_OPERATION"}, {"value" => "CANNOT_PARSE", "name" => "CANNOT_PARSE"}, {"value" => "FIELD_VALIDATION_FAILED", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "OTHER", "name" => "OTHER"}, {"value" => "PRIMARY_NOT_ASSOCIATED", "name" => "PRIMARY_NOT_ASSOCIATED"}, {"value" => "PRIMARY_CANNOT_DISASSOCIATE", "name" => "PRIMARY_CANNOT_DISASSOCIATE"}, {"value" => "ACCOUNTS_NOT_ASSOCIATED", "name" => "ACCOUNTS_NOT_ASSOCIATED"}, {"value" => "ACCOUNTS_ALREADY_ASSOCIATED", "name" => "ACCOUNTS_ALREADY_ASSOCIATED"}, {"value" => "ILLEGAL_PRIMARY_ACCOUNT", "name" => "ILLEGAL_PRIMARY_ACCOUNT"}, {"value" => "ILLEGAL_ACCOUNTS", "name" => "ILLEGAL_ACCOUNTS"}, {"value" => "MISMATCHED_BILLINGGROUP_ARN", "name" => "MISMATCHED_BILLINGGROUP_ARN"}, {"value" => "MISSING_BILLINGGROUP", "name" => "MISSING_BILLINGGROUP"}, {"value" => "MISMATCHED_CUSTOMLINEITEM_ARN", "name" => "MISMATCHED_CUSTOMLINEITEM_ARN"}, {"value" => "ILLEGAL_BILLING_PERIOD", "name" => "ILLEGAL_BILLING_PERIOD"}, {"value" => "ILLEGAL_BILLING_PERIOD_RANGE", "name" => "ILLEGAL_BILLING_PERIOD_RANGE"}, {"value" => "TOO_MANY_ACCOUNTS_IN_REQUEST", "name" => "TOO_MANY_ACCOUNTS_IN_REQUEST"}, {"value" => "DUPLICATE_ACCOUNT", "name" => "DUPLICATE_ACCOUNT"}, {"value" => "INVALID_BILLING_GROUP_STATUS", "name" => "INVALID_BILLING_GROUP_STATUS"}, {"value" => "MISMATCHED_PRICINGPLAN_ARN", "name" => "MISMATCHED_PRICINGPLAN_ARN"}, {"value" => "MISSING_PRICINGPLAN", "name" => "MISSING_PRICINGPLAN"}, {"value" => "MISMATCHED_PRICINGRULE_ARN", "name" => "MISMATCHED_PRICINGRULE_ARN"}, {"value" => "DUPLICATE_PRICINGRULE_ARNS", "name" => "DUPLICATE_PRICINGRULE_ARNS"}, {"value" => "ILLEGAL_EXPRESSION", "name" => "ILLEGAL_EXPRESSION"}, {"value" => "ILLEGAL_SCOPE", "name" => "ILLEGAL_SCOPE"}, {"value" => "ILLEGAL_SERVICE", "name" => "ILLEGAL_SERVICE"}, {"value" => "PRICINGRULES_NOT_EXIST", "name" => "PRICINGRULES_NOT_EXIST"}, {"value" => "PRICINGRULES_ALREADY_ASSOCIATED", "name" => "PRICINGRULES_ALREADY_ASSOCIATED"}, {"value" => "PRICINGRULES_NOT_ASSOCIATED", "name" => "PRICINGRULES_NOT_ASSOCIATED"}, {"value" => "INVALID_TIME_RANGE", "name" => "INVALID_TIME_RANGE"}, {"value" => "INVALID_BILLINGVIEW_ARN", "name" => "INVALID_BILLINGVIEW_ARN"}, {"value" => "MISMATCHED_BILLINGVIEW_ARN", "name" => "MISMATCHED_BILLINGVIEW_ARN"}, {"value" => "ILLEGAL_CUSTOMLINEITEM", "name" => "ILLEGAL_CUSTOMLINEITEM"}, {"value" => "MISSING_CUSTOMLINEITEM", "name" => "MISSING_CUSTOMLINEITEM"}, {"value" => "ILLEGAL_CUSTOMLINEITEM_UPDATE", "name" => "ILLEGAL_CUSTOMLINEITEM_UPDATE"}, {"value" => "TOO_MANY_CUSTOMLINEITEMS_IN_REQUEST", "name" => "TOO_MANY_CUSTOMLINEITEMS_IN_REQUEST"}, {"value" => "ILLEGAL_CHARGE_DETAILS", "name" => "ILLEGAL_CHARGE_DETAILS"}, {"value" => "ILLEGAL_UPDATE_CHARGE_DETAILS", "name" => "ILLEGAL_UPDATE_CHARGE_DETAILS"}, {"value" => "INVALID_ARN", "name" => "INVALID_ARN"}, {"value" => "ILLEGAL_RESOURCE_ARNS", "name" => "ILLEGAL_RESOURCE_ARNS"}, {"value" => "ILLEGAL_CUSTOMLINEITEM_MODIFICATION", "name" => "ILLEGAL_CUSTOMLINEITEM_MODIFICATION"}, {"value" => "MISSING_LINKED_ACCOUNT_IDS", "name" => "MISSING_LINKED_ACCOUNT_IDS"}, {"value" => "MULTIPLE_LINKED_ACCOUNT_IDS", "name" => "MULTIPLE_LINKED_ACCOUNT_IDS"}, {"value" => "MISSING_PRICING_PLAN_ARN", "name" => "MISSING_PRICING_PLAN_ARN"}, {"value" => "MULTIPLE_PRICING_PLAN_ARN", "name" => "MULTIPLE_PRICING_PLAN_ARN"}, {"value" => "ILLEGAL_CHILD_ASSOCIATE_RESOURCE", "name" => "ILLEGAL_CHILD_ASSOCIATE_RESOURCE"}, {"value" => "CUSTOM_LINE_ITEM_ASSOCIATION_EXISTS", "name" => "CUSTOM_LINE_ITEM_ASSOCIATION_EXISTS"}, {"value" => "INVALID_BILLING_GROUP", "name" => "INVALID_BILLING_GROUP"}, {"value" => "INVALID_BILLING_PERIOD_FOR_OPERATION", "name" => "INVALID_BILLING_PERIOD_FOR_OPERATION"}, {"value" => "ILLEGAL_BILLING_ENTITY", "name" => "ILLEGAL_BILLING_ENTITY"}, {"value" => "ILLEGAL_MODIFIER_PERCENTAGE", "name" => "ILLEGAL_MODIFIER_PERCENTAGE"}, {"value" => "ILLEGAL_TYPE", "name" => "ILLEGAL_TYPE"}, {"value" => "ILLEGAL_ENDED_BILLINGGROUP", "name" => "ILLEGAL_ENDED_BILLINGGROUP"}, {"value" => "ILLEGAL_TIERING_INPUT", "name" => "ILLEGAL_TIERING_INPUT"}, {"value" => "ILLEGAL_OPERATION", "name" => "ILLEGAL_OPERATION"}, {"value" => "ILLEGAL_USAGE_TYPE", "name" => "ILLEGAL_USAGE_TYPE"}, {"value" => "INVALID_SKU_COMBO", "name" => "INVALID_SKU_COMBO"}, {"value" => "INVALID_FILTER", "name" => "INVALID_FILTER"}, {"value" => "TOO_MANY_AUTO_ASSOCIATE_BILLING_GROUPS", "name" => "TOO_MANY_AUTO_ASSOCIATE_BILLING_GROUPS"}, {"value" => "CANNOT_DELETE_AUTO_ASSOCIATE_BILLING_GROUP", "name" => "CANNOT_DELETE_AUTO_ASSOCIATE_BILLING_GROUP"}, {"value" => "ILLEGAL_ACCOUNT_ID", "name" => "ILLEGAL_ACCOUNT_ID"}]})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountAssociationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssociationsListElement)
    AccountAssociationsListElement.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AccountAssociationsListElement.add_member(:billing_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "BillingGroupArn"))
    AccountAssociationsListElement.add_member(:account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: "AccountName"))
    AccountAssociationsListElement.add_member(:account_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountEmail, location_name: "AccountEmail"))
    AccountAssociationsListElement.type = Types::AccountAssociationsListElement
    AccountGrouping.add_member(:linked_account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: "LinkedAccountIds", traits: {"smithy.api#required" => {}}))
    AccountGrouping.add_member(:auto_associate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "AutoAssociate"))
    AccountGrouping.type = Types::AccountGrouping
    AccountIdFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AccountIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AssociateAccountsOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    AssociateAccountsOperationInput.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds", traits: {"smithy.api#required" => {}}))
    AssociateAccountsOperationInput.type = Types::AssociateAccountsOperationInput
    AssociateAccountsOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    AssociateAccountsOperationOutput.type = Types::AssociateAccountsOperationOutput
    AssociatePricingRulesOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    AssociatePricingRulesOperationInput.add_member(:pricing_rule_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArnsNonEmptyInput, location_name: "PricingRuleArns", traits: {"smithy.api#required" => {}}))
    AssociatePricingRulesOperationInput.type = Types::AssociatePricingRulesOperationInput
    AssociatePricingRulesOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    AssociatePricingRulesOperationOutput.type = Types::AssociatePricingRulesOperationOutput
    AssociateResourceError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AssociateResourceError.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceErrorReason, location_name: "Reason"))
    AssociateResourceError.type = Types::AssociateResourceError
    AssociateResourceResponseElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement, location_name: "Arn"))
    AssociateResourceResponseElement.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceError, location_name: "Error"))
    AssociateResourceResponseElement.type = Types::AssociateResourceResponseElement
    AssociateResourcesResponseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceResponseElement)
    Attribute.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Key"))
    Attribute.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Value"))
    Attribute.type = Types::Attribute
    AttributesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    BatchAssociateResourcesToCustomLineItemOperationInput.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "TargetArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    BatchAssociateResourcesToCustomLineItemOperationInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBatchAssociationsList, location_name: "ResourceArns", traits: {"smithy.api#required" => {}}))
    BatchAssociateResourcesToCustomLineItemOperationInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: "BillingPeriodRange"))
    BatchAssociateResourcesToCustomLineItemOperationInput.type = Types::BatchAssociateResourcesToCustomLineItemOperationInput
    BatchAssociateResourcesToCustomLineItemOperationOutput.add_member(:successfully_associated_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourcesResponseList, location_name: "SuccessfullyAssociatedResources"))
    BatchAssociateResourcesToCustomLineItemOperationOutput.add_member(:failed_associated_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourcesResponseList, location_name: "FailedAssociatedResources"))
    BatchAssociateResourcesToCustomLineItemOperationOutput.type = Types::BatchAssociateResourcesToCustomLineItemOperationOutput
    BatchDisassociateResourcesFromCustomLineItemOperationInput.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "TargetArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    BatchDisassociateResourcesFromCustomLineItemOperationInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBatchDisassociationsList, location_name: "ResourceArns", traits: {"smithy.api#required" => {}}))
    BatchDisassociateResourcesFromCustomLineItemOperationInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: "BillingPeriodRange"))
    BatchDisassociateResourcesFromCustomLineItemOperationInput.type = Types::BatchDisassociateResourcesFromCustomLineItemOperationInput
    BatchDisassociateResourcesFromCustomLineItemOperationOutput.add_member(:successfully_disassociated_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourcesResponseList, location_name: "SuccessfullyDisassociatedResources"))
    BatchDisassociateResourcesFromCustomLineItemOperationOutput.add_member(:failed_disassociated_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourcesResponseList, location_name: "FailedDisassociatedResources"))
    BatchDisassociateResourcesFromCustomLineItemOperationOutput.type = Types::BatchDisassociateResourcesFromCustomLineItemOperationOutput
    BillingGroupArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn)
    BillingGroupCostReportElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    BillingGroupCostReportElement.add_member(:aws_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSCost, location_name: "AWSCost"))
    BillingGroupCostReportElement.add_member(:proforma_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProformaCost, location_name: "ProformaCost"))
    BillingGroupCostReportElement.add_member(:margin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Margin, location_name: "Margin"))
    BillingGroupCostReportElement.add_member(:margin_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarginPercentage, location_name: "MarginPercentage"))
    BillingGroupCostReportElement.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Currency, location_name: "Currency"))
    BillingGroupCostReportElement.type = Types::BillingGroupCostReportElement
    BillingGroupCostReportList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupCostReportElement)
    BillingGroupCostReportResultElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    BillingGroupCostReportResultElement.add_member(:aws_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSCost, location_name: "AWSCost"))
    BillingGroupCostReportResultElement.add_member(:proforma_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProformaCost, location_name: "ProformaCost"))
    BillingGroupCostReportResultElement.add_member(:margin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Margin, location_name: "Margin"))
    BillingGroupCostReportResultElement.add_member(:margin_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarginPercentage, location_name: "MarginPercentage"))
    BillingGroupCostReportResultElement.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Currency, location_name: "Currency"))
    BillingGroupCostReportResultElement.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesList, location_name: "Attributes"))
    BillingGroupCostReportResultElement.type = Types::BillingGroupCostReportResultElement
    BillingGroupCostReportResultsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupCostReportResultElement)
    BillingGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupListElement)
    BillingGroupListElement.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupName, location_name: "Name"))
    BillingGroupListElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    BillingGroupListElement.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: "Description"))
    BillingGroupListElement.add_member(:primary_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "PrimaryAccountId"))
    BillingGroupListElement.add_member(:computation_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationPreference, location_name: "ComputationPreference"))
    BillingGroupListElement.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAccounts, location_name: "Size", traits: {"smithy.api#default" => 0}))
    BillingGroupListElement.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "CreationTime", traits: {"smithy.api#default" => 0}))
    BillingGroupListElement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    BillingGroupListElement.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatus, location_name: "Status"))
    BillingGroupListElement.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatusReason, location_name: "StatusReason"))
    BillingGroupListElement.add_member(:account_grouping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupAccountGrouping, location_name: "AccountGrouping"))
    BillingGroupListElement.type = Types::BillingGroupListElement
    BillingGroupStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatus)
    BillingPeriodRange.add_member(:inclusive_start_billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "InclusiveStartBillingPeriod", traits: {"smithy.api#required" => {}}))
    BillingPeriodRange.add_member(:exclusive_end_billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "ExclusiveEndBillingPeriod", traits: {"smithy.api#required" => {}}))
    BillingPeriodRange.type = Types::BillingPeriodRange
    ComputationPreference.add_member(:pricing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanFullArn, location_name: "PricingPlanArn", traits: {"smithy.api#required" => {}}))
    ComputationPreference.type = Types::ComputationPreference
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: "Reason"))
    ConflictException.type = Types::ConflictException
    CreateBillingGroupOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateBillingGroupOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateBillingGroupOperationInput.add_member(:account_grouping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountGrouping, location_name: "AccountGrouping", traits: {"smithy.api#required" => {}}))
    CreateBillingGroupOperationInput.add_member(:computation_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationPreference, location_name: "ComputationPreference", traits: {"smithy.api#required" => {}}))
    CreateBillingGroupOperationInput.add_member(:primary_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "PrimaryAccountId"))
    CreateBillingGroupOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: "Description"))
    CreateBillingGroupOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateBillingGroupOperationInput.type = Types::CreateBillingGroupOperationInput
    CreateBillingGroupOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    CreateBillingGroupOperationOutput.type = Types::CreateBillingGroupOperationOutput
    CreateCustomLineItemOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateCustomLineItemOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: "Description", traits: {"smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:billing_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "BillingGroupArn", traits: {"smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: "BillingPeriodRange"))
    CreateCustomLineItemOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateCustomLineItemOperationInput.add_member(:charge_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemChargeDetails, location_name: "ChargeDetails", traits: {"smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    CreateCustomLineItemOperationInput.type = Types::CreateCustomLineItemOperationInput
    CreateCustomLineItemOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    CreateCustomLineItemOperationOutput.type = Types::CreateCustomLineItemOperationOutput
    CreateFreeTierConfig.add_member(:activated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TieringActivated, location_name: "Activated", traits: {"smithy.api#required" => {}}))
    CreateFreeTierConfig.type = Types::CreateFreeTierConfig
    CreatePricingPlanOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreatePricingPlanOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePricingPlanOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: "Description"))
    CreatePricingPlanOperationInput.add_member(:pricing_rule_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArnsInput, location_name: "PricingRuleArns"))
    CreatePricingPlanOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreatePricingPlanOperationInput.type = Types::CreatePricingPlanOperationInput
    CreatePricingPlanOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    CreatePricingPlanOperationOutput.type = Types::CreatePricingPlanOperationOutput
    CreatePricingRuleOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreatePricingRuleOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePricingRuleOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: "Description"))
    CreatePricingRuleOperationInput.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleScope, location_name: "Scope", traits: {"smithy.api#required" => {}}))
    CreatePricingRuleOperationInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    CreatePricingRuleOperationInput.add_member(:modifier_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: "ModifierPercentage"))
    CreatePricingRuleOperationInput.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: "Service"))
    CreatePricingRuleOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreatePricingRuleOperationInput.add_member(:billing_entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingEntity, location_name: "BillingEntity"))
    CreatePricingRuleOperationInput.add_member(:tiering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTieringInput, location_name: "Tiering"))
    CreatePricingRuleOperationInput.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "UsageType"))
    CreatePricingRuleOperationInput.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "Operation"))
    CreatePricingRuleOperationInput.type = Types::CreatePricingRuleOperationInput
    CreatePricingRuleOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "Arn"))
    CreatePricingRuleOperationOutput.type = Types::CreatePricingRuleOperationOutput
    CreateTieringInput.add_member(:free_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFreeTierConfig, location_name: "FreeTier", traits: {"smithy.api#required" => {}}))
    CreateTieringInput.type = Types::CreateTieringInput
    CustomLineItemArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn)
    CustomLineItemAssociationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement)
    CustomLineItemBatchAssociationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement)
    CustomLineItemBatchDisassociationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement)
    CustomLineItemBillingPeriodRange.add_member(:inclusive_start_billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "InclusiveStartBillingPeriod", traits: {"smithy.api#required" => {}}))
    CustomLineItemBillingPeriodRange.add_member(:exclusive_end_billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "ExclusiveEndBillingPeriod"))
    CustomLineItemBillingPeriodRange.type = Types::CustomLineItemBillingPeriodRange
    CustomLineItemChargeDetails.add_member(:flat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemFlatChargeDetails, location_name: "Flat"))
    CustomLineItemChargeDetails.add_member(:percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeDetails, location_name: "Percentage"))
    CustomLineItemChargeDetails.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    CustomLineItemChargeDetails.add_member(:line_item_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFiltersList, location_name: "LineItemFilters"))
    CustomLineItemChargeDetails.type = Types::CustomLineItemChargeDetails
    CustomLineItemFlatChargeDetails.add_member(:charge_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemChargeValue, location_name: "ChargeValue", traits: {"smithy.api#required" => {}}))
    CustomLineItemFlatChargeDetails.type = Types::CustomLineItemFlatChargeDetails
    CustomLineItemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemListElement)
    CustomLineItemListElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    CustomLineItemListElement.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: "Name"))
    CustomLineItemListElement.add_member(:charge_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemChargeDetails, location_name: "ChargeDetails"))
    CustomLineItemListElement.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "CurrencyCode"))
    CustomLineItemListElement.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: "Description"))
    CustomLineItemListElement.add_member(:product_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemProductCode, location_name: "ProductCode"))
    CustomLineItemListElement.add_member(:billing_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "BillingGroupArn"))
    CustomLineItemListElement.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "CreationTime", traits: {"smithy.api#default" => 0}))
    CustomLineItemListElement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    CustomLineItemListElement.add_member(:association_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "AssociationSize", traits: {"smithy.api#default" => 0}))
    CustomLineItemListElement.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    CustomLineItemListElement.type = Types::CustomLineItemListElement
    CustomLineItemNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName)
    CustomLineItemPercentageChargeDetails.add_member(:percentage_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeValue, location_name: "PercentageValue", traits: {"smithy.api#required" => {}}))
    CustomLineItemPercentageChargeDetails.add_member(:associated_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationsList, location_name: "AssociatedValues"))
    CustomLineItemPercentageChargeDetails.type = Types::CustomLineItemPercentageChargeDetails
    CustomLineItemVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemVersionListElement)
    CustomLineItemVersionListElement.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: "Name"))
    CustomLineItemVersionListElement.add_member(:charge_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemChargeDetails, location_name: "ChargeDetails"))
    CustomLineItemVersionListElement.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "CurrencyCode"))
    CustomLineItemVersionListElement.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: "Description"))
    CustomLineItemVersionListElement.add_member(:product_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemProductCode, location_name: "ProductCode"))
    CustomLineItemVersionListElement.add_member(:billing_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "BillingGroupArn"))
    CustomLineItemVersionListElement.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "CreationTime", traits: {"smithy.api#default" => 0}))
    CustomLineItemVersionListElement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    CustomLineItemVersionListElement.add_member(:association_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "AssociationSize", traits: {"smithy.api#default" => 0}))
    CustomLineItemVersionListElement.add_member(:start_billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "StartBillingPeriod"))
    CustomLineItemVersionListElement.add_member(:end_billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "EndBillingPeriod"))
    CustomLineItemVersionListElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    CustomLineItemVersionListElement.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "StartTime", traits: {"smithy.api#default" => 0}))
    CustomLineItemVersionListElement.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    CustomLineItemVersionListElement.type = Types::CustomLineItemVersionListElement
    DeleteBillingGroupOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    DeleteBillingGroupOperationInput.type = Types::DeleteBillingGroupOperationInput
    DeleteBillingGroupOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    DeleteBillingGroupOperationOutput.type = Types::DeleteBillingGroupOperationOutput
    DeleteCustomLineItemOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    DeleteCustomLineItemOperationInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: "BillingPeriodRange"))
    DeleteCustomLineItemOperationInput.type = Types::DeleteCustomLineItemOperationInput
    DeleteCustomLineItemOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    DeleteCustomLineItemOperationOutput.type = Types::DeleteCustomLineItemOperationOutput
    DeletePricingPlanOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    DeletePricingPlanOperationInput.type = Types::DeletePricingPlanOperationInput
    DeletePricingPlanOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    DeletePricingPlanOperationOutput.type = Types::DeletePricingPlanOperationOutput
    DeletePricingRuleOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    DeletePricingRuleOperationInput.type = Types::DeletePricingRuleOperationInput
    DeletePricingRuleOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "Arn"))
    DeletePricingRuleOperationOutput.type = Types::DeletePricingRuleOperationOutput
    DisassociateAccountsOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    DisassociateAccountsOperationInput.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds", traits: {"smithy.api#required" => {}}))
    DisassociateAccountsOperationInput.type = Types::DisassociateAccountsOperationInput
    DisassociateAccountsOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    DisassociateAccountsOperationOutput.type = Types::DisassociateAccountsOperationOutput
    DisassociatePricingRulesOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    DisassociatePricingRulesOperationInput.add_member(:pricing_rule_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArnsNonEmptyInput, location_name: "PricingRuleArns", traits: {"smithy.api#required" => {}}))
    DisassociatePricingRulesOperationInput.type = Types::DisassociatePricingRulesOperationInput
    DisassociatePricingRulesOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    DisassociatePricingRulesOperationOutput.type = Types::DisassociatePricingRulesOperationOutput
    DisassociateResourceResponseElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement, location_name: "Arn"))
    DisassociateResourceResponseElement.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceError, location_name: "Error"))
    DisassociateResourceResponseElement.type = Types::DisassociateResourceResponseElement
    DisassociateResourcesResponseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceResponseElement)
    FreeTierConfig.add_member(:activated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TieringActivated, location_name: "Activated", traits: {"smithy.api#required" => {}}))
    FreeTierConfig.type = Types::FreeTierConfig
    GetBillingGroupCostReportInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    GetBillingGroupCostReportInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriodRange, location_name: "BillingPeriodRange"))
    GetBillingGroupCostReportInput.add_member(:group_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupByAttributesList, location_name: "GroupBy"))
    GetBillingGroupCostReportInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBillingGroupCostReportResults, location_name: "MaxResults"))
    GetBillingGroupCostReportInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetBillingGroupCostReportInput.type = Types::GetBillingGroupCostReportInput
    GetBillingGroupCostReportOutput.add_member(:billing_group_cost_report_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupCostReportResultsList, location_name: "BillingGroupCostReportResults"))
    GetBillingGroupCostReportOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetBillingGroupCostReportOutput.type = Types::GetBillingGroupCostReportOutput
    GroupByAttributesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupByAttributeName)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    LineItemFilter.add_member(:attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFilterAttributeName, location_name: "Attribute", traits: {"smithy.api#required" => {}}))
    LineItemFilter.add_member(:match_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOption, location_name: "MatchOption", traits: {"smithy.api#required" => {}}))
    LineItemFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFilterValuesList, location_name: "Values", traits: {"smithy.api#required" => {}}))
    LineItemFilter.type = Types::LineItemFilter
    LineItemFilterValuesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFilterValue)
    LineItemFiltersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFilter)
    ListAccountAssociationsFilter.add_member(:association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Association, location_name: "Association"))
    ListAccountAssociationsFilter.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    ListAccountAssociationsFilter.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdFilterList, location_name: "AccountIds"))
    ListAccountAssociationsFilter.type = Types::ListAccountAssociationsFilter
    ListAccountAssociationsOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListAccountAssociationsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssociationsFilter, location_name: "Filters"))
    ListAccountAssociationsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssociationsOperationInput.type = Types::ListAccountAssociationsOperationInput
    ListAccountAssociationsOperationOutput.add_member(:linked_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssociationsList, location_name: "LinkedAccounts"))
    ListAccountAssociationsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssociationsOperationOutput.type = Types::ListAccountAssociationsOperationOutput
    ListBillingGroupAccountGrouping.add_member(:auto_associate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "AutoAssociate"))
    ListBillingGroupAccountGrouping.type = Types::ListBillingGroupAccountGrouping
    ListBillingGroupCostReportsFilter.add_member(:billing_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArnList, location_name: "BillingGroupArns"))
    ListBillingGroupCostReportsFilter.type = Types::ListBillingGroupCostReportsFilter
    ListBillingGroupCostReportsOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListBillingGroupCostReportsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBillingGroupResults, location_name: "MaxResults"))
    ListBillingGroupCostReportsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListBillingGroupCostReportsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupCostReportsFilter, location_name: "Filters"))
    ListBillingGroupCostReportsOperationInput.type = Types::ListBillingGroupCostReportsOperationInput
    ListBillingGroupCostReportsOperationOutput.add_member(:billing_group_cost_reports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupCostReportList, location_name: "BillingGroupCostReports"))
    ListBillingGroupCostReportsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListBillingGroupCostReportsOperationOutput.type = Types::ListBillingGroupCostReportsOperationOutput
    ListBillingGroupsFilter.add_member(:arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArnList, location_name: "Arns"))
    ListBillingGroupsFilter.add_member(:pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanFullArn, location_name: "PricingPlan"))
    ListBillingGroupsFilter.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatusList, location_name: "Statuses"))
    ListBillingGroupsFilter.add_member(:auto_associate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "AutoAssociate"))
    ListBillingGroupsFilter.type = Types::ListBillingGroupsFilter
    ListBillingGroupsOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListBillingGroupsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBillingGroupResults, location_name: "MaxResults"))
    ListBillingGroupsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListBillingGroupsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupsFilter, location_name: "Filters"))
    ListBillingGroupsOperationInput.type = Types::ListBillingGroupsOperationInput
    ListBillingGroupsOperationOutput.add_member(:billing_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupList, location_name: "BillingGroups"))
    ListBillingGroupsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListBillingGroupsOperationOutput.type = Types::ListBillingGroupsOperationOutput
    ListCustomLineItemChargeDetails.add_member(:flat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemFlatChargeDetails, location_name: "Flat"))
    ListCustomLineItemChargeDetails.add_member(:percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemPercentageChargeDetails, location_name: "Percentage"))
    ListCustomLineItemChargeDetails.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    ListCustomLineItemChargeDetails.add_member(:line_item_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFiltersList, location_name: "LineItemFilters"))
    ListCustomLineItemChargeDetails.type = Types::ListCustomLineItemChargeDetails
    ListCustomLineItemFlatChargeDetails.add_member(:charge_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemChargeValue, location_name: "ChargeValue", traits: {"smithy.api#required" => {}}))
    ListCustomLineItemFlatChargeDetails.type = Types::ListCustomLineItemFlatChargeDetails
    ListCustomLineItemPercentageChargeDetails.add_member(:percentage_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeValue, location_name: "PercentageValue", traits: {"smithy.api#required" => {}}))
    ListCustomLineItemPercentageChargeDetails.type = Types::ListCustomLineItemPercentageChargeDetails
    ListCustomLineItemVersionsBillingPeriodRangeFilter.add_member(:start_billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "StartBillingPeriod"))
    ListCustomLineItemVersionsBillingPeriodRangeFilter.add_member(:end_billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "EndBillingPeriod"))
    ListCustomLineItemVersionsBillingPeriodRangeFilter.type = Types::ListCustomLineItemVersionsBillingPeriodRangeFilter
    ListCustomLineItemVersionsFilter.add_member(:billing_period_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsBillingPeriodRangeFilter, location_name: "BillingPeriodRange"))
    ListCustomLineItemVersionsFilter.type = Types::ListCustomLineItemVersionsFilter
    ListCustomLineItemVersionsOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    ListCustomLineItemVersionsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCustomLineItemResults, location_name: "MaxResults"))
    ListCustomLineItemVersionsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomLineItemVersionsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsFilter, location_name: "Filters"))
    ListCustomLineItemVersionsOperationInput.type = Types::ListCustomLineItemVersionsOperationInput
    ListCustomLineItemVersionsOperationOutput.add_member(:custom_line_item_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemVersionList, location_name: "CustomLineItemVersions"))
    ListCustomLineItemVersionsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomLineItemVersionsOperationOutput.type = Types::ListCustomLineItemVersionsOperationOutput
    ListCustomLineItemsFilter.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemNameList, location_name: "Names"))
    ListCustomLineItemsFilter.add_member(:billing_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArnList, location_name: "BillingGroups"))
    ListCustomLineItemsFilter.add_member(:arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArns, location_name: "Arns"))
    ListCustomLineItemsFilter.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    ListCustomLineItemsFilter.type = Types::ListCustomLineItemsFilter
    ListCustomLineItemsOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListCustomLineItemsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCustomLineItemResults, location_name: "MaxResults"))
    ListCustomLineItemsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomLineItemsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemsFilter, location_name: "Filters"))
    ListCustomLineItemsOperationInput.type = Types::ListCustomLineItemsOperationInput
    ListCustomLineItemsOperationOutput.add_member(:custom_line_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemList, location_name: "CustomLineItems"))
    ListCustomLineItemsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomLineItemsOperationOutput.type = Types::ListCustomLineItemsOperationOutput
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:pricing_rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "PricingRuleArn", traits: {"smithy.api#required" => {}}))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPricingRuleResults, location_name: "MaxResults"))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.type = Types::ListPricingPlansAssociatedWithPricingRuleOperationInput
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:pricing_rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "PricingRuleArn"))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:pricing_plan_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArns, location_name: "PricingPlanArns"))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.type = Types::ListPricingPlansAssociatedWithPricingRuleOperationOutput
    ListPricingPlansFilter.add_member(:arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArns, location_name: "Arns"))
    ListPricingPlansFilter.type = Types::ListPricingPlansFilter
    ListPricingPlansOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingPlansOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingPlansFilter, location_name: "Filters"))
    ListPricingPlansOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPricingPlanResults, location_name: "MaxResults"))
    ListPricingPlansOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingPlansOperationInput.type = Types::ListPricingPlansOperationInput
    ListPricingPlansOperationOutput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingPlansOperationOutput.add_member(:pricing_plans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanList, location_name: "PricingPlans"))
    ListPricingPlansOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingPlansOperationOutput.type = Types::ListPricingPlansOperationOutput
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:pricing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "PricingPlanArn", traits: {"smithy.api#required" => {}}))
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPricingPlanResults, location_name: "MaxResults"))
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingRulesAssociatedToPricingPlanOperationInput.type = Types::ListPricingRulesAssociatedToPricingPlanOperationInput
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:pricing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "PricingPlanArn"))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:pricing_rule_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArns, location_name: "PricingRuleArns"))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.type = Types::ListPricingRulesAssociatedToPricingPlanOperationOutput
    ListPricingRulesFilter.add_member(:arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArns, location_name: "Arns"))
    ListPricingRulesFilter.type = Types::ListPricingRulesFilter
    ListPricingRulesOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingRulesOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingRulesFilter, location_name: "Filters"))
    ListPricingRulesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPricingRuleResults, location_name: "MaxResults"))
    ListPricingRulesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingRulesOperationInput.type = Types::ListPricingRulesOperationInput
    ListPricingRulesOperationOutput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListPricingRulesOperationOutput.add_member(:pricing_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleList, location_name: "PricingRules"))
    ListPricingRulesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPricingRulesOperationOutput.type = Types::ListPricingRulesOperationOutput
    ListResourcesAssociatedToCustomLineItemFilter.add_member(:relationship, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemRelationship, location_name: "Relationship"))
    ListResourcesAssociatedToCustomLineItemFilter.type = Types::ListResourcesAssociatedToCustomLineItemFilter
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCustomLineItemResults, location_name: "MaxResults"))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemFilter, location_name: "Filters"))
    ListResourcesAssociatedToCustomLineItemOperationInput.type = Types::ListResourcesAssociatedToCustomLineItemOperationInput
    ListResourcesAssociatedToCustomLineItemOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    ListResourcesAssociatedToCustomLineItemOperationOutput.add_member(:associated_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemResponseList, location_name: "AssociatedResources"))
    ListResourcesAssociatedToCustomLineItemOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListResourcesAssociatedToCustomLineItemOperationOutput.type = Types::ListResourcesAssociatedToCustomLineItemOperationOutput
    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement, location_name: "Arn"))
    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:relationship, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemRelationship, location_name: "Relationship"))
    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:end_billing_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "EndBillingPeriod"))
    ListResourcesAssociatedToCustomLineItemResponseElement.type = Types::ListResourcesAssociatedToCustomLineItemResponseElement
    ListResourcesAssociatedToCustomLineItemResponseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemResponseElement)
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    PricingPlanArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn)
    PricingPlanList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanListElement)
    PricingPlanListElement.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanName, location_name: "Name"))
    PricingPlanListElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    PricingPlanListElement.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: "Description"))
    PricingPlanListElement.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociatedPricingRules, location_name: "Size", traits: {"smithy.api#default" => 0}))
    PricingPlanListElement.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "CreationTime", traits: {"smithy.api#default" => 0}))
    PricingPlanListElement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    PricingPlanListElement.type = Types::PricingPlanListElement
    PricingRuleArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn)
    PricingRuleArnsInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn)
    PricingRuleArnsNonEmptyInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn)
    PricingRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleListElement)
    PricingRuleListElement.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleName, location_name: "Name"))
    PricingRuleListElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "Arn"))
    PricingRuleListElement.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: "Description"))
    PricingRuleListElement.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleScope, location_name: "Scope"))
    PricingRuleListElement.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleType, location_name: "Type"))
    PricingRuleListElement.add_member(:modifier_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: "ModifierPercentage"))
    PricingRuleListElement.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: "Service"))
    PricingRuleListElement.add_member(:associated_pricing_plan_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfPricingPlansAssociatedWith, location_name: "AssociatedPricingPlanCount", traits: {"smithy.api#default" => 0}))
    PricingRuleListElement.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "CreationTime", traits: {"smithy.api#default" => 0}))
    PricingRuleListElement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    PricingRuleListElement.add_member(:billing_entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingEntity, location_name: "BillingEntity"))
    PricingRuleListElement.add_member(:tiering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tiering, location_name: "Tiering"))
    PricingRuleListElement.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "UsageType"))
    PricingRuleListElement.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "Operation"))
    PricingRuleListElement.type = Types::PricingRuleListElement
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ServiceLimitExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ServiceLimitExceededException.add_member(:limit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LimitCode", traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.type = Types::ServiceLimitExceededException
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    Tiering.add_member(:free_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTierConfig, location_name: "FreeTier", traits: {"smithy.api#required" => {}}))
    Tiering.type = Types::Tiering
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateBillingGroupAccountGrouping.add_member(:auto_associate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "AutoAssociate"))
    UpdateBillingGroupAccountGrouping.type = Types::UpdateBillingGroupAccountGrouping
    UpdateBillingGroupOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateBillingGroupOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupName, location_name: "Name"))
    UpdateBillingGroupOperationInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatus, location_name: "Status"))
    UpdateBillingGroupOperationInput.add_member(:computation_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationPreference, location_name: "ComputationPreference"))
    UpdateBillingGroupOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: "Description"))
    UpdateBillingGroupOperationInput.add_member(:account_grouping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillingGroupAccountGrouping, location_name: "AccountGrouping"))
    UpdateBillingGroupOperationInput.type = Types::UpdateBillingGroupOperationInput
    UpdateBillingGroupOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: "Arn"))
    UpdateBillingGroupOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupName, location_name: "Name"))
    UpdateBillingGroupOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: "Description"))
    UpdateBillingGroupOperationOutput.add_member(:primary_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "PrimaryAccountId"))
    UpdateBillingGroupOperationOutput.add_member(:pricing_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "PricingPlanArn"))
    UpdateBillingGroupOperationOutput.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAccounts, location_name: "Size", traits: {"smithy.api#default" => 0}))
    UpdateBillingGroupOperationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    UpdateBillingGroupOperationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatus, location_name: "Status"))
    UpdateBillingGroupOperationOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatusReason, location_name: "StatusReason"))
    UpdateBillingGroupOperationOutput.add_member(:account_grouping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillingGroupAccountGrouping, location_name: "AccountGrouping"))
    UpdateBillingGroupOperationOutput.type = Types::UpdateBillingGroupOperationOutput
    UpdateCustomLineItemChargeDetails.add_member(:flat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomLineItemFlatChargeDetails, location_name: "Flat"))
    UpdateCustomLineItemChargeDetails.add_member(:percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomLineItemPercentageChargeDetails, location_name: "Percentage"))
    UpdateCustomLineItemChargeDetails.add_member(:line_item_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFiltersList, location_name: "LineItemFilters"))
    UpdateCustomLineItemChargeDetails.type = Types::UpdateCustomLineItemChargeDetails
    UpdateCustomLineItemFlatChargeDetails.add_member(:charge_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemChargeValue, location_name: "ChargeValue", traits: {"smithy.api#required" => {}}))
    UpdateCustomLineItemFlatChargeDetails.type = Types::UpdateCustomLineItemFlatChargeDetails
    UpdateCustomLineItemOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateCustomLineItemOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: "Name"))
    UpdateCustomLineItemOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: "Description"))
    UpdateCustomLineItemOperationInput.add_member(:charge_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomLineItemChargeDetails, location_name: "ChargeDetails"))
    UpdateCustomLineItemOperationInput.add_member(:billing_period_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: "BillingPeriodRange"))
    UpdateCustomLineItemOperationInput.type = Types::UpdateCustomLineItemOperationInput
    UpdateCustomLineItemOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: "Arn"))
    UpdateCustomLineItemOperationOutput.add_member(:billing_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupFullArn, location_name: "BillingGroupArn"))
    UpdateCustomLineItemOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: "Name"))
    UpdateCustomLineItemOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: "Description"))
    UpdateCustomLineItemOperationOutput.add_member(:charge_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemChargeDetails, location_name: "ChargeDetails"))
    UpdateCustomLineItemOperationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    UpdateCustomLineItemOperationOutput.add_member(:association_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "AssociationSize", traits: {"smithy.api#default" => 0}))
    UpdateCustomLineItemOperationOutput.type = Types::UpdateCustomLineItemOperationOutput
    UpdateCustomLineItemPercentageChargeDetails.add_member(:percentage_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeValue, location_name: "PercentageValue", traits: {"smithy.api#required" => {}}))
    UpdateCustomLineItemPercentageChargeDetails.type = Types::UpdateCustomLineItemPercentageChargeDetails
    UpdateFreeTierConfig.add_member(:activated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TieringActivated, location_name: "Activated", traits: {"smithy.api#required" => {}}))
    UpdateFreeTierConfig.type = Types::UpdateFreeTierConfig
    UpdatePricingPlanOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdatePricingPlanOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanName, location_name: "Name"))
    UpdatePricingPlanOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: "Description"))
    UpdatePricingPlanOperationInput.type = Types::UpdatePricingPlanOperationInput
    UpdatePricingPlanOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: "Arn"))
    UpdatePricingPlanOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanName, location_name: "Name"))
    UpdatePricingPlanOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: "Description"))
    UpdatePricingPlanOperationOutput.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociatedPricingRules, location_name: "Size", traits: {"smithy.api#default" => 0}))
    UpdatePricingPlanOperationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    UpdatePricingPlanOperationOutput.type = Types::UpdatePricingPlanOperationOutput
    UpdatePricingRuleOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdatePricingRuleOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleName, location_name: "Name"))
    UpdatePricingRuleOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: "Description"))
    UpdatePricingRuleOperationInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleType, location_name: "Type"))
    UpdatePricingRuleOperationInput.add_member(:modifier_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: "ModifierPercentage"))
    UpdatePricingRuleOperationInput.add_member(:tiering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTieringInput, location_name: "Tiering"))
    UpdatePricingRuleOperationInput.type = Types::UpdatePricingRuleOperationInput
    UpdatePricingRuleOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: "Arn"))
    UpdatePricingRuleOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleName, location_name: "Name"))
    UpdatePricingRuleOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: "Description"))
    UpdatePricingRuleOperationOutput.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleScope, location_name: "Scope"))
    UpdatePricingRuleOperationOutput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleType, location_name: "Type"))
    UpdatePricingRuleOperationOutput.add_member(:modifier_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: "ModifierPercentage"))
    UpdatePricingRuleOperationOutput.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: "Service"))
    UpdatePricingRuleOperationOutput.add_member(:associated_pricing_plan_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfPricingPlansAssociatedWith, location_name: "AssociatedPricingPlanCount", traits: {"smithy.api#default" => 0}))
    UpdatePricingRuleOperationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "LastModifiedTime", traits: {"smithy.api#default" => 0}))
    UpdatePricingRuleOperationOutput.add_member(:billing_entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingEntity, location_name: "BillingEntity"))
    UpdatePricingRuleOperationOutput.add_member(:tiering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTieringInput, location_name: "Tiering"))
    UpdatePricingRuleOperationOutput.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "UsageType"))
    UpdatePricingRuleOperationOutput.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "Operation"))
    UpdatePricingRuleOperationOutput.type = Types::UpdatePricingRuleOperationOutput
    UpdateTieringInput.add_member(:free_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFreeTierConfig, location_name: "FreeTier", traits: {"smithy.api#required" => {}}))
    UpdateTieringInput.type = Types::UpdateTieringInput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)

    AWSBillingConductor = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.billingconductor#AWSBillingConductor"
      service.name = "AWSBillingConductor"
      service.version = "2021-07-30"
      service.traits = {"aws.api#service" => {"sdkId" => "billingconductor", "arnNamespace" => "billingconductor"}, "aws.auth#sigv4" => {"name" => "billingconductor"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "String", "documentation" => "Filters access based on the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["X-Api-Key"]}, "smithy.api#title" => "AWSBillingConductor"}
      service.add_operation(:associate_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#AssociateAccounts"
        operation.name = "AssociateAccounts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAccountsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAccountsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/associate-accounts", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_pricing_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#AssociatePricingRules"
        operation.name = "AssociatePricingRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePricingRulesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePricingRulesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/associate-pricing-rules", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_associate_resources_to_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#BatchAssociateResourcesToCustomLineItem"
        operation.name = "BatchAssociateResourcesToCustomLineItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateResourcesToCustomLineItemOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateResourcesToCustomLineItemOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/batch-associate-resources-to-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_disassociate_resources_from_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#BatchDisassociateResourcesFromCustomLineItem"
        operation.name = "BatchDisassociateResourcesFromCustomLineItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateResourcesFromCustomLineItemOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateResourcesFromCustomLineItemOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/batch-disassociate-resources-from-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_billing_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreateBillingGroup"
        operation.name = "CreateBillingGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillingGroupOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillingGroupOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-billing-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreateCustomLineItem"
        operation.name = "CreateCustomLineItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomLineItemOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomLineItemOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-custom-line-item", "code" => 200}}
      end)
      service.add_operation(:create_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreatePricingPlan"
        operation.name = "CreatePricingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePricingPlanOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePricingPlanOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-pricing-plan", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_pricing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreatePricingRule"
        operation.name = "CreatePricingRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePricingRuleOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePricingRuleOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-pricing-rule", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_billing_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeleteBillingGroup"
        operation.name = "DeleteBillingGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBillingGroupOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBillingGroupOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-billing-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeleteCustomLineItem"
        operation.name = "DeleteCustomLineItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomLineItemOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomLineItemOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeletePricingPlan"
        operation.name = "DeletePricingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePricingPlanOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePricingPlanOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-pricing-plan", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_pricing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeletePricingRule"
        operation.name = "DeletePricingRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePricingRuleOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePricingRuleOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-pricing-rule", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DisassociateAccounts"
        operation.name = "DisassociateAccounts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAccountsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAccountsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/disassociate-accounts", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_pricing_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DisassociatePricingRules"
        operation.name = "DisassociatePricingRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePricingRulesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePricingRulesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/disassociate-pricing-rules", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_billing_group_cost_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#GetBillingGroupCostReport"
        operation.name = "GetBillingGroupCostReport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillingGroupCostReportInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillingGroupCostReportOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-billing-group-cost-report", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetBillingGroupCostReport.new
      end)
      service.add_operation(:list_account_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListAccountAssociations"
        operation.name = "ListAccountAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssociationsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssociationsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-account-associations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccountAssociations.new
      end)
      service.add_operation(:list_billing_group_cost_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListBillingGroupCostReports"
        operation.name = "ListBillingGroupCostReports"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupCostReportsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupCostReportsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-billing-group-cost-reports", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillingGroupCostReports.new
      end)
      service.add_operation(:list_billing_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListBillingGroups"
        operation.name = "ListBillingGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-billing-groups", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillingGroups.new
      end)
      service.add_operation(:list_custom_line_item_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListCustomLineItemVersions"
        operation.name = "ListCustomLineItemVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-custom-line-item-versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomLineItemVersions.new
      end)
      service.add_operation(:list_custom_line_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListCustomLineItems"
        operation.name = "ListCustomLineItems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-custom-line-items", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomLineItems.new
      end)
      service.add_operation(:list_pricing_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingPlans"
        operation.name = "ListPricingPlans"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingPlansOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingPlansOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-plans", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingPlans.new
      end)
      service.add_operation(:list_pricing_plans_associated_with_pricing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingPlansAssociatedWithPricingRule"
        operation.name = "ListPricingPlansAssociatedWithPricingRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingPlansAssociatedWithPricingRuleOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingPlansAssociatedWithPricingRuleOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-plans-associated-with-pricing-rule", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingPlansAssociatedWithPricingRule.new
      end)
      service.add_operation(:list_pricing_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingRules"
        operation.name = "ListPricingRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingRulesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingRulesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-rules", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingRules.new
      end)
      service.add_operation(:list_pricing_rules_associated_to_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingRulesAssociatedToPricingPlan"
        operation.name = "ListPricingRulesAssociatedToPricingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingRulesAssociatedToPricingPlanOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingRulesAssociatedToPricingPlanOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-rules-associated-to-pricing-plan", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingRulesAssociatedToPricingPlan.new
      end)
      service.add_operation(:list_resources_associated_to_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItem"
        operation.name = "ListResourcesAssociatedToCustomLineItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-resources-associated-to-custom-line-item", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourcesAssociatedToCustomLineItem.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_billing_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdateBillingGroup"
        operation.name = "UpdateBillingGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillingGroupOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillingGroupOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-billing-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_custom_line_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdateCustomLineItem"
        operation.name = "UpdateCustomLineItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomLineItemOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomLineItemOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdatePricingPlan"
        operation.name = "UpdatePricingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePricingPlanOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePricingPlanOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/update-pricing-plan", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_pricing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdatePricingRule"
        operation.name = "UpdatePricingRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePricingRuleOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePricingRuleOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
