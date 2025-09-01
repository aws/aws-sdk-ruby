# frozen_string_literal: true

# This is generated code!

module Aws::Billingconductor
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSCost = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#AWSCost', name: 'AWSCost')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountAssociationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#AccountAssociationsList', name: 'AccountAssociationsList')
    AccountAssociationsListElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#AccountAssociationsListElement', name: 'AccountAssociationsListElement')
    AccountEmail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#AccountEmail', name: 'AccountEmail', traits: {"smithy.api#sensitive" => {}})
    AccountGrouping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#AccountGrouping', name: 'AccountGrouping')
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#AccountId', name: 'AccountId', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AccountIdFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#AccountIdFilterList', name: 'AccountIdFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    AccountIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#AccountIdList', name: 'AccountIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    AccountName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#AccountName', name: 'AccountName', traits: {"smithy.api#sensitive" => {}})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/?[0-9]{12}$|^arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingplan/[a-zA-Z0-9]{10}$|^arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingrule/[a-zA-Z0-9]{10}$|^(arn:aws(-cn)?:billingconductor::[0-9]{12}:customlineitem/)?[a-zA-Z0-9]{10}$"})
    AssociateAccountsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#AssociateAccountsOperationInput', name: 'AssociateAccountsOperationInput')
    AssociateAccountsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#AssociateAccountsOperationOutput', name: 'AssociateAccountsOperationOutput')
    AssociatePricingRulesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#AssociatePricingRulesOperationInput', name: 'AssociatePricingRulesOperationInput')
    AssociatePricingRulesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#AssociatePricingRulesOperationOutput', name: 'AssociatePricingRulesOperationOutput')
    AssociateResourceError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#AssociateResourceError', name: 'AssociateResourceError')
    AssociateResourceErrorReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#AssociateResourceErrorReason', name: 'AssociateResourceErrorReason', traits: {"smithy.api#enum" => [{"value" => "INVALID_ARN", "name" => "INVALID_ARN"}, {"value" => "SERVICE_LIMIT_EXCEEDED", "name" => "SERVICE_LIMIT_EXCEEDED"}, {"value" => "ILLEGAL_CUSTOMLINEITEM", "name" => "ILLEGAL_CUSTOMLINEITEM"}, {"value" => "INTERNAL_SERVER_EXCEPTION", "name" => "INTERNAL_SERVER_EXCEPTION"}, {"value" => "INVALID_BILLING_PERIOD_RANGE", "name" => "INVALID_BILLING_PERIOD_RANGE"}]})
    AssociateResourceResponseElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#AssociateResourceResponseElement', name: 'AssociateResourceResponseElement')
    AssociateResourcesResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#AssociateResourcesResponseList', name: 'AssociateResourcesResponseList')
    Association = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#Association', name: 'Association', traits: {"smithy.api#pattern" => "^((arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/)?[0-9]{12}|MONITORED|UNMONITORED)$"})
    Attribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#Attribute', name: 'Attribute')
    AttributesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#AttributesList', name: 'AttributesList')
    BatchAssociateResourcesToCustomLineItemOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#BatchAssociateResourcesToCustomLineItemOperationInput', name: 'BatchAssociateResourcesToCustomLineItemOperationInput')
    BatchAssociateResourcesToCustomLineItemOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#BatchAssociateResourcesToCustomLineItemOperationOutput', name: 'BatchAssociateResourcesToCustomLineItemOperationOutput')
    BatchDisassociateResourcesFromCustomLineItemOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#BatchDisassociateResourcesFromCustomLineItemOperationInput', name: 'BatchDisassociateResourcesFromCustomLineItemOperationInput')
    BatchDisassociateResourcesFromCustomLineItemOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#BatchDisassociateResourcesFromCustomLineItemOperationOutput', name: 'BatchDisassociateResourcesFromCustomLineItemOperationOutput')
    BillingEntity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#BillingEntity', name: 'BillingEntity', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 ]+$"})
    BillingGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#BillingGroupArn', name: 'BillingGroupArn', traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/)?[0-9]{12}$"})
    BillingGroupArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#BillingGroupArnList', name: 'BillingGroupArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BillingGroupCostReportElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#BillingGroupCostReportElement', name: 'BillingGroupCostReportElement')
    BillingGroupCostReportList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#BillingGroupCostReportList', name: 'BillingGroupCostReportList')
    BillingGroupCostReportResultElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#BillingGroupCostReportResultElement', name: 'BillingGroupCostReportResultElement')
    BillingGroupCostReportResultsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#BillingGroupCostReportResultsList', name: 'BillingGroupCostReportResultsList')
    BillingGroupDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#BillingGroupDescription', name: 'BillingGroupDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    BillingGroupFullArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#BillingGroupFullArn', name: 'BillingGroupFullArn', traits: {"smithy.api#pattern" => "^arn:aws(-cn)?:billingconductor::[0-9]{12}:billinggroup/[0-9]{12}$"})
    BillingGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#BillingGroupList', name: 'BillingGroupList')
    BillingGroupListElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#BillingGroupListElement', name: 'BillingGroupListElement')
    BillingGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#BillingGroupName', name: 'BillingGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    BillingGroupStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#BillingGroupStatus', name: 'BillingGroupStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "PRIMARY_ACCOUNT_MISSING", "name" => "PRIMARY_ACCOUNT_MISSING"}]})
    BillingGroupStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#BillingGroupStatusList', name: 'BillingGroupStatusList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    BillingGroupStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#BillingGroupStatusReason', name: 'BillingGroupStatusReason')
    BillingPeriod = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#BillingPeriod', name: 'BillingPeriod', traits: {"smithy.api#pattern" => "^\\d{4}-(0?[1-9]|1[012])$"})
    BillingPeriodRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#BillingPeriodRange', name: 'BillingPeriodRange')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ComputationPreference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ComputationPreference', name: 'ComputationPreference')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#ConflictExceptionReason', name: 'ConflictExceptionReason', traits: {"smithy.api#enum" => [{"value" => "RESOURCE_NAME_CONFLICT", "name" => "RESOURCE_NAME_CONFLICT"}, {"value" => "PRICING_RULE_IN_PRICING_PLAN_CONFLICT", "name" => "PRICING_RULE_IN_PRICING_PLAN_CONFLICT"}, {"value" => "PRICING_PLAN_ATTACHED_TO_BILLING_GROUP_DELETE_CONFLICT", "name" => "PRICING_PLAN_ATTACHED_TO_BILLING_GROUP_DELETE_CONFLICT"}, {"value" => "PRICING_RULE_ATTACHED_TO_PRICING_PLAN_DELETE_CONFLICT", "name" => "PRICING_RULE_ATTACHED_TO_PRICING_PLAN_DELETE_CONFLICT"}, {"value" => "WRITE_CONFLICT_RETRY", "name" => "WRITE_CONFLICT_RETRY"}]})
    CreateBillingGroupOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CreateBillingGroupOperationInput', name: 'CreateBillingGroupOperationInput')
    CreateBillingGroupOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CreateBillingGroupOperationOutput', name: 'CreateBillingGroupOperationOutput')
    CreateCustomLineItemOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CreateCustomLineItemOperationInput', name: 'CreateCustomLineItemOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.billingconductor#BillingGroup", "ids" => {"Arn" => "BillingGroupArn"}}]})
    CreateCustomLineItemOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CreateCustomLineItemOperationOutput', name: 'CreateCustomLineItemOperationOutput')
    CreateFreeTierConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CreateFreeTierConfig', name: 'CreateFreeTierConfig')
    CreatePricingPlanOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CreatePricingPlanOperationInput', name: 'CreatePricingPlanOperationInput')
    CreatePricingPlanOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CreatePricingPlanOperationOutput', name: 'CreatePricingPlanOperationOutput')
    CreatePricingRuleOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CreatePricingRuleOperationInput', name: 'CreatePricingRuleOperationInput')
    CreatePricingRuleOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CreatePricingRuleOperationOutput', name: 'CreatePricingRuleOperationOutput')
    CreateTieringInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CreateTieringInput', name: 'CreateTieringInput')
    Currency = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#Currency', name: 'Currency')
    CurrencyCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#CurrencyCode', name: 'CurrencyCode', traits: {"smithy.api#enum" => [{"value" => "USD", "name" => "USD"}, {"value" => "CNY", "name" => "CNY"}]})
    CustomLineItemArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemArn', name: 'CustomLineItemArn', traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::[0-9]{12}:customlineitem/)?[a-zA-Z0-9]{10}$"})
    CustomLineItemArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemArns', name: 'CustomLineItemArns', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CustomLineItemAssociationElement = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemAssociationElement', name: 'CustomLineItemAssociationElement', traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::[0-9]{12}:(customlineitem|billinggroup)/)?[a-zA-Z0-9]{10,12}$"})
    CustomLineItemAssociationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemAssociationsList', name: 'CustomLineItemAssociationsList', traits: {"smithy.api#length" => {"max" => 5}})
    CustomLineItemBatchAssociationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemBatchAssociationsList', name: 'CustomLineItemBatchAssociationsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    CustomLineItemBatchDisassociationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemBatchDisassociationsList', name: 'CustomLineItemBatchDisassociationsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    CustomLineItemBillingPeriodRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemBillingPeriodRange', name: 'CustomLineItemBillingPeriodRange')
    CustomLineItemChargeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemChargeDetails', name: 'CustomLineItemChargeDetails')
    CustomLineItemChargeValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemChargeValue', name: 'CustomLineItemChargeValue', traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    CustomLineItemDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemDescription', name: 'CustomLineItemDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    CustomLineItemFlatChargeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemFlatChargeDetails', name: 'CustomLineItemFlatChargeDetails')
    CustomLineItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemList', name: 'CustomLineItemList')
    CustomLineItemListElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemListElement', name: 'CustomLineItemListElement')
    CustomLineItemName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemName', name: 'CustomLineItemName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    CustomLineItemNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemNameList', name: 'CustomLineItemNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CustomLineItemPercentageChargeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemPercentageChargeDetails', name: 'CustomLineItemPercentageChargeDetails')
    CustomLineItemPercentageChargeValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemPercentageChargeValue', name: 'CustomLineItemPercentageChargeValue', traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    CustomLineItemProductCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemProductCode', name: 'CustomLineItemProductCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 29}})
    CustomLineItemRelationship = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemRelationship', name: 'CustomLineItemRelationship', traits: {"smithy.api#enum" => [{"value" => "PARENT", "name" => "PARENT"}, {"value" => "CHILD", "name" => "CHILD"}]})
    CustomLineItemType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemType', name: 'CustomLineItemType', traits: {"smithy.api#enum" => [{"value" => "CREDIT", "name" => "CREDIT"}, {"value" => "FEE", "name" => "FEE"}]})
    CustomLineItemVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemVersionList', name: 'CustomLineItemVersionList')
    CustomLineItemVersionListElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#CustomLineItemVersionListElement', name: 'CustomLineItemVersionListElement')
    DeleteBillingGroupOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DeleteBillingGroupOperationInput', name: 'DeleteBillingGroupOperationInput')
    DeleteBillingGroupOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DeleteBillingGroupOperationOutput', name: 'DeleteBillingGroupOperationOutput')
    DeleteCustomLineItemOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DeleteCustomLineItemOperationInput', name: 'DeleteCustomLineItemOperationInput')
    DeleteCustomLineItemOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DeleteCustomLineItemOperationOutput', name: 'DeleteCustomLineItemOperationOutput')
    DeletePricingPlanOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DeletePricingPlanOperationInput', name: 'DeletePricingPlanOperationInput')
    DeletePricingPlanOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DeletePricingPlanOperationOutput', name: 'DeletePricingPlanOperationOutput')
    DeletePricingRuleOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DeletePricingRuleOperationInput', name: 'DeletePricingRuleOperationInput')
    DeletePricingRuleOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DeletePricingRuleOperationOutput', name: 'DeletePricingRuleOperationOutput')
    DisassociateAccountsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DisassociateAccountsOperationInput', name: 'DisassociateAccountsOperationInput')
    DisassociateAccountsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DisassociateAccountsOperationOutput', name: 'DisassociateAccountsOperationOutput')
    DisassociatePricingRulesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DisassociatePricingRulesOperationInput', name: 'DisassociatePricingRulesOperationInput')
    DisassociatePricingRulesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DisassociatePricingRulesOperationOutput', name: 'DisassociatePricingRulesOperationOutput')
    DisassociateResourceResponseElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#DisassociateResourceResponseElement', name: 'DisassociateResourceResponseElement')
    DisassociateResourcesResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#DisassociateResourcesResponseList', name: 'DisassociateResourcesResponseList')
    FreeTierConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#FreeTierConfig', name: 'FreeTierConfig')
    GetBillingGroupCostReportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#GetBillingGroupCostReportInput', name: 'GetBillingGroupCostReportInput')
    GetBillingGroupCostReportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#GetBillingGroupCostReportOutput', name: 'GetBillingGroupCostReportOutput')
    GroupByAttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#GroupByAttributeName', name: 'GroupByAttributeName', traits: {"smithy.api#enum" => [{"value" => "PRODUCT_NAME", "name" => "PRODUCT_NAME"}, {"value" => "BILLING_PERIOD", "name" => "BILLING_PERIOD"}]})
    GroupByAttributesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#GroupByAttributesList', name: 'GroupByAttributesList')
    Instant = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billingconductor#Instant', name: 'Instant', traits: {"smithy.api#default" => 0})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LineItemFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#LineItemFilter', name: 'LineItemFilter')
    LineItemFilterAttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#LineItemFilterAttributeName', name: 'LineItemFilterAttributeName', traits: {"smithy.api#enum" => [{"value" => "LINE_ITEM_TYPE", "name" => "LINE_ITEM_TYPE"}]})
    LineItemFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#LineItemFilterValue', name: 'LineItemFilterValue', traits: {"smithy.api#enum" => [{"value" => "SAVINGS_PLAN_NEGATION", "name" => "SAVINGS_PLAN_NEGATION"}]})
    LineItemFilterValuesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#LineItemFilterValuesList', name: 'LineItemFilterValuesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LineItemFiltersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#LineItemFiltersList', name: 'LineItemFiltersList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ListAccountAssociationsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListAccountAssociationsFilter', name: 'ListAccountAssociationsFilter')
    ListAccountAssociationsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListAccountAssociationsOperationInput', name: 'ListAccountAssociationsOperationInput')
    ListAccountAssociationsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListAccountAssociationsOperationOutput', name: 'ListAccountAssociationsOperationOutput')
    ListBillingGroupAccountGrouping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListBillingGroupAccountGrouping', name: 'ListBillingGroupAccountGrouping')
    ListBillingGroupCostReportsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListBillingGroupCostReportsFilter', name: 'ListBillingGroupCostReportsFilter')
    ListBillingGroupCostReportsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListBillingGroupCostReportsOperationInput', name: 'ListBillingGroupCostReportsOperationInput')
    ListBillingGroupCostReportsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListBillingGroupCostReportsOperationOutput', name: 'ListBillingGroupCostReportsOperationOutput')
    ListBillingGroupsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListBillingGroupsFilter', name: 'ListBillingGroupsFilter')
    ListBillingGroupsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListBillingGroupsOperationInput', name: 'ListBillingGroupsOperationInput')
    ListBillingGroupsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListBillingGroupsOperationOutput', name: 'ListBillingGroupsOperationOutput')
    ListCustomLineItemChargeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListCustomLineItemChargeDetails', name: 'ListCustomLineItemChargeDetails')
    ListCustomLineItemFlatChargeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListCustomLineItemFlatChargeDetails', name: 'ListCustomLineItemFlatChargeDetails')
    ListCustomLineItemPercentageChargeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListCustomLineItemPercentageChargeDetails', name: 'ListCustomLineItemPercentageChargeDetails')
    ListCustomLineItemVersionsBillingPeriodRangeFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListCustomLineItemVersionsBillingPeriodRangeFilter', name: 'ListCustomLineItemVersionsBillingPeriodRangeFilter')
    ListCustomLineItemVersionsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListCustomLineItemVersionsFilter', name: 'ListCustomLineItemVersionsFilter')
    ListCustomLineItemVersionsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListCustomLineItemVersionsOperationInput', name: 'ListCustomLineItemVersionsOperationInput')
    ListCustomLineItemVersionsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListCustomLineItemVersionsOperationOutput', name: 'ListCustomLineItemVersionsOperationOutput')
    ListCustomLineItemsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListCustomLineItemsFilter', name: 'ListCustomLineItemsFilter')
    ListCustomLineItemsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListCustomLineItemsOperationInput', name: 'ListCustomLineItemsOperationInput')
    ListCustomLineItemsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListCustomLineItemsOperationOutput', name: 'ListCustomLineItemsOperationOutput')
    ListPricingPlansAssociatedWithPricingRuleOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListPricingPlansAssociatedWithPricingRuleOperationInput', name: 'ListPricingPlansAssociatedWithPricingRuleOperationInput')
    ListPricingPlansAssociatedWithPricingRuleOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListPricingPlansAssociatedWithPricingRuleOperationOutput', name: 'ListPricingPlansAssociatedWithPricingRuleOperationOutput')
    ListPricingPlansFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListPricingPlansFilter', name: 'ListPricingPlansFilter')
    ListPricingPlansOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListPricingPlansOperationInput', name: 'ListPricingPlansOperationInput')
    ListPricingPlansOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListPricingPlansOperationOutput', name: 'ListPricingPlansOperationOutput')
    ListPricingRulesAssociatedToPricingPlanOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListPricingRulesAssociatedToPricingPlanOperationInput', name: 'ListPricingRulesAssociatedToPricingPlanOperationInput')
    ListPricingRulesAssociatedToPricingPlanOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListPricingRulesAssociatedToPricingPlanOperationOutput', name: 'ListPricingRulesAssociatedToPricingPlanOperationOutput')
    ListPricingRulesFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListPricingRulesFilter', name: 'ListPricingRulesFilter')
    ListPricingRulesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListPricingRulesOperationInput', name: 'ListPricingRulesOperationInput')
    ListPricingRulesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListPricingRulesOperationOutput', name: 'ListPricingRulesOperationOutput')
    ListResourcesAssociatedToCustomLineItemFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItemFilter', name: 'ListResourcesAssociatedToCustomLineItemFilter')
    ListResourcesAssociatedToCustomLineItemOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItemOperationInput', name: 'ListResourcesAssociatedToCustomLineItemOperationInput')
    ListResourcesAssociatedToCustomLineItemOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItemOperationOutput', name: 'ListResourcesAssociatedToCustomLineItemOperationOutput')
    ListResourcesAssociatedToCustomLineItemResponseElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItemResponseElement', name: 'ListResourcesAssociatedToCustomLineItemResponseElement')
    ListResourcesAssociatedToCustomLineItemResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItemResponseList', name: 'ListResourcesAssociatedToCustomLineItemResponseList')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListTagsForResourceInput', name: 'ListTagsForResourceInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.billingconductor#BillingGroup", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingPlan", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingRule", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#CustomLineItem", "ids" => {"Arn" => "ResourceArn"}}]})
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    Margin = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#Margin', name: 'Margin')
    MarginPercentage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#MarginPercentage', name: 'MarginPercentage')
    MatchOption = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#MatchOption', name: 'MatchOption', traits: {"smithy.api#enum" => [{"value" => "NOT_EQUAL", "name" => "NOT_EQUAL"}]})
    MaxBillingGroupCostReportResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billingconductor#MaxBillingGroupCostReportResults', name: 'MaxBillingGroupCostReportResults', traits: {"smithy.api#range" => {"min" => 200, "max" => 300}})
    MaxBillingGroupResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billingconductor#MaxBillingGroupResults', name: 'MaxBillingGroupResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxCustomLineItemResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billingconductor#MaxCustomLineItemResults', name: 'MaxCustomLineItemResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxPricingPlanResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billingconductor#MaxPricingPlanResults', name: 'MaxPricingPlanResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxPricingRuleResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billingconductor#MaxPricingRuleResults', name: 'MaxPricingRuleResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ModifierPercentage = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.billingconductor#ModifierPercentage', name: 'ModifierPercentage', traits: {"smithy.api#range" => {"min" => 0}})
    NumberOfAccounts = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billingconductor#NumberOfAccounts', name: 'NumberOfAccounts', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    NumberOfAssociatedPricingRules = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billingconductor#NumberOfAssociatedPricingRules', name: 'NumberOfAssociatedPricingRules', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1}})
    NumberOfAssociations = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billingconductor#NumberOfAssociations', name: 'NumberOfAssociations', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    NumberOfPricingPlansAssociatedWith = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billingconductor#NumberOfPricingPlansAssociatedWith', name: 'NumberOfPricingPlansAssociatedWith', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Operation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#Operation', name: 'Operation', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    PricingPlanArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#PricingPlanArn', name: 'PricingPlanArn', traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingplan/)?[a-zA-Z0-9]{10}$"})
    PricingPlanArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#PricingPlanArns', name: 'PricingPlanArns', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PricingPlanDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#PricingPlanDescription', name: 'PricingPlanDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    PricingPlanFullArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#PricingPlanFullArn', name: 'PricingPlanFullArn', traits: {"smithy.api#pattern" => "^arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingplan/[a-zA-Z0-9]{10}$"})
    PricingPlanList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#PricingPlanList', name: 'PricingPlanList')
    PricingPlanListElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#PricingPlanListElement', name: 'PricingPlanListElement')
    PricingPlanName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#PricingPlanName', name: 'PricingPlanName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    PricingRuleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#PricingRuleArn', name: 'PricingRuleArn', traits: {"smithy.api#pattern" => "^(arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingrule/)?[a-zA-Z0-9]{10}$"})
    PricingRuleArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#PricingRuleArns', name: 'PricingRuleArns', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PricingRuleArnsInput = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#PricingRuleArnsInput', name: 'PricingRuleArnsInput', traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    PricingRuleArnsNonEmptyInput = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#PricingRuleArnsNonEmptyInput', name: 'PricingRuleArnsNonEmptyInput', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    PricingRuleDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#PricingRuleDescription', name: 'PricingRuleDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    PricingRuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#PricingRuleList', name: 'PricingRuleList')
    PricingRuleListElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#PricingRuleListElement', name: 'PricingRuleListElement')
    PricingRuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#PricingRuleName', name: 'PricingRuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    PricingRuleScope = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#PricingRuleScope', name: 'PricingRuleScope', traits: {"smithy.api#enum" => [{"value" => "GLOBAL", "name" => "GLOBAL"}, {"value" => "SERVICE", "name" => "SERVICE"}, {"value" => "BILLING_ENTITY", "name" => "BILLING_ENTITY"}, {"value" => "SKU", "name" => "SKU"}]})
    PricingRuleType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#PricingRuleType', name: 'PricingRuleType', traits: {"smithy.api#enum" => [{"value" => "MARKUP", "name" => "MARKUP"}, {"value" => "DISCOUNT", "name" => "DISCOUNT"}, {"value" => "TIERING", "name" => "TIERING"}]})
    ProformaCost = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#ProformaCost', name: 'ProformaCost')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billingconductor#RetryAfterSeconds', name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0})
    Service = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#Service', name: 'Service', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    ServiceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ServiceLimitExceededException', name: 'ServiceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#String', name: 'String')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.billingconductor#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#TagResourceInput', name: 'TagResourceInput', traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.billingconductor#BillingGroup", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingPlan", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingRule", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#CustomLineItem", "ids" => {"Arn" => "ResourceArn"}}]})
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Tiering = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#Tiering', name: 'Tiering')
    TieringActivated = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.billingconductor#TieringActivated', name: 'TieringActivated')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#Token', name: 'Token')
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UntagResourceInput', name: 'UntagResourceInput', traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.billingconductor#BillingGroup", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingPlan", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#PricingRule", "ids" => {"Arn" => "ResourceArn"}}, {"resource" => "com.amazonaws.billingconductor#CustomLineItem", "ids" => {"Arn" => "ResourceArn"}}]})
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateBillingGroupAccountGrouping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdateBillingGroupAccountGrouping', name: 'UpdateBillingGroupAccountGrouping')
    UpdateBillingGroupOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdateBillingGroupOperationInput', name: 'UpdateBillingGroupOperationInput')
    UpdateBillingGroupOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdateBillingGroupOperationOutput', name: 'UpdateBillingGroupOperationOutput')
    UpdateCustomLineItemChargeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdateCustomLineItemChargeDetails', name: 'UpdateCustomLineItemChargeDetails')
    UpdateCustomLineItemFlatChargeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdateCustomLineItemFlatChargeDetails', name: 'UpdateCustomLineItemFlatChargeDetails')
    UpdateCustomLineItemOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdateCustomLineItemOperationInput', name: 'UpdateCustomLineItemOperationInput')
    UpdateCustomLineItemOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdateCustomLineItemOperationOutput', name: 'UpdateCustomLineItemOperationOutput')
    UpdateCustomLineItemPercentageChargeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdateCustomLineItemPercentageChargeDetails', name: 'UpdateCustomLineItemPercentageChargeDetails')
    UpdateFreeTierConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdateFreeTierConfig', name: 'UpdateFreeTierConfig')
    UpdatePricingPlanOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdatePricingPlanOperationInput', name: 'UpdatePricingPlanOperationInput')
    UpdatePricingPlanOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdatePricingPlanOperationOutput', name: 'UpdatePricingPlanOperationOutput')
    UpdatePricingRuleOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdatePricingRuleOperationInput', name: 'UpdatePricingRuleOperationInput')
    UpdatePricingRuleOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdatePricingRuleOperationOutput', name: 'UpdatePricingRuleOperationOutput')
    UpdateTieringInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#UpdateTieringInput', name: 'UpdateTieringInput')
    UsageType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#UsageType', name: 'UsageType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billingconductor#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billingconductor#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billingconductor#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "UNKNOWN_OPERATION", "name" => "UNKNOWN_OPERATION"}, {"value" => "CANNOT_PARSE", "name" => "CANNOT_PARSE"}, {"value" => "FIELD_VALIDATION_FAILED", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "OTHER", "name" => "OTHER"}, {"value" => "PRIMARY_NOT_ASSOCIATED", "name" => "PRIMARY_NOT_ASSOCIATED"}, {"value" => "PRIMARY_CANNOT_DISASSOCIATE", "name" => "PRIMARY_CANNOT_DISASSOCIATE"}, {"value" => "ACCOUNTS_NOT_ASSOCIATED", "name" => "ACCOUNTS_NOT_ASSOCIATED"}, {"value" => "ACCOUNTS_ALREADY_ASSOCIATED", "name" => "ACCOUNTS_ALREADY_ASSOCIATED"}, {"value" => "ILLEGAL_PRIMARY_ACCOUNT", "name" => "ILLEGAL_PRIMARY_ACCOUNT"}, {"value" => "ILLEGAL_ACCOUNTS", "name" => "ILLEGAL_ACCOUNTS"}, {"value" => "MISMATCHED_BILLINGGROUP_ARN", "name" => "MISMATCHED_BILLINGGROUP_ARN"}, {"value" => "MISSING_BILLINGGROUP", "name" => "MISSING_BILLINGGROUP"}, {"value" => "MISMATCHED_CUSTOMLINEITEM_ARN", "name" => "MISMATCHED_CUSTOMLINEITEM_ARN"}, {"value" => "ILLEGAL_BILLING_PERIOD", "name" => "ILLEGAL_BILLING_PERIOD"}, {"value" => "ILLEGAL_BILLING_PERIOD_RANGE", "name" => "ILLEGAL_BILLING_PERIOD_RANGE"}, {"value" => "TOO_MANY_ACCOUNTS_IN_REQUEST", "name" => "TOO_MANY_ACCOUNTS_IN_REQUEST"}, {"value" => "DUPLICATE_ACCOUNT", "name" => "DUPLICATE_ACCOUNT"}, {"value" => "INVALID_BILLING_GROUP_STATUS", "name" => "INVALID_BILLING_GROUP_STATUS"}, {"value" => "MISMATCHED_PRICINGPLAN_ARN", "name" => "MISMATCHED_PRICINGPLAN_ARN"}, {"value" => "MISSING_PRICINGPLAN", "name" => "MISSING_PRICINGPLAN"}, {"value" => "MISMATCHED_PRICINGRULE_ARN", "name" => "MISMATCHED_PRICINGRULE_ARN"}, {"value" => "DUPLICATE_PRICINGRULE_ARNS", "name" => "DUPLICATE_PRICINGRULE_ARNS"}, {"value" => "ILLEGAL_EXPRESSION", "name" => "ILLEGAL_EXPRESSION"}, {"value" => "ILLEGAL_SCOPE", "name" => "ILLEGAL_SCOPE"}, {"value" => "ILLEGAL_SERVICE", "name" => "ILLEGAL_SERVICE"}, {"value" => "PRICINGRULES_NOT_EXIST", "name" => "PRICINGRULES_NOT_EXIST"}, {"value" => "PRICINGRULES_ALREADY_ASSOCIATED", "name" => "PRICINGRULES_ALREADY_ASSOCIATED"}, {"value" => "PRICINGRULES_NOT_ASSOCIATED", "name" => "PRICINGRULES_NOT_ASSOCIATED"}, {"value" => "INVALID_TIME_RANGE", "name" => "INVALID_TIME_RANGE"}, {"value" => "INVALID_BILLINGVIEW_ARN", "name" => "INVALID_BILLINGVIEW_ARN"}, {"value" => "MISMATCHED_BILLINGVIEW_ARN", "name" => "MISMATCHED_BILLINGVIEW_ARN"}, {"value" => "ILLEGAL_CUSTOMLINEITEM", "name" => "ILLEGAL_CUSTOMLINEITEM"}, {"value" => "MISSING_CUSTOMLINEITEM", "name" => "MISSING_CUSTOMLINEITEM"}, {"value" => "ILLEGAL_CUSTOMLINEITEM_UPDATE", "name" => "ILLEGAL_CUSTOMLINEITEM_UPDATE"}, {"value" => "TOO_MANY_CUSTOMLINEITEMS_IN_REQUEST", "name" => "TOO_MANY_CUSTOMLINEITEMS_IN_REQUEST"}, {"value" => "ILLEGAL_CHARGE_DETAILS", "name" => "ILLEGAL_CHARGE_DETAILS"}, {"value" => "ILLEGAL_UPDATE_CHARGE_DETAILS", "name" => "ILLEGAL_UPDATE_CHARGE_DETAILS"}, {"value" => "INVALID_ARN", "name" => "INVALID_ARN"}, {"value" => "ILLEGAL_RESOURCE_ARNS", "name" => "ILLEGAL_RESOURCE_ARNS"}, {"value" => "ILLEGAL_CUSTOMLINEITEM_MODIFICATION", "name" => "ILLEGAL_CUSTOMLINEITEM_MODIFICATION"}, {"value" => "MISSING_LINKED_ACCOUNT_IDS", "name" => "MISSING_LINKED_ACCOUNT_IDS"}, {"value" => "MULTIPLE_LINKED_ACCOUNT_IDS", "name" => "MULTIPLE_LINKED_ACCOUNT_IDS"}, {"value" => "MISSING_PRICING_PLAN_ARN", "name" => "MISSING_PRICING_PLAN_ARN"}, {"value" => "MULTIPLE_PRICING_PLAN_ARN", "name" => "MULTIPLE_PRICING_PLAN_ARN"}, {"value" => "ILLEGAL_CHILD_ASSOCIATE_RESOURCE", "name" => "ILLEGAL_CHILD_ASSOCIATE_RESOURCE"}, {"value" => "CUSTOM_LINE_ITEM_ASSOCIATION_EXISTS", "name" => "CUSTOM_LINE_ITEM_ASSOCIATION_EXISTS"}, {"value" => "INVALID_BILLING_GROUP", "name" => "INVALID_BILLING_GROUP"}, {"value" => "INVALID_BILLING_PERIOD_FOR_OPERATION", "name" => "INVALID_BILLING_PERIOD_FOR_OPERATION"}, {"value" => "ILLEGAL_BILLING_ENTITY", "name" => "ILLEGAL_BILLING_ENTITY"}, {"value" => "ILLEGAL_MODIFIER_PERCENTAGE", "name" => "ILLEGAL_MODIFIER_PERCENTAGE"}, {"value" => "ILLEGAL_TYPE", "name" => "ILLEGAL_TYPE"}, {"value" => "ILLEGAL_ENDED_BILLINGGROUP", "name" => "ILLEGAL_ENDED_BILLINGGROUP"}, {"value" => "ILLEGAL_TIERING_INPUT", "name" => "ILLEGAL_TIERING_INPUT"}, {"value" => "ILLEGAL_OPERATION", "name" => "ILLEGAL_OPERATION"}, {"value" => "ILLEGAL_USAGE_TYPE", "name" => "ILLEGAL_USAGE_TYPE"}, {"value" => "INVALID_SKU_COMBO", "name" => "INVALID_SKU_COMBO"}, {"value" => "INVALID_FILTER", "name" => "INVALID_FILTER"}, {"value" => "TOO_MANY_AUTO_ASSOCIATE_BILLING_GROUPS", "name" => "TOO_MANY_AUTO_ASSOCIATE_BILLING_GROUPS"}, {"value" => "CANNOT_DELETE_AUTO_ASSOCIATE_BILLING_GROUP", "name" => "CANNOT_DELETE_AUTO_ASSOCIATE_BILLING_GROUP"}, {"value" => "ILLEGAL_ACCOUNT_ID", "name" => "ILLEGAL_ACCOUNT_ID"}]})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountAssociationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssociationsListElement)
    AccountAssociationsListElement.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The associating array of account IDs.</p>"}))
    AccountAssociationsListElement.add_member(:billing_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'BillingGroupArn', traits: {"smithy.api#documentation" => "<p>The Billing Group Arn that the linked account is associated to.</p>"}))
    AccountAssociationsListElement.add_member(:account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'AccountName', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account name.</p>"}))
    AccountAssociationsListElement.add_member(:account_email, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountEmail, location_name: 'AccountEmail', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account email.</p>"}))
    AccountAssociationsListElement.type = Types::AccountAssociationsListElement
    AccountGrouping.add_member(:linked_account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'LinkedAccountIds', traits: {"smithy.api#documentation" => "<p>The account IDs that make up the billing group. Account IDs must be a part of the consolidated billing family, and not associated with another billing group.</p>", "smithy.api#required" => {}}))
    AccountGrouping.add_member(:auto_associate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AutoAssociate', traits: {"smithy.api#documentation" => "<p>Specifies if this billing group will automatically associate newly added\nAmazon Web Services accounts that join your consolidated billing family.</p>"}))
    AccountGrouping.type = Types::AccountGrouping
    AccountIdFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AccountIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AssociateAccountsOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the billing group that associates the array of\n      account IDs. </p>", "smithy.api#required" => {}}))
    AssociateAccountsOperationInput.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>\n      The associating array of account IDs.\n    </p>", "smithy.api#required" => {}}))
    AssociateAccountsOperationInput.type = Types::AssociateAccountsOperationInput
    AssociateAccountsOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the billing group that associates the array of\n      account IDs. </p>"}))
    AssociateAccountsOperationOutput.type = Types::AssociateAccountsOperationOutput
    AssociatePricingRulesOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>\n      The <code>PricingPlanArn</code> that the <code>PricingRuleArns</code> are associated with.\n    </p>", "smithy.api#required" => {}}))
    AssociatePricingRulesOperationInput.add_member(:pricing_rule_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArnsNonEmptyInput, location_name: 'PricingRuleArns', traits: {"smithy.api#documentation" => "<p>\n      The <code>PricingRuleArns</code> that are associated with the Pricing Plan.\n    </p>", "smithy.api#required" => {}}))
    AssociatePricingRulesOperationInput.type = Types::AssociatePricingRulesOperationInput
    AssociatePricingRulesOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>\n      The <code>PricingPlanArn</code> that the <code>PricingRuleArns</code> are associated with.\n    </p>"}))
    AssociatePricingRulesOperationOutput.type = Types::AssociatePricingRulesOperationOutput
    AssociateResourceError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The reason why the resource association failed.</p>"}))
    AssociateResourceError.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceErrorReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>A static error code that's used to classify the type of failure.</p>"}))
    AssociateResourceError.type = Types::AssociateResourceError
    AssociateResourceResponseElement.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The resource ARN that was associated to the custom line item.</p>"}))
    AssociateResourceResponseElement.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceError, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>An <code>AssociateResourceError</code> that will populate if the resource association fails.</p>"}))
    AssociateResourceResponseElement.type = Types::AssociateResourceResponseElement
    AssociateResourcesResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceResponseElement)
    Attribute.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key in a key-value pair that describes the margin summary.</p>"}))
    Attribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value in a key-value pair that describes the margin summary.</p>"}))
    Attribute.type = Types::Attribute
    AttributesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    BatchAssociateResourcesToCustomLineItemOperationInput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>\n      A percentage custom line item ARN to associate the resources to.\n    </p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    BatchAssociateResourcesToCustomLineItemOperationInput.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBatchAssociationsList, location_name: 'ResourceArns', traits: {"smithy.api#documentation" => "<p>\n      A list containing the ARNs of the resources to be associated.\n    </p>", "smithy.api#required" => {}}))
    BatchAssociateResourcesToCustomLineItemOperationInput.add_member(:billing_period_range, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: 'BillingPeriodRange'))
    BatchAssociateResourcesToCustomLineItemOperationInput.type = Types::BatchAssociateResourcesToCustomLineItemOperationInput
    BatchAssociateResourcesToCustomLineItemOperationOutput.add_member(:successfully_associated_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourcesResponseList, location_name: 'SuccessfullyAssociatedResources', traits: {"smithy.api#documentation" => "<p>\n      A list of <code>AssociateResourceResponseElement</code> for each resource that's been associated to a percentage custom line item successfully.\n    </p>"}))
    BatchAssociateResourcesToCustomLineItemOperationOutput.add_member(:failed_associated_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourcesResponseList, location_name: 'FailedAssociatedResources', traits: {"smithy.api#documentation" => "<p>\n      A list of <code>AssociateResourceResponseElement</code> for each resource that failed association to a percentage custom line item.\n    </p>"}))
    BatchAssociateResourcesToCustomLineItemOperationOutput.type = Types::BatchAssociateResourcesToCustomLineItemOperationOutput
    BatchDisassociateResourcesFromCustomLineItemOperationInput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>\n      A percentage custom line item ARN to disassociate the resources from.\n    </p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    BatchDisassociateResourcesFromCustomLineItemOperationInput.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBatchDisassociationsList, location_name: 'ResourceArns', traits: {"smithy.api#documentation" => "<p>\n      A list containing the ARNs of resources to be disassociated.\n    </p>", "smithy.api#required" => {}}))
    BatchDisassociateResourcesFromCustomLineItemOperationInput.add_member(:billing_period_range, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: 'BillingPeriodRange'))
    BatchDisassociateResourcesFromCustomLineItemOperationInput.type = Types::BatchDisassociateResourcesFromCustomLineItemOperationInput
    BatchDisassociateResourcesFromCustomLineItemOperationOutput.add_member(:successfully_disassociated_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourcesResponseList, location_name: 'SuccessfullyDisassociatedResources', traits: {"smithy.api#documentation" => "<p>\n      A list of <code>DisassociateResourceResponseElement</code> for each resource that's been disassociated from a percentage custom line item successfully.\n    </p>"}))
    BatchDisassociateResourcesFromCustomLineItemOperationOutput.add_member(:failed_disassociated_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourcesResponseList, location_name: 'FailedDisassociatedResources', traits: {"smithy.api#documentation" => "<p>\n      A list of <code>DisassociateResourceResponseElement</code> for each resource that failed disassociation from a percentage custom line item.\n    </p>"}))
    BatchDisassociateResourcesFromCustomLineItemOperationOutput.type = Types::BatchDisassociateResourcesFromCustomLineItemOperationOutput
    BillingGroupArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn)
    BillingGroupCostReportElement.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a billing group.</p>"}))
    BillingGroupCostReportElement.add_member(:aws_cost, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSCost, location_name: 'AWSCost', traits: {"smithy.api#documentation" => "<p>The actual Amazon Web Services charges for the billing group.</p>"}))
    BillingGroupCostReportElement.add_member(:proforma_cost, Smithy::Schema::Shapes::ShapeRef.new(shape: ProformaCost, location_name: 'ProformaCost', traits: {"smithy.api#documentation" => "<p>The hypothetical Amazon Web Services charges based on the associated pricing plan of a billing group.</p>"}))
    BillingGroupCostReportElement.add_member(:margin, Smithy::Schema::Shapes::ShapeRef.new(shape: Margin, location_name: 'Margin', traits: {"smithy.api#documentation" => "<p>The billing group margin.</p>"}))
    BillingGroupCostReportElement.add_member(:margin_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: MarginPercentage, location_name: 'MarginPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of billing group margin.</p>"}))
    BillingGroupCostReportElement.add_member(:currency, Smithy::Schema::Shapes::ShapeRef.new(shape: Currency, location_name: 'Currency', traits: {"smithy.api#documentation" => "<p>The displayed currency.</p>"}))
    BillingGroupCostReportElement.type = Types::BillingGroupCostReportElement
    BillingGroupCostReportList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupCostReportElement)
    BillingGroupCostReportResultElement.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) that uniquely identifies the billing group.</p>"}))
    BillingGroupCostReportResultElement.add_member(:aws_cost, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSCost, location_name: 'AWSCost', traits: {"smithy.api#documentation" => "<p>The actual Amazon Web Services charges for the billing group.</p>"}))
    BillingGroupCostReportResultElement.add_member(:proforma_cost, Smithy::Schema::Shapes::ShapeRef.new(shape: ProformaCost, location_name: 'ProformaCost', traits: {"smithy.api#documentation" => "<p>The hypothetical Amazon Web Services charges based on the associated pricing plan of a billing group.</p>"}))
    BillingGroupCostReportResultElement.add_member(:margin, Smithy::Schema::Shapes::ShapeRef.new(shape: Margin, location_name: 'Margin', traits: {"smithy.api#documentation" => "<p>The billing group margin.</p>"}))
    BillingGroupCostReportResultElement.add_member(:margin_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: MarginPercentage, location_name: 'MarginPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of the billing group margin.</p>"}))
    BillingGroupCostReportResultElement.add_member(:currency, Smithy::Schema::Shapes::ShapeRef.new(shape: Currency, location_name: 'Currency', traits: {"smithy.api#documentation" => "<p>The displayed currency.</p>"}))
    BillingGroupCostReportResultElement.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs that represent the attributes by which the\n                <code>BillingGroupCostReportResults</code> are grouped. For example, if you want the\n                Amazon S3 service-level breakdown of a billing group for November 2023, the\n            attributes list will contain a key-value pair of <code>\"PRODUCT_NAME\"</code> and\n                <code>\"S3\"</code> and a key-value pair of <code>\"BILLING_PERIOD\"</code> and\n                <code>\"Nov 2023\"</code>.</p>"}))
    BillingGroupCostReportResultElement.type = Types::BillingGroupCostReportResultElement
    BillingGroupCostReportResultsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupCostReportResultElement)
    BillingGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupListElement)
    BillingGroupListElement.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the billing group.</p>"}))
    BillingGroupListElement.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) that can be used to uniquely identify the billing group.</p>"}))
    BillingGroupListElement.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the billing group.</p>"}))
    BillingGroupListElement.add_member(:primary_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'PrimaryAccountId', traits: {"smithy.api#documentation" => "<p>The account ID that serves as the main account in a billing group.</p>"}))
    BillingGroupListElement.add_member(:computation_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationPreference, location_name: 'ComputationPreference'))
    BillingGroupListElement.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAccounts, location_name: 'Size', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of accounts in the particular billing group.</p>"}))
    BillingGroupListElement.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'CreationTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time when the billing group was created.</p>"}))
    BillingGroupListElement.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'LastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The most recent time when the billing group was modified.</p>"}))
    BillingGroupListElement.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The billing group status. Only one of the valid values can be used.</p>"}))
    BillingGroupListElement.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>The reason why the billing group is in its current status.</p>"}))
    BillingGroupListElement.add_member(:account_grouping, Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupAccountGrouping, location_name: 'AccountGrouping', traits: {"smithy.api#documentation" => "<p>Specifies if the billing group has automatic account\nassociation (<code>AutoAssociate</code>) enabled.</p>"}))
    BillingGroupListElement.type = Types::BillingGroupListElement
    BillingGroupStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatus)
    BillingPeriodRange.add_member(:inclusive_start_billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'InclusiveStartBillingPeriod', traits: {"smithy.api#documentation" => "<p>The inclusive start billing period that defines a billing period range for the margin summary.</p>", "smithy.api#required" => {}}))
    BillingPeriodRange.add_member(:exclusive_end_billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'ExclusiveEndBillingPeriod', traits: {"smithy.api#documentation" => "<p>The exclusive end billing period that defines a billing period range for the margin summary. For example, if you choose a billing period that starts in October 2023 and ends in December 2023, the margin summary will only include data from October 2023 and November 2023.</p>", "smithy.api#required" => {}}))
    BillingPeriodRange.type = Types::BillingPeriodRange
    ComputationPreference.add_member(:pricing_plan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanFullArn, location_name: 'PricingPlanArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the pricing plan that's used to compute the Amazon Web Services charges for a billing group. </p>", "smithy.api#required" => {}}))
    ComputationPreference.type = Types::ComputationPreference
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Identifier of the resource in use.\n    </p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Type of the resource in use.\n    </p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>Reason for the inconsistent state.\n    </p>"}))
    ConflictException.type = Types::ConflictException
    CreateBillingGroupOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>\n      The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update. \n    </p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateBillingGroupOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n      The billing group name. The names must be unique.\n    </p>", "smithy.api#required" => {}}))
    CreateBillingGroupOperationInput.add_member(:account_grouping, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountGrouping, location_name: 'AccountGrouping', traits: {"smithy.api#documentation" => "<p>\n      The set of accounts that will be under the billing group. The set of accounts resemble the linked accounts in a consolidated billing family.\n    </p>", "smithy.api#required" => {}}))
    CreateBillingGroupOperationInput.add_member(:computation_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationPreference, location_name: 'ComputationPreference', traits: {"smithy.api#documentation" => "<p>\n      The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.\n    </p>", "smithy.api#required" => {}}))
    CreateBillingGroupOperationInput.add_member(:primary_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'PrimaryAccountId', traits: {"smithy.api#documentation" => "<p> The account ID that serves as the main account in a billing group. </p>"}))
    CreateBillingGroupOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the billing group. </p>"}))
    CreateBillingGroupOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> A map that contains tag keys and tag values that are attached to a billing group. This\n      feature isn't available during the beta. </p>"}))
    CreateBillingGroupOperationInput.type = Types::CreateBillingGroupOperationInput
    CreateBillingGroupOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the created billing group. </p>"}))
    CreateBillingGroupOperationOutput.type = Types::CreateBillingGroupOperationOutput
    CreateCustomLineItemOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>\n      The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update. \n    </p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateCustomLineItemOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n      The name of the custom line item.\n    </p>", "smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n      The description of the custom line item. This is shown on the Bills page in association with the charge value.\n    </p>", "smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:billing_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'BillingGroupArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) that references the billing group where the custom line\n      item applies to. </p>", "smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:billing_period_range, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: 'BillingPeriodRange', traits: {"smithy.api#documentation" => "<p> A time range for which the custom line item is effective. </p>"}))
    CreateCustomLineItemOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> A map that contains tag keys and tag values that are attached to a custom line item. </p>"}))
    CreateCustomLineItemOperationInput.add_member(:charge_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemChargeDetails, location_name: 'ChargeDetails', traits: {"smithy.api#documentation" => "<p>\n      A <code>CustomLineItemChargeDetails</code> that describes the charge details for a custom line item.\n    </p>", "smithy.api#required" => {}}))
    CreateCustomLineItemOperationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account in which this custom line item will be applied to.</p>"}))
    CreateCustomLineItemOperationInput.type = Types::CreateCustomLineItemOperationInput
    CreateCustomLineItemOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the created custom line item. </p>"}))
    CreateCustomLineItemOperationOutput.type = Types::CreateCustomLineItemOperationOutput
    CreateFreeTierConfig.add_member(:activated, Smithy::Schema::Shapes::ShapeRef.new(shape: TieringActivated, location_name: 'Activated', traits: {"smithy.api#documentation" => "<p>\n      Activate or deactivate Amazon Web Services Free Tier.\n    </p>", "smithy.api#required" => {}}))
    CreateFreeTierConfig.type = Types::CreateFreeTierConfig
    CreatePricingPlanOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>\n      The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update. \n    </p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreatePricingPlanOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the pricing plan. The names must be unique to each pricing plan. </p>", "smithy.api#required" => {}}))
    CreatePricingPlanOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the pricing plan. </p>"}))
    CreatePricingPlanOperationInput.add_member(:pricing_rule_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArnsInput, location_name: 'PricingRuleArns', traits: {"smithy.api#documentation" => "<p> A list of Amazon Resource Names (ARNs) that define the pricing plan parameters. </p>"}))
    CreatePricingPlanOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>\n      A map that contains tag keys and tag values that are attached to a pricing plan.\n    </p>"}))
    CreatePricingPlanOperationInput.type = Types::CreatePricingPlanOperationInput
    CreatePricingPlanOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the created pricing plan.</p>"}))
    CreatePricingPlanOperationOutput.type = Types::CreatePricingPlanOperationOutput
    CreatePricingRuleOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p> The token that's needed to support idempotency. Idempotency isn't currently supported,\n      but will be implemented in a future update. </p>", "smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreatePricingRuleOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n      The pricing rule name. The names must be unique to each pricing rule.\n    </p>", "smithy.api#required" => {}}))
    CreatePricingRuleOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n      The pricing rule description.\n    </p>"}))
    CreatePricingRuleOperationInput.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleScope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p> The scope of pricing rule that indicates if it's globally applicable, or it's\n      service-specific. </p>", "smithy.api#required" => {}}))
    CreatePricingRuleOperationInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\n      The type of pricing rule.\n    </p>", "smithy.api#required" => {}}))
    CreatePricingRuleOperationInput.add_member(:modifier_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: 'ModifierPercentage', traits: {"smithy.api#documentation" => "<p> A percentage modifier that's applied on the public pricing rates. </p>"}))
    CreatePricingRuleOperationInput.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>\n      If the <code>Scope</code> attribute is set to <code>SERVICE</code> or <code>SKU</code>, the attribute indicates which service the <code>PricingRule</code> is applicable for.\n    </p>"}))
    CreatePricingRuleOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>\n      A map that contains tag keys and tag values that are attached to a pricing rule.\n    </p>"}))
    CreatePricingRuleOperationInput.add_member(:billing_entity, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingEntity, location_name: 'BillingEntity', traits: {"smithy.api#documentation" => "<p>\n      The seller of services provided by Amazon Web Services, their affiliates, or third-party providers selling services via Amazon Web Services Marketplace.\n    </p>"}))
    CreatePricingRuleOperationInput.add_member(:tiering, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTieringInput, location_name: 'Tiering', traits: {"smithy.api#documentation" => "<p>\n      The set of tiering configurations for the pricing rule.\n    </p>"}))
    CreatePricingRuleOperationInput.add_member(:usage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: 'UsageType', traits: {"smithy.api#documentation" => "<p>\n      Usage type is the unit that each service uses to measure the usage of a specific type of resource.</p>\n         <p>If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which usage type the <code>PricingRule</code> is modifying. For example, <code>USW2-BoxUsage:m2.2xlarge</code> describes an<code> M2 High Memory Double Extra Large</code> instance in the US West (Oregon) Region. \n      \n    </p>"}))
    CreatePricingRuleOperationInput.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>\n      Operation is the specific Amazon Web Services action covered by this line item. This describes the specific usage of the line item.</p>\n         <p>\n        If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which operation the <code>PricingRule</code> is modifying. For example, a value of <code>RunInstances:0202</code> indicates the operation of running an Amazon EC2 instance.</p>"}))
    CreatePricingRuleOperationInput.type = Types::CreatePricingRuleOperationInput
    CreatePricingRuleOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the created pricing rule. </p>"}))
    CreatePricingRuleOperationOutput.type = Types::CreatePricingRuleOperationOutput
    CreateTieringInput.add_member(:free_tier, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFreeTierConfig, location_name: 'FreeTier', traits: {"smithy.api#documentation" => "<p>\n      The possible Amazon Web Services Free Tier configurations.\n    </p>", "smithy.api#required" => {}}))
    CreateTieringInput.type = Types::CreateTieringInput
    CustomLineItemArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn)
    CustomLineItemAssociationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement)
    CustomLineItemBatchAssociationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement)
    CustomLineItemBatchDisassociationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement)
    CustomLineItemBillingPeriodRange.add_member(:inclusive_start_billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'InclusiveStartBillingPeriod', traits: {"smithy.api#documentation" => "<p>The inclusive start billing period that defines a billing period range where a custom line is applied.</p>", "smithy.api#required" => {}}))
    CustomLineItemBillingPeriodRange.add_member(:exclusive_end_billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'ExclusiveEndBillingPeriod', traits: {"smithy.api#documentation" => "<p>The inclusive end billing period that defines a billing period range where a custom line is applied.</p>"}))
    CustomLineItemBillingPeriodRange.type = Types::CustomLineItemBillingPeriodRange
    CustomLineItemChargeDetails.add_member(:flat, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemFlatChargeDetails, location_name: 'Flat', traits: {"smithy.api#documentation" => "<p>A <code>CustomLineItemFlatChargeDetails</code> that describes the charge details of a flat\n        custom line item.</p>"}))
    CustomLineItemChargeDetails.add_member(:percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeDetails, location_name: 'Percentage', traits: {"smithy.api#documentation" => "<p>A <code>CustomLineItemPercentageChargeDetails</code> that describes the charge details of a percentage custom line item.</p>"}))
    CustomLineItemChargeDetails.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the custom line item that indicates whether the charge is a fee or credit.</p>", "smithy.api#required" => {}}))
    CustomLineItemChargeDetails.add_member(:line_item_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFiltersList, location_name: 'LineItemFilters', traits: {"smithy.api#documentation" => "<p>A representation of the line item filter.</p>"}))
    CustomLineItemChargeDetails.type = Types::CustomLineItemChargeDetails
    CustomLineItemFlatChargeDetails.add_member(:charge_value, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemChargeValue, location_name: 'ChargeValue', traits: {"smithy.api#documentation" => "<p>The custom line item's fixed charge value in USD.</p>", "smithy.api#required" => {}}))
    CustomLineItemFlatChargeDetails.type = Types::CustomLineItemFlatChargeDetails
    CustomLineItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemListElement)
    CustomLineItemListElement.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) for custom line items.</p>"}))
    CustomLineItemListElement.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The custom line item's name.</p>"}))
    CustomLineItemListElement.add_member(:charge_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemChargeDetails, location_name: 'ChargeDetails', traits: {"smithy.api#documentation" => "<p>A <code>ListCustomLineItemChargeDetails</code> that describes the charge details of a custom line item.</p>"}))
    CustomLineItemListElement.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'CurrencyCode', traits: {"smithy.api#documentation" => "<p>The custom line item's charge value currency. Only one of the valid values can be used.</p>"}))
    CustomLineItemListElement.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The custom line item's description. This is shown on the Bills page in association with the charge value.</p>"}))
    CustomLineItemListElement.add_member(:product_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemProductCode, location_name: 'ProductCode', traits: {"smithy.api#documentation" => "<p>The product code that's associated with the custom line item.</p>"}))
    CustomLineItemListElement.add_member(:billing_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'BillingGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that references the billing group where the custom line item applies to.</p>"}))
    CustomLineItemListElement.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'CreationTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time created.</p>"}))
    CustomLineItemListElement.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'LastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The most recent time when the custom line item was modified.</p>"}))
    CustomLineItemListElement.add_member(:association_size, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: 'AssociationSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of resources that are associated to the custom line item.</p>"}))
    CustomLineItemListElement.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account in which this custom line item will be applied to.</p>"}))
    CustomLineItemListElement.type = Types::CustomLineItemListElement
    CustomLineItemNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName)
    CustomLineItemPercentageChargeDetails.add_member(:percentage_value, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeValue, location_name: 'PercentageValue', traits: {"smithy.api#documentation" => "<p>The custom line item's percentage value. This will be multiplied against the combined\n        value of its associated resources to determine its charge value. </p>", "smithy.api#required" => {}}))
    CustomLineItemPercentageChargeDetails.add_member(:associated_values, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationsList, location_name: 'AssociatedValues', traits: {"smithy.api#documentation" => "<p>A list of resource ARNs to associate to the percentage custom line item.</p>"}))
    CustomLineItemPercentageChargeDetails.type = Types::CustomLineItemPercentageChargeDetails
    CustomLineItemVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemVersionListElement)
    CustomLineItemVersionListElement.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the custom line item.</p>"}))
    CustomLineItemVersionListElement.add_member(:charge_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemChargeDetails, location_name: 'ChargeDetails'))
    CustomLineItemVersionListElement.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'CurrencyCode', traits: {"smithy.api#documentation" => "<p>The charge value currency of the custom line item.</p>"}))
    CustomLineItemVersionListElement.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the custom line item.</p>"}))
    CustomLineItemVersionListElement.add_member(:product_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemProductCode, location_name: 'ProductCode', traits: {"smithy.api#documentation" => "<p>The product code that’s associated with the custom line item.</p>"}))
    CustomLineItemVersionListElement.add_member(:billing_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'BillingGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the billing group that the custom line item applies to.</p>"}))
    CustomLineItemVersionListElement.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'CreationTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time when the custom line item version was created.</p>"}))
    CustomLineItemVersionListElement.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'LastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The most recent time that the custom line item version was modified.</p>"}))
    CustomLineItemVersionListElement.add_member(:association_size, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: 'AssociationSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of resources that are associated with the custom line item.</p>"}))
    CustomLineItemVersionListElement.add_member(:start_billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'StartBillingPeriod', traits: {"smithy.api#documentation" => "<p>The start billing period of the custom line item version.</p>"}))
    CustomLineItemVersionListElement.add_member(:end_billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'EndBillingPeriod', traits: {"smithy.api#documentation" => "<p>The end billing period of the custom line item version.</p>"}))
    CustomLineItemVersionListElement.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>\n      A list of custom line item Amazon Resource Names (ARNs) to retrieve information.\n    </p>"}))
    CustomLineItemVersionListElement.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'StartTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n      The inclusive start time.\n    </p>"}))
    CustomLineItemVersionListElement.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account in which this custom line item will be applied to.</p>"}))
    CustomLineItemVersionListElement.type = Types::CustomLineItemVersionListElement
    DeleteBillingGroupOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the billing group that you're deleting.</p>", "smithy.api#required" => {}}))
    DeleteBillingGroupOperationInput.type = Types::DeleteBillingGroupOperationInput
    DeleteBillingGroupOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted billing group.</p>"}))
    DeleteBillingGroupOperationOutput.type = Types::DeleteBillingGroupOperationOutput
    DeleteCustomLineItemOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>\n      The ARN of the custom line item to be deleted.\n    </p>", "smithy.api#required" => {}}))
    DeleteCustomLineItemOperationInput.add_member(:billing_period_range, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: 'BillingPeriodRange'))
    DeleteCustomLineItemOperationInput.type = Types::DeleteCustomLineItemOperationInput
    DeleteCustomLineItemOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the deleted custom line item. </p>"}))
    DeleteCustomLineItemOperationOutput.type = Types::DeleteCustomLineItemOperationOutput
    DeletePricingPlanOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pricing plan that you're deleting. </p>", "smithy.api#required" => {}}))
    DeletePricingPlanOperationInput.type = Types::DeletePricingPlanOperationInput
    DeletePricingPlanOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the deleted pricing plan. </p>"}))
    DeletePricingPlanOperationOutput.type = Types::DeletePricingPlanOperationOutput
    DeletePricingRuleOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the pricing rule that you are deleting. </p>", "smithy.api#required" => {}}))
    DeletePricingRuleOperationInput.type = Types::DeletePricingRuleOperationInput
    DeletePricingRuleOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the deleted pricing rule. </p>"}))
    DeletePricingRuleOperationOutput.type = Types::DeletePricingRuleOperationOutput
    DisassociateAccountsOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the billing group that the array of account IDs will\n      disassociate from. </p>", "smithy.api#required" => {}}))
    DisassociateAccountsOperationInput.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>The array of account IDs to disassociate.\n    </p>", "smithy.api#required" => {}}))
    DisassociateAccountsOperationInput.type = Types::DisassociateAccountsOperationInput
    DisassociateAccountsOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the billing group that the array of account IDs is\n      disassociated from. </p>"}))
    DisassociateAccountsOperationOutput.type = Types::DisassociateAccountsOperationOutput
    DisassociatePricingRulesOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The pricing plan Amazon Resource Name (ARN) to disassociate pricing rules from. </p>", "smithy.api#required" => {}}))
    DisassociatePricingRulesOperationInput.add_member(:pricing_rule_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArnsNonEmptyInput, location_name: 'PricingRuleArns', traits: {"smithy.api#documentation" => "<p> A list containing the Amazon Resource Name (ARN) of the pricing rules that will be\n      disassociated. </p>", "smithy.api#required" => {}}))
    DisassociatePricingRulesOperationInput.type = Types::DisassociatePricingRulesOperationInput
    DisassociatePricingRulesOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the pricing plan that the pricing rules successfully\n      disassociated from. </p>"}))
    DisassociatePricingRulesOperationOutput.type = Types::DisassociatePricingRulesOperationOutput
    DisassociateResourceResponseElement.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The resource ARN that was disassociated from the custom line item.\n    </p>"}))
    DisassociateResourceResponseElement.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceError, location_name: 'Error', traits: {"smithy.api#documentation" => "<p> An <code>AssociateResourceError</code> that's shown if the resource disassociation fails. </p>"}))
    DisassociateResourceResponseElement.type = Types::DisassociateResourceResponseElement
    DisassociateResourcesResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceResponseElement)
    FreeTierConfig.add_member(:activated, Smithy::Schema::Shapes::ShapeRef.new(shape: TieringActivated, location_name: 'Activated', traits: {"smithy.api#documentation" => "<p>\n      Activate or deactivate Amazon Web Services Free Tier application.\n    </p>", "smithy.api#required" => {}}))
    FreeTierConfig.type = Types::FreeTierConfig
    GetBillingGroupCostReportInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) that uniquely identifies the billing group.</p>", "smithy.api#required" => {}}))
    GetBillingGroupCostReportInput.add_member(:billing_period_range, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriodRange, location_name: 'BillingPeriodRange', traits: {"smithy.api#documentation" => "<p>A time range for which the margin summary is effective. You can specify up to 12 months.</p>"}))
    GetBillingGroupCostReportInput.add_member(:group_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupByAttributesList, location_name: 'GroupBy', traits: {"smithy.api#documentation" => "<p>A list of strings that specify the attributes that are used to break down costs in the\n      margin summary reports for the billing group. For example, you can view your costs by the\n      Amazon Web Service name or the billing period.</p>"}))
    GetBillingGroupCostReportInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBillingGroupCostReportResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of margin summary reports to retrieve.</p>"}))
    GetBillingGroupCostReportInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used on subsequent calls to get reports.</p>"}))
    GetBillingGroupCostReportInput.type = Types::GetBillingGroupCostReportInput
    GetBillingGroupCostReportOutput.add_member(:billing_group_cost_report_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupCostReportResultsList, location_name: 'BillingGroupCostReportResults', traits: {"smithy.api#documentation" => "<p>The list of margin summary reports.</p>"}))
    GetBillingGroupCostReportOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used on subsequent calls to get reports.</p>"}))
    GetBillingGroupCostReportOutput.type = Types::GetBillingGroupCostReportOutput
    GroupByAttributesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupByAttributeName)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of seconds you can retry after the call.\n    </p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    LineItemFilter.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFilterAttributeName, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The attribute of the line item filter. This specifies what attribute that you can filter\n      on.</p>", "smithy.api#required" => {}}))
    LineItemFilter.add_member(:match_option, Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOption, location_name: 'MatchOption', traits: {"smithy.api#documentation" => "<p>The match criteria of the line item filter. This parameter specifies whether not to include the resource value from the billing group total cost.</p>", "smithy.api#required" => {}}))
    LineItemFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFilterValuesList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The values of the line item filter. This specifies the values to filter on. Currently, you can only exclude Savings Plan discounts.</p>", "smithy.api#required" => {}}))
    LineItemFilter.type = Types::LineItemFilter
    LineItemFilterValuesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFilterValue)
    LineItemFiltersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFilter)
    ListAccountAssociationsFilter.add_member(:association, Smithy::Schema::Shapes::ShapeRef.new(shape: Association, location_name: 'Association', traits: {"smithy.api#documentation" => "<p>\n            <code>MONITORED</code>: linked accounts that are associated to billing groups.</p>\n         <p>\n            <code>UNMONITORED</code>: linked accounts that are not associated to billing groups.</p>\n         <p>\n            <code>Billing Group Arn</code>: linked accounts that are associated to the provided Billing Group Arn.</p>"}))
    ListAccountAssociationsFilter.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID to filter on.</p>"}))
    ListAccountAssociationsFilter.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdFilterList, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>\n      The list of Amazon Web Services IDs to retrieve their associated billing group for a given time range.\n    </p>"}))
    ListAccountAssociationsFilter.type = Types::ListAccountAssociationsFilter
    ListAccountAssociationsOperationInput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>\n      The preferred billing period to get account associations.\n    </p>"}))
    ListAccountAssociationsOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssociationsFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The filter on the account ID of the linked account, or any of the following:</p>\n         <p>\n            <code>MONITORED</code>: linked accounts that are associated to billing groups.</p>\n         <p>\n            <code>UNMONITORED</code>: linked accounts that aren't associated to billing groups.</p>\n         <p>\n            <code>Billing Group Arn</code>: linked accounts that are associated to the provided\n      billing group Arn. </p>"}))
    ListAccountAssociationsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The pagination token that's used on subsequent calls to retrieve accounts.\n    </p>"}))
    ListAccountAssociationsOperationInput.type = Types::ListAccountAssociationsOperationInput
    ListAccountAssociationsOperationOutput.add_member(:linked_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssociationsList, location_name: 'LinkedAccounts', traits: {"smithy.api#documentation" => "<p> The list of linked accounts in the payer account. </p>"}))
    ListAccountAssociationsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The pagination token that's used on subsequent calls to get accounts.\n    </p>"}))
    ListAccountAssociationsOperationOutput.type = Types::ListAccountAssociationsOperationOutput
    ListBillingGroupAccountGrouping.add_member(:auto_associate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AutoAssociate', traits: {"smithy.api#documentation" => "<p>Specifies if this billing group will automatically associate newly added\nAmazon Web Services accounts that join your consolidated billing family.</p>"}))
    ListBillingGroupAccountGrouping.type = Types::ListBillingGroupAccountGrouping
    ListBillingGroupCostReportsFilter.add_member(:billing_group_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArnList, location_name: 'BillingGroupArns', traits: {"smithy.api#documentation" => "<p>The list of Amazon Resource Names (ARNs) used to filter billing groups to retrieve reports. </p>"}))
    ListBillingGroupCostReportsFilter.type = Types::ListBillingGroupCostReportsFilter
    ListBillingGroupCostReportsOperationInput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>The preferred billing period for your report.\n    </p>"}))
    ListBillingGroupCostReportsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBillingGroupResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of reports to retrieve.\n    </p>"}))
    ListBillingGroupCostReportsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used on subsequent calls to get reports.\n    </p>"}))
    ListBillingGroupCostReportsOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupCostReportsFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>A <code>ListBillingGroupCostReportsFilter</code> to specify billing groups to retrieve reports from.\n    </p>"}))
    ListBillingGroupCostReportsOperationInput.type = Types::ListBillingGroupCostReportsOperationInput
    ListBillingGroupCostReportsOperationOutput.add_member(:billing_group_cost_reports, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupCostReportList, location_name: 'BillingGroupCostReports', traits: {"smithy.api#documentation" => "<p>A list of <code>BillingGroupCostReportElement</code> retrieved.\n    </p>"}))
    ListBillingGroupCostReportsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used on subsequent calls to get reports.\n    </p>"}))
    ListBillingGroupCostReportsOperationOutput.type = Types::ListBillingGroupCostReportsOperationOutput
    ListBillingGroupsFilter.add_member(:arns, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArnList, location_name: 'Arns', traits: {"smithy.api#documentation" => "<p>The list of billing group Amazon Resource Names (ARNs) to retrieve information.</p>"}))
    ListBillingGroupsFilter.add_member(:pricing_plan, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanFullArn, location_name: 'PricingPlan', traits: {"smithy.api#documentation" => "<p>The pricing plan Amazon Resource Names (ARNs) to retrieve information.</p>"}))
    ListBillingGroupsFilter.add_member(:statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatusList, location_name: 'Statuses', traits: {"smithy.api#documentation" => "<p>\n      A list of billing groups to retrieve their current status for a specific time range\n    </p>"}))
    ListBillingGroupsFilter.add_member(:auto_associate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AutoAssociate', traits: {"smithy.api#documentation" => "<p>Specifies if this billing group will automatically associate newly added\nAmazon Web Services accounts that join your consolidated billing family.</p>"}))
    ListBillingGroupsFilter.type = Types::ListBillingGroupsFilter
    ListBillingGroupsOperationInput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>The preferred billing period to get billing groups.\n    </p>"}))
    ListBillingGroupsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBillingGroupResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of billing groups to retrieve.\n    </p>"}))
    ListBillingGroupsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used on subsequent calls to get billing groups.\n    </p>"}))
    ListBillingGroupsOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupsFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>A <code>ListBillingGroupsFilter</code> that specifies the billing group and pricing plan to retrieve billing group information.\n    </p>"}))
    ListBillingGroupsOperationInput.type = Types::ListBillingGroupsOperationInput
    ListBillingGroupsOperationOutput.add_member(:billing_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupList, location_name: 'BillingGroups', traits: {"smithy.api#documentation" => "<p>A list of <code>BillingGroupListElement</code> retrieved.\n    </p>"}))
    ListBillingGroupsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used on subsequent calls to get billing groups.\n    </p>"}))
    ListBillingGroupsOperationOutput.type = Types::ListBillingGroupsOperationOutput
    ListCustomLineItemChargeDetails.add_member(:flat, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemFlatChargeDetails, location_name: 'Flat', traits: {"smithy.api#documentation" => "<p>\n      A <code>ListCustomLineItemFlatChargeDetails</code> that describes the charge details of a flat custom line item.\n    </p>"}))
    ListCustomLineItemChargeDetails.add_member(:percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemPercentageChargeDetails, location_name: 'Percentage', traits: {"smithy.api#documentation" => "<p>\n      A <code>ListCustomLineItemPercentageChargeDetails</code> that describes the charge details of a percentage custom line item.\n    </p>"}))
    ListCustomLineItemChargeDetails.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\n      The type of the custom line item that indicates whether the charge is a <code>fee</code> or <code>credit</code>.\n    </p>", "smithy.api#required" => {}}))
    ListCustomLineItemChargeDetails.add_member(:line_item_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFiltersList, location_name: 'LineItemFilters', traits: {"smithy.api#documentation" => "<p>A representation of the line item filter.</p>"}))
    ListCustomLineItemChargeDetails.type = Types::ListCustomLineItemChargeDetails
    ListCustomLineItemFlatChargeDetails.add_member(:charge_value, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemChargeValue, location_name: 'ChargeValue', traits: {"smithy.api#documentation" => "<p>\n      The custom line item's fixed charge value in USD.\n    </p>", "smithy.api#required" => {}}))
    ListCustomLineItemFlatChargeDetails.type = Types::ListCustomLineItemFlatChargeDetails
    ListCustomLineItemPercentageChargeDetails.add_member(:percentage_value, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeValue, location_name: 'PercentageValue', traits: {"smithy.api#documentation" => "<p>\n      The custom line item's percentage value. This will be multiplied against the combined value of its associated resources to determine its charge value.\n    </p>", "smithy.api#required" => {}}))
    ListCustomLineItemPercentageChargeDetails.type = Types::ListCustomLineItemPercentageChargeDetails
    ListCustomLineItemVersionsBillingPeriodRangeFilter.add_member(:start_billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'StartBillingPeriod', traits: {"smithy.api#documentation" => "<p>The inclusive start billing period that defines a billing period range where  a custom line item version is applied.</p>"}))
    ListCustomLineItemVersionsBillingPeriodRangeFilter.add_member(:end_billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'EndBillingPeriod', traits: {"smithy.api#documentation" => "<p>The exclusive end billing period that defines a billing period range where a  custom line item version is applied.</p>"}))
    ListCustomLineItemVersionsBillingPeriodRangeFilter.type = Types::ListCustomLineItemVersionsBillingPeriodRangeFilter
    ListCustomLineItemVersionsFilter.add_member(:billing_period_range, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsBillingPeriodRangeFilter, location_name: 'BillingPeriodRange', traits: {"smithy.api#documentation" => "<p>The billing period range in which the custom line item version is applied.</p>"}))
    ListCustomLineItemVersionsFilter.type = Types::ListCustomLineItemVersionsFilter
    ListCustomLineItemVersionsOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the custom line item.</p>", "smithy.api#required" => {}}))
    ListCustomLineItemVersionsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCustomLineItemResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of custom line item versions to retrieve.</p>"}))
    ListCustomLineItemVersionsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used on subsequent calls to retrieve custom line item versions.</p>"}))
    ListCustomLineItemVersionsOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>A <code>ListCustomLineItemVersionsFilter</code> that specifies the billing period range in which the custom line item versions are applied.</p>"}))
    ListCustomLineItemVersionsOperationInput.type = Types::ListCustomLineItemVersionsOperationInput
    ListCustomLineItemVersionsOperationOutput.add_member(:custom_line_item_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemVersionList, location_name: 'CustomLineItemVersions', traits: {"smithy.api#documentation" => "<p>A list of <code>CustomLineItemVersionListElements</code> that are received.</p>"}))
    ListCustomLineItemVersionsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used on subsequent calls to retrieve custom line item versions.</p>"}))
    ListCustomLineItemVersionsOperationOutput.type = Types::ListCustomLineItemVersionsOperationOutput
    ListCustomLineItemsFilter.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemNameList, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>A list of custom line items to retrieve information.</p>"}))
    ListCustomLineItemsFilter.add_member(:billing_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArnList, location_name: 'BillingGroups', traits: {"smithy.api#documentation" => "<p>The billing group Amazon Resource Names (ARNs) to retrieve information.</p>"}))
    ListCustomLineItemsFilter.add_member(:arns, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArns, location_name: 'Arns', traits: {"smithy.api#documentation" => "<p>A list of custom line item ARNs to retrieve information.</p>"}))
    ListCustomLineItemsFilter.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services accounts in which this custom line item will be applied to.</p>"}))
    ListCustomLineItemsFilter.type = Types::ListCustomLineItemsFilter
    ListCustomLineItemsOperationInput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>\n      The preferred billing period to get custom line items (FFLIs).\n    </p>"}))
    ListCustomLineItemsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCustomLineItemResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n      The maximum number of billing groups to retrieve.\n    </p>"}))
    ListCustomLineItemsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The pagination token that's used on subsequent calls to get custom line items (FFLIs).\n    </p>"}))
    ListCustomLineItemsOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemsFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>A <code>ListCustomLineItemsFilter</code> that specifies the custom line item names\n      and/or billing group Amazon Resource Names (ARNs) to retrieve FFLI information.</p>"}))
    ListCustomLineItemsOperationInput.type = Types::ListCustomLineItemsOperationInput
    ListCustomLineItemsOperationOutput.add_member(:custom_line_items, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemList, location_name: 'CustomLineItems', traits: {"smithy.api#documentation" => "<p>\n      A list of <code>FreeFormLineItemListElements</code> received.\n    </p>"}))
    ListCustomLineItemsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The pagination token that's used on subsequent calls to get custom line items (FFLIs).\n    </p>"}))
    ListCustomLineItemsOperationOutput.type = Types::ListCustomLineItemsOperationOutput
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>\n      The pricing plan billing period for which associations will be listed.\n    </p>"}))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:pricing_rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: 'PricingRuleArn', traits: {"smithy.api#documentation" => "<p> The pricing rule Amazon Resource Name (ARN) for which associations will be listed. </p>", "smithy.api#required" => {}}))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPricingRuleResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n      The optional maximum number of pricing rule associations to retrieve. \n    </p>"}))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The optional pagination token returned by a previous call.\n    </p>"}))
    ListPricingPlansAssociatedWithPricingRuleOperationInput.type = Types::ListPricingPlansAssociatedWithPricingRuleOperationInput
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>\n      The pricing plan billing period for which associations will be listed.\n    </p>"}))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:pricing_rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: 'PricingRuleArn', traits: {"smithy.api#documentation" => "<p> The pricing rule Amazon Resource Name (ARN) for which associations will be listed. </p>"}))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:pricing_plan_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArns, location_name: 'PricingPlanArns', traits: {"smithy.api#documentation" => "<p>\n      The list containing pricing plans that are associated with the requested pricing rule.\n    </p>"}))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The pagination token to be used on subsequent calls.\n    </p>"}))
    ListPricingPlansAssociatedWithPricingRuleOperationOutput.type = Types::ListPricingPlansAssociatedWithPricingRuleOperationOutput
    ListPricingPlansFilter.add_member(:arns, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArns, location_name: 'Arns', traits: {"smithy.api#documentation" => "<p>A list of pricing plan Amazon Resource Names (ARNs) to retrieve information.</p>"}))
    ListPricingPlansFilter.type = Types::ListPricingPlansFilter
    ListPricingPlansOperationInput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>The preferred billing period to get pricing plan.\n    </p>"}))
    ListPricingPlansOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingPlansFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>A <code>ListPricingPlansFilter</code> that specifies the Amazon Resource Name (ARNs)\n      of pricing plans to retrieve pricing plans information.</p>"}))
    ListPricingPlansOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPricingPlanResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of pricing plans to retrieve.</p>"}))
    ListPricingPlansOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used on subsequent call to get pricing plans.\n    </p>"}))
    ListPricingPlansOperationInput.type = Types::ListPricingPlansOperationInput
    ListPricingPlansOperationOutput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>\n      The billing period for which the described pricing plans are applicable.\n    </p>"}))
    ListPricingPlansOperationOutput.add_member(:pricing_plans, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanList, location_name: 'PricingPlans', traits: {"smithy.api#documentation" => "<p>A list of <code>PricingPlanListElement</code> retrieved.\n    </p>"}))
    ListPricingPlansOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used on subsequent calls to get pricing plans.\n    </p>"}))
    ListPricingPlansOperationOutput.type = Types::ListPricingPlansOperationOutput
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>\n      The billing period for which the pricing rule associations are to be listed.\n    </p>"}))
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:pricing_plan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'PricingPlanArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the pricing plan for which associations are to be\n      listed.</p>", "smithy.api#required" => {}}))
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPricingPlanResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The optional maximum number of pricing rule associations to retrieve.</p>"}))
    ListPricingRulesAssociatedToPricingPlanOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The optional pagination token returned by a previous call.\n    </p>"}))
    ListPricingRulesAssociatedToPricingPlanOperationInput.type = Types::ListPricingRulesAssociatedToPricingPlanOperationInput
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>\n      The billing period for which the pricing rule associations are listed.\n    </p>"}))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:pricing_plan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'PricingPlanArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the pricing plan for which associations are\n      listed.</p>"}))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:pricing_rule_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArns, location_name: 'PricingRuleArns', traits: {"smithy.api#documentation" => "<p>\n      A list containing pricing rules that are associated with the requested pricing plan.\n    </p>"}))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The pagination token to be used on subsequent calls.\n    </p>"}))
    ListPricingRulesAssociatedToPricingPlanOperationOutput.type = Types::ListPricingRulesAssociatedToPricingPlanOperationOutput
    ListPricingRulesFilter.add_member(:arns, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArns, location_name: 'Arns', traits: {"smithy.api#documentation" => "<p>A list containing the pricing rule Amazon Resource Names (ARNs) to include in the API response.</p>"}))
    ListPricingRulesFilter.type = Types::ListPricingRulesFilter
    ListPricingRulesOperationInput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>\n      The preferred billing period to get the pricing plan.\n    </p>"}))
    ListPricingRulesOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingRulesFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p> A <code>DescribePricingRuleFilter</code> that specifies the Amazon Resource Name (ARNs)\n      of pricing rules to retrieve pricing rules information. </p>"}))
    ListPricingRulesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPricingRuleResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n      The maximum number of pricing rules to retrieve.\n    </p>"}))
    ListPricingRulesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The pagination token that's used on subsequent call to get pricing rules.\n    </p>"}))
    ListPricingRulesOperationInput.type = Types::ListPricingRulesOperationInput
    ListPricingRulesOperationOutput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>\n      The billing period for which the described pricing rules are applicable.\n    </p>"}))
    ListPricingRulesOperationOutput.add_member(:pricing_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleList, location_name: 'PricingRules', traits: {"smithy.api#documentation" => "<p>\n      A list containing the described pricing rules.\n    </p>"}))
    ListPricingRulesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The pagination token that's used on subsequent calls to get pricing rules.\n    </p>"}))
    ListPricingRulesOperationOutput.type = Types::ListPricingRulesOperationOutput
    ListResourcesAssociatedToCustomLineItemFilter.add_member(:relationship, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemRelationship, location_name: 'Relationship', traits: {"smithy.api#documentation" => "<p>\n      The type of relationship between the custom line item and the associated resource.\n    </p>"}))
    ListResourcesAssociatedToCustomLineItemFilter.type = Types::ListResourcesAssociatedToCustomLineItemFilter
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>\n      The billing period for which the resource associations will be listed.\n    </p>"}))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>\n      The ARN of the custom line item for which the resource associations will be listed.\n    </p>", "smithy.api#required" => {}}))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCustomLineItemResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n      (Optional) The maximum number of resource associations to be retrieved.\n    </p>"}))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> (Optional) The pagination token that's returned by a previous request. </p>"}))
    ListResourcesAssociatedToCustomLineItemOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>\n      (Optional) A <code>ListResourcesAssociatedToCustomLineItemFilter</code> that can specify the types of resources that should be retrieved. \n    </p>"}))
    ListResourcesAssociatedToCustomLineItemOperationInput.type = Types::ListResourcesAssociatedToCustomLineItemOperationInput
    ListResourcesAssociatedToCustomLineItemOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>\n      The custom line item ARN for which the resource associations are listed.\n    </p>"}))
    ListResourcesAssociatedToCustomLineItemOperationOutput.add_member(:associated_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemResponseList, location_name: 'AssociatedResources', traits: {"smithy.api#documentation" => "<p>\n      A list of <code>ListResourcesAssociatedToCustomLineItemResponseElement</code> for each resource association retrieved.\n    </p>"}))
    ListResourcesAssociatedToCustomLineItemOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The pagination token to be used in subsequent requests to retrieve additional results.\n    </p>"}))
    ListResourcesAssociatedToCustomLineItemOperationOutput.type = Types::ListResourcesAssociatedToCustomLineItemOperationOutput
    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemAssociationElement, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>\n      The ARN of the associated resource.\n    </p>"}))
    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:relationship, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemRelationship, location_name: 'Relationship', traits: {"smithy.api#documentation" => "<p>\n      The type of relationship between the custom line item and the associated resource.\n    </p>"}))
    ListResourcesAssociatedToCustomLineItemResponseElement.add_member(:end_billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'EndBillingPeriod', traits: {"smithy.api#documentation" => "<p>The end billing period of the associated resource.</p>"}))
    ListResourcesAssociatedToCustomLineItemResponseElement.type = Types::ListResourcesAssociatedToCustomLineItemResponseElement
    ListResourcesAssociatedToCustomLineItemResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemResponseElement)
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) that identifies the resource to list the tags.\n    </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>\n      The tags for the resource.\n    </p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    PricingPlanArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn)
    PricingPlanList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanListElement)
    PricingPlanListElement.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a pricing plan.</p>"}))
    PricingPlanListElement.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The pricing plan Amazon Resource Names (ARN). This can be used to uniquely identify a pricing plan.</p>"}))
    PricingPlanListElement.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The pricing plan description.</p>"}))
    PricingPlanListElement.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociatedPricingRules, location_name: 'Size', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The pricing rules count that's currently associated with this pricing plan list element.</p>"}))
    PricingPlanListElement.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'CreationTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time when the pricing plan was created.</p>"}))
    PricingPlanListElement.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'LastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The most recent time when the pricing plan was modified.</p>"}))
    PricingPlanListElement.type = Types::PricingPlanListElement
    PricingRuleArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn)
    PricingRuleArnsInput.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn)
    PricingRuleArnsNonEmptyInput.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn)
    PricingRuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleListElement)
    PricingRuleListElement.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a pricing rule.</p>"}))
    PricingRuleListElement.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) used to uniquely identify a pricing rule.</p>"}))
    PricingRuleListElement.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The pricing rule description.</p>"}))
    PricingRuleListElement.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleScope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>The scope of pricing rule that indicates if it is globally applicable, or if it is service-specific.</p>"}))
    PricingRuleListElement.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of pricing rule.</p>"}))
    PricingRuleListElement.add_member(:modifier_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: 'ModifierPercentage', traits: {"smithy.api#documentation" => "<p>A percentage modifier applied on the public pricing rates.</p>"}))
    PricingRuleListElement.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>If the <code>Scope</code> attribute is <code>SERVICE</code>, this attribute indicates which service the <code>PricingRule</code> is applicable for.</p>"}))
    PricingRuleListElement.add_member(:associated_pricing_plan_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfPricingPlansAssociatedWith, location_name: 'AssociatedPricingPlanCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The pricing plans count that this pricing rule is associated with.</p>"}))
    PricingRuleListElement.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'CreationTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time when the pricing rule was created.</p>"}))
    PricingRuleListElement.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'LastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The most recent time when the pricing rule was modified.</p>"}))
    PricingRuleListElement.add_member(:billing_entity, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingEntity, location_name: 'BillingEntity', traits: {"smithy.api#documentation" => "<p>\n      The seller of services provided by Amazon Web Services, their affiliates, or third-party providers selling services via Amazon Web Services Marketplace.\n    </p>"}))
    PricingRuleListElement.add_member(:tiering, Smithy::Schema::Shapes::ShapeRef.new(shape: Tiering, location_name: 'Tiering', traits: {"smithy.api#documentation" => "<p>\n      The set of tiering configurations for the pricing rule.\n    </p>"}))
    PricingRuleListElement.add_member(:usage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: 'UsageType', traits: {"smithy.api#documentation" => "<p>\n      Usage type is the unit that each service uses to measure the usage of a specific type of resource.</p>\n         <p>If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which usage type the <code>PricingRule</code> is modifying. For example, <code>USW2-BoxUsage:m2.2xlarge</code> describes an<code> M2 High Memory Double Extra Large</code> instance in the US West (Oregon) Region. \n      \n    </p>"}))
    PricingRuleListElement.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>\n      Operation is the specific Amazon Web Services action covered by this line item. This describes the specific usage of the line item.</p>\n         <p>\n        If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which operation the <code>PricingRule</code> is modifying. For example, a value of <code>RunInstances:0202</code> indicates the operation of running an Amazon EC2 instance.</p>"}))
    PricingRuleListElement.type = Types::PricingRuleListElement
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Resource identifier that was not found.\n    </p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Resource type that was not found.\n    </p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Identifier of the resource affected.\n    </p>"}))
    ServiceLimitExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Type of the resource affected.\n    </p>"}))
    ServiceLimitExceededException.add_member(:limit_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LimitCode', traits: {"smithy.api#documentation" => "<p>The unique code identifier of the service limit that is being exceeded.\n    </p>", "smithy.api#required" => {}}))
    ServiceLimitExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The unique code for the service of the limit that is being exceeded.\n    </p>", "smithy.api#required" => {}}))
    ServiceLimitExceededException.type = Types::ServiceLimitExceededException
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the resource to which to add tags.\n    </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>\n      The tags to add to the resource as a list of key-value pairs.\n    </p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of seconds you can safely retry after the call.\n    </p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    Tiering.add_member(:free_tier, Smithy::Schema::Shapes::ShapeRef.new(shape: FreeTierConfig, location_name: 'FreeTier', traits: {"smithy.api#documentation" => "<p>\n      The possible Amazon Web Services Free Tier configurations.\n    </p>", "smithy.api#required" => {}}))
    Tiering.type = Types::Tiering
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the resource to which to delete tags.\n    </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>\n      The tags to delete from the resource as a list of key-value pairs.\n    </p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateBillingGroupAccountGrouping.add_member(:auto_associate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AutoAssociate', traits: {"smithy.api#documentation" => "<p>Specifies if this billing group will automatically associate newly added\nAmazon Web Services accounts that join your consolidated billing family.</p>"}))
    UpdateBillingGroupAccountGrouping.type = Types::UpdateBillingGroupAccountGrouping
    UpdateBillingGroupOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the billing group being updated. </p>", "smithy.api#required" => {}}))
    UpdateBillingGroupOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the billing group. The names must be unique to each billing group.\n    </p>"}))
    UpdateBillingGroupOperationInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the billing group. Only one of the valid values can be used.\n    </p>"}))
    UpdateBillingGroupOperationInput.add_member(:computation_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationPreference, location_name: 'ComputationPreference', traits: {"smithy.api#documentation" => "<p>\n      The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.\n    </p>"}))
    UpdateBillingGroupOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the billing group. \n    </p>"}))
    UpdateBillingGroupOperationInput.add_member(:account_grouping, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillingGroupAccountGrouping, location_name: 'AccountGrouping', traits: {"smithy.api#documentation" => "<p>Specifies if the billing group has automatic account\nassociation (<code>AutoAssociate</code>) enabled.</p>"}))
    UpdateBillingGroupOperationInput.type = Types::UpdateBillingGroupOperationInput
    UpdateBillingGroupOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the billing group that was updated. </p>"}))
    UpdateBillingGroupOperationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n      The name of the billing group. The names must be unique to each billing group.\n    </p>"}))
    UpdateBillingGroupOperationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n      A description of the billing group.\n    </p>"}))
    UpdateBillingGroupOperationOutput.add_member(:primary_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'PrimaryAccountId', traits: {"smithy.api#documentation" => "<p>\n      The account ID that serves as the main account in a billing group.\n    </p>"}))
    UpdateBillingGroupOperationOutput.add_member(:pricing_plan_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'PricingPlanArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the pricing plan to compute Amazon Web Services charges for the\n      billing group.\n    </p>"}))
    UpdateBillingGroupOperationOutput.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAccounts, location_name: 'Size', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n      The number of accounts in the particular billing group.\n    </p>"}))
    UpdateBillingGroupOperationOutput.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'LastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The most recent time when the billing group was modified. </p>"}))
    UpdateBillingGroupOperationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n      The status of the billing group. Only one of the valid values can be used.\n    </p>"}))
    UpdateBillingGroupOperationOutput.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>\n      The reason why the billing group is in its current status.\n    </p>"}))
    UpdateBillingGroupOperationOutput.add_member(:account_grouping, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillingGroupAccountGrouping, location_name: 'AccountGrouping', traits: {"smithy.api#documentation" => "<p>Specifies if the billing group has automatic account\nassociation (<code>AutoAssociate</code>) enabled.</p>"}))
    UpdateBillingGroupOperationOutput.type = Types::UpdateBillingGroupOperationOutput
    UpdateCustomLineItemChargeDetails.add_member(:flat, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomLineItemFlatChargeDetails, location_name: 'Flat', traits: {"smithy.api#documentation" => "<p>\n      An <code>UpdateCustomLineItemFlatChargeDetails</code> that describes the new charge details of a flat custom line item.\n    </p>"}))
    UpdateCustomLineItemChargeDetails.add_member(:percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomLineItemPercentageChargeDetails, location_name: 'Percentage', traits: {"smithy.api#documentation" => "<p>\n      An <code>UpdateCustomLineItemPercentageChargeDetails</code> that describes the new charge details of a percentage custom line item.\n    </p>"}))
    UpdateCustomLineItemChargeDetails.add_member(:line_item_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFiltersList, location_name: 'LineItemFilters', traits: {"smithy.api#documentation" => "<p>A representation of the line item filter.</p>"}))
    UpdateCustomLineItemChargeDetails.type = Types::UpdateCustomLineItemChargeDetails
    UpdateCustomLineItemFlatChargeDetails.add_member(:charge_value, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemChargeValue, location_name: 'ChargeValue', traits: {"smithy.api#documentation" => "<p>\n      The custom line item's new fixed charge value in USD.\n    </p>", "smithy.api#required" => {}}))
    UpdateCustomLineItemFlatChargeDetails.type = Types::UpdateCustomLineItemFlatChargeDetails
    UpdateCustomLineItemOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>\n      The ARN of the custom line item to be updated.\n    </p>", "smithy.api#required" => {}}))
    UpdateCustomLineItemOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n      The new name for the custom line item.\n    </p>"}))
    UpdateCustomLineItemOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n      The new line item description of the custom line item.\n    </p>"}))
    UpdateCustomLineItemOperationInput.add_member(:charge_details, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomLineItemChargeDetails, location_name: 'ChargeDetails', traits: {"smithy.api#documentation" => "<p>\n      A <code>ListCustomLineItemChargeDetails</code> containing the new charge details for the custom line item.\n    </p>"}))
    UpdateCustomLineItemOperationInput.add_member(:billing_period_range, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemBillingPeriodRange, location_name: 'BillingPeriodRange'))
    UpdateCustomLineItemOperationInput.type = Types::UpdateCustomLineItemOperationInput
    UpdateCustomLineItemOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>\n      The ARN of the successfully updated custom line item.\n    </p>"}))
    UpdateCustomLineItemOperationOutput.add_member(:billing_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingGroupFullArn, location_name: 'BillingGroupArn', traits: {"smithy.api#documentation" => "<p>\n      The ARN of the billing group that the custom line item is applied to.\n    </p>"}))
    UpdateCustomLineItemOperationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n      The name of the successfully updated custom line item.\n    </p>"}))
    UpdateCustomLineItemOperationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n      The description of the successfully updated custom line item.\n    </p>"}))
    UpdateCustomLineItemOperationOutput.add_member(:charge_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemChargeDetails, location_name: 'ChargeDetails', traits: {"smithy.api#documentation" => "<p>\n      A <code>ListCustomLineItemChargeDetails</code> containing the charge details of the successfully updated custom line item.\n    </p>"}))
    UpdateCustomLineItemOperationOutput.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'LastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The most recent time when the custom line item was modified. </p>"}))
    UpdateCustomLineItemOperationOutput.add_member(:association_size, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: 'AssociationSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n      The number of resources that are associated to the custom line item.\n    </p>"}))
    UpdateCustomLineItemOperationOutput.type = Types::UpdateCustomLineItemOperationOutput
    UpdateCustomLineItemPercentageChargeDetails.add_member(:percentage_value, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLineItemPercentageChargeValue, location_name: 'PercentageValue', traits: {"smithy.api#documentation" => "<p>\n      The custom line item's new percentage value. This will be multiplied against the combined value of its associated resources to determine its charge value.\n    </p>", "smithy.api#required" => {}}))
    UpdateCustomLineItemPercentageChargeDetails.type = Types::UpdateCustomLineItemPercentageChargeDetails
    UpdateFreeTierConfig.add_member(:activated, Smithy::Schema::Shapes::ShapeRef.new(shape: TieringActivated, location_name: 'Activated', traits: {"smithy.api#documentation" => "<p>\n      Activate or deactivate application of Amazon Web Services Free Tier.\n    </p>", "smithy.api#required" => {}}))
    UpdateFreeTierConfig.type = Types::UpdateFreeTierConfig
    UpdatePricingPlanOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pricing plan that you're updating. </p>", "smithy.api#required" => {}}))
    UpdatePricingPlanOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the pricing plan. The name must be unique to each pricing plan.\n    </p>"}))
    UpdatePricingPlanOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the pricing plan. </p>"}))
    UpdatePricingPlanOperationInput.type = Types::UpdatePricingPlanOperationInput
    UpdatePricingPlanOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated pricing plan. </p>"}))
    UpdatePricingPlanOperationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n      The name of the pricing plan. The name must be unique to each pricing plan.\n    </p>"}))
    UpdatePricingPlanOperationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlanDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n      The new description for the pricing rule.\n    </p>"}))
    UpdatePricingPlanOperationOutput.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociatedPricingRules, location_name: 'Size', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n      The pricing rules count that's currently associated with this pricing plan list.\n    </p>"}))
    UpdatePricingPlanOperationOutput.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'LastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The most recent time when the pricing plan was modified. </p>"}))
    UpdatePricingPlanOperationOutput.type = Types::UpdatePricingPlanOperationOutput
    UpdatePricingRuleOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the pricing rule to update. </p>", "smithy.api#required" => {}}))
    UpdatePricingRuleOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n      The new name of the pricing rule. The name must be unique to each pricing rule.\n    </p>"}))
    UpdatePricingRuleOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n      The new description for the pricing rule.\n    </p>"}))
    UpdatePricingRuleOperationInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\n      The new pricing rule type.\n    </p>"}))
    UpdatePricingRuleOperationInput.add_member(:modifier_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: 'ModifierPercentage', traits: {"smithy.api#documentation" => "<p>\n      The new modifier to show pricing plan rates as a percentage.\n    </p>"}))
    UpdatePricingRuleOperationInput.add_member(:tiering, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTieringInput, location_name: 'Tiering', traits: {"smithy.api#documentation" => "<p>\n      The set of tiering configurations for the pricing rule.\n    </p>"}))
    UpdatePricingRuleOperationInput.type = Types::UpdatePricingRuleOperationInput
    UpdatePricingRuleOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the successfully updated pricing rule. </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n      The new name of the pricing rule. The name must be unique to each pricing rule.\n    </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n      The new description for the pricing rule.\n    </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleScope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p> The scope of pricing rule that indicates if it's globally applicable, or it's\n      service-specific. </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PricingRuleType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\n      The new pricing rule type.\n    </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:modifier_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: ModifierPercentage, location_name: 'ModifierPercentage', traits: {"smithy.api#documentation" => "<p>\n      The new modifier to show pricing plan rates as a percentage.\n    </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>\n      If the <code>Scope</code> attribute is set to <code>SERVICE</code>, the attribute indicates which service the <code>PricingRule</code> is applicable for.\n    </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:associated_pricing_plan_count, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfPricingPlansAssociatedWith, location_name: 'AssociatedPricingPlanCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n      The pricing plans count that this pricing rule is associated with.\n    </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'LastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n      The most recent time the pricing rule was modified.\n    </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:billing_entity, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingEntity, location_name: 'BillingEntity', traits: {"smithy.api#documentation" => "<p>\n      The seller of services provided by Amazon Web Services, their affiliates, or third-party providers selling services via Amazon Web Services Marketplace.\n    </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:tiering, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTieringInput, location_name: 'Tiering', traits: {"smithy.api#documentation" => "<p>\n      The set of tiering configurations for the pricing rule.\n    </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:usage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: 'UsageType', traits: {"smithy.api#documentation" => "<p>Usage type is the unit that each service uses to measure the usage of a specific type of resource.</p>\n         <p>If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which usage type the <code>PricingRule</code> is modifying. For example, <code>USW2-BoxUsage:m2.2xlarge</code> describes an <code>M2 High Memory Double Extra Large</code> instance in the US West (Oregon) Region. \n    </p>"}))
    UpdatePricingRuleOperationOutput.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>Operation refers to the specific Amazon Web Services covered by this line item. This describes the specific usage of the line item.</p>\n         <p>\n      If the <code>Scope</code> attribute is set to <code>SKU</code>, this attribute indicates which operation the <code>PricingRule</code> is modifying. For example, a value of <code>RunInstances:0202</code> indicates the operation of running an Amazon EC2 instance.</p>"}))
    UpdatePricingRuleOperationOutput.type = Types::UpdatePricingRuleOperationOutput
    UpdateTieringInput.add_member(:free_tier, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFreeTierConfig, location_name: 'FreeTier', traits: {"smithy.api#documentation" => "<p>\n      The possible Amazon Web Services Free Tier configurations.\n    </p>", "smithy.api#required" => {}}))
    UpdateTieringInput.type = Types::UpdateTieringInput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason the request's validation failed.\n    </p>"}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'Fields', traits: {"smithy.api#documentation" => "<p>The fields that caused the error, if applicable.\n    </p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The field name.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message describing why the field failed validation.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)

    AWSBillingConductor = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.billingconductor#AWSBillingConductor"
      service.name = "AWSBillingConductor"
      service.version = "2021-07-30"
      service.traits = {"aws.api#service" => {"sdkId" => "billingconductor", "arnNamespace" => "billingconductor"}, "aws.auth#sigv4" => {"name" => "billingconductor"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "String", "documentation" => "Filters access based on the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["X-Api-Key"]}, "smithy.api#title" => "AWSBillingConductor"}
      service.add_operation(:associate_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#AssociateAccounts"
        operation.name = "AssociateAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAccountsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAccountsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/associate-accounts", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_pricing_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#AssociatePricingRules"
        operation.name = "AssociatePricingRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePricingRulesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePricingRulesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/associate-pricing-rules", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_associate_resources_to_custom_line_item, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#BatchAssociateResourcesToCustomLineItem"
        operation.name = "BatchAssociateResourcesToCustomLineItem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateResourcesToCustomLineItemOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateResourcesToCustomLineItemOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/batch-associate-resources-to-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_disassociate_resources_from_custom_line_item, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#BatchDisassociateResourcesFromCustomLineItem"
        operation.name = "BatchDisassociateResourcesFromCustomLineItem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateResourcesFromCustomLineItemOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateResourcesFromCustomLineItemOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/batch-disassociate-resources-from-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_billing_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreateBillingGroup"
        operation.name = "CreateBillingGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillingGroupOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillingGroupOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-billing-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_custom_line_item, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreateCustomLineItem"
        operation.name = "CreateCustomLineItem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomLineItemOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomLineItemOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-custom-line-item", "code" => 200}}
      end)
      service.add_operation(:create_pricing_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreatePricingPlan"
        operation.name = "CreatePricingPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePricingPlanOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePricingPlanOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-pricing-plan", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_pricing_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#CreatePricingRule"
        operation.name = "CreatePricingRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePricingRuleOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePricingRuleOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/create-pricing-rule", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_billing_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeleteBillingGroup"
        operation.name = "DeleteBillingGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBillingGroupOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBillingGroupOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-billing-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_custom_line_item, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeleteCustomLineItem"
        operation.name = "DeleteCustomLineItem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomLineItemOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomLineItemOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_pricing_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeletePricingPlan"
        operation.name = "DeletePricingPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePricingPlanOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePricingPlanOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-pricing-plan", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_pricing_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DeletePricingRule"
        operation.name = "DeletePricingRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePricingRuleOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePricingRuleOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-pricing-rule", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DisassociateAccounts"
        operation.name = "DisassociateAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAccountsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAccountsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/disassociate-accounts", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_pricing_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#DisassociatePricingRules"
        operation.name = "DisassociatePricingRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePricingRulesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePricingRulesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/disassociate-pricing-rules", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_billing_group_cost_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#GetBillingGroupCostReport"
        operation.name = "GetBillingGroupCostReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillingGroupCostReportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillingGroupCostReportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-billing-group-cost-report", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetBillingGroupCostReport.new
      end)
      service.add_operation(:list_account_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListAccountAssociations"
        operation.name = "ListAccountAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssociationsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssociationsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-account-associations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccountAssociations.new
      end)
      service.add_operation(:list_billing_group_cost_reports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListBillingGroupCostReports"
        operation.name = "ListBillingGroupCostReports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupCostReportsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupCostReportsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-billing-group-cost-reports", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillingGroupCostReports.new
      end)
      service.add_operation(:list_billing_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListBillingGroups"
        operation.name = "ListBillingGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingGroupsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-billing-groups", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillingGroups.new
      end)
      service.add_operation(:list_custom_line_item_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListCustomLineItemVersions"
        operation.name = "ListCustomLineItemVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemVersionsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-custom-line-item-versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomLineItemVersions.new
      end)
      service.add_operation(:list_custom_line_items, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListCustomLineItems"
        operation.name = "ListCustomLineItems"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomLineItemsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-custom-line-items", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomLineItems.new
      end)
      service.add_operation(:list_pricing_plans, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingPlans"
        operation.name = "ListPricingPlans"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingPlansOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingPlansOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-plans", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingPlans.new
      end)
      service.add_operation(:list_pricing_plans_associated_with_pricing_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingPlansAssociatedWithPricingRule"
        operation.name = "ListPricingPlansAssociatedWithPricingRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingPlansAssociatedWithPricingRuleOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingPlansAssociatedWithPricingRuleOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-plans-associated-with-pricing-rule", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingPlansAssociatedWithPricingRule.new
      end)
      service.add_operation(:list_pricing_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingRules"
        operation.name = "ListPricingRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingRulesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingRulesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-rules", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingRules.new
      end)
      service.add_operation(:list_pricing_rules_associated_to_pricing_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListPricingRulesAssociatedToPricingPlan"
        operation.name = "ListPricingRulesAssociatedToPricingPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingRulesAssociatedToPricingPlanOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPricingRulesAssociatedToPricingPlanOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-pricing-rules-associated-to-pricing-plan", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPricingRulesAssociatedToPricingPlan.new
      end)
      service.add_operation(:list_resources_associated_to_custom_line_item, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListResourcesAssociatedToCustomLineItem"
        operation.name = "ListResourcesAssociatedToCustomLineItem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesAssociatedToCustomLineItemOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-resources-associated-to-custom-line-item", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourcesAssociatedToCustomLineItem.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_billing_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdateBillingGroup"
        operation.name = "UpdateBillingGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillingGroupOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillingGroupOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-billing-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_custom_line_item, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdateCustomLineItem"
        operation.name = "UpdateCustomLineItem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomLineItemOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomLineItemOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-custom-line-item", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_pricing_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdatePricingPlan"
        operation.name = "UpdatePricingPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePricingPlanOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePricingPlanOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/update-pricing-plan", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_pricing_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billingconductor#UpdatePricingRule"
        operation.name = "UpdatePricingRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePricingRuleOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePricingRuleOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/update-pricing-rule", "code" => 200}, "smithy.api#idempotent" => {}}
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
