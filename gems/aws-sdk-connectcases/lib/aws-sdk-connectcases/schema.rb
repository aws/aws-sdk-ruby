# frozen_string_literal: true

# This is generated code!

module Aws::ConnectCases
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    AssociationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.connectcases#AssociationTime', name: 'AssociationTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    AuditEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#AuditEvent', name: 'AuditEvent')
    AuditEventDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.connectcases#AuditEventDateTime', name: 'AuditEventDateTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    AuditEventField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#AuditEventField', name: 'AuditEventField')
    AuditEventFieldId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#AuditEventFieldId', name: 'AuditEventFieldId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    AuditEventFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#AuditEventFieldList', name: 'AuditEventFieldList', traits: {"smithy.api#sparse" => {}})
    AuditEventFieldValueUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#AuditEventFieldValueUnion', name: 'AuditEventFieldValueUnion')
    AuditEventId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#AuditEventId', name: 'AuditEventId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    AuditEventPerformedBy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#AuditEventPerformedBy', name: 'AuditEventPerformedBy')
    AuditEventType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#AuditEventType', name: 'AuditEventType', traits: {"smithy.api#enum" => [{"value" => "Case.Created", "name" => "CASE_CREATED"}, {"value" => "Case.Updated", "name" => "CASE_UPDATED"}, {"value" => "RelatedItem.Created", "name" => "RELATED_ITEM_CREATED"}]})
    AuditEventsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#AuditEventsList', name: 'AuditEventsList', traits: {"smithy.api#sparse" => {}})
    BasicLayout = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#BasicLayout', name: 'BasicLayout')
    BatchGetCaseRuleErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#BatchGetCaseRuleErrorList', name: 'BatchGetCaseRuleErrorList')
    BatchGetCaseRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#BatchGetCaseRuleList', name: 'BatchGetCaseRuleList')
    BatchGetCaseRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#BatchGetCaseRuleRequest', name: 'BatchGetCaseRuleRequest')
    BatchGetCaseRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#BatchGetCaseRuleResponse', name: 'BatchGetCaseRuleResponse')
    BatchGetFieldErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#BatchGetFieldErrorList', name: 'BatchGetFieldErrorList')
    BatchGetFieldIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#BatchGetFieldIdentifierList', name: 'BatchGetFieldIdentifierList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    BatchGetFieldInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#BatchGetFieldInput', name: 'BatchGetFieldInput')
    BatchGetFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#BatchGetFieldList', name: 'BatchGetFieldList')
    BatchGetFieldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#BatchGetFieldOutput', name: 'BatchGetFieldOutput')
    BatchPutFieldOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#BatchPutFieldOptionsInput', name: 'BatchPutFieldOptionsInput')
    BatchPutFieldOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#BatchPutFieldOptionsOutput', name: 'BatchPutFieldOptionsOutput')
    BooleanCondition = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#BooleanCondition', name: 'BooleanCondition')
    BooleanConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#BooleanConditionList', name: 'BooleanConditionList', traits: {"smithy.api#length" => {"max" => 100}})
    BooleanOperands = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#BooleanOperands', name: 'BooleanOperands')
    CaseArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#CaseArn', name: 'CaseArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    CaseEventIncludedData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CaseEventIncludedData', name: 'CaseEventIncludedData')
    CaseFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#CaseFilter', name: 'CaseFilter')
    CaseFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#CaseFilterList', name: 'CaseFilterList')
    CaseId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#CaseId', name: 'CaseId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    CaseRuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#CaseRuleArn', name: 'CaseRuleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    CaseRuleDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#CaseRuleDescription', name: 'CaseRuleDescription', traits: {"smithy.api#length" => {"max" => 255}})
    CaseRuleDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#CaseRuleDetails', name: 'CaseRuleDetails')
    CaseRuleError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CaseRuleError', name: 'CaseRuleError')
    CaseRuleId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#CaseRuleId', name: 'CaseRuleId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    CaseRuleIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CaseRuleIdentifier', name: 'CaseRuleIdentifier')
    CaseRuleIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#CaseRuleIdentifierList', name: 'CaseRuleIdentifierList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    CaseRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#CaseRuleName', name: 'CaseRuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^.*[\\S]$"})
    CaseRuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CaseRuleSummary', name: 'CaseRuleSummary')
    CaseRuleSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#CaseRuleSummaryList', name: 'CaseRuleSummaryList')
    CaseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CaseSummary', name: 'CaseSummary')
    CaseSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#CaseSummaryList', name: 'CaseSummaryList')
    Channel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#Channel', name: 'Channel', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ChannelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#ChannelList', name: 'ChannelList')
    CommentBody = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#CommentBody', name: 'CommentBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 15000}})
    CommentBodyTextType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#CommentBodyTextType', name: 'CommentBodyTextType', traits: {"smithy.api#enum" => [{"value" => "Text/Plain", "name" => "PLAINTEXT"}]})
    CommentContent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CommentContent', name: 'CommentContent')
    CommentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CommentFilter', name: 'CommentFilter')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectedToSystemTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.connectcases#ConnectedToSystemTime', name: 'ConnectedToSystemTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    Contact = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#Contact', name: 'Contact')
    ContactArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#ContactArn', name: 'ContactArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ContactContent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ContactContent', name: 'ContactContent')
    ContactFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ContactFilter', name: 'ContactFilter')
    CreateCaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateCaseInput', name: 'CreateCaseInput')
    CreateCaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateCaseOutput', name: 'CreateCaseOutput')
    CreateCaseRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateCaseRuleRequest', name: 'CreateCaseRuleRequest')
    CreateCaseRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateCaseRuleResponse', name: 'CreateCaseRuleResponse')
    CreateDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateDomainInput', name: 'CreateDomainInput')
    CreateDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateDomainOutput', name: 'CreateDomainOutput')
    CreateFieldInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateFieldInput', name: 'CreateFieldInput')
    CreateFieldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateFieldOutput', name: 'CreateFieldOutput')
    CreateLayoutInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateLayoutInput', name: 'CreateLayoutInput')
    CreateLayoutOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateLayoutOutput', name: 'CreateLayoutOutput')
    CreateRelatedItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateRelatedItemInput', name: 'CreateRelatedItemInput')
    CreateRelatedItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateRelatedItemOutput', name: 'CreateRelatedItemOutput')
    CreateTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateTemplateInput', name: 'CreateTemplateInput')
    CreateTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#CreateTemplateOutput', name: 'CreateTemplateOutput')
    CreatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.connectcases#CreatedTime', name: 'CreatedTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    CustomEntity = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#CustomEntity', name: 'CustomEntity', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\.@:/ ]*[a-zA-Z0-9_\\-\\.@:/]$", "smithy.api#sensitive" => {}})
    DeleteCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteCaseRequest', name: 'DeleteCaseRequest')
    DeleteCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteCaseResponse', name: 'DeleteCaseResponse')
    DeleteCaseRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteCaseRuleRequest', name: 'DeleteCaseRuleRequest')
    DeleteCaseRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteCaseRuleResponse', name: 'DeleteCaseRuleResponse')
    DeleteDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteDomainInput', name: 'DeleteDomainInput')
    DeleteDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteDomainOutput', name: 'DeleteDomainOutput')
    DeleteFieldRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteFieldRequest', name: 'DeleteFieldRequest')
    DeleteFieldResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteFieldResponse', name: 'DeleteFieldResponse')
    DeleteLayoutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteLayoutRequest', name: 'DeleteLayoutRequest')
    DeleteLayoutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteLayoutResponse', name: 'DeleteLayoutResponse')
    DeleteRelatedItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteRelatedItemRequest', name: 'DeleteRelatedItemRequest')
    DeleteRelatedItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteRelatedItemResponse', name: 'DeleteRelatedItemResponse')
    DeleteTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteTemplateRequest', name: 'DeleteTemplateRequest')
    DeleteTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DeleteTemplateResponse', name: 'DeleteTemplateResponse')
    Deleted = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.connectcases#Deleted', name: 'Deleted', traits: {"smithy.api#default" => false})
    DomainArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#DomainArn', name: 'DomainArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DomainId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#DomainId', name: 'DomainId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^.*[\\S]$"})
    DomainStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#DomainStatus', name: 'DomainStatus', traits: {"smithy.api#enum" => [{"value" => "Active", "name" => "ACTIVE"}, {"value" => "CreationInProgress", "name" => "CREATION_IN_PROGRESS"}, {"value" => "CreationFailed", "name" => "CREATION_FAILED"}]})
    DomainSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#DomainSummary', name: 'DomainSummary')
    DomainSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#DomainSummaryList', name: 'DomainSummaryList')
    EmptyFieldValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#EmptyFieldValue', name: 'EmptyFieldValue')
    EmptyOperandValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#EmptyOperandValue', name: 'EmptyOperandValue')
    EventBridgeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#EventBridgeConfiguration', name: 'EventBridgeConfiguration')
    EventIncludedData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#EventIncludedData', name: 'EventIncludedData')
    FieldArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#FieldArn', name: 'FieldArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    FieldDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#FieldDescription', name: 'FieldDescription', traits: {"smithy.api#length" => {"max" => 255}})
    FieldError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#FieldError', name: 'FieldError')
    FieldFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#FieldFilter', name: 'FieldFilter')
    FieldGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#FieldGroup', name: 'FieldGroup')
    FieldId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#FieldId', name: 'FieldId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    FieldIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#FieldIdentifier', name: 'FieldIdentifier')
    FieldIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#FieldIdentifierList', name: 'FieldIdentifierList')
    FieldItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#FieldItem', name: 'FieldItem')
    FieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#FieldList', name: 'FieldList')
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#FieldName', name: 'FieldName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^.*[\\S]$"})
    FieldNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#FieldNamespace', name: 'FieldNamespace', traits: {"smithy.api#enum" => [{"value" => "System", "name" => "SYSTEM"}, {"value" => "Custom", "name" => "CUSTOM"}]})
    FieldOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#FieldOption', name: 'FieldOption')
    FieldOptionError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#FieldOptionError', name: 'FieldOptionError')
    FieldOptionErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#FieldOptionErrorList', name: 'FieldOptionErrorList')
    FieldOptionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#FieldOptionName', name: 'FieldOptionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^.*[\\S]$"})
    FieldOptionValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#FieldOptionValue', name: 'FieldOptionValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^.*[\\S]$"})
    FieldOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#FieldOptionsList', name: 'FieldOptionsList')
    FieldSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#FieldSummary', name: 'FieldSummary')
    FieldSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#FieldSummaryList', name: 'FieldSummaryList')
    FieldType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#FieldType', name: 'FieldType', traits: {"smithy.api#enum" => [{"value" => "Text", "name" => "TEXT"}, {"value" => "Number", "name" => "NUMBER"}, {"value" => "Boolean", "name" => "BOOLEAN"}, {"value" => "DateTime", "name" => "DATE_TIME"}, {"value" => "SingleSelect", "name" => "SINGLE_SELECT"}, {"value" => "Url", "name" => "URL"}, {"value" => "User", "name" => "USER"}]})
    FieldValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#FieldValue', name: 'FieldValue')
    FieldValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#FieldValueList', name: 'FieldValueList')
    FieldValueUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#FieldValueUnion', name: 'FieldValueUnion')
    FileArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#FileArn', name: 'FileArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    FileContent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#FileContent', name: 'FileContent')
    FileFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#FileFilter', name: 'FileFilter')
    GetCaseAuditEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetCaseAuditEventsRequest', name: 'GetCaseAuditEventsRequest')
    GetCaseAuditEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetCaseAuditEventsResponse', name: 'GetCaseAuditEventsResponse')
    GetCaseEventConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetCaseEventConfigurationInput', name: 'GetCaseEventConfigurationInput')
    GetCaseEventConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetCaseEventConfigurationOutput', name: 'GetCaseEventConfigurationOutput')
    GetCaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetCaseInput', name: 'GetCaseInput')
    GetCaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetCaseOutput', name: 'GetCaseOutput')
    GetCaseRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetCaseRuleResponse', name: 'GetCaseRuleResponse')
    GetDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetDomainInput', name: 'GetDomainInput')
    GetDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetDomainOutput', name: 'GetDomainOutput')
    GetFieldResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetFieldResponse', name: 'GetFieldResponse')
    GetLayoutInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetLayoutInput', name: 'GetLayoutInput')
    GetLayoutOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetLayoutOutput', name: 'GetLayoutOutput')
    GetTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetTemplateInput', name: 'GetTemplateInput')
    GetTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#GetTemplateOutput', name: 'GetTemplateOutput')
    IamPrincipalArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#IamPrincipalArn', name: 'IamPrincipalArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LastModifiedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.connectcases#LastModifiedTime', name: 'LastModifiedTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    LayoutArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#LayoutArn', name: 'LayoutArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    LayoutConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#LayoutConfiguration', name: 'LayoutConfiguration')
    LayoutContent = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#LayoutContent', name: 'LayoutContent')
    LayoutId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#LayoutId', name: 'LayoutId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    LayoutName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#LayoutName', name: 'LayoutName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^.*[\\S]$"})
    LayoutSections = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#LayoutSections', name: 'LayoutSections')
    LayoutSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#LayoutSummary', name: 'LayoutSummary')
    LayoutSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#LayoutSummaryList', name: 'LayoutSummaryList')
    ListCaseRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListCaseRulesRequest', name: 'ListCaseRulesRequest')
    ListCaseRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListCaseRulesResponse', name: 'ListCaseRulesResponse')
    ListCasesForContactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListCasesForContactInput', name: 'ListCasesForContactInput')
    ListCasesForContactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListCasesForContactOutput', name: 'ListCasesForContactOutput')
    ListDomainsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListDomainsInput', name: 'ListDomainsInput')
    ListDomainsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListDomainsOutput', name: 'ListDomainsOutput')
    ListFieldOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListFieldOptionsInput', name: 'ListFieldOptionsInput')
    ListFieldOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListFieldOptionsOutput', name: 'ListFieldOptionsOutput')
    ListFieldsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListFieldsInput', name: 'ListFieldsInput')
    ListFieldsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListFieldsOutput', name: 'ListFieldsOutput')
    ListLayoutsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListLayoutsInput', name: 'ListLayoutsInput')
    ListLayoutsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListLayoutsOutput', name: 'ListLayoutsOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListTemplatesInput', name: 'ListTemplatesInput')
    ListTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ListTemplatesOutput', name: 'ListTemplatesOutput')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectcases#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 9000}})
    OperandOne = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#OperandOne', name: 'OperandOne')
    OperandTwo = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#OperandTwo', name: 'OperandTwo')
    Order = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#Order', name: 'Order', traits: {"smithy.api#enum" => [{"value" => "Asc", "name" => "ASCENDING"}, {"value" => "Desc", "name" => "DESCENDING"}]})
    PutCaseEventConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#PutCaseEventConfigurationInput', name: 'PutCaseEventConfigurationInput')
    PutCaseEventConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#PutCaseEventConfigurationOutput', name: 'PutCaseEventConfigurationOutput')
    RelatedItemArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#RelatedItemArn', name: 'RelatedItemArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    RelatedItemContent = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#RelatedItemContent', name: 'RelatedItemContent')
    RelatedItemEventIncludedData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#RelatedItemEventIncludedData', name: 'RelatedItemEventIncludedData')
    RelatedItemFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#RelatedItemFilterList', name: 'RelatedItemFilterList')
    RelatedItemId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#RelatedItemId', name: 'RelatedItemId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    RelatedItemInputContent = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#RelatedItemInputContent', name: 'RelatedItemInputContent')
    RelatedItemType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#RelatedItemType', name: 'RelatedItemType', traits: {"smithy.api#enum" => [{"value" => "Contact", "name" => "CONTACT"}, {"value" => "Comment", "name" => "COMMENT"}, {"value" => "File", "name" => "FILE"}, {"value" => "Sla", "name" => "SLA"}]})
    RelatedItemTypeFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#RelatedItemTypeFilter', name: 'RelatedItemTypeFilter')
    RequiredCaseRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#RequiredCaseRule', name: 'RequiredCaseRule')
    RequiredField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#RequiredField', name: 'RequiredField')
    RequiredFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#RequiredFieldList', name: 'RequiredFieldList', traits: {"smithy.api#length" => {"max" => 100}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RuleType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#RuleType', name: 'RuleType', traits: {"smithy.api#enum" => [{"name" => "REQUIRED", "value" => "Required"}]})
    SearchCasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#SearchCasesInput', name: 'SearchCasesInput')
    SearchCasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#SearchCasesOutput', name: 'SearchCasesOutput')
    SearchCasesResponseItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#SearchCasesResponseItem', name: 'SearchCasesResponseItem')
    SearchCasesResponseItemList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#SearchCasesResponseItemList', name: 'SearchCasesResponseItemList', traits: {"smithy.api#sparse" => {}})
    SearchRelatedItemsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#SearchRelatedItemsInput', name: 'SearchRelatedItemsInput')
    SearchRelatedItemsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#SearchRelatedItemsOutput', name: 'SearchRelatedItemsOutput')
    SearchRelatedItemsResponseItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#SearchRelatedItemsResponseItem', name: 'SearchRelatedItemsResponseItem')
    SearchRelatedItemsResponseItemList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#SearchRelatedItemsResponseItemList', name: 'SearchRelatedItemsResponseItemList', traits: {"smithy.api#sparse" => {}})
    Section = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#Section', name: 'Section')
    SectionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#SectionsList', name: 'SectionsList', traits: {"smithy.api#length" => {"max" => 1}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SlaCompletionTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.connectcases#SlaCompletionTime', name: 'SlaCompletionTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    SlaConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#SlaConfiguration', name: 'SlaConfiguration')
    SlaContent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#SlaContent', name: 'SlaContent')
    SlaFieldValueUnionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#SlaFieldValueUnionList', name: 'SlaFieldValueUnionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SlaFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#SlaFilter', name: 'SlaFilter')
    SlaInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#SlaInputConfiguration', name: 'SlaInputConfiguration')
    SlaInputContent = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#SlaInputContent', name: 'SlaInputContent')
    SlaName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#SlaName', name: 'SlaName', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#pattern" => "^.*[\\S]$", "smithy.api#sensitive" => {}})
    SlaStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#SlaStatus', name: 'SlaStatus', traits: {"smithy.api#enum" => [{"value" => "Active", "name" => "ACTIVE"}, {"value" => "Overdue", "name" => "OVERDUE"}, {"value" => "Met", "name" => "MET"}, {"value" => "NotMet", "name" => "NOT_MET"}]})
    SlaTargetTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.connectcases#SlaTargetTime', name: 'SlaTargetTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    SlaType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#SlaType', name: 'SlaType', traits: {"smithy.api#enum" => [{"value" => "CaseField", "name" => "CASE_FIELD"}]})
    Sort = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#Sort', name: 'Sort')
    SortList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#SortList', name: 'SortList')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#TagResourceInput', name: 'TagResourceInput')
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.connectcases#Tags', name: 'Tags', traits: {"smithy.api#sparse" => {}})
    TargetSlaMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectcases#TargetSlaMinutes', name: 'TargetSlaMinutes', traits: {"smithy.api#range" => {"min" => 1, "max" => 129600}})
    TemplateArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#TemplateArn', name: 'TemplateArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    TemplateCaseRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#TemplateCaseRuleList', name: 'TemplateCaseRuleList', traits: {"smithy.api#length" => {"max" => 50}})
    TemplateDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#TemplateDescription', name: 'TemplateDescription', traits: {"smithy.api#length" => {"max" => 255}})
    TemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#TemplateId', name: 'TemplateId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    TemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#TemplateName', name: 'TemplateName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^.*[\\S]$"})
    TemplateRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#TemplateRule', name: 'TemplateRule')
    TemplateStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#TemplateStatus', name: 'TemplateStatus', traits: {"smithy.api#enum" => [{"value" => "Active", "name" => "ACTIVE"}, {"value" => "Inactive", "name" => "INACTIVE"}]})
    TemplateStatusFilters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#TemplateStatusFilters', name: 'TemplateStatusFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    TemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#TemplateSummary', name: 'TemplateSummary')
    TemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#TemplateSummaryList', name: 'TemplateSummaryList')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#UntagResourceInput', name: 'UntagResourceInput')
    UpdateCaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#UpdateCaseInput', name: 'UpdateCaseInput')
    UpdateCaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#UpdateCaseOutput', name: 'UpdateCaseOutput')
    UpdateCaseRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#UpdateCaseRuleRequest', name: 'UpdateCaseRuleRequest')
    UpdateCaseRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#UpdateCaseRuleResponse', name: 'UpdateCaseRuleResponse')
    UpdateFieldInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#UpdateFieldInput', name: 'UpdateFieldInput')
    UpdateFieldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#UpdateFieldOutput', name: 'UpdateFieldOutput')
    UpdateLayoutInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#UpdateLayoutInput', name: 'UpdateLayoutInput')
    UpdateLayoutOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#UpdateLayoutOutput', name: 'UpdateLayoutOutput')
    UpdateTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#UpdateTemplateInput', name: 'UpdateTemplateInput')
    UpdateTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#UpdateTemplateOutput', name: 'UpdateTemplateOutput')
    UserArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#UserArn', name: 'UserArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    UserUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcases#UserUnion', name: 'UserUnion')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcases#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcases#Value', name: 'Value', traits: {"smithy.api#length" => {"max" => 100}})
    ValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcases#ValuesList', name: 'ValuesList', traits: {"smithy.api#length" => {"max" => 1}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AuditEvent.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditEventId, location_name: 'eventId', traits: {"smithy.api#required" => {}}))
    AuditEvent.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditEventType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    AuditEvent.add_member(:related_item_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemType, location_name: 'relatedItemType'))
    AuditEvent.add_member(:performed_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditEventDateTime, location_name: 'performedTime', traits: {"smithy.api#required" => {}}))
    AuditEvent.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditEventFieldList, location_name: 'fields', traits: {"smithy.api#required" => {}}))
    AuditEvent.add_member(:performed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditEventPerformedBy, location_name: 'performedBy'))
    AuditEvent.type = Types::AuditEvent
    AuditEventField.add_member(:event_field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditEventFieldId, location_name: 'eventFieldId', traits: {"smithy.api#required" => {}}))
    AuditEventField.add_member(:old_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditEventFieldValueUnion, location_name: 'oldValue'))
    AuditEventField.add_member(:new_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditEventFieldValueUnion, location_name: 'newValue', traits: {"smithy.api#required" => {}}))
    AuditEventField.type = Types::AuditEventField
    AuditEventFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditEventField)
    AuditEventFieldValueUnion.add_member(:string_value, Types::AuditEventFieldValueUnion::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'stringValue', traits: {"smithy.api#length" => {"max" => 500}}))
    AuditEventFieldValueUnion.add_member(:double_value, Types::AuditEventFieldValueUnion::DoubleValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'doubleValue'))
    AuditEventFieldValueUnion.add_member(:boolean_value, Types::AuditEventFieldValueUnion::BooleanValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'booleanValue'))
    AuditEventFieldValueUnion.add_member(:empty_value, Types::AuditEventFieldValueUnion::EmptyValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyFieldValue, location_name: 'emptyValue'))
    AuditEventFieldValueUnion.add_member(:user_arn_value, Types::AuditEventFieldValueUnion::UserArnValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'userArnValue'))
    AuditEventFieldValueUnion.add_member(:unknown, Types::AuditEventFieldValueUnion::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AuditEventFieldValueUnion.type = Types::AuditEventFieldValueUnion
    AuditEventPerformedBy.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserUnion, location_name: 'user'))
    AuditEventPerformedBy.add_member(:iam_principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamPrincipalArn, location_name: 'iamPrincipalArn', traits: {"smithy.api#required" => {}}))
    AuditEventPerformedBy.type = Types::AuditEventPerformedBy
    AuditEventsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditEvent)
    BasicLayout.add_member(:top_panel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutSections, location_name: 'topPanel'))
    BasicLayout.add_member(:more_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutSections, location_name: 'moreInfo'))
    BasicLayout.type = Types::BasicLayout
    BatchGetCaseRuleErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleError)
    BatchGetCaseRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseRuleResponse)
    BatchGetCaseRuleRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetCaseRuleRequest.add_member(:case_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleIdentifierList, location_name: 'caseRules', traits: {"smithy.api#required" => {}}))
    BatchGetCaseRuleRequest.type = Types::BatchGetCaseRuleRequest
    BatchGetCaseRuleResponse.add_member(:case_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCaseRuleList, location_name: 'caseRules', traits: {"smithy.api#length" => {"max" => 50}, "smithy.api#required" => {}}))
    BatchGetCaseRuleResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCaseRuleErrorList, location_name: 'errors', traits: {"smithy.api#length" => {"max" => 50}, "smithy.api#required" => {}}))
    BatchGetCaseRuleResponse.type = Types::BatchGetCaseRuleResponse
    BatchGetFieldErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldError)
    BatchGetFieldIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldIdentifier)
    BatchGetFieldInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetFieldInput.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFieldIdentifierList, location_name: 'fields', traits: {"smithy.api#required" => {}}))
    BatchGetFieldInput.type = Types::BatchGetFieldInput
    BatchGetFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFieldResponse)
    BatchGetFieldOutput.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFieldList, location_name: 'fields', traits: {"smithy.api#length" => {"max" => 50}, "smithy.api#required" => {}}))
    BatchGetFieldOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFieldErrorList, location_name: 'errors', traits: {"smithy.api#length" => {"max" => 50}, "smithy.api#required" => {}}))
    BatchGetFieldOutput.type = Types::BatchGetFieldOutput
    BatchPutFieldOptionsInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchPutFieldOptionsInput.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchPutFieldOptionsInput.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldOptionsList, location_name: 'options', traits: {"smithy.api#length" => {"max" => 50}, "smithy.api#required" => {}}))
    BatchPutFieldOptionsInput.type = Types::BatchPutFieldOptionsInput
    BatchPutFieldOptionsOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldOptionErrorList, location_name: 'errors', traits: {"smithy.api#length" => {"max" => 50}}))
    BatchPutFieldOptionsOutput.type = Types::BatchPutFieldOptionsOutput
    BooleanCondition.add_member(:equal_to, Types::BooleanCondition::EqualTo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOperands, location_name: 'equalTo'))
    BooleanCondition.add_member(:not_equal_to, Types::BooleanCondition::NotEqualTo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOperands, location_name: 'notEqualTo'))
    BooleanCondition.add_member(:unknown, Types::BooleanCondition::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    BooleanCondition.type = Types::BooleanCondition
    BooleanConditionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanCondition)
    BooleanOperands.add_member(:operand_one, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperandOne, location_name: 'operandOne', traits: {"smithy.api#required" => {}}))
    BooleanOperands.add_member(:operand_two, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperandTwo, location_name: 'operandTwo', traits: {"smithy.api#required" => {}}))
    BooleanOperands.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'result', traits: {"smithy.api#required" => {}}))
    BooleanOperands.type = Types::BooleanOperands
    CaseEventIncludedData.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldIdentifierList, location_name: 'fields', traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#required" => {}}))
    CaseEventIncludedData.type = Types::CaseEventIncludedData
    CaseFilter.add_member(:field, Types::CaseFilter::Field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldFilter, location_name: 'field'))
    CaseFilter.add_member(:not, Types::CaseFilter::Not, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseFilter, location_name: 'not'))
    CaseFilter.add_member(:and_all, Types::CaseFilter::AndAll, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseFilterList, location_name: 'andAll', traits: {"smithy.api#length" => {"max" => 10}}))
    CaseFilter.add_member(:or_all, Types::CaseFilter::OrAll, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseFilterList, location_name: 'orAll', traits: {"smithy.api#length" => {"max" => 10}}))
    CaseFilter.add_member(:unknown, Types::CaseFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CaseFilter.type = Types::CaseFilter
    CaseFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseFilter)
    CaseRuleDetails.add_member(:required, Types::CaseRuleDetails::Required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredCaseRule, location_name: 'required'))
    CaseRuleDetails.add_member(:unknown, Types::CaseRuleDetails::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CaseRuleDetails.type = Types::CaseRuleDetails
    CaseRuleError.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CaseRuleError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    CaseRuleError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    CaseRuleError.type = Types::CaseRuleError
    CaseRuleIdentifier.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CaseRuleIdentifier.type = Types::CaseRuleIdentifier
    CaseRuleIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleIdentifier)
    CaseRuleSummary.add_member(:case_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleId, location_name: 'caseRuleId', traits: {"smithy.api#required" => {}}))
    CaseRuleSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CaseRuleSummary.add_member(:case_rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleArn, location_name: 'caseRuleArn', traits: {"smithy.api#required" => {}}))
    CaseRuleSummary.add_member(:rule_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleType, location_name: 'ruleType', traits: {"smithy.api#required" => {}}))
    CaseRuleSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleDescription, location_name: 'description'))
    CaseRuleSummary.type = Types::CaseRuleSummary
    CaseRuleSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleSummary)
    CaseSummary.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#required" => {}}))
    CaseSummary.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: 'templateId', traits: {"smithy.api#required" => {}}))
    CaseSummary.type = Types::CaseSummary
    CaseSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseSummary)
    ChannelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channel)
    CommentContent.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentBody, location_name: 'body', traits: {"smithy.api#required" => {}}))
    CommentContent.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentBodyTextType, location_name: 'contentType', traits: {"smithy.api#required" => {}}))
    CommentContent.type = Types::CommentContent
    CommentFilter.type = Types::CommentFilter
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    Contact.add_member(:contact_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactArn, location_name: 'contactArn', traits: {"smithy.api#required" => {}}))
    Contact.type = Types::Contact
    ContactContent.add_member(:contact_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactArn, location_name: 'contactArn', traits: {"smithy.api#required" => {}}))
    ContactContent.add_member(:channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channel, location_name: 'channel', traits: {"smithy.api#required" => {}}))
    ContactContent.add_member(:connected_to_system_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedToSystemTime, location_name: 'connectedToSystemTime', traits: {"smithy.api#required" => {}}))
    ContactContent.type = Types::ContactContent
    ContactFilter.add_member(:channel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelList, location_name: 'channel', traits: {"smithy.api#length" => {"max" => 3}}))
    ContactFilter.add_member(:contact_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactArn, location_name: 'contactArn'))
    ContactFilter.type = Types::ContactFilter
    CreateCaseInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCaseInput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: 'templateId', traits: {"smithy.api#required" => {}}))
    CreateCaseInput.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValueList, location_name: 'fields', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#required" => {}}))
    CreateCaseInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"max" => 64}}))
    CreateCaseInput.add_member(:performed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserUnion, location_name: 'performedBy'))
    CreateCaseInput.type = Types::CreateCaseInput
    CreateCaseOutput.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#required" => {}}))
    CreateCaseOutput.add_member(:case_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseArn, location_name: 'caseArn', traits: {"smithy.api#required" => {}}))
    CreateCaseOutput.type = Types::CreateCaseOutput
    CreateCaseRuleRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCaseRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateCaseRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleDescription, location_name: 'description'))
    CreateCaseRuleRequest.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleDetails, location_name: 'rule', traits: {"smithy.api#required" => {}}))
    CreateCaseRuleRequest.type = Types::CreateCaseRuleRequest
    CreateCaseRuleResponse.add_member(:case_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleId, location_name: 'caseRuleId', traits: {"smithy.api#required" => {}}))
    CreateCaseRuleResponse.add_member(:case_rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleArn, location_name: 'caseRuleArn', traits: {"smithy.api#required" => {}}))
    CreateCaseRuleResponse.type = Types::CreateCaseRuleResponse
    CreateDomainInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateDomainInput.type = Types::CreateDomainInput
    CreateDomainOutput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#required" => {}}))
    CreateDomainOutput.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'domainArn', traits: {"smithy.api#required" => {}}))
    CreateDomainOutput.add_member(:domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'domainStatus', traits: {"smithy.api#required" => {}}))
    CreateDomainOutput.type = Types::CreateDomainOutput
    CreateFieldInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFieldInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateFieldInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateFieldInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldDescription, location_name: 'description'))
    CreateFieldInput.type = Types::CreateFieldInput
    CreateFieldOutput.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId', traits: {"smithy.api#required" => {}}))
    CreateFieldOutput.add_member(:field_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldArn, location_name: 'fieldArn', traits: {"smithy.api#required" => {}}))
    CreateFieldOutput.type = Types::CreateFieldOutput
    CreateLayoutInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLayoutInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateLayoutInput.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutContent, location_name: 'content', traits: {"smithy.api#required" => {}}))
    CreateLayoutInput.type = Types::CreateLayoutInput
    CreateLayoutOutput.add_member(:layout_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutId, location_name: 'layoutId', traits: {"smithy.api#required" => {}}))
    CreateLayoutOutput.add_member(:layout_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutArn, location_name: 'layoutArn', traits: {"smithy.api#required" => {}}))
    CreateLayoutOutput.type = Types::CreateLayoutOutput
    CreateRelatedItemInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRelatedItemInput.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRelatedItemInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateRelatedItemInput.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemInputContent, location_name: 'content', traits: {"smithy.api#required" => {}}))
    CreateRelatedItemInput.add_member(:performed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserUnion, location_name: 'performedBy'))
    CreateRelatedItemInput.type = Types::CreateRelatedItemInput
    CreateRelatedItemOutput.add_member(:related_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemId, location_name: 'relatedItemId', traits: {"smithy.api#required" => {}}))
    CreateRelatedItemOutput.add_member(:related_item_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemArn, location_name: 'relatedItemArn', traits: {"smithy.api#required" => {}}))
    CreateRelatedItemOutput.type = Types::CreateRelatedItemOutput
    CreateTemplateInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTemplateInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateTemplateInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDescription, location_name: 'description'))
    CreateTemplateInput.add_member(:layout_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutConfiguration, location_name: 'layoutConfiguration'))
    CreateTemplateInput.add_member(:required_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredFieldList, location_name: 'requiredFields'))
    CreateTemplateInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStatus, location_name: 'status'))
    CreateTemplateInput.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateCaseRuleList, location_name: 'rules'))
    CreateTemplateInput.type = Types::CreateTemplateInput
    CreateTemplateOutput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: 'templateId', traits: {"smithy.api#required" => {}}))
    CreateTemplateOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'templateArn', traits: {"smithy.api#required" => {}}))
    CreateTemplateOutput.type = Types::CreateTemplateOutput
    DeleteCaseRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCaseRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCaseRequest.type = Types::DeleteCaseRequest
    DeleteCaseResponse.type = Types::DeleteCaseResponse
    DeleteCaseRuleRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCaseRuleRequest.add_member(:case_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleId, location_name: 'caseRuleId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCaseRuleRequest.type = Types::DeleteCaseRuleRequest
    DeleteCaseRuleResponse.type = Types::DeleteCaseRuleResponse
    DeleteDomainInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainInput.type = Types::DeleteDomainInput
    DeleteDomainOutput.type = Types::DeleteDomainOutput
    DeleteFieldRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFieldRequest.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFieldRequest.type = Types::DeleteFieldRequest
    DeleteFieldResponse.type = Types::DeleteFieldResponse
    DeleteLayoutRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLayoutRequest.add_member(:layout_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutId, location_name: 'layoutId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLayoutRequest.type = Types::DeleteLayoutRequest
    DeleteLayoutResponse.type = Types::DeleteLayoutResponse
    DeleteRelatedItemRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRelatedItemRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRelatedItemRequest.add_member(:related_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemId, location_name: 'relatedItemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRelatedItemRequest.type = Types::DeleteRelatedItemRequest
    DeleteRelatedItemResponse.type = Types::DeleteRelatedItemResponse
    DeleteTemplateRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateRequest.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: 'templateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateRequest.type = Types::DeleteTemplateRequest
    DeleteTemplateResponse.type = Types::DeleteTemplateResponse
    DomainSummary.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'domainArn', traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DomainSummary.type = Types::DomainSummary
    DomainSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainSummary)
    EmptyFieldValue.type = Types::EmptyFieldValue
    EmptyOperandValue.type = Types::EmptyOperandValue
    EventBridgeConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#required" => {}}))
    EventBridgeConfiguration.add_member(:included_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventIncludedData, location_name: 'includedData'))
    EventBridgeConfiguration.type = Types::EventBridgeConfiguration
    EventIncludedData.add_member(:case_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseEventIncludedData, location_name: 'caseData'))
    EventIncludedData.add_member(:related_item_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemEventIncludedData, location_name: 'relatedItemData'))
    EventIncludedData.type = Types::EventIncludedData
    FieldError.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    FieldError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    FieldError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    FieldError.type = Types::FieldError
    FieldFilter.add_member(:equal_to, Types::FieldFilter::EqualTo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'equalTo'))
    FieldFilter.add_member(:contains, Types::FieldFilter::Contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'contains'))
    FieldFilter.add_member(:greater_than, Types::FieldFilter::GreaterThan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'greaterThan'))
    FieldFilter.add_member(:greater_than_or_equal_to, Types::FieldFilter::GreaterThanOrEqualTo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'greaterThanOrEqualTo'))
    FieldFilter.add_member(:less_than, Types::FieldFilter::LessThan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'lessThan'))
    FieldFilter.add_member(:less_than_or_equal_to, Types::FieldFilter::LessThanOrEqualTo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'lessThanOrEqualTo'))
    FieldFilter.add_member(:unknown, Types::FieldFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    FieldFilter.type = Types::FieldFilter
    FieldGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#length" => {"max" => 100}}))
    FieldGroup.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList, location_name: 'fields', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#required" => {}}))
    FieldGroup.type = Types::FieldGroup
    FieldIdentifier.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    FieldIdentifier.type = Types::FieldIdentifier
    FieldIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldIdentifier)
    FieldItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    FieldItem.type = Types::FieldItem
    FieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldItem)
    FieldOption.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldOptionName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    FieldOption.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldOptionValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    FieldOption.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'active', traits: {"smithy.api#required" => {}}))
    FieldOption.type = Types::FieldOption
    FieldOptionError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    FieldOptionError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    FieldOptionError.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldOptionValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    FieldOptionError.type = Types::FieldOptionError
    FieldOptionErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldOptionError)
    FieldOptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldOption)
    FieldSummary.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId', traits: {"smithy.api#required" => {}}))
    FieldSummary.add_member(:field_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldArn, location_name: 'fieldArn', traits: {"smithy.api#required" => {}}))
    FieldSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    FieldSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    FieldSummary.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNamespace, location_name: 'namespace', traits: {"smithy.api#required" => {}}))
    FieldSummary.type = Types::FieldSummary
    FieldSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldSummary)
    FieldValue.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    FieldValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValueUnion, location_name: 'value', traits: {"smithy.api#required" => {}}))
    FieldValue.type = Types::FieldValue
    FieldValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue)
    FieldValueUnion.add_member(:string_value, Types::FieldValueUnion::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'stringValue', traits: {"smithy.api#length" => {"max" => 3000}}))
    FieldValueUnion.add_member(:double_value, Types::FieldValueUnion::DoubleValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'doubleValue'))
    FieldValueUnion.add_member(:boolean_value, Types::FieldValueUnion::BooleanValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'booleanValue'))
    FieldValueUnion.add_member(:empty_value, Types::FieldValueUnion::EmptyValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyFieldValue, location_name: 'emptyValue'))
    FieldValueUnion.add_member(:user_arn_value, Types::FieldValueUnion::UserArnValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'userArnValue'))
    FieldValueUnion.add_member(:unknown, Types::FieldValueUnion::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    FieldValueUnion.type = Types::FieldValueUnion
    FileContent.add_member(:file_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileArn, location_name: 'fileArn', traits: {"smithy.api#required" => {}}))
    FileContent.type = Types::FileContent
    FileFilter.add_member(:file_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileArn, location_name: 'fileArn'))
    FileFilter.type = Types::FileFilter
    GetCaseAuditEventsRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCaseAuditEventsRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCaseAuditEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 25}}))
    GetCaseAuditEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetCaseAuditEventsRequest.type = Types::GetCaseAuditEventsRequest
    GetCaseAuditEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetCaseAuditEventsResponse.add_member(:audit_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditEventsList, location_name: 'auditEvents', traits: {"smithy.api#length" => {"max" => 25}, "smithy.api#required" => {}}))
    GetCaseAuditEventsResponse.type = Types::GetCaseAuditEventsResponse
    GetCaseEventConfigurationInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCaseEventConfigurationInput.type = Types::GetCaseEventConfigurationInput
    GetCaseEventConfigurationOutput.add_member(:event_bridge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeConfiguration, location_name: 'eventBridge', traits: {"smithy.api#required" => {}}))
    GetCaseEventConfigurationOutput.type = Types::GetCaseEventConfigurationOutput
    GetCaseInput.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCaseInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCaseInput.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldIdentifierList, location_name: 'fields', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    GetCaseInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetCaseInput.type = Types::GetCaseInput
    GetCaseOutput.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValueList, location_name: 'fields', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#required" => {}}))
    GetCaseOutput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: 'templateId', traits: {"smithy.api#required" => {}}))
    GetCaseOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetCaseOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    GetCaseOutput.type = Types::GetCaseOutput
    GetCaseRuleResponse.add_member(:case_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleId, location_name: 'caseRuleId', traits: {"smithy.api#required" => {}}))
    GetCaseRuleResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetCaseRuleResponse.add_member(:case_rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleArn, location_name: 'caseRuleArn', traits: {"smithy.api#required" => {}}))
    GetCaseRuleResponse.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleDetails, location_name: 'rule', traits: {"smithy.api#required" => {}}))
    GetCaseRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleDescription, location_name: 'description'))
    GetCaseRuleResponse.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Deleted, location_name: 'deleted', traits: {"smithy.api#default" => false}))
    GetCaseRuleResponse.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'createdTime'))
    GetCaseRuleResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: 'lastModifiedTime'))
    GetCaseRuleResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    GetCaseRuleResponse.type = Types::GetCaseRuleResponse
    GetDomainInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainInput.type = Types::GetDomainInput
    GetDomainOutput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#required" => {}}))
    GetDomainOutput.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'domainArn', traits: {"smithy.api#required" => {}}))
    GetDomainOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetDomainOutput.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    GetDomainOutput.add_member(:domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'domainStatus', traits: {"smithy.api#required" => {}}))
    GetDomainOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    GetDomainOutput.type = Types::GetDomainOutput
    GetFieldResponse.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId', traits: {"smithy.api#required" => {}}))
    GetFieldResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetFieldResponse.add_member(:field_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldArn, location_name: 'fieldArn', traits: {"smithy.api#required" => {}}))
    GetFieldResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldDescription, location_name: 'description'))
    GetFieldResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    GetFieldResponse.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNamespace, location_name: 'namespace', traits: {"smithy.api#required" => {}}))
    GetFieldResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    GetFieldResponse.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Deleted, location_name: 'deleted', traits: {"smithy.api#default" => false}))
    GetFieldResponse.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'createdTime'))
    GetFieldResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: 'lastModifiedTime'))
    GetFieldResponse.type = Types::GetFieldResponse
    GetLayoutInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLayoutInput.add_member(:layout_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutId, location_name: 'layoutId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLayoutInput.type = Types::GetLayoutInput
    GetLayoutOutput.add_member(:layout_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutId, location_name: 'layoutId', traits: {"smithy.api#required" => {}}))
    GetLayoutOutput.add_member(:layout_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutArn, location_name: 'layoutArn', traits: {"smithy.api#required" => {}}))
    GetLayoutOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetLayoutOutput.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutContent, location_name: 'content', traits: {"smithy.api#required" => {}}))
    GetLayoutOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    GetLayoutOutput.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Deleted, location_name: 'deleted', traits: {"smithy.api#default" => false}))
    GetLayoutOutput.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'createdTime'))
    GetLayoutOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: 'lastModifiedTime'))
    GetLayoutOutput.type = Types::GetLayoutOutput
    GetTemplateInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateInput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: 'templateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateInput.type = Types::GetTemplateInput
    GetTemplateOutput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: 'templateId', traits: {"smithy.api#required" => {}}))
    GetTemplateOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'templateArn', traits: {"smithy.api#required" => {}}))
    GetTemplateOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetTemplateOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDescription, location_name: 'description'))
    GetTemplateOutput.add_member(:layout_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutConfiguration, location_name: 'layoutConfiguration'))
    GetTemplateOutput.add_member(:required_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredFieldList, location_name: 'requiredFields'))
    GetTemplateOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    GetTemplateOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetTemplateOutput.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Deleted, location_name: 'deleted', traits: {"smithy.api#default" => false}))
    GetTemplateOutput.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'createdTime'))
    GetTemplateOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: 'lastModifiedTime'))
    GetTemplateOutput.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateCaseRuleList, location_name: 'rules'))
    GetTemplateOutput.type = Types::GetTemplateOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    LayoutConfiguration.add_member(:default_layout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutId, location_name: 'defaultLayout'))
    LayoutConfiguration.type = Types::LayoutConfiguration
    LayoutContent.add_member(:basic, Types::LayoutContent::Basic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BasicLayout, location_name: 'basic'))
    LayoutContent.add_member(:unknown, Types::LayoutContent::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    LayoutContent.type = Types::LayoutContent
    LayoutSections.add_member(:sections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SectionsList, location_name: 'sections'))
    LayoutSections.type = Types::LayoutSections
    LayoutSummary.add_member(:layout_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutId, location_name: 'layoutId', traits: {"smithy.api#required" => {}}))
    LayoutSummary.add_member(:layout_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutArn, location_name: 'layoutArn', traits: {"smithy.api#required" => {}}))
    LayoutSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    LayoutSummary.type = Types::LayoutSummary
    LayoutSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutSummary)
    ListCaseRulesRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCaseRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCaseRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCaseRulesRequest.type = Types::ListCaseRulesRequest
    ListCaseRulesResponse.add_member(:case_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleSummaryList, location_name: 'caseRules', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#required" => {}}))
    ListCaseRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCaseRulesResponse.type = Types::ListCaseRulesResponse
    ListCasesForContactInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCasesForContactInput.add_member(:contact_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactArn, location_name: 'contactArn', traits: {"smithy.api#required" => {}}))
    ListCasesForContactInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 10}}))
    ListCasesForContactInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCasesForContactInput.type = Types::ListCasesForContactInput
    ListCasesForContactOutput.add_member(:cases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseSummaryList, location_name: 'cases', traits: {"smithy.api#length" => {"max" => 10}, "smithy.api#required" => {}}))
    ListCasesForContactOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCasesForContactOutput.type = Types::ListCasesForContactOutput
    ListDomainsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 10}}))
    ListDomainsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDomainsInput.type = Types::ListDomainsInput
    ListDomainsOutput.add_member(:domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainSummaryList, location_name: 'domains', traits: {"smithy.api#required" => {}}))
    ListDomainsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListDomainsOutput.type = Types::ListDomainsOutput
    ListFieldOptionsInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFieldOptionsInput.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFieldOptionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFieldOptionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFieldOptionsInput.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValuesList, location_name: 'values', traits: {"smithy.api#httpQuery" => "values"}))
    ListFieldOptionsInput.type = Types::ListFieldOptionsInput
    ListFieldOptionsOutput.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldOptionsList, location_name: 'options', traits: {"smithy.api#required" => {}}))
    ListFieldOptionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListFieldOptionsOutput.type = Types::ListFieldOptionsOutput
    ListFieldsInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFieldsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFieldsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFieldsInput.type = Types::ListFieldsInput
    ListFieldsOutput.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldSummaryList, location_name: 'fields', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#required" => {}}))
    ListFieldsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListFieldsOutput.type = Types::ListFieldsOutput
    ListLayoutsInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLayoutsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListLayoutsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLayoutsInput.type = Types::ListLayoutsInput
    ListLayoutsOutput.add_member(:layouts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutSummaryList, location_name: 'layouts', traits: {"smithy.api#required" => {}}))
    ListLayoutsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListLayoutsOutput.type = Types::ListLayoutsOutput
    ListTagsForResourceInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTemplatesInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTemplatesInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStatusFilters, location_name: 'status', traits: {"smithy.api#httpQuery" => "status"}))
    ListTemplatesInput.type = Types::ListTemplatesInput
    ListTemplatesOutput.add_member(:templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSummaryList, location_name: 'templates', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#required" => {}}))
    ListTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListTemplatesOutput.type = Types::ListTemplatesOutput
    OperandOne.add_member(:field_id, Types::OperandOne::FieldId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId'))
    OperandOne.add_member(:unknown, Types::OperandOne::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    OperandOne.type = Types::OperandOne
    OperandTwo.add_member(:string_value, Types::OperandTwo::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'stringValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1500}}))
    OperandTwo.add_member(:boolean_value, Types::OperandTwo::BooleanValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'booleanValue'))
    OperandTwo.add_member(:double_value, Types::OperandTwo::DoubleValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'doubleValue'))
    OperandTwo.add_member(:empty_value, Types::OperandTwo::EmptyValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyOperandValue, location_name: 'emptyValue'))
    OperandTwo.add_member(:unknown, Types::OperandTwo::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    OperandTwo.type = Types::OperandTwo
    PutCaseEventConfigurationInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutCaseEventConfigurationInput.add_member(:event_bridge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeConfiguration, location_name: 'eventBridge', traits: {"smithy.api#required" => {}}))
    PutCaseEventConfigurationInput.type = Types::PutCaseEventConfigurationInput
    PutCaseEventConfigurationOutput.type = Types::PutCaseEventConfigurationOutput
    RelatedItemContent.add_member(:contact, Types::RelatedItemContent::Contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactContent, location_name: 'contact'))
    RelatedItemContent.add_member(:comment, Types::RelatedItemContent::Comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentContent, location_name: 'comment'))
    RelatedItemContent.add_member(:file, Types::RelatedItemContent::File, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileContent, location_name: 'file'))
    RelatedItemContent.add_member(:sla, Types::RelatedItemContent::Sla, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaContent, location_name: 'sla'))
    RelatedItemContent.add_member(:unknown, Types::RelatedItemContent::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RelatedItemContent.type = Types::RelatedItemContent
    RelatedItemEventIncludedData.add_member(:include_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeContent', traits: {"smithy.api#required" => {}}))
    RelatedItemEventIncludedData.type = Types::RelatedItemEventIncludedData
    RelatedItemFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemTypeFilter)
    RelatedItemInputContent.add_member(:contact, Types::RelatedItemInputContent::Contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Contact, location_name: 'contact'))
    RelatedItemInputContent.add_member(:comment, Types::RelatedItemInputContent::Comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentContent, location_name: 'comment'))
    RelatedItemInputContent.add_member(:file, Types::RelatedItemInputContent::File, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileContent, location_name: 'file'))
    RelatedItemInputContent.add_member(:sla, Types::RelatedItemInputContent::Sla, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaInputContent, location_name: 'sla'))
    RelatedItemInputContent.add_member(:unknown, Types::RelatedItemInputContent::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RelatedItemInputContent.type = Types::RelatedItemInputContent
    RelatedItemTypeFilter.add_member(:contact, Types::RelatedItemTypeFilter::Contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactFilter, location_name: 'contact'))
    RelatedItemTypeFilter.add_member(:comment, Types::RelatedItemTypeFilter::Comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentFilter, location_name: 'comment'))
    RelatedItemTypeFilter.add_member(:file, Types::RelatedItemTypeFilter::File, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileFilter, location_name: 'file'))
    RelatedItemTypeFilter.add_member(:sla, Types::RelatedItemTypeFilter::Sla, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaFilter, location_name: 'sla'))
    RelatedItemTypeFilter.add_member(:unknown, Types::RelatedItemTypeFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RelatedItemTypeFilter.type = Types::RelatedItemTypeFilter
    RequiredCaseRule.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'defaultValue', traits: {"smithy.api#required" => {}}))
    RequiredCaseRule.add_member(:conditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanConditionList, location_name: 'conditions', traits: {"smithy.api#required" => {}}))
    RequiredCaseRule.type = Types::RequiredCaseRule
    RequiredField.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId', traits: {"smithy.api#required" => {}}))
    RequiredField.type = Types::RequiredField
    RequiredFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredField)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SearchCasesInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchCasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchCasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    SearchCasesInput.add_member(:search_term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'searchTerm', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}}))
    SearchCasesInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseFilter, location_name: 'filter'))
    SearchCasesInput.add_member(:sorts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortList, location_name: 'sorts', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}}))
    SearchCasesInput.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldIdentifierList, location_name: 'fields', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}}))
    SearchCasesInput.type = Types::SearchCasesInput
    SearchCasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    SearchCasesOutput.add_member(:cases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchCasesResponseItemList, location_name: 'cases', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#required" => {}}))
    SearchCasesOutput.type = Types::SearchCasesOutput
    SearchCasesResponseItem.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#required" => {}}))
    SearchCasesResponseItem.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: 'templateId', traits: {"smithy.api#required" => {}}))
    SearchCasesResponseItem.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValueList, location_name: 'fields', traits: {"smithy.api#length" => {"max" => 10}, "smithy.api#required" => {}}))
    SearchCasesResponseItem.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    SearchCasesResponseItem.type = Types::SearchCasesResponseItem
    SearchCasesResponseItemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchCasesResponseItem)
    SearchRelatedItemsInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchRelatedItemsInput.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchRelatedItemsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 25}}))
    SearchRelatedItemsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    SearchRelatedItemsInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemFilterList, location_name: 'filters', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}}))
    SearchRelatedItemsInput.type = Types::SearchRelatedItemsInput
    SearchRelatedItemsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    SearchRelatedItemsOutput.add_member(:related_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchRelatedItemsResponseItemList, location_name: 'relatedItems', traits: {"smithy.api#length" => {"max" => 25}, "smithy.api#required" => {}}))
    SearchRelatedItemsOutput.type = Types::SearchRelatedItemsOutput
    SearchRelatedItemsResponseItem.add_member(:related_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemId, location_name: 'relatedItemId', traits: {"smithy.api#required" => {}}))
    SearchRelatedItemsResponseItem.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    SearchRelatedItemsResponseItem.add_member(:association_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationTime, location_name: 'associationTime', traits: {"smithy.api#required" => {}}))
    SearchRelatedItemsResponseItem.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedItemContent, location_name: 'content', traits: {"smithy.api#required" => {}}))
    SearchRelatedItemsResponseItem.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    SearchRelatedItemsResponseItem.add_member(:performed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserUnion, location_name: 'performedBy'))
    SearchRelatedItemsResponseItem.type = Types::SearchRelatedItemsResponseItem
    SearchRelatedItemsResponseItemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchRelatedItemsResponseItem)
    Section.add_member(:field_group, Types::Section::FieldGroup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldGroup, location_name: 'fieldGroup'))
    Section.add_member(:unknown, Types::Section::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Section.type = Types::Section
    SectionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Section)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SlaConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    SlaConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    SlaConfiguration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    SlaConfiguration.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId'))
    SlaConfiguration.add_member(:target_field_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaFieldValueUnionList, location_name: 'targetFieldValues'))
    SlaConfiguration.add_member(:target_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaTargetTime, location_name: 'targetTime', traits: {"smithy.api#required" => {}}))
    SlaConfiguration.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaCompletionTime, location_name: 'completionTime'))
    SlaConfiguration.type = Types::SlaConfiguration
    SlaContent.add_member(:sla_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaConfiguration, location_name: 'slaConfiguration', traits: {"smithy.api#required" => {}}))
    SlaContent.type = Types::SlaContent
    SlaFieldValueUnionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValueUnion)
    SlaFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaName, location_name: 'name'))
    SlaFilter.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaStatus, location_name: 'status'))
    SlaFilter.type = Types::SlaFilter
    SlaInputConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    SlaInputConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    SlaInputConfiguration.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId'))
    SlaInputConfiguration.add_member(:target_field_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaFieldValueUnionList, location_name: 'targetFieldValues'))
    SlaInputConfiguration.add_member(:target_sla_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetSlaMinutes, location_name: 'targetSlaMinutes', traits: {"smithy.api#required" => {}}))
    SlaInputConfiguration.type = Types::SlaInputConfiguration
    SlaInputContent.add_member(:sla_input_configuration, Types::SlaInputContent::SlaInputConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaInputConfiguration, location_name: 'slaInputConfiguration'))
    SlaInputContent.add_member(:unknown, Types::SlaInputContent::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    SlaInputContent.type = Types::SlaInputContent
    Sort.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId', traits: {"smithy.api#required" => {}}))
    Sort.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Order, location_name: 'sortOrder', traits: {"smithy.api#required" => {}}))
    Sort.type = Types::Sort
    SortList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sort)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TemplateCaseRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateRule)
    TemplateRule.add_member(:case_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleId, location_name: 'caseRuleId', traits: {"smithy.api#required" => {}}))
    TemplateRule.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId', traits: {"smithy.api#required" => {}}))
    TemplateRule.type = Types::TemplateRule
    TemplateStatusFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStatus)
    TemplateSummary.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: 'templateId', traits: {"smithy.api#required" => {}}))
    TemplateSummary.add_member(:template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'templateArn', traits: {"smithy.api#required" => {}}))
    TemplateSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    TemplateSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    TemplateSummary.type = Types::TemplateSummary
    TemplateSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSummary)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateCaseInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCaseInput.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCaseInput.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValueList, location_name: 'fields', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#required" => {}}))
    UpdateCaseInput.add_member(:performed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserUnion, location_name: 'performedBy'))
    UpdateCaseInput.type = Types::UpdateCaseInput
    UpdateCaseOutput.type = Types::UpdateCaseOutput
    UpdateCaseRuleRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCaseRuleRequest.add_member(:case_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleId, location_name: 'caseRuleId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCaseRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleName, location_name: 'name'))
    UpdateCaseRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleDescription, location_name: 'description'))
    UpdateCaseRuleRequest.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseRuleDetails, location_name: 'rule'))
    UpdateCaseRuleRequest.type = Types::UpdateCaseRuleRequest
    UpdateCaseRuleResponse.type = Types::UpdateCaseRuleResponse
    UpdateFieldInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFieldInput.add_member(:field_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldId, location_name: 'fieldId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFieldInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'name'))
    UpdateFieldInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldDescription, location_name: 'description'))
    UpdateFieldInput.type = Types::UpdateFieldInput
    UpdateFieldOutput.type = Types::UpdateFieldOutput
    UpdateLayoutInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLayoutInput.add_member(:layout_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutId, location_name: 'layoutId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLayoutInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutName, location_name: 'name'))
    UpdateLayoutInput.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutContent, location_name: 'content'))
    UpdateLayoutInput.type = Types::UpdateLayoutInput
    UpdateLayoutOutput.type = Types::UpdateLayoutOutput
    UpdateTemplateInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'domainId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTemplateInput.add_member(:template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateId, location_name: 'templateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTemplateInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'name'))
    UpdateTemplateInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDescription, location_name: 'description'))
    UpdateTemplateInput.add_member(:layout_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutConfiguration, location_name: 'layoutConfiguration'))
    UpdateTemplateInput.add_member(:required_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredFieldList, location_name: 'requiredFields'))
    UpdateTemplateInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStatus, location_name: 'status'))
    UpdateTemplateInput.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateCaseRuleList, location_name: 'rules'))
    UpdateTemplateInput.type = Types::UpdateTemplateInput
    UpdateTemplateOutput.type = Types::UpdateTemplateOutput
    UserUnion.add_member(:user_arn, Types::UserUnion::UserArn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserArn, location_name: 'userArn'))
    UserUnion.add_member(:custom_entity, Types::UserUnion::CustomEntity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEntity, location_name: 'customEntity'))
    UserUnion.add_member(:unknown, Types::UserUnion::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    UserUnion.type = Types::UserUnion
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    ValuesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value)

    AmazonConnectCases = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.connectcases#AmazonConnectCases"
      service.name = "AmazonConnectCases"
      service.version = "2022-10-03"
      service.traits = {"aws.api#service" => {"sdkId" => "ConnectCases", "arnNamespace" => "cases", "cloudTrailEventSource" => "event-source-placeholder", "endpointPrefix" => "cases"}, "aws.auth#sigv4" => {"name" => "cases"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"]}, "smithy.api#title" => "Amazon Connect Cases"}
      service.add_operation(:batch_get_case_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#BatchGetCaseRule"
        operation.name = "BatchGetCaseRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCaseRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCaseRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/rules-batch", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_field, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#BatchGetField"
        operation.name = "BatchGetField"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFieldInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFieldOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/fields-batch", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_put_field_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#BatchPutFieldOptions"
        operation.name = "BatchPutFieldOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutFieldOptionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutFieldOptionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/fields/{fieldId}/options", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#CreateCase"
        operation.name = "CreateCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/cases", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_case_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#CreateCaseRule"
        operation.name = "CreateCaseRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/case-rules", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_field, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#CreateField"
        operation.name = "CreateField"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFieldInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFieldOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/fields", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_layout, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#CreateLayout"
        operation.name = "CreateLayout"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLayoutInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLayoutOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/layouts", "method" => "POST"}}
      end)
      service.add_operation(:create_related_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#CreateRelatedItem"
        operation.name = "CreateRelatedItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRelatedItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRelatedItemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/cases/{caseId}/related-items/", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#CreateTemplate"
        operation.name = "CreateTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/templates", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#DeleteCase"
        operation.name = "DeleteCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/cases/{caseId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_case_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#DeleteCaseRule"
        operation.name = "DeleteCaseRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCaseRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCaseRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/case-rules/{caseRuleId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_field, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#DeleteField"
        operation.name = "DeleteField"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFieldRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFieldResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/fields/{fieldId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_layout, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#DeleteLayout"
        operation.name = "DeleteLayout"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLayoutRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLayoutResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/layouts/{layoutId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_related_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#DeleteRelatedItem"
        operation.name = "DeleteRelatedItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRelatedItemRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRelatedItemResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/cases/{caseId}/related-items/{relatedItemId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#DeleteTemplate"
        operation.name = "DeleteTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/templates/{templateId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#GetCase"
        operation.name = "GetCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/cases/{caseId}", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetCase.new
      end)
      service.add_operation(:get_case_audit_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#GetCaseAuditEvents"
        operation.name = "GetCaseAuditEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseAuditEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseAuditEventsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/cases/{caseId}/audit-history", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetCaseAuditEvents.new
      end)
      service.add_operation(:get_case_event_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#GetCaseEventConfiguration"
        operation.name = "GetCaseEventConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseEventConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCaseEventConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/case-event-configuration", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#GetDomain"
        operation.name = "GetDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_layout, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#GetLayout"
        operation.name = "GetLayout"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLayoutInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLayoutOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/layouts/{layoutId}", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#GetTemplate"
        operation.name = "GetTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/templates/{templateId}", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_case_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#ListCaseRules"
        operation.name = "ListCaseRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCaseRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCaseRulesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/rules-list/", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCaseRules.new
      end)
      service.add_operation(:list_cases_for_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#ListCasesForContact"
        operation.name = "ListCasesForContact"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCasesForContactInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCasesForContactOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/list-cases-for-contact", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCasesForContact.new
      end)
      service.add_operation(:list_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#ListDomains"
        operation.name = "ListDomains"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains-list", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDomains.new
      end)
      service.add_operation(:list_field_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#ListFieldOptions"
        operation.name = "ListFieldOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFieldOptionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFieldOptionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/fields/{fieldId}/options-list", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFieldOptions.new
      end)
      service.add_operation(:list_fields, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#ListFields"
        operation.name = "ListFields"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFieldsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFieldsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/fields-list", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFields.new
      end)
      service.add_operation(:list_layouts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#ListLayouts"
        operation.name = "ListLayouts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLayoutsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLayoutsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/layouts-list", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLayouts.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{arn}", "method" => "GET"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#ListTemplates"
        operation.name = "ListTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/templates-list", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplates.new
      end)
      service.add_operation(:put_case_event_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#PutCaseEventConfiguration"
        operation.name = "PutCaseEventConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutCaseEventConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutCaseEventConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/case-event-configuration", "method" => "PUT"}}
      end)
      service.add_operation(:search_cases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#SearchCases"
        operation.name = "SearchCases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchCasesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchCasesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/cases-search", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchCases.new
      end)
      service.add_operation(:search_related_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#SearchRelatedItems"
        operation.name = "SearchRelatedItems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchRelatedItemsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchRelatedItemsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/cases/{caseId}/related-items-search", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchRelatedItems.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{arn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{arn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#UpdateCase"
        operation.name = "UpdateCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCaseInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCaseOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/cases/{caseId}", "method" => "PUT"}}
      end)
      service.add_operation(:update_case_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#UpdateCaseRule"
        operation.name = "UpdateCaseRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCaseRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCaseRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/case-rules/{caseRuleId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_field, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#UpdateField"
        operation.name = "UpdateField"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFieldInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFieldOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/fields/{fieldId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_layout, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#UpdateLayout"
        operation.name = "UpdateLayout"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLayoutInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLayoutOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/layouts/{layoutId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcases#UpdateTemplate"
        operation.name = "UpdateTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/domains/{domainId}/templates/{templateId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
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
