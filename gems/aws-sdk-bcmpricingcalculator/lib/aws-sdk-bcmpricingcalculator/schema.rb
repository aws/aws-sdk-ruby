# frozen_string_literal: true

# This is generated code!

module Aws::BCMPricingCalculator
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDeniedCode", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AddReservedInstanceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#AddReservedInstanceAction", name: "AddReservedInstanceAction")
    AddSavingsPlanAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#AddSavingsPlanAction", name: "AddSavingsPlanAction")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#Arn", name: "Arn", traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.bcmpricingcalculator#AWSBCMPricingCalculator"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:bcm-pricing-calculator:[-a-z0-9]*:[0-9]{12}:[-a-z0-9/:_]+$"})
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#AvailabilityZone", name: "AvailabilityZone", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[-a-zA-Z0-9\\.\\-_:, \\/()]*$"})
    BatchCreateBillScenarioCommitmentModificationEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioCommitmentModificationEntries", name: "BatchCreateBillScenarioCommitmentModificationEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BatchCreateBillScenarioCommitmentModificationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioCommitmentModificationEntry", name: "BatchCreateBillScenarioCommitmentModificationEntry")
    BatchCreateBillScenarioCommitmentModificationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioCommitmentModificationError", name: "BatchCreateBillScenarioCommitmentModificationError")
    BatchCreateBillScenarioCommitmentModificationErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioCommitmentModificationErrorCode", name: "BatchCreateBillScenarioCommitmentModificationErrorCode")
    BatchCreateBillScenarioCommitmentModificationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioCommitmentModificationErrors", name: "BatchCreateBillScenarioCommitmentModificationErrors")
    BatchCreateBillScenarioCommitmentModificationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioCommitmentModificationItem", name: "BatchCreateBillScenarioCommitmentModificationItem")
    BatchCreateBillScenarioCommitmentModificationItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioCommitmentModificationItems", name: "BatchCreateBillScenarioCommitmentModificationItems")
    BatchCreateBillScenarioCommitmentModificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioCommitmentModificationRequest", name: "BatchCreateBillScenarioCommitmentModificationRequest")
    BatchCreateBillScenarioCommitmentModificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioCommitmentModificationResponse", name: "BatchCreateBillScenarioCommitmentModificationResponse")
    BatchCreateBillScenarioUsageModificationEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioUsageModificationEntries", name: "BatchCreateBillScenarioUsageModificationEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BatchCreateBillScenarioUsageModificationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioUsageModificationEntry", name: "BatchCreateBillScenarioUsageModificationEntry")
    BatchCreateBillScenarioUsageModificationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioUsageModificationError", name: "BatchCreateBillScenarioUsageModificationError")
    BatchCreateBillScenarioUsageModificationErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioUsageModificationErrorCode", name: "BatchCreateBillScenarioUsageModificationErrorCode")
    BatchCreateBillScenarioUsageModificationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioUsageModificationErrors", name: "BatchCreateBillScenarioUsageModificationErrors")
    BatchCreateBillScenarioUsageModificationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioUsageModificationItem", name: "BatchCreateBillScenarioUsageModificationItem")
    BatchCreateBillScenarioUsageModificationItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioUsageModificationItems", name: "BatchCreateBillScenarioUsageModificationItems")
    BatchCreateBillScenarioUsageModificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioUsageModificationRequest", name: "BatchCreateBillScenarioUsageModificationRequest")
    BatchCreateBillScenarioUsageModificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioUsageModificationResponse", name: "BatchCreateBillScenarioUsageModificationResponse")
    BatchCreateWorkloadEstimateUsageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateWorkloadEstimateUsageCode", name: "BatchCreateWorkloadEstimateUsageCode")
    BatchCreateWorkloadEstimateUsageEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateWorkloadEstimateUsageEntries", name: "BatchCreateWorkloadEstimateUsageEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BatchCreateWorkloadEstimateUsageEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateWorkloadEstimateUsageEntry", name: "BatchCreateWorkloadEstimateUsageEntry")
    BatchCreateWorkloadEstimateUsageError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateWorkloadEstimateUsageError", name: "BatchCreateWorkloadEstimateUsageError")
    BatchCreateWorkloadEstimateUsageErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateWorkloadEstimateUsageErrors", name: "BatchCreateWorkloadEstimateUsageErrors")
    BatchCreateWorkloadEstimateUsageItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateWorkloadEstimateUsageItem", name: "BatchCreateWorkloadEstimateUsageItem")
    BatchCreateWorkloadEstimateUsageItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateWorkloadEstimateUsageItems", name: "BatchCreateWorkloadEstimateUsageItems")
    BatchCreateWorkloadEstimateUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateWorkloadEstimateUsageRequest", name: "BatchCreateWorkloadEstimateUsageRequest")
    BatchCreateWorkloadEstimateUsageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchCreateWorkloadEstimateUsageResponse", name: "BatchCreateWorkloadEstimateUsageResponse")
    BatchDeleteBillScenarioCommitmentModificationEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioCommitmentModificationEntries", name: "BatchDeleteBillScenarioCommitmentModificationEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BatchDeleteBillScenarioCommitmentModificationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioCommitmentModificationError", name: "BatchDeleteBillScenarioCommitmentModificationError")
    BatchDeleteBillScenarioCommitmentModificationErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioCommitmentModificationErrorCode", name: "BatchDeleteBillScenarioCommitmentModificationErrorCode")
    BatchDeleteBillScenarioCommitmentModificationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioCommitmentModificationErrors", name: "BatchDeleteBillScenarioCommitmentModificationErrors")
    BatchDeleteBillScenarioCommitmentModificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioCommitmentModificationRequest", name: "BatchDeleteBillScenarioCommitmentModificationRequest")
    BatchDeleteBillScenarioCommitmentModificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioCommitmentModificationResponse", name: "BatchDeleteBillScenarioCommitmentModificationResponse")
    BatchDeleteBillScenarioUsageModificationEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioUsageModificationEntries", name: "BatchDeleteBillScenarioUsageModificationEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BatchDeleteBillScenarioUsageModificationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioUsageModificationError", name: "BatchDeleteBillScenarioUsageModificationError")
    BatchDeleteBillScenarioUsageModificationErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioUsageModificationErrorCode", name: "BatchDeleteBillScenarioUsageModificationErrorCode")
    BatchDeleteBillScenarioUsageModificationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioUsageModificationErrors", name: "BatchDeleteBillScenarioUsageModificationErrors")
    BatchDeleteBillScenarioUsageModificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioUsageModificationRequest", name: "BatchDeleteBillScenarioUsageModificationRequest")
    BatchDeleteBillScenarioUsageModificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioUsageModificationResponse", name: "BatchDeleteBillScenarioUsageModificationResponse")
    BatchDeleteWorkloadEstimateUsageEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteWorkloadEstimateUsageEntries", name: "BatchDeleteWorkloadEstimateUsageEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BatchDeleteWorkloadEstimateUsageError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteWorkloadEstimateUsageError", name: "BatchDeleteWorkloadEstimateUsageError")
    BatchDeleteWorkloadEstimateUsageErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteWorkloadEstimateUsageErrors", name: "BatchDeleteWorkloadEstimateUsageErrors")
    BatchDeleteWorkloadEstimateUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteWorkloadEstimateUsageRequest", name: "BatchDeleteWorkloadEstimateUsageRequest")
    BatchDeleteWorkloadEstimateUsageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchDeleteWorkloadEstimateUsageResponse", name: "BatchDeleteWorkloadEstimateUsageResponse")
    BatchUpdateBillScenarioCommitmentModificationEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioCommitmentModificationEntries", name: "BatchUpdateBillScenarioCommitmentModificationEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BatchUpdateBillScenarioCommitmentModificationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioCommitmentModificationEntry", name: "BatchUpdateBillScenarioCommitmentModificationEntry")
    BatchUpdateBillScenarioCommitmentModificationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioCommitmentModificationError", name: "BatchUpdateBillScenarioCommitmentModificationError")
    BatchUpdateBillScenarioCommitmentModificationErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioCommitmentModificationErrorCode", name: "BatchUpdateBillScenarioCommitmentModificationErrorCode")
    BatchUpdateBillScenarioCommitmentModificationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioCommitmentModificationErrors", name: "BatchUpdateBillScenarioCommitmentModificationErrors")
    BatchUpdateBillScenarioCommitmentModificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioCommitmentModificationRequest", name: "BatchUpdateBillScenarioCommitmentModificationRequest")
    BatchUpdateBillScenarioCommitmentModificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioCommitmentModificationResponse", name: "BatchUpdateBillScenarioCommitmentModificationResponse")
    BatchUpdateBillScenarioUsageModificationEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioUsageModificationEntries", name: "BatchUpdateBillScenarioUsageModificationEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BatchUpdateBillScenarioUsageModificationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioUsageModificationEntry", name: "BatchUpdateBillScenarioUsageModificationEntry")
    BatchUpdateBillScenarioUsageModificationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioUsageModificationError", name: "BatchUpdateBillScenarioUsageModificationError")
    BatchUpdateBillScenarioUsageModificationErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioUsageModificationErrorCode", name: "BatchUpdateBillScenarioUsageModificationErrorCode")
    BatchUpdateBillScenarioUsageModificationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioUsageModificationErrors", name: "BatchUpdateBillScenarioUsageModificationErrors")
    BatchUpdateBillScenarioUsageModificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioUsageModificationRequest", name: "BatchUpdateBillScenarioUsageModificationRequest")
    BatchUpdateBillScenarioUsageModificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioUsageModificationResponse", name: "BatchUpdateBillScenarioUsageModificationResponse")
    BatchUpdateWorkloadEstimateUsageEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateWorkloadEstimateUsageEntries", name: "BatchUpdateWorkloadEstimateUsageEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BatchUpdateWorkloadEstimateUsageEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateWorkloadEstimateUsageEntry", name: "BatchUpdateWorkloadEstimateUsageEntry")
    BatchUpdateWorkloadEstimateUsageError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateWorkloadEstimateUsageError", name: "BatchUpdateWorkloadEstimateUsageError")
    BatchUpdateWorkloadEstimateUsageErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateWorkloadEstimateUsageErrors", name: "BatchUpdateWorkloadEstimateUsageErrors")
    BatchUpdateWorkloadEstimateUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateWorkloadEstimateUsageRequest", name: "BatchUpdateWorkloadEstimateUsageRequest")
    BatchUpdateWorkloadEstimateUsageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BatchUpdateWorkloadEstimateUsageResponse", name: "BatchUpdateWorkloadEstimateUsageResponse")
    BillEstimateCommitmentSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateCommitmentSummaries", name: "BillEstimateCommitmentSummaries")
    BillEstimateCommitmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateCommitmentSummary", name: "BillEstimateCommitmentSummary")
    BillEstimateCostSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateCostSummary", name: "BillEstimateCostSummary")
    BillEstimateInputCommitmentModificationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateInputCommitmentModificationSummaries", name: "BillEstimateInputCommitmentModificationSummaries")
    BillEstimateInputCommitmentModificationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateInputCommitmentModificationSummary", name: "BillEstimateInputCommitmentModificationSummary")
    BillEstimateInputUsageModificationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateInputUsageModificationSummaries", name: "BillEstimateInputUsageModificationSummaries")
    BillEstimateInputUsageModificationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateInputUsageModificationSummary", name: "BillEstimateInputUsageModificationSummary")
    BillEstimateLineItemSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateLineItemSummaries", name: "BillEstimateLineItemSummaries")
    BillEstimateLineItemSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateLineItemSummary", name: "BillEstimateLineItemSummary")
    BillEstimateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateName", name: "BillEstimateName", traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    BillEstimateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateStatus", name: "BillEstimateStatus")
    BillEstimateSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateSummaries", name: "BillEstimateSummaries")
    BillEstimateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BillEstimateSummary", name: "BillEstimateSummary")
    BillInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BillInterval", name: "BillInterval")
    BillScenarioCommitmentModificationAction = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bcmpricingcalculator#BillScenarioCommitmentModificationAction", name: "BillScenarioCommitmentModificationAction")
    BillScenarioCommitmentModificationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BillScenarioCommitmentModificationItem", name: "BillScenarioCommitmentModificationItem")
    BillScenarioCommitmentModificationItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BillScenarioCommitmentModificationItems", name: "BillScenarioCommitmentModificationItems")
    BillScenarioName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#BillScenarioName", name: "BillScenarioName", traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    BillScenarioStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#BillScenarioStatus", name: "BillScenarioStatus")
    BillScenarioSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BillScenarioSummaries", name: "BillScenarioSummaries")
    BillScenarioSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BillScenarioSummary", name: "BillScenarioSummary")
    BillScenarioUsageModificationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#BillScenarioUsageModificationItem", name: "BillScenarioUsageModificationItem")
    BillScenarioUsageModificationItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#BillScenarioUsageModificationItems", name: "BillScenarioUsageModificationItems")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\u0021-\\u007E]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ConflictException", name: "ConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictCode", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CostAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#CostAmount", name: "CostAmount")
    CostDifference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#CostDifference", name: "CostDifference")
    CreateBillEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#CreateBillEstimateRequest", name: "CreateBillEstimateRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bcmpricingcalculator#BillScenario"}]})
    CreateBillEstimateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#CreateBillEstimateResponse", name: "CreateBillEstimateResponse")
    CreateBillScenarioRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#CreateBillScenarioRequest", name: "CreateBillScenarioRequest")
    CreateBillScenarioResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#CreateBillScenarioResponse", name: "CreateBillScenarioResponse")
    CreateWorkloadEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#CreateWorkloadEstimateRequest", name: "CreateWorkloadEstimateRequest")
    CreateWorkloadEstimateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#CreateWorkloadEstimateResponse", name: "CreateWorkloadEstimateResponse")
    CurrencyCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#CurrencyCode", name: "CurrencyCode")
    DataUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#DataUnavailableException", name: "DataUnavailableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteBillEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#DeleteBillEstimateRequest", name: "DeleteBillEstimateRequest")
    DeleteBillEstimateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#DeleteBillEstimateResponse", name: "DeleteBillEstimateResponse")
    DeleteBillScenarioRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#DeleteBillScenarioRequest", name: "DeleteBillScenarioRequest")
    DeleteBillScenarioResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#DeleteBillScenarioResponse", name: "DeleteBillScenarioResponse")
    DeleteWorkloadEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#DeleteWorkloadEstimateRequest", name: "DeleteWorkloadEstimateRequest")
    DeleteWorkloadEstimateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#DeleteWorkloadEstimateResponse", name: "DeleteWorkloadEstimateResponse")
    Expression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#Expression", name: "Expression")
    ExpressionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ExpressionFilter", name: "ExpressionFilter")
    ExpressionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ExpressionList", name: "ExpressionList")
    FilterTimestamp = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#FilterTimestamp", name: "FilterTimestamp")
    GetBillEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#GetBillEstimateRequest", name: "GetBillEstimateRequest")
    GetBillEstimateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#GetBillEstimateResponse", name: "GetBillEstimateResponse")
    GetBillScenarioRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#GetBillScenarioRequest", name: "GetBillScenarioRequest")
    GetBillScenarioResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#GetBillScenarioResponse", name: "GetBillScenarioResponse")
    GetPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#GetPreferencesRequest", name: "GetPreferencesRequest")
    GetPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#GetPreferencesResponse", name: "GetPreferencesResponse")
    GetWorkloadEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#GetWorkloadEstimateRequest", name: "GetWorkloadEstimateRequest")
    GetWorkloadEstimateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#GetWorkloadEstimateResponse", name: "GetWorkloadEstimateResponse")
    HistoricalUsageEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#HistoricalUsageEntity", name: "HistoricalUsageEntity")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#Key", name: "Key", traits: {"smithy.api#length" => {"max" => 10}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"})
    ListBillEstimateCommitmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateCommitmentsRequest", name: "ListBillEstimateCommitmentsRequest")
    ListBillEstimateCommitmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateCommitmentsResponse", name: "ListBillEstimateCommitmentsResponse")
    ListBillEstimateInputCommitmentModificationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateInputCommitmentModificationsRequest", name: "ListBillEstimateInputCommitmentModificationsRequest")
    ListBillEstimateInputCommitmentModificationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateInputCommitmentModificationsResponse", name: "ListBillEstimateInputCommitmentModificationsResponse")
    ListBillEstimateInputUsageModificationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateInputUsageModificationsRequest", name: "ListBillEstimateInputUsageModificationsRequest")
    ListBillEstimateInputUsageModificationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateInputUsageModificationsResponse", name: "ListBillEstimateInputUsageModificationsResponse")
    ListBillEstimateLineItemsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateLineItemsFilter", name: "ListBillEstimateLineItemsFilter")
    ListBillEstimateLineItemsFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateLineItemsFilterName", name: "ListBillEstimateLineItemsFilterName")
    ListBillEstimateLineItemsFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateLineItemsFilterValues", name: "ListBillEstimateLineItemsFilterValues")
    ListBillEstimateLineItemsFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateLineItemsFilters", name: "ListBillEstimateLineItemsFilters")
    ListBillEstimateLineItemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateLineItemsRequest", name: "ListBillEstimateLineItemsRequest")
    ListBillEstimateLineItemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimateLineItemsResponse", name: "ListBillEstimateLineItemsResponse")
    ListBillEstimatesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimatesFilter", name: "ListBillEstimatesFilter")
    ListBillEstimatesFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimatesFilterName", name: "ListBillEstimatesFilterName")
    ListBillEstimatesFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimatesFilterValues", name: "ListBillEstimatesFilterValues")
    ListBillEstimatesFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimatesFilters", name: "ListBillEstimatesFilters")
    ListBillEstimatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimatesRequest", name: "ListBillEstimatesRequest")
    ListBillEstimatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillEstimatesResponse", name: "ListBillEstimatesResponse")
    ListBillScenarioCommitmentModificationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillScenarioCommitmentModificationsRequest", name: "ListBillScenarioCommitmentModificationsRequest")
    ListBillScenarioCommitmentModificationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillScenarioCommitmentModificationsResponse", name: "ListBillScenarioCommitmentModificationsResponse")
    ListBillScenarioUsageModificationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillScenarioUsageModificationsRequest", name: "ListBillScenarioUsageModificationsRequest")
    ListBillScenarioUsageModificationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillScenarioUsageModificationsResponse", name: "ListBillScenarioUsageModificationsResponse")
    ListBillScenariosFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillScenariosFilter", name: "ListBillScenariosFilter")
    ListBillScenariosFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillScenariosFilterName", name: "ListBillScenariosFilterName")
    ListBillScenariosFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillScenariosFilterValues", name: "ListBillScenariosFilterValues")
    ListBillScenariosFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillScenariosFilters", name: "ListBillScenariosFilters")
    ListBillScenariosRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillScenariosRequest", name: "ListBillScenariosRequest")
    ListBillScenariosResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListBillScenariosResponse", name: "ListBillScenariosResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListUsageFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListUsageFilter", name: "ListUsageFilter")
    ListUsageFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#ListUsageFilterName", name: "ListUsageFilterName")
    ListUsageFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ListUsageFilterValues", name: "ListUsageFilterValues")
    ListUsageFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ListUsageFilters", name: "ListUsageFilters")
    ListWorkloadEstimateUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListWorkloadEstimateUsageRequest", name: "ListWorkloadEstimateUsageRequest")
    ListWorkloadEstimateUsageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListWorkloadEstimateUsageResponse", name: "ListWorkloadEstimateUsageResponse")
    ListWorkloadEstimatesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListWorkloadEstimatesFilter", name: "ListWorkloadEstimatesFilter")
    ListWorkloadEstimatesFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#ListWorkloadEstimatesFilterName", name: "ListWorkloadEstimatesFilterName")
    ListWorkloadEstimatesFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ListWorkloadEstimatesFilterValues", name: "ListWorkloadEstimatesFilterValues")
    ListWorkloadEstimatesFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ListWorkloadEstimatesFilters", name: "ListWorkloadEstimatesFilters")
    ListWorkloadEstimatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListWorkloadEstimatesRequest", name: "ListWorkloadEstimatesRequest")
    ListWorkloadEstimatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ListWorkloadEstimatesResponse", name: "ListWorkloadEstimatesResponse")
    MatchOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#MatchOption", name: "MatchOption")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bcmpricingcalculator#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    NegateReservedInstanceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#NegateReservedInstanceAction", name: "NegateReservedInstanceAction")
    NegateSavingsPlanAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#NegateSavingsPlanAction", name: "NegateSavingsPlanAction")
    NextPageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#NextPageToken", name: "NextPageToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    Operation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#Operation", name: "Operation", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[-a-zA-Z0-9\\.\\-_:, \\/()]*$"})
    PurchaseAgreementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#PurchaseAgreementType", name: "PurchaseAgreementType")
    RateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#RateType", name: "RateType")
    RateTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#RateTypes", name: "RateTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ReservedInstanceInstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bcmpricingcalculator#ReservedInstanceInstanceCount", name: "ReservedInstanceInstanceCount", traits: {"smithy.api#range" => {"min" => 1}})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundCode", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#ResourceTagKey", name: "ResourceTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\s:+=@/-]+$"})
    ResourceTagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ResourceTagKeys", name: "ResourceTagKeys", traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#ResourceTagValue", name: "ResourceTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\w\\s:+=@/-]*$"})
    SavingsPlanArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#SavingsPlanArns", name: "SavingsPlanArns")
    SavingsPlanCommitment = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.bcmpricingcalculator#SavingsPlanCommitment", name: "SavingsPlanCommitment", traits: {"smithy.api#range" => {"min" => 0.001, "max" => 1000000}})
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#ServiceCode", name: "ServiceCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[-a-zA-Z0-9\\.\\-_:, \\/()]*$"})
    ServiceCostDifferenceMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bcmpricingcalculator#ServiceCostDifferenceMap", name: "ServiceCostDifferenceMap")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaCode", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#StringList", name: "StringList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#TagResourceResponse", name: "TagResourceResponse")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bcmpricingcalculator#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "ThrottlingCode", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateBillEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UpdateBillEstimateRequest", name: "UpdateBillEstimateRequest")
    UpdateBillEstimateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UpdateBillEstimateResponse", name: "UpdateBillEstimateResponse")
    UpdateBillScenarioRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UpdateBillScenarioRequest", name: "UpdateBillScenarioRequest")
    UpdateBillScenarioResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UpdateBillScenarioResponse", name: "UpdateBillScenarioResponse")
    UpdatePreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UpdatePreferencesRequest", name: "UpdatePreferencesRequest")
    UpdatePreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UpdatePreferencesResponse", name: "UpdatePreferencesResponse")
    UpdateWorkloadEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UpdateWorkloadEstimateRequest", name: "UpdateWorkloadEstimateRequest")
    UpdateWorkloadEstimateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UpdateWorkloadEstimateResponse", name: "UpdateWorkloadEstimateResponse")
    UsageAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UsageAmount", name: "UsageAmount")
    UsageAmounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#UsageAmounts", name: "UsageAmounts")
    UsageGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#UsageGroup", name: "UsageGroup", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    UsageQuantities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#UsageQuantities", name: "UsageQuantities")
    UsageQuantity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UsageQuantity", name: "UsageQuantity")
    UsageQuantityResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#UsageQuantityResult", name: "UsageQuantityResult")
    UsageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#UsageType", name: "UsageType", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[-a-zA-Z0-9\\.\\-_:, \\/()]*$"})
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#Uuid", name: "Uuid", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#ValidationExceptionReason", name: "ValidationExceptionReason")
    WorkloadEstimateCostStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#WorkloadEstimateCostStatus", name: "WorkloadEstimateCostStatus")
    WorkloadEstimateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bcmpricingcalculator#WorkloadEstimateName", name: "WorkloadEstimateName", traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    WorkloadEstimateRateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#WorkloadEstimateRateType", name: "WorkloadEstimateRateType")
    WorkloadEstimateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#WorkloadEstimateStatus", name: "WorkloadEstimateStatus")
    WorkloadEstimateSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#WorkloadEstimateSummaries", name: "WorkloadEstimateSummaries")
    WorkloadEstimateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#WorkloadEstimateSummary", name: "WorkloadEstimateSummary")
    WorkloadEstimateUpdateUsageErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bcmpricingcalculator#WorkloadEstimateUpdateUsageErrorCode", name: "WorkloadEstimateUpdateUsageErrorCode")
    WorkloadEstimateUsageItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#WorkloadEstimateUsageItem", name: "WorkloadEstimateUsageItem")
    WorkloadEstimateUsageItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bcmpricingcalculator#WorkloadEstimateUsageItems", name: "WorkloadEstimateUsageItems")
    WorkloadEstimateUsageMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bcmpricingcalculator#WorkloadEstimateUsageMaxResults", name: "WorkloadEstimateUsageMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 300}})
    WorkloadEstimateUsageQuantity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bcmpricingcalculator#WorkloadEstimateUsageQuantity", name: "WorkloadEstimateUsageQuantity")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AddReservedInstanceAction.add_member(:reserved_instances_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: "reservedInstancesOfferingId"))
    AddReservedInstanceAction.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstanceInstanceCount, location_name: "instanceCount"))
    AddReservedInstanceAction.type = Types::AddReservedInstanceAction
    AddSavingsPlanAction.add_member(:savings_plan_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: "savingsPlanOfferingId"))
    AddSavingsPlanAction.add_member(:commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanCommitment, location_name: "commitment"))
    AddSavingsPlanAction.type = Types::AddSavingsPlanAction
    BatchCreateBillScenarioCommitmentModificationEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationEntry)
    BatchCreateBillScenarioCommitmentModificationEntry.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "key", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioCommitmentModificationEntry.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateBillScenarioCommitmentModificationEntry.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioCommitmentModificationEntry.add_member(:commitment_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationAction, location_name: "commitmentAction", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioCommitmentModificationEntry.type = Types::BatchCreateBillScenarioCommitmentModificationEntry
    BatchCreateBillScenarioCommitmentModificationError.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateBillScenarioCommitmentModificationError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    BatchCreateBillScenarioCommitmentModificationError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationErrorCode, location_name: "errorCode"))
    BatchCreateBillScenarioCommitmentModificationError.type = Types::BatchCreateBillScenarioCommitmentModificationError
    BatchCreateBillScenarioCommitmentModificationErrorCode.add_member(:conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFLICT", traits: {"smithy.api#enumValue" => "CONFLICT"}))
    BatchCreateBillScenarioCommitmentModificationErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    BatchCreateBillScenarioCommitmentModificationErrorCode.add_member(:invalid_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_ACCOUNT", traits: {"smithy.api#enumValue" => "INVALID_ACCOUNT"}))
    BatchCreateBillScenarioCommitmentModificationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationError)
    BatchCreateBillScenarioCommitmentModificationItem.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateBillScenarioCommitmentModificationItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchCreateBillScenarioCommitmentModificationItem.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateBillScenarioCommitmentModificationItem.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BatchCreateBillScenarioCommitmentModificationItem.add_member(:commitment_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationAction, location_name: "commitmentAction"))
    BatchCreateBillScenarioCommitmentModificationItem.type = Types::BatchCreateBillScenarioCommitmentModificationItem
    BatchCreateBillScenarioCommitmentModificationItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationItem)
    BatchCreateBillScenarioCommitmentModificationRequest.add_member(:bill_scenario_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billScenarioId", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioCommitmentModificationRequest.add_member(:commitment_modifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationEntries, location_name: "commitmentModifications", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioCommitmentModificationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    BatchCreateBillScenarioCommitmentModificationRequest.type = Types::BatchCreateBillScenarioCommitmentModificationRequest
    BatchCreateBillScenarioCommitmentModificationResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationItems, location_name: "items"))
    BatchCreateBillScenarioCommitmentModificationResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationErrors, location_name: "errors"))
    BatchCreateBillScenarioCommitmentModificationResponse.type = Types::BatchCreateBillScenarioCommitmentModificationResponse
    BatchCreateBillScenarioUsageModificationEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationEntry)
    BatchCreateBillScenarioUsageModificationEntry.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "usageType", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "key", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:amounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageAmounts, location_name: "amounts"))
    BatchCreateBillScenarioUsageModificationEntry.add_member(:historical_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BatchCreateBillScenarioUsageModificationEntry.type = Types::BatchCreateBillScenarioUsageModificationEntry
    BatchCreateBillScenarioUsageModificationError.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateBillScenarioUsageModificationError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    BatchCreateBillScenarioUsageModificationError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationErrorCode, location_name: "errorCode"))
    BatchCreateBillScenarioUsageModificationError.type = Types::BatchCreateBillScenarioUsageModificationError
    BatchCreateBillScenarioUsageModificationErrorCode.add_member(:bad_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BAD_REQUEST", traits: {"smithy.api#enumValue" => "BAD_REQUEST"}))
    BatchCreateBillScenarioUsageModificationErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    BatchCreateBillScenarioUsageModificationErrorCode.add_member(:conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFLICT", traits: {"smithy.api#enumValue" => "CONFLICT"}))
    BatchCreateBillScenarioUsageModificationErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    BatchCreateBillScenarioUsageModificationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationError)
    BatchCreateBillScenarioUsageModificationItem.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioUsageModificationItem.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "usageType", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioUsageModificationItem.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioUsageModificationItem.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "location"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:quantities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageQuantities, location_name: "quantities"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:historical_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BatchCreateBillScenarioUsageModificationItem.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateBillScenarioUsageModificationItem.type = Types::BatchCreateBillScenarioUsageModificationItem
    BatchCreateBillScenarioUsageModificationItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationItem)
    BatchCreateBillScenarioUsageModificationRequest.add_member(:bill_scenario_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billScenarioId", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioUsageModificationRequest.add_member(:usage_modifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationEntries, location_name: "usageModifications", traits: {"smithy.api#required" => {}}))
    BatchCreateBillScenarioUsageModificationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    BatchCreateBillScenarioUsageModificationRequest.type = Types::BatchCreateBillScenarioUsageModificationRequest
    BatchCreateBillScenarioUsageModificationResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationItems, location_name: "items"))
    BatchCreateBillScenarioUsageModificationResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationErrors, location_name: "errors"))
    BatchCreateBillScenarioUsageModificationResponse.type = Types::BatchCreateBillScenarioUsageModificationResponse
    BatchCreateWorkloadEstimateUsageCode.add_member(:bad_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BAD_REQUEST", traits: {"smithy.api#enumValue" => "BAD_REQUEST"}))
    BatchCreateWorkloadEstimateUsageCode.add_member(:not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    BatchCreateWorkloadEstimateUsageCode.add_member(:conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFLICT", traits: {"smithy.api#enumValue" => "CONFLICT"}))
    BatchCreateWorkloadEstimateUsageCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    BatchCreateWorkloadEstimateUsageEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageEntry)
    BatchCreateWorkloadEstimateUsageEntry.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "usageType", traits: {"smithy.api#required" => {}}))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation", traits: {"smithy.api#required" => {}}))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "key", traits: {"smithy.api#required" => {}}))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId", traits: {"smithy.api#required" => {}}))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "amount", traits: {"smithy.api#required" => {}}))
    BatchCreateWorkloadEstimateUsageEntry.add_member(:historical_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BatchCreateWorkloadEstimateUsageEntry.type = Types::BatchCreateWorkloadEstimateUsageEntry
    BatchCreateWorkloadEstimateUsageError.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateWorkloadEstimateUsageError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageCode, location_name: "errorCode"))
    BatchCreateWorkloadEstimateUsageError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    BatchCreateWorkloadEstimateUsageError.type = Types::BatchCreateWorkloadEstimateUsageError
    BatchCreateWorkloadEstimateUsageErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageError)
    BatchCreateWorkloadEstimateUsageItem.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    BatchCreateWorkloadEstimateUsageItem.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "usageType", traits: {"smithy.api#required" => {}}))
    BatchCreateWorkloadEstimateUsageItem.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation", traits: {"smithy.api#required" => {}}))
    BatchCreateWorkloadEstimateUsageItem.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "location"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateUsageQuantity, location_name: "quantity"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "cost"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateCostStatus, location_name: "status"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:historical_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BatchCreateWorkloadEstimateUsageItem.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    BatchCreateWorkloadEstimateUsageItem.type = Types::BatchCreateWorkloadEstimateUsageItem
    BatchCreateWorkloadEstimateUsageItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageItem)
    BatchCreateWorkloadEstimateUsageRequest.add_member(:workload_estimate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "workloadEstimateId", traits: {"smithy.api#required" => {}}))
    BatchCreateWorkloadEstimateUsageRequest.add_member(:usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageEntries, location_name: "usage", traits: {"smithy.api#required" => {}}))
    BatchCreateWorkloadEstimateUsageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    BatchCreateWorkloadEstimateUsageRequest.type = Types::BatchCreateWorkloadEstimateUsageRequest
    BatchCreateWorkloadEstimateUsageResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageItems, location_name: "items"))
    BatchCreateWorkloadEstimateUsageResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageErrors, location_name: "errors"))
    BatchCreateWorkloadEstimateUsageResponse.type = Types::BatchCreateWorkloadEstimateUsageResponse
    BatchDeleteBillScenarioCommitmentModificationEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId)
    BatchDeleteBillScenarioCommitmentModificationError.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchDeleteBillScenarioCommitmentModificationError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationErrorCode, location_name: "errorCode"))
    BatchDeleteBillScenarioCommitmentModificationError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    BatchDeleteBillScenarioCommitmentModificationError.type = Types::BatchDeleteBillScenarioCommitmentModificationError
    BatchDeleteBillScenarioCommitmentModificationErrorCode.add_member(:bad_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BAD_REQUEST", traits: {"smithy.api#enumValue" => "BAD_REQUEST"}))
    BatchDeleteBillScenarioCommitmentModificationErrorCode.add_member(:conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFLICT", traits: {"smithy.api#enumValue" => "CONFLICT"}))
    BatchDeleteBillScenarioCommitmentModificationErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    BatchDeleteBillScenarioCommitmentModificationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationError)
    BatchDeleteBillScenarioCommitmentModificationRequest.add_member(:bill_scenario_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billScenarioId", traits: {"smithy.api#required" => {}}))
    BatchDeleteBillScenarioCommitmentModificationRequest.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationEntries, location_name: "ids", traits: {"smithy.api#required" => {}}))
    BatchDeleteBillScenarioCommitmentModificationRequest.type = Types::BatchDeleteBillScenarioCommitmentModificationRequest
    BatchDeleteBillScenarioCommitmentModificationResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationErrors, location_name: "errors"))
    BatchDeleteBillScenarioCommitmentModificationResponse.type = Types::BatchDeleteBillScenarioCommitmentModificationResponse
    BatchDeleteBillScenarioUsageModificationEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId)
    BatchDeleteBillScenarioUsageModificationError.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchDeleteBillScenarioUsageModificationError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    BatchDeleteBillScenarioUsageModificationError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationErrorCode, location_name: "errorCode"))
    BatchDeleteBillScenarioUsageModificationError.type = Types::BatchDeleteBillScenarioUsageModificationError
    BatchDeleteBillScenarioUsageModificationErrorCode.add_member(:bad_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BAD_REQUEST", traits: {"smithy.api#enumValue" => "BAD_REQUEST"}))
    BatchDeleteBillScenarioUsageModificationErrorCode.add_member(:conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFLICT", traits: {"smithy.api#enumValue" => "CONFLICT"}))
    BatchDeleteBillScenarioUsageModificationErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    BatchDeleteBillScenarioUsageModificationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationError)
    BatchDeleteBillScenarioUsageModificationRequest.add_member(:bill_scenario_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billScenarioId", traits: {"smithy.api#required" => {}}))
    BatchDeleteBillScenarioUsageModificationRequest.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationEntries, location_name: "ids", traits: {"smithy.api#required" => {}}))
    BatchDeleteBillScenarioUsageModificationRequest.type = Types::BatchDeleteBillScenarioUsageModificationRequest
    BatchDeleteBillScenarioUsageModificationResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationErrors, location_name: "errors"))
    BatchDeleteBillScenarioUsageModificationResponse.type = Types::BatchDeleteBillScenarioUsageModificationResponse
    BatchDeleteWorkloadEstimateUsageEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId)
    BatchDeleteWorkloadEstimateUsageError.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchDeleteWorkloadEstimateUsageError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    BatchDeleteWorkloadEstimateUsageError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateUpdateUsageErrorCode, location_name: "errorCode"))
    BatchDeleteWorkloadEstimateUsageError.type = Types::BatchDeleteWorkloadEstimateUsageError
    BatchDeleteWorkloadEstimateUsageErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteWorkloadEstimateUsageError)
    BatchDeleteWorkloadEstimateUsageRequest.add_member(:workload_estimate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "workloadEstimateId", traits: {"smithy.api#required" => {}}))
    BatchDeleteWorkloadEstimateUsageRequest.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteWorkloadEstimateUsageEntries, location_name: "ids", traits: {"smithy.api#required" => {}}))
    BatchDeleteWorkloadEstimateUsageRequest.type = Types::BatchDeleteWorkloadEstimateUsageRequest
    BatchDeleteWorkloadEstimateUsageResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteWorkloadEstimateUsageErrors, location_name: "errors"))
    BatchDeleteWorkloadEstimateUsageResponse.type = Types::BatchDeleteWorkloadEstimateUsageResponse
    BatchUpdateBillScenarioCommitmentModificationEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationEntry)
    BatchUpdateBillScenarioCommitmentModificationEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    BatchUpdateBillScenarioCommitmentModificationEntry.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchUpdateBillScenarioCommitmentModificationEntry.type = Types::BatchUpdateBillScenarioCommitmentModificationEntry
    BatchUpdateBillScenarioCommitmentModificationError.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchUpdateBillScenarioCommitmentModificationError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationErrorCode, location_name: "errorCode"))
    BatchUpdateBillScenarioCommitmentModificationError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    BatchUpdateBillScenarioCommitmentModificationError.type = Types::BatchUpdateBillScenarioCommitmentModificationError
    BatchUpdateBillScenarioCommitmentModificationErrorCode.add_member(:bad_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BAD_REQUEST", traits: {"smithy.api#enumValue" => "BAD_REQUEST"}))
    BatchUpdateBillScenarioCommitmentModificationErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    BatchUpdateBillScenarioCommitmentModificationErrorCode.add_member(:conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFLICT", traits: {"smithy.api#enumValue" => "CONFLICT"}))
    BatchUpdateBillScenarioCommitmentModificationErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    BatchUpdateBillScenarioCommitmentModificationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationError)
    BatchUpdateBillScenarioCommitmentModificationRequest.add_member(:bill_scenario_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billScenarioId", traits: {"smithy.api#required" => {}}))
    BatchUpdateBillScenarioCommitmentModificationRequest.add_member(:commitment_modifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationEntries, location_name: "commitmentModifications", traits: {"smithy.api#required" => {}}))
    BatchUpdateBillScenarioCommitmentModificationRequest.type = Types::BatchUpdateBillScenarioCommitmentModificationRequest
    BatchUpdateBillScenarioCommitmentModificationResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationItems, location_name: "items"))
    BatchUpdateBillScenarioCommitmentModificationResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationErrors, location_name: "errors"))
    BatchUpdateBillScenarioCommitmentModificationResponse.type = Types::BatchUpdateBillScenarioCommitmentModificationResponse
    BatchUpdateBillScenarioUsageModificationEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationEntry)
    BatchUpdateBillScenarioUsageModificationEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    BatchUpdateBillScenarioUsageModificationEntry.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchUpdateBillScenarioUsageModificationEntry.add_member(:amounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageAmounts, location_name: "amounts"))
    BatchUpdateBillScenarioUsageModificationEntry.type = Types::BatchUpdateBillScenarioUsageModificationEntry
    BatchUpdateBillScenarioUsageModificationError.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchUpdateBillScenarioUsageModificationError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    BatchUpdateBillScenarioUsageModificationError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationErrorCode, location_name: "errorCode"))
    BatchUpdateBillScenarioUsageModificationError.type = Types::BatchUpdateBillScenarioUsageModificationError
    BatchUpdateBillScenarioUsageModificationErrorCode.add_member(:bad_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BAD_REQUEST", traits: {"smithy.api#enumValue" => "BAD_REQUEST"}))
    BatchUpdateBillScenarioUsageModificationErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    BatchUpdateBillScenarioUsageModificationErrorCode.add_member(:conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFLICT", traits: {"smithy.api#enumValue" => "CONFLICT"}))
    BatchUpdateBillScenarioUsageModificationErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    BatchUpdateBillScenarioUsageModificationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationError)
    BatchUpdateBillScenarioUsageModificationRequest.add_member(:bill_scenario_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billScenarioId", traits: {"smithy.api#required" => {}}))
    BatchUpdateBillScenarioUsageModificationRequest.add_member(:usage_modifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationEntries, location_name: "usageModifications", traits: {"smithy.api#required" => {}}))
    BatchUpdateBillScenarioUsageModificationRequest.type = Types::BatchUpdateBillScenarioUsageModificationRequest
    BatchUpdateBillScenarioUsageModificationResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioUsageModificationItems, location_name: "items"))
    BatchUpdateBillScenarioUsageModificationResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationErrors, location_name: "errors"))
    BatchUpdateBillScenarioUsageModificationResponse.type = Types::BatchUpdateBillScenarioUsageModificationResponse
    BatchUpdateWorkloadEstimateUsageEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageEntry)
    BatchUpdateWorkloadEstimateUsageEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    BatchUpdateWorkloadEstimateUsageEntry.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BatchUpdateWorkloadEstimateUsageEntry.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "amount"))
    BatchUpdateWorkloadEstimateUsageEntry.type = Types::BatchUpdateWorkloadEstimateUsageEntry
    BatchUpdateWorkloadEstimateUsageError.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchUpdateWorkloadEstimateUsageError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    BatchUpdateWorkloadEstimateUsageError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateUpdateUsageErrorCode, location_name: "errorCode"))
    BatchUpdateWorkloadEstimateUsageError.type = Types::BatchUpdateWorkloadEstimateUsageError
    BatchUpdateWorkloadEstimateUsageErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageError)
    BatchUpdateWorkloadEstimateUsageRequest.add_member(:workload_estimate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "workloadEstimateId", traits: {"smithy.api#required" => {}}))
    BatchUpdateWorkloadEstimateUsageRequest.add_member(:usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageEntries, location_name: "usage", traits: {"smithy.api#required" => {}}))
    BatchUpdateWorkloadEstimateUsageRequest.type = Types::BatchUpdateWorkloadEstimateUsageRequest
    BatchUpdateWorkloadEstimateUsageResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateUsageItems, location_name: "items"))
    BatchUpdateWorkloadEstimateUsageResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageErrors, location_name: "errors"))
    BatchUpdateWorkloadEstimateUsageResponse.type = Types::BatchUpdateWorkloadEstimateUsageResponse
    BillEstimateCommitmentSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateCommitmentSummary)
    BillEstimateCommitmentSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillEstimateCommitmentSummary.add_member(:purchase_agreement_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseAgreementType, location_name: "purchaseAgreementType"))
    BillEstimateCommitmentSummary.add_member(:offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: "offeringId"))
    BillEstimateCommitmentSummary.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillEstimateCommitmentSummary.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "region"))
    BillEstimateCommitmentSummary.add_member(:term_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "termLength"))
    BillEstimateCommitmentSummary.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "paymentOption"))
    BillEstimateCommitmentSummary.add_member(:upfront_payment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAmount, location_name: "upfrontPayment"))
    BillEstimateCommitmentSummary.add_member(:monthly_payment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAmount, location_name: "monthlyPayment"))
    BillEstimateCommitmentSummary.type = Types::BillEstimateCommitmentSummary
    BillEstimateCostSummary.add_member(:total_cost_difference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostDifference, location_name: "totalCostDifference"))
    BillEstimateCostSummary.add_member(:service_cost_differences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCostDifferenceMap, location_name: "serviceCostDifferences"))
    BillEstimateCostSummary.type = Types::BillEstimateCostSummary
    BillEstimateInputCommitmentModificationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateInputCommitmentModificationSummary)
    BillEstimateInputCommitmentModificationSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillEstimateInputCommitmentModificationSummary.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BillEstimateInputCommitmentModificationSummary.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillEstimateInputCommitmentModificationSummary.add_member(:commitment_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationAction, location_name: "commitmentAction"))
    BillEstimateInputCommitmentModificationSummary.type = Types::BillEstimateInputCommitmentModificationSummary
    BillEstimateInputUsageModificationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateInputUsageModificationSummary)
    BillEstimateInputUsageModificationSummary.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    BillEstimateInputUsageModificationSummary.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "usageType", traits: {"smithy.api#required" => {}}))
    BillEstimateInputUsageModificationSummary.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation", traits: {"smithy.api#required" => {}}))
    BillEstimateInputUsageModificationSummary.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "location"))
    BillEstimateInputUsageModificationSummary.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    BillEstimateInputUsageModificationSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillEstimateInputUsageModificationSummary.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BillEstimateInputUsageModificationSummary.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillEstimateInputUsageModificationSummary.add_member(:quantities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageQuantities, location_name: "quantities"))
    BillEstimateInputUsageModificationSummary.add_member(:historical_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BillEstimateInputUsageModificationSummary.type = Types::BillEstimateInputUsageModificationSummary
    BillEstimateLineItemSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateLineItemSummary)
    BillEstimateLineItemSummary.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    BillEstimateLineItemSummary.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "usageType", traits: {"smithy.api#required" => {}}))
    BillEstimateLineItemSummary.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation", traits: {"smithy.api#required" => {}}))
    BillEstimateLineItemSummary.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "location"))
    BillEstimateLineItemSummary.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    BillEstimateLineItemSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillEstimateLineItemSummary.add_member(:line_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "lineItemId"))
    BillEstimateLineItemSummary.add_member(:line_item_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "lineItemType"))
    BillEstimateLineItemSummary.add_member(:payer_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "payerAccountId"))
    BillEstimateLineItemSummary.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillEstimateLineItemSummary.add_member(:estimated_usage_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageQuantityResult, location_name: "estimatedUsageQuantity"))
    BillEstimateLineItemSummary.add_member(:estimated_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAmount, location_name: "estimatedCost"))
    BillEstimateLineItemSummary.add_member(:historical_usage_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageQuantityResult, location_name: "historicalUsageQuantity"))
    BillEstimateLineItemSummary.add_member(:historical_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAmount, location_name: "historicalCost"))
    BillEstimateLineItemSummary.add_member(:savings_plan_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanArns, location_name: "savingsPlanArns"))
    BillEstimateLineItemSummary.type = Types::BillEstimateLineItemSummary
    BillEstimateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BillEstimateStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    BillEstimateStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BillEstimateSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateSummary)
    BillEstimateSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billEstimateId"}))
    BillEstimateSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateName, location_name: "name"))
    BillEstimateSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateStatus, location_name: "status"))
    BillEstimateSummary.add_member(:bill_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    BillEstimateSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    BillEstimateSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    BillEstimateSummary.type = Types::BillEstimateSummary
    BillInterval.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "start"))
    BillInterval.add_member(:end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "end"))
    BillInterval.type = Types::BillInterval
    BillScenarioCommitmentModificationAction.add_member(:add_reserved_instance_action, Types::BillScenarioCommitmentModificationAction::AddReservedInstanceAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddReservedInstanceAction, location_name: "addReservedInstanceAction"))
    BillScenarioCommitmentModificationAction.add_member(:add_savings_plan_action, Types::BillScenarioCommitmentModificationAction::AddSavingsPlanAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddSavingsPlanAction, location_name: "addSavingsPlanAction"))
    BillScenarioCommitmentModificationAction.add_member(:negate_reserved_instance_action, Types::BillScenarioCommitmentModificationAction::NegateReservedInstanceAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NegateReservedInstanceAction, location_name: "negateReservedInstanceAction"))
    BillScenarioCommitmentModificationAction.add_member(:negate_savings_plan_action, Types::BillScenarioCommitmentModificationAction::NegateSavingsPlanAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NegateSavingsPlanAction, location_name: "negateSavingsPlanAction"))
    BillScenarioCommitmentModificationAction.add_member(:unknown, Types::BillScenarioCommitmentModificationAction::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    BillScenarioCommitmentModificationAction.type = Types::BillScenarioCommitmentModificationAction
    BillScenarioCommitmentModificationItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillScenarioCommitmentModificationItem.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillScenarioCommitmentModificationItem.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BillScenarioCommitmentModificationItem.add_member(:commitment_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationAction, location_name: "commitmentAction"))
    BillScenarioCommitmentModificationItem.type = Types::BillScenarioCommitmentModificationItem
    BillScenarioCommitmentModificationItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationItem)
    BillScenarioStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    BillScenarioStatus.add_member(:locked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCKED", traits: {"smithy.api#enumValue" => "LOCKED"}))
    BillScenarioStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BillScenarioStatus.add_member(:stale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STALE", traits: {"smithy.api#enumValue" => "STALE"}))
    BillScenarioSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioSummary)
    BillScenarioSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billScenarioId"}))
    BillScenarioSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioName, location_name: "name"))
    BillScenarioSummary.add_member(:bill_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    BillScenarioSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioStatus, location_name: "status"))
    BillScenarioSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    BillScenarioSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    BillScenarioSummary.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    BillScenarioSummary.type = Types::BillScenarioSummary
    BillScenarioUsageModificationItem.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    BillScenarioUsageModificationItem.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "usageType", traits: {"smithy.api#required" => {}}))
    BillScenarioUsageModificationItem.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation", traits: {"smithy.api#required" => {}}))
    BillScenarioUsageModificationItem.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "location"))
    BillScenarioUsageModificationItem.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    BillScenarioUsageModificationItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BillScenarioUsageModificationItem.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    BillScenarioUsageModificationItem.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    BillScenarioUsageModificationItem.add_member(:quantities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageQuantities, location_name: "quantities"))
    BillScenarioUsageModificationItem.add_member(:historical_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    BillScenarioUsageModificationItem.type = Types::BillScenarioUsageModificationItem
    BillScenarioUsageModificationItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioUsageModificationItem)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CostAmount.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "amount"))
    CostAmount.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    CostAmount.type = Types::CostAmount
    CostDifference.add_member(:historical_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAmount, location_name: "historicalCost"))
    CostDifference.add_member(:estimated_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAmount, location_name: "estimatedCost"))
    CostDifference.type = Types::CostDifference
    CreateBillEstimateRequest.add_member(:bill_scenario_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billScenarioId", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateBillEstimateRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateBillEstimateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    CreateBillEstimateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateBillEstimateRequest.type = Types::CreateBillEstimateRequest
    CreateBillEstimateResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billEstimateId"}))
    CreateBillEstimateResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateName, location_name: "name"))
    CreateBillEstimateResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateStatus, location_name: "status"))
    CreateBillEstimateResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    CreateBillEstimateResponse.add_member(:bill_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    CreateBillEstimateResponse.add_member(:cost_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateCostSummary, location_name: "costSummary"))
    CreateBillEstimateResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    CreateBillEstimateResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    CreateBillEstimateResponse.type = Types::CreateBillEstimateResponse
    CreateBillScenarioRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateBillScenarioRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    CreateBillScenarioRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateBillScenarioRequest.type = Types::CreateBillScenarioRequest
    CreateBillScenarioResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billScenarioId"}))
    CreateBillScenarioResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioName, location_name: "name"))
    CreateBillScenarioResponse.add_member(:bill_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    CreateBillScenarioResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioStatus, location_name: "status"))
    CreateBillScenarioResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    CreateBillScenarioResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    CreateBillScenarioResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    CreateBillScenarioResponse.type = Types::CreateBillScenarioResponse
    CreateWorkloadEstimateRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkloadEstimateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    CreateWorkloadEstimateRequest.add_member(:rate_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateRateType, location_name: "rateType", traits: {"smithy.api#notProperty" => {}}))
    CreateWorkloadEstimateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateWorkloadEstimateRequest.type = Types::CreateWorkloadEstimateRequest
    CreateWorkloadEstimateResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workloadEstimateId"}))
    CreateWorkloadEstimateResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateName, location_name: "name"))
    CreateWorkloadEstimateResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    CreateWorkloadEstimateResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    CreateWorkloadEstimateResponse.add_member(:rate_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateRateType, location_name: "rateType"))
    CreateWorkloadEstimateResponse.add_member(:rate_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "rateTimestamp"))
    CreateWorkloadEstimateResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateStatus, location_name: "status"))
    CreateWorkloadEstimateResponse.add_member(:total_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "totalCost"))
    CreateWorkloadEstimateResponse.add_member(:cost_currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "costCurrency"))
    CreateWorkloadEstimateResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    CreateWorkloadEstimateResponse.type = Types::CreateWorkloadEstimateResponse
    CurrencyCode.add_member(:usd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USD", traits: {"smithy.api#enumValue" => "USD"}))
    DataUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    DataUnavailableException.type = Types::DataUnavailableException
    DeleteBillEstimateRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billEstimateId"}))
    DeleteBillEstimateRequest.type = Types::DeleteBillEstimateRequest
    DeleteBillEstimateResponse.type = Types::DeleteBillEstimateResponse
    DeleteBillScenarioRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billScenarioId"}))
    DeleteBillScenarioRequest.type = Types::DeleteBillScenarioRequest
    DeleteBillScenarioResponse.type = Types::DeleteBillScenarioResponse
    DeleteWorkloadEstimateRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workloadEstimateId"}))
    DeleteWorkloadEstimateRequest.type = Types::DeleteWorkloadEstimateRequest
    DeleteWorkloadEstimateResponse.type = Types::DeleteWorkloadEstimateResponse
    Expression.add_member(:and, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionList, location_name: "and"))
    Expression.add_member(:or, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionList, location_name: "or"))
    Expression.add_member(:not, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: "not"))
    Expression.add_member(:cost_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionFilter, location_name: "costCategories"))
    Expression.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionFilter, location_name: "dimensions"))
    Expression.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionFilter, location_name: "tags"))
    Expression.type = Types::Expression
    ExpressionFilter.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "key"))
    ExpressionFilter.add_member(:match_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "matchOptions"))
    ExpressionFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "values"))
    ExpressionFilter.type = Types::ExpressionFilter
    ExpressionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression)
    FilterTimestamp.add_member(:after_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "afterTimestamp"))
    FilterTimestamp.add_member(:before_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "beforeTimestamp"))
    FilterTimestamp.type = Types::FilterTimestamp
    GetBillEstimateRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billEstimateId"}))
    GetBillEstimateRequest.type = Types::GetBillEstimateRequest
    GetBillEstimateResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billEstimateId"}))
    GetBillEstimateResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateName, location_name: "name"))
    GetBillEstimateResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateStatus, location_name: "status"))
    GetBillEstimateResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    GetBillEstimateResponse.add_member(:bill_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    GetBillEstimateResponse.add_member(:cost_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateCostSummary, location_name: "costSummary"))
    GetBillEstimateResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    GetBillEstimateResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    GetBillEstimateResponse.type = Types::GetBillEstimateResponse
    GetBillScenarioRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billScenarioId"}))
    GetBillScenarioRequest.type = Types::GetBillScenarioRequest
    GetBillScenarioResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billScenarioId"}))
    GetBillScenarioResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioName, location_name: "name"))
    GetBillScenarioResponse.add_member(:bill_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    GetBillScenarioResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioStatus, location_name: "status"))
    GetBillScenarioResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    GetBillScenarioResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    GetBillScenarioResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    GetBillScenarioResponse.type = Types::GetBillScenarioResponse
    GetPreferencesRequest.type = Types::GetPreferencesRequest
    GetPreferencesResponse.add_member(:management_account_rate_type_selections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateTypes, location_name: "managementAccountRateTypeSelections"))
    GetPreferencesResponse.add_member(:member_account_rate_type_selections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateTypes, location_name: "memberAccountRateTypeSelections"))
    GetPreferencesResponse.add_member(:standalone_account_rate_type_selections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateTypes, location_name: "standaloneAccountRateTypeSelections"))
    GetPreferencesResponse.type = Types::GetPreferencesResponse
    GetWorkloadEstimateRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workloadEstimateId"}))
    GetWorkloadEstimateRequest.type = Types::GetWorkloadEstimateRequest
    GetWorkloadEstimateResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workloadEstimateId"}))
    GetWorkloadEstimateResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateName, location_name: "name"))
    GetWorkloadEstimateResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    GetWorkloadEstimateResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    GetWorkloadEstimateResponse.add_member(:rate_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateRateType, location_name: "rateType"))
    GetWorkloadEstimateResponse.add_member(:rate_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "rateTimestamp"))
    GetWorkloadEstimateResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateStatus, location_name: "status"))
    GetWorkloadEstimateResponse.add_member(:total_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "totalCost"))
    GetWorkloadEstimateResponse.add_member(:cost_currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "costCurrency"))
    GetWorkloadEstimateResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    GetWorkloadEstimateResponse.type = Types::GetWorkloadEstimateResponse
    HistoricalUsageEntity.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    HistoricalUsageEntity.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "usageType", traits: {"smithy.api#required" => {}}))
    HistoricalUsageEntity.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation", traits: {"smithy.api#required" => {}}))
    HistoricalUsageEntity.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "location"))
    HistoricalUsageEntity.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId", traits: {"smithy.api#required" => {}}))
    HistoricalUsageEntity.add_member(:bill_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval", traits: {"smithy.api#required" => {}}))
    HistoricalUsageEntity.add_member(:filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: "filterExpression", traits: {"smithy.api#required" => {}}))
    HistoricalUsageEntity.type = Types::HistoricalUsageEntity
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListBillEstimateCommitmentsRequest.add_member(:bill_estimate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billEstimateId", traits: {"smithy.api#required" => {}}))
    ListBillEstimateCommitmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateCommitmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillEstimateCommitmentsRequest.type = Types::ListBillEstimateCommitmentsRequest
    ListBillEstimateCommitmentsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateCommitmentSummaries, location_name: "items"))
    ListBillEstimateCommitmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateCommitmentsResponse.type = Types::ListBillEstimateCommitmentsResponse
    ListBillEstimateInputCommitmentModificationsRequest.add_member(:bill_estimate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billEstimateId", traits: {"smithy.api#required" => {}}))
    ListBillEstimateInputCommitmentModificationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateInputCommitmentModificationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillEstimateInputCommitmentModificationsRequest.type = Types::ListBillEstimateInputCommitmentModificationsRequest
    ListBillEstimateInputCommitmentModificationsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateInputCommitmentModificationSummaries, location_name: "items"))
    ListBillEstimateInputCommitmentModificationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateInputCommitmentModificationsResponse.type = Types::ListBillEstimateInputCommitmentModificationsResponse
    ListBillEstimateInputUsageModificationsRequest.add_member(:bill_estimate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billEstimateId", traits: {"smithy.api#required" => {}}))
    ListBillEstimateInputUsageModificationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageFilters, location_name: "filters"))
    ListBillEstimateInputUsageModificationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateInputUsageModificationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillEstimateInputUsageModificationsRequest.type = Types::ListBillEstimateInputUsageModificationsRequest
    ListBillEstimateInputUsageModificationsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateInputUsageModificationSummaries, location_name: "items"))
    ListBillEstimateInputUsageModificationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateInputUsageModificationsResponse.type = Types::ListBillEstimateInputUsageModificationsResponse
    ListBillEstimateLineItemsFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsFilterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ListBillEstimateLineItemsFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsFilterValues, location_name: "values", traits: {"smithy.api#required" => {}}))
    ListBillEstimateLineItemsFilter.add_member(:match_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOption, location_name: "matchOption"))
    ListBillEstimateLineItemsFilter.type = Types::ListBillEstimateLineItemsFilter
    ListBillEstimateLineItemsFilterName.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USAGE_ACCOUNT_ID", traits: {"smithy.api#enumValue" => "USAGE_ACCOUNT_ID"}))
    ListBillEstimateLineItemsFilterName.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE_CODE", traits: {"smithy.api#enumValue" => "SERVICE_CODE"}))
    ListBillEstimateLineItemsFilterName.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USAGE_TYPE", traits: {"smithy.api#enumValue" => "USAGE_TYPE"}))
    ListBillEstimateLineItemsFilterName.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPERATION", traits: {"smithy.api#enumValue" => "OPERATION"}))
    ListBillEstimateLineItemsFilterName.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION", traits: {"smithy.api#enumValue" => "LOCATION"}))
    ListBillEstimateLineItemsFilterName.add_member(:line_item_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINE_ITEM_TYPE", traits: {"smithy.api#enumValue" => "LINE_ITEM_TYPE"}))
    ListBillEstimateLineItemsFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ListBillEstimateLineItemsFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsFilter)
    ListBillEstimateLineItemsRequest.add_member(:bill_estimate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billEstimateId", traits: {"smithy.api#required" => {}}))
    ListBillEstimateLineItemsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsFilters, location_name: "filters"))
    ListBillEstimateLineItemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateLineItemsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillEstimateLineItemsRequest.type = Types::ListBillEstimateLineItemsRequest
    ListBillEstimateLineItemsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateLineItemSummaries, location_name: "items"))
    ListBillEstimateLineItemsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimateLineItemsResponse.type = Types::ListBillEstimateLineItemsResponse
    ListBillEstimatesFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimatesFilterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ListBillEstimatesFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimatesFilterValues, location_name: "values", traits: {"smithy.api#required" => {}}))
    ListBillEstimatesFilter.add_member(:match_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOption, location_name: "matchOption"))
    ListBillEstimatesFilter.type = Types::ListBillEstimatesFilter
    ListBillEstimatesFilterName.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    ListBillEstimatesFilterName.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    ListBillEstimatesFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ListBillEstimatesFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimatesFilter)
    ListBillEstimatesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimatesFilters, location_name: "filters"))
    ListBillEstimatesRequest.add_member(:created_at_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "createdAtFilter"))
    ListBillEstimatesRequest.add_member(:expires_at_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "expiresAtFilter"))
    ListBillEstimatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillEstimatesRequest.type = Types::ListBillEstimatesRequest
    ListBillEstimatesResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateSummaries, location_name: "items"))
    ListBillEstimatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillEstimatesResponse.type = Types::ListBillEstimatesResponse
    ListBillScenarioCommitmentModificationsRequest.add_member(:bill_scenario_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billScenarioId", traits: {"smithy.api#required" => {}}))
    ListBillScenarioCommitmentModificationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenarioCommitmentModificationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillScenarioCommitmentModificationsRequest.type = Types::ListBillScenarioCommitmentModificationsRequest
    ListBillScenarioCommitmentModificationsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioCommitmentModificationItems, location_name: "items"))
    ListBillScenarioCommitmentModificationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenarioCommitmentModificationsResponse.type = Types::ListBillScenarioCommitmentModificationsResponse
    ListBillScenarioUsageModificationsRequest.add_member(:bill_scenario_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "billScenarioId", traits: {"smithy.api#required" => {}}))
    ListBillScenarioUsageModificationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageFilters, location_name: "filters"))
    ListBillScenarioUsageModificationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenarioUsageModificationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillScenarioUsageModificationsRequest.type = Types::ListBillScenarioUsageModificationsRequest
    ListBillScenarioUsageModificationsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioUsageModificationItems, location_name: "items"))
    ListBillScenarioUsageModificationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenarioUsageModificationsResponse.type = Types::ListBillScenarioUsageModificationsResponse
    ListBillScenariosFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillScenariosFilterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ListBillScenariosFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillScenariosFilterValues, location_name: "values", traits: {"smithy.api#required" => {}}))
    ListBillScenariosFilter.add_member(:match_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOption, location_name: "matchOption"))
    ListBillScenariosFilter.type = Types::ListBillScenariosFilter
    ListBillScenariosFilterName.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    ListBillScenariosFilterName.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    ListBillScenariosFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ListBillScenariosFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillScenariosFilter)
    ListBillScenariosRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillScenariosFilters, location_name: "filters"))
    ListBillScenariosRequest.add_member(:created_at_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "createdAtFilter"))
    ListBillScenariosRequest.add_member(:expires_at_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "expiresAtFilter"))
    ListBillScenariosRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenariosRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBillScenariosRequest.type = Types::ListBillScenariosRequest
    ListBillScenariosResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioSummaries, location_name: "items"))
    ListBillScenariosResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListBillScenariosResponse.type = Types::ListBillScenariosResponse
    ListTagsForResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListUsageFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageFilterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ListUsageFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageFilterValues, location_name: "values", traits: {"smithy.api#required" => {}}))
    ListUsageFilter.add_member(:match_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOption, location_name: "matchOption"))
    ListUsageFilter.type = Types::ListUsageFilter
    ListUsageFilterName.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USAGE_ACCOUNT_ID", traits: {"smithy.api#enumValue" => "USAGE_ACCOUNT_ID"}))
    ListUsageFilterName.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE_CODE", traits: {"smithy.api#enumValue" => "SERVICE_CODE"}))
    ListUsageFilterName.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USAGE_TYPE", traits: {"smithy.api#enumValue" => "USAGE_TYPE"}))
    ListUsageFilterName.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPERATION", traits: {"smithy.api#enumValue" => "OPERATION"}))
    ListUsageFilterName.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION", traits: {"smithy.api#enumValue" => "LOCATION"}))
    ListUsageFilterName.add_member(:usage_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USAGE_GROUP", traits: {"smithy.api#enumValue" => "USAGE_GROUP"}))
    ListUsageFilterName.add_member(:historical_usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HISTORICAL_USAGE_ACCOUNT_ID", traits: {"smithy.api#enumValue" => "HISTORICAL_USAGE_ACCOUNT_ID"}))
    ListUsageFilterName.add_member(:historical_service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HISTORICAL_SERVICE_CODE", traits: {"smithy.api#enumValue" => "HISTORICAL_SERVICE_CODE"}))
    ListUsageFilterName.add_member(:historical_usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HISTORICAL_USAGE_TYPE", traits: {"smithy.api#enumValue" => "HISTORICAL_USAGE_TYPE"}))
    ListUsageFilterName.add_member(:historical_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HISTORICAL_OPERATION", traits: {"smithy.api#enumValue" => "HISTORICAL_OPERATION"}))
    ListUsageFilterName.add_member(:historical_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HISTORICAL_LOCATION", traits: {"smithy.api#enumValue" => "HISTORICAL_LOCATION"}))
    ListUsageFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ListUsageFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageFilter)
    ListWorkloadEstimateUsageRequest.add_member(:workload_estimate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "workloadEstimateId", traits: {"smithy.api#required" => {}}))
    ListWorkloadEstimateUsageRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageFilters, location_name: "filters"))
    ListWorkloadEstimateUsageRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListWorkloadEstimateUsageRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateUsageMaxResults, location_name: "maxResults"))
    ListWorkloadEstimateUsageRequest.type = Types::ListWorkloadEstimateUsageRequest
    ListWorkloadEstimateUsageResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateUsageItems, location_name: "items"))
    ListWorkloadEstimateUsageResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListWorkloadEstimateUsageResponse.type = Types::ListWorkloadEstimateUsageResponse
    ListWorkloadEstimatesFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadEstimatesFilterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ListWorkloadEstimatesFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadEstimatesFilterValues, location_name: "values", traits: {"smithy.api#required" => {}}))
    ListWorkloadEstimatesFilter.add_member(:match_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOption, location_name: "matchOption"))
    ListWorkloadEstimatesFilter.type = Types::ListWorkloadEstimatesFilter
    ListWorkloadEstimatesFilterName.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    ListWorkloadEstimatesFilterName.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    ListWorkloadEstimatesFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ListWorkloadEstimatesFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadEstimatesFilter)
    ListWorkloadEstimatesRequest.add_member(:created_at_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "createdAtFilter"))
    ListWorkloadEstimatesRequest.add_member(:expires_at_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterTimestamp, location_name: "expiresAtFilter"))
    ListWorkloadEstimatesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadEstimatesFilters, location_name: "filters"))
    ListWorkloadEstimatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListWorkloadEstimatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListWorkloadEstimatesRequest.type = Types::ListWorkloadEstimatesRequest
    ListWorkloadEstimatesResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateSummaries, location_name: "items"))
    ListWorkloadEstimatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    ListWorkloadEstimatesResponse.type = Types::ListWorkloadEstimatesResponse
    MatchOption.add_member(:equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    MatchOption.add_member(:starts_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTS_WITH", traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    MatchOption.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    NegateReservedInstanceAction.add_member(:reserved_instances_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: "reservedInstancesId"))
    NegateReservedInstanceAction.type = Types::NegateReservedInstanceAction
    NegateSavingsPlanAction.add_member(:savings_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: "savingsPlanId"))
    NegateSavingsPlanAction.type = Types::NegateSavingsPlanAction
    PurchaseAgreementType.add_member(:savings_plans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAVINGS_PLANS", traits: {"smithy.api#enumValue" => "SAVINGS_PLANS"}))
    PurchaseAgreementType.add_member(:reserved_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESERVED_INSTANCE", traits: {"smithy.api#enumValue" => "RESERVED_INSTANCE"}))
    RateType.add_member(:before_discounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEFORE_DISCOUNTS", traits: {"smithy.api#enumValue" => "BEFORE_DISCOUNTS"}))
    RateType.add_member(:after_discounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "AFTER_DISCOUNTS"}))
    RateType.add_member(:after_discounts_and_commitments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AFTER_DISCOUNTS_AND_COMMITMENTS", traits: {"smithy.api#enumValue" => "AFTER_DISCOUNTS_AND_COMMITMENTS"}))
    RateTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateType)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey)
    SavingsPlanArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ServiceCostDifferenceMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ServiceCostDifferenceMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostDifference)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagValue)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKeys, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBillEstimateRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billEstimateId"}))
    UpdateBillEstimateRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateName, location_name: "name"))
    UpdateBillEstimateRequest.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    UpdateBillEstimateRequest.type = Types::UpdateBillEstimateRequest
    UpdateBillEstimateResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billEstimateId"}))
    UpdateBillEstimateResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateName, location_name: "name"))
    UpdateBillEstimateResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateStatus, location_name: "status"))
    UpdateBillEstimateResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    UpdateBillEstimateResponse.add_member(:bill_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    UpdateBillEstimateResponse.add_member(:cost_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillEstimateCostSummary, location_name: "costSummary"))
    UpdateBillEstimateResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    UpdateBillEstimateResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    UpdateBillEstimateResponse.type = Types::UpdateBillEstimateResponse
    UpdateBillScenarioRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billScenarioId"}))
    UpdateBillScenarioRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioName, location_name: "name"))
    UpdateBillScenarioRequest.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    UpdateBillScenarioRequest.type = Types::UpdateBillScenarioRequest
    UpdateBillScenarioResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "billScenarioId"}))
    UpdateBillScenarioResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioName, location_name: "name"))
    UpdateBillScenarioResponse.add_member(:bill_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillInterval, location_name: "billInterval"))
    UpdateBillScenarioResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillScenarioStatus, location_name: "status"))
    UpdateBillScenarioResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    UpdateBillScenarioResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    UpdateBillScenarioResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    UpdateBillScenarioResponse.type = Types::UpdateBillScenarioResponse
    UpdatePreferencesRequest.add_member(:management_account_rate_type_selections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateTypes, location_name: "managementAccountRateTypeSelections"))
    UpdatePreferencesRequest.add_member(:member_account_rate_type_selections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateTypes, location_name: "memberAccountRateTypeSelections"))
    UpdatePreferencesRequest.add_member(:standalone_account_rate_type_selections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateTypes, location_name: "standaloneAccountRateTypeSelections"))
    UpdatePreferencesRequest.type = Types::UpdatePreferencesRequest
    UpdatePreferencesResponse.add_member(:management_account_rate_type_selections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateTypes, location_name: "managementAccountRateTypeSelections"))
    UpdatePreferencesResponse.add_member(:member_account_rate_type_selections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateTypes, location_name: "memberAccountRateTypeSelections"))
    UpdatePreferencesResponse.add_member(:standalone_account_rate_type_selections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateTypes, location_name: "standaloneAccountRateTypeSelections"))
    UpdatePreferencesResponse.type = Types::UpdatePreferencesResponse
    UpdateWorkloadEstimateRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workloadEstimateId"}))
    UpdateWorkloadEstimateRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateName, location_name: "name"))
    UpdateWorkloadEstimateRequest.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    UpdateWorkloadEstimateRequest.type = Types::UpdateWorkloadEstimateRequest
    UpdateWorkloadEstimateResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workloadEstimateId"}))
    UpdateWorkloadEstimateResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateName, location_name: "name"))
    UpdateWorkloadEstimateResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    UpdateWorkloadEstimateResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    UpdateWorkloadEstimateResponse.add_member(:rate_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateRateType, location_name: "rateType"))
    UpdateWorkloadEstimateResponse.add_member(:rate_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "rateTimestamp"))
    UpdateWorkloadEstimateResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateStatus, location_name: "status"))
    UpdateWorkloadEstimateResponse.add_member(:total_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "totalCost"))
    UpdateWorkloadEstimateResponse.add_member(:cost_currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "costCurrency"))
    UpdateWorkloadEstimateResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    UpdateWorkloadEstimateResponse.type = Types::UpdateWorkloadEstimateResponse
    UsageAmount.add_member(:start_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "startHour", traits: {"smithy.api#required" => {}}))
    UsageAmount.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "amount", traits: {"smithy.api#required" => {}}))
    UsageAmount.type = Types::UsageAmount
    UsageAmounts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageAmount)
    UsageQuantities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageQuantity)
    UsageQuantity.add_member(:start_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "startHour"))
    UsageQuantity.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "unit"))
    UsageQuantity.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "amount"))
    UsageQuantity.type = Types::UsageQuantity
    UsageQuantityResult.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "amount"))
    UsageQuantityResult.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "unit"))
    UsageQuantityResult.type = Types::UsageQuantityResult
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:invalid_request_from_member, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_REQUEST_FROM_MEMBER", traits: {"smithy.api#enumValue" => "invalidRequestFromMember"}))
    ValidationExceptionReason.add_member(:disallowed_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISALLOWED_RATE", traits: {"smithy.api#enumValue" => "disallowedRate"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    WorkloadEstimateCostStatus.add_member(:valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALID", traits: {"smithy.api#enumValue" => "VALID"}))
    WorkloadEstimateCostStatus.add_member(:invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID", traits: {"smithy.api#enumValue" => "INVALID"}))
    WorkloadEstimateCostStatus.add_member(:stale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STALE", traits: {"smithy.api#enumValue" => "STALE"}))
    WorkloadEstimateRateType.add_member(:before_discounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEFORE_DISCOUNTS", traits: {"smithy.api#enumValue" => "BEFORE_DISCOUNTS"}))
    WorkloadEstimateRateType.add_member(:after_discounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "AFTER_DISCOUNTS"}))
    WorkloadEstimateRateType.add_member(:after_discounts_and_commitments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AFTER_DISCOUNTS_AND_COMMITMENTS", traits: {"smithy.api#enumValue" => "AFTER_DISCOUNTS_AND_COMMITMENTS"}))
    WorkloadEstimateStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    WorkloadEstimateStatus.add_member(:valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALID", traits: {"smithy.api#enumValue" => "VALID"}))
    WorkloadEstimateStatus.add_member(:invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID", traits: {"smithy.api#enumValue" => "INVALID"}))
    WorkloadEstimateStatus.add_member(:action_needed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTION_NEEDED", traits: {"smithy.api#enumValue" => "ACTION_NEEDED"}))
    WorkloadEstimateSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateSummary)
    WorkloadEstimateSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workloadEstimateId"}))
    WorkloadEstimateSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateName, location_name: "name"))
    WorkloadEstimateSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    WorkloadEstimateSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expiresAt"))
    WorkloadEstimateSummary.add_member(:rate_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateRateType, location_name: "rateType"))
    WorkloadEstimateSummary.add_member(:rate_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "rateTimestamp"))
    WorkloadEstimateSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateStatus, location_name: "status"))
    WorkloadEstimateSummary.add_member(:total_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "totalCost"))
    WorkloadEstimateSummary.add_member(:cost_currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "costCurrency"))
    WorkloadEstimateSummary.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureMessage"))
    WorkloadEstimateSummary.type = Types::WorkloadEstimateSummary
    WorkloadEstimateUpdateUsageErrorCode.add_member(:bad_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BAD_REQUEST", traits: {"smithy.api#enumValue" => "BAD_REQUEST"}))
    WorkloadEstimateUpdateUsageErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    WorkloadEstimateUpdateUsageErrorCode.add_member(:conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFLICT", traits: {"smithy.api#enumValue" => "CONFLICT"}))
    WorkloadEstimateUpdateUsageErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    WorkloadEstimateUsageItem.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    WorkloadEstimateUsageItem.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: "usageType", traits: {"smithy.api#required" => {}}))
    WorkloadEstimateUsageItem.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation, location_name: "operation", traits: {"smithy.api#required" => {}}))
    WorkloadEstimateUsageItem.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "location"))
    WorkloadEstimateUsageItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    WorkloadEstimateUsageItem.add_member(:usage_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "usageAccountId"))
    WorkloadEstimateUsageItem.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageGroup, location_name: "group"))
    WorkloadEstimateUsageItem.add_member(:quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateUsageQuantity, location_name: "quantity"))
    WorkloadEstimateUsageItem.add_member(:cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "cost"))
    WorkloadEstimateUsageItem.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    WorkloadEstimateUsageItem.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateCostStatus, location_name: "status"))
    WorkloadEstimateUsageItem.add_member(:historical_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HistoricalUsageEntity, location_name: "historicalUsage"))
    WorkloadEstimateUsageItem.type = Types::WorkloadEstimateUsageItem
    WorkloadEstimateUsageItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadEstimateUsageItem)
    WorkloadEstimateUsageQuantity.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "unit"))
    WorkloadEstimateUsageQuantity.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "amount"))
    WorkloadEstimateUsageQuantity.type = Types::WorkloadEstimateUsageQuantity

    AWSBCMPricingCalculator = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bcmpricingcalculator#AWSBCMPricingCalculator"
      service.name = "AWSBCMPricingCalculator"
      service.version = "2024-06-19"
      service.traits = {"aws.api#service" => {"sdkId" => "BCM Pricing Calculator", "arnNamespace" => "bcm-pricing-calculator"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "bcm-pricing-calculator"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.iam#defineConditionKeys" => {"aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Billing and Cost Management Pricing Calculator"}
      service.add_operation(:batch_create_bill_scenario_commitment_modification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioCommitmentModification"
        operation.name = "BatchCreateBillScenarioCommitmentModification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioCommitmentModificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateBillScenarioCommitmentModification", "documentation" => "Grants permission to create new commitments or remove existing commitment from a specified bill scenario"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_create_bill_scenario_usage_modification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#BatchCreateBillScenarioUsageModification"
        operation.name = "BatchCreateBillScenarioUsageModification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateBillScenarioUsageModificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateBillScenarioUsageModification", "documentation" => "Grants permission to create usage in the specified bill scenario"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_create_workload_estimate_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#BatchCreateWorkloadEstimateUsage"
        operation.name = "BatchCreateWorkloadEstimateUsage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateWorkloadEstimateUsageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateWorkloadEstimateUsage", "documentation" => "Grants permission to create usage in the specified workload estimate"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_delete_bill_scenario_commitment_modification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioCommitmentModification"
        operation.name = "BatchDeleteBillScenarioCommitmentModification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioCommitmentModificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteBillScenarioCommitmentModification", "documentation" => "Grants permission to delete newly added commitments from the specified bill scenario"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_delete_bill_scenario_usage_modification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#BatchDeleteBillScenarioUsageModification"
        operation.name = "BatchDeleteBillScenarioUsageModification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBillScenarioUsageModificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteBillScenarioUsageModification", "documentation" => "Grants permission to delete newly added usage from the specified bill scenario"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_delete_workload_estimate_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#BatchDeleteWorkloadEstimateUsage"
        operation.name = "BatchDeleteWorkloadEstimateUsage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteWorkloadEstimateUsageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteWorkloadEstimateUsageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteWorkloadEstimateUsage", "documentation" => "Grants permission to delete newly added usage from the specified workload estimate"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_update_bill_scenario_commitment_modification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioCommitmentModification"
        operation.name = "BatchUpdateBillScenarioCommitmentModification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioCommitmentModificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateBillScenarioCommitmentModification", "documentation" => "Grants permission to update commitment group of commitments in the specified bill scenario"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_update_bill_scenario_usage_modification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#BatchUpdateBillScenarioUsageModification"
        operation.name = "BatchUpdateBillScenarioUsageModification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateBillScenarioUsageModificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateBillScenarioUsageModification", "documentation" => "Grants permission to update usage amount, usage hour, and usage group in the specified bill scenario"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_update_workload_estimate_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#BatchUpdateWorkloadEstimateUsage"
        operation.name = "BatchUpdateWorkloadEstimateUsage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateWorkloadEstimateUsageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateWorkloadEstimateUsage", "documentation" => "Grants permission to update usage amount and usage group in the specified workload estimate based on the usage id"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_bill_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#CreateBillEstimate"
        operation.name = "CreateBillEstimate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillEstimateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillEstimateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a new bill estimate. Charge is incurred for successful bill estimates"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_bill_scenario, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#CreateBillScenario"
        operation.name = "CreateBillScenario"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillScenarioRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillScenarioResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a new bill scenario"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workload_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#CreateWorkloadEstimate"
        operation.name = "CreateWorkloadEstimate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkloadEstimateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkloadEstimateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a new Workload estimate"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_bill_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#DeleteBillEstimate"
        operation.name = "DeleteBillEstimate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBillEstimateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBillEstimateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete bill estimate"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_bill_scenario, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#DeleteBillScenario"
        operation.name = "DeleteBillScenario"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBillScenarioRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBillScenarioResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a bill scenario"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workload_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#DeleteWorkloadEstimate"
        operation.name = "DeleteWorkloadEstimate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkloadEstimateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkloadEstimateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the specified workload estimate"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_bill_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#GetBillEstimate"
        operation.name = "GetBillEstimate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillEstimateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillEstimateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details of a bill estimate including estimated cost"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_bill_scenario, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#GetBillScenario"
        operation.name = "GetBillScenario"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillScenarioRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillScenarioResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve information associated with a bill scenario"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#GetPreferences"
        operation.name = "GetPreferences"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPreferencesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPreferencesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve applicable rate type preferences for the account"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workload_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#GetWorkloadEstimate"
        operation.name = "GetWorkloadEstimate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadEstimateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadEstimateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve information associated with a workload estimate"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetWorkloadEstimate", "params" => {"identifier" => "9bb1df8b-5978-4fcb-9c5c-99f5b2670076"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
      end)
      service.add_operation(:list_bill_estimate_commitments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#ListBillEstimateCommitments"
        operation.name = "ListBillEstimateCommitments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateCommitmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateCommitmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list commitments associated with the specified bill estimate"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillEstimateCommitments.new
      end)
      service.add_operation(:list_bill_estimate_input_commitment_modifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#ListBillEstimateInputCommitmentModifications"
        operation.name = "ListBillEstimateInputCommitmentModifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateInputCommitmentModificationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateInputCommitmentModificationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list added or removed commitments for a specified bill estimate"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillEstimateInputCommitmentModifications.new
      end)
      service.add_operation(:list_bill_estimate_input_usage_modifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#ListBillEstimateInputUsageModifications"
        operation.name = "ListBillEstimateInputUsageModifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateInputUsageModificationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateInputUsageModificationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list added or modified usage for a specified bill estimate"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillEstimateInputUsageModifications.new
      end)
      service.add_operation(:list_bill_estimate_line_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#ListBillEstimateLineItems"
        operation.name = "ListBillEstimateLineItems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimateLineItemsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list result line items for a specified bill estimate"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillEstimateLineItems.new
      end)
      service.add_operation(:list_bill_estimates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#ListBillEstimates"
        operation.name = "ListBillEstimates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillEstimatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list bill estimates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillEstimates.new
      end)
      service.add_operation(:list_bill_scenario_commitment_modifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#ListBillScenarioCommitmentModifications"
        operation.name = "ListBillScenarioCommitmentModifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillScenarioCommitmentModificationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillScenarioCommitmentModificationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list commitments included in a bill scenario"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillScenarioCommitmentModifications.new
      end)
      service.add_operation(:list_bill_scenario_usage_modifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#ListBillScenarioUsageModifications"
        operation.name = "ListBillScenarioUsageModifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillScenarioUsageModificationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillScenarioUsageModificationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list usage lines of a specified bill scenario"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillScenarioUsageModifications.new
      end)
      service.add_operation(:list_bill_scenarios, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#ListBillScenarios"
        operation.name = "ListBillScenarios"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillScenariosRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillScenariosResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list bill scenarios"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBillScenarios.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to return a list of tags for a resource"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_workload_estimate_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#ListWorkloadEstimateUsage"
        operation.name = "ListWorkloadEstimateUsage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadEstimateUsageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadEstimateUsageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list usage lines for the specified workload estimate"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkloadEstimateUsage.new
      end)
      service.add_operation(:list_workload_estimates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#ListWorkloadEstimates"
        operation.name = "ListWorkloadEstimates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadEstimatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadEstimatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list workload estimates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkloadEstimates.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to add a tag to a resource"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove a tag from a resource"}}
      end)
      service.add_operation(:update_bill_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#UpdateBillEstimate"
        operation.name = "UpdateBillEstimate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillEstimateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillEstimateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update bill estimate name and expiration date time"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_bill_scenario, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#UpdateBillScenario"
        operation.name = "UpdateBillScenario"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillScenarioRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillScenarioResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update name and expiration date time of the specified bill scenario"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#UpdatePreferences"
        operation.name = "UpdatePreferences"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePreferencesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePreferencesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update rate type preferences for the account"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_workload_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bcmpricingcalculator#UpdateWorkloadEstimate"
        operation.name = "UpdateWorkloadEstimate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadEstimateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadEstimateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update name and expiration date time of the specified workload estimate"}, "smithy.api#idempotent" => {}}
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
