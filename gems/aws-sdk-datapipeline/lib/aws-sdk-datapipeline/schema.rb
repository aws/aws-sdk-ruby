# frozen_string_literal: true

# This is generated code!

module Aws::DataPipeline
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActivatePipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ActivatePipelineInput", name: "ActivatePipelineInput")
    ActivatePipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ActivatePipelineOutput", name: "ActivatePipelineOutput")
    AddTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#AddTagsInput", name: "AddTagsInput")
    AddTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#AddTagsOutput", name: "AddTagsOutput")
    CreatePipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#CreatePipelineInput", name: "CreatePipelineInput")
    CreatePipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#CreatePipelineOutput", name: "CreatePipelineOutput")
    DeactivatePipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#DeactivatePipelineInput", name: "DeactivatePipelineInput")
    DeactivatePipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#DeactivatePipelineOutput", name: "DeactivatePipelineOutput")
    DeletePipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#DeletePipelineInput", name: "DeletePipelineInput")
    DescribeObjectsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#DescribeObjectsInput", name: "DescribeObjectsInput")
    DescribeObjectsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#DescribeObjectsOutput", name: "DescribeObjectsOutput")
    DescribePipelinesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#DescribePipelinesInput", name: "DescribePipelinesInput")
    DescribePipelinesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#DescribePipelinesOutput", name: "DescribePipelinesOutput")
    EvaluateExpressionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#EvaluateExpressionInput", name: "EvaluateExpressionInput")
    EvaluateExpressionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#EvaluateExpressionOutput", name: "EvaluateExpressionOutput")
    Field = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#Field", name: "Field")
    GetPipelineDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#GetPipelineDefinitionInput", name: "GetPipelineDefinitionInput")
    GetPipelineDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#GetPipelineDefinitionOutput", name: "GetPipelineDefinitionOutput")
    InstanceIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#InstanceIdentity", name: "InstanceIdentity")
    InternalServiceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#InternalServiceError", name: "InternalServiceError", traits: {"smithy.api#error" => "server"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    ListPipelinesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ListPipelinesInput", name: "ListPipelinesInput")
    ListPipelinesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ListPipelinesOutput", name: "ListPipelinesOutput")
    Operator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#Operator", name: "Operator")
    OperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datapipeline#OperatorType", name: "OperatorType")
    ParameterAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ParameterAttribute", name: "ParameterAttribute")
    ParameterAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#ParameterAttributeList", name: "ParameterAttributeList")
    ParameterObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ParameterObject", name: "ParameterObject")
    ParameterObjectList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#ParameterObjectList", name: "ParameterObjectList")
    ParameterValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ParameterValue", name: "ParameterValue")
    ParameterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#ParameterValueList", name: "ParameterValueList")
    PipelineDeletedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#PipelineDeletedException", name: "PipelineDeletedException", traits: {"smithy.api#error" => "client"})
    PipelineDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#PipelineDescription", name: "PipelineDescription")
    PipelineDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#PipelineDescriptionList", name: "PipelineDescriptionList")
    PipelineIdName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#PipelineIdName", name: "PipelineIdName")
    PipelineNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#PipelineNotFoundException", name: "PipelineNotFoundException", traits: {"smithy.api#error" => "client"})
    PipelineObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#PipelineObject", name: "PipelineObject")
    PipelineObjectList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#PipelineObjectList", name: "PipelineObjectList")
    PipelineObjectMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.datapipeline#PipelineObjectMap", name: "PipelineObjectMap")
    PollForTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#PollForTaskInput", name: "PollForTaskInput")
    PollForTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#PollForTaskOutput", name: "PollForTaskOutput")
    PutPipelineDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#PutPipelineDefinitionInput", name: "PutPipelineDefinitionInput")
    PutPipelineDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#PutPipelineDefinitionOutput", name: "PutPipelineDefinitionOutput")
    Query = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#Query", name: "Query")
    QueryObjectsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#QueryObjectsInput", name: "QueryObjectsInput")
    QueryObjectsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#QueryObjectsOutput", name: "QueryObjectsOutput")
    RemoveTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#RemoveTagsInput", name: "RemoveTagsInput")
    RemoveTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#RemoveTagsOutput", name: "RemoveTagsOutput")
    ReportTaskProgressInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ReportTaskProgressInput", name: "ReportTaskProgressInput")
    ReportTaskProgressOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ReportTaskProgressOutput", name: "ReportTaskProgressOutput")
    ReportTaskRunnerHeartbeatInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ReportTaskRunnerHeartbeatInput", name: "ReportTaskRunnerHeartbeatInput")
    ReportTaskRunnerHeartbeatOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ReportTaskRunnerHeartbeatOutput", name: "ReportTaskRunnerHeartbeatOutput")
    Selector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#Selector", name: "Selector")
    SelectorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#SelectorList", name: "SelectorList")
    SetStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#SetStatusInput", name: "SetStatusInput")
    SetTaskStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#SetTaskStatusInput", name: "SetTaskStatusInput")
    SetTaskStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#SetTaskStatusOutput", name: "SetTaskStatusOutput")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#Tag", name: "Tag")
    TaskNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#TaskNotFoundException", name: "TaskNotFoundException", traits: {"smithy.api#error" => "client"})
    TaskObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#TaskObject", name: "TaskObject")
    TaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datapipeline#TaskStatus", name: "TaskStatus")
    ValidatePipelineDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ValidatePipelineDefinitionInput", name: "ValidatePipelineDefinitionInput")
    ValidatePipelineDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ValidatePipelineDefinitionOutput", name: "ValidatePipelineDefinitionOutput")
    ValidationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ValidationError", name: "ValidationError")
    ValidationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#ValidationErrors", name: "ValidationErrors")
    ValidationWarning = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datapipeline#ValidationWarning", name: "ValidationWarning")
    ValidationWarnings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#ValidationWarnings", name: "ValidationWarnings")
    AttributeNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#attributeNameString", name: "AttributeNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    AttributeValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#attributeValueString", name: "AttributeValueString", traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.datapipeline#boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    CancelActive = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.datapipeline#cancelActive", name: "CancelActive")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#errorMessage", name: "ErrorMessage")
    FieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#fieldList", name: "FieldList")
    FieldNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#fieldNameString", name: "FieldNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    FieldStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#fieldStringValue", name: "FieldStringValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#id", name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    IdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#idList", name: "IdList")
    Int = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.datapipeline#int", name: "Int")
    LongString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#longString", name: "LongString", traits: {"smithy.api#length" => {"min" => 0, "max" => 20971520}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    PipelineList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#pipelineList", name: "PipelineList")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#string", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#stringList", name: "StringList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#tagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#tagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#tagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#taskId", name: "TaskId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.datapipeline#timestamp", name: "Timestamp")
    ValidationMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datapipeline#validationMessage", name: "ValidationMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    ValidationMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datapipeline#validationMessages", name: "ValidationMessages")

    ActivatePipelineInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    ActivatePipelineInput.add_member(:parameter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValueList, name: "parameterValues"))
    ActivatePipelineInput.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTimestamp"))
    ActivatePipelineInput.type = Types::ActivatePipelineInput
    ActivatePipelineOutput.type = Types::ActivatePipelineOutput
    AddTagsInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    AddTagsInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    AddTagsInput.type = Types::AddTagsInput
    AddTagsOutput.type = Types::AddTagsOutput
    CreatePipelineInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "name", traits: {"smithy.api#required" => {}}))
    CreatePipelineInput.add_member(:unique_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "uniqueId", traits: {"smithy.api#required" => {}}))
    CreatePipelineInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    CreatePipelineInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreatePipelineInput.type = Types::CreatePipelineInput
    CreatePipelineOutput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    CreatePipelineOutput.type = Types::CreatePipelineOutput
    DeactivatePipelineInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    DeactivatePipelineInput.add_member(:cancel_active, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelActive, name: "cancelActive"))
    DeactivatePipelineInput.type = Types::DeactivatePipelineInput
    DeactivatePipelineOutput.type = Types::DeactivatePipelineOutput
    DeletePipelineInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    DeletePipelineInput.type = Types::DeletePipelineInput
    DescribeObjectsInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    DescribeObjectsInput.add_member(:object_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IdList, name: "objectIds", traits: {"smithy.api#required" => {}}))
    DescribeObjectsInput.add_member(:evaluate_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "evaluateExpressions", traits: {"smithy.api#default" => false}))
    DescribeObjectsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "marker"))
    DescribeObjectsInput.type = Types::DescribeObjectsInput
    DescribeObjectsOutput.add_member(:pipeline_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineObjectList, name: "pipelineObjects", traits: {"smithy.api#required" => {}}))
    DescribeObjectsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "marker"))
    DescribeObjectsOutput.add_member(:has_more_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "hasMoreResults", traits: {"smithy.api#default" => false}))
    DescribeObjectsOutput.type = Types::DescribeObjectsOutput
    DescribePipelinesInput.add_member(:pipeline_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IdList, name: "pipelineIds", traits: {"smithy.api#required" => {}}))
    DescribePipelinesInput.type = Types::DescribePipelinesInput
    DescribePipelinesOutput.add_member(:pipeline_description_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineDescriptionList, name: "pipelineDescriptionList", traits: {"smithy.api#required" => {}}))
    DescribePipelinesOutput.type = Types::DescribePipelinesOutput
    EvaluateExpressionInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    EvaluateExpressionInput.add_member(:object_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "objectId", traits: {"smithy.api#required" => {}}))
    EvaluateExpressionInput.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: LongString, name: "expression", traits: {"smithy.api#required" => {}}))
    EvaluateExpressionInput.type = Types::EvaluateExpressionInput
    EvaluateExpressionOutput.add_member(:evaluated_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: LongString, name: "evaluatedExpression", traits: {"smithy.api#required" => {}}))
    EvaluateExpressionOutput.type = Types::EvaluateExpressionOutput
    Field.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameString, name: "key", traits: {"smithy.api#required" => {}}))
    Field.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldStringValue, name: "stringValue"))
    Field.add_member(:ref_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameString, name: "refValue"))
    Field.type = Types::Field
    GetPipelineDefinitionInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    GetPipelineDefinitionInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    GetPipelineDefinitionInput.type = Types::GetPipelineDefinitionInput
    GetPipelineDefinitionOutput.add_member(:pipeline_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineObjectList, name: "pipelineObjects"))
    GetPipelineDefinitionOutput.add_member(:parameter_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterObjectList, name: "parameterObjects"))
    GetPipelineDefinitionOutput.add_member(:parameter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValueList, name: "parameterValues"))
    GetPipelineDefinitionOutput.type = Types::GetPipelineDefinitionOutput
    InstanceIdentity.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "document"))
    InstanceIdentity.add_member(:signature, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "signature"))
    InstanceIdentity.type = Types::InstanceIdentity
    InternalServiceError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServiceError.type = Types::InternalServiceError
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    ListPipelinesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "marker"))
    ListPipelinesInput.type = Types::ListPipelinesInput
    ListPipelinesOutput.add_member(:pipeline_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineList, name: "pipelineIdList", traits: {"smithy.api#required" => {}}))
    ListPipelinesOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "marker"))
    ListPipelinesOutput.add_member(:has_more_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "hasMoreResults", traits: {"smithy.api#default" => false}))
    ListPipelinesOutput.type = Types::ListPipelinesOutput
    Operator.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatorType, name: "type"))
    Operator.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "values"))
    Operator.type = Types::Operator
    OperatorType.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equal", traits: {"smithy.api#enumValue" => "EQ"}))
    OperatorType.add_member(:reference_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReferenceEqual", traits: {"smithy.api#enumValue" => "REF_EQ"}))
    OperatorType.add_member(:less_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThanOrEqual", traits: {"smithy.api#enumValue" => "LE"}))
    OperatorType.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThanOrEqual", traits: {"smithy.api#enumValue" => "GE"}))
    OperatorType.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Between", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    ParameterAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameString, name: "key", traits: {"smithy.api#required" => {}}))
    ParameterAttribute.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueString, name: "stringValue", traits: {"smithy.api#required" => {}}))
    ParameterAttribute.type = Types::ParameterAttribute
    ParameterAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterAttribute, name: "member"))
    ParameterObject.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameString, name: "id", traits: {"smithy.api#required" => {}}))
    ParameterObject.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterAttributeList, name: "attributes", traits: {"smithy.api#required" => {}}))
    ParameterObject.type = Types::ParameterObject
    ParameterObjectList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterObject, name: "member"))
    ParameterValue.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameString, name: "id", traits: {"smithy.api#required" => {}}))
    ParameterValue.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldStringValue, name: "stringValue", traits: {"smithy.api#required" => {}}))
    ParameterValue.type = Types::ParameterValue
    ParameterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "member"))
    PipelineDeletedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    PipelineDeletedException.type = Types::PipelineDeletedException
    PipelineDescription.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    PipelineDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "name", traits: {"smithy.api#required" => {}}))
    PipelineDescription.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "fields", traits: {"smithy.api#required" => {}}))
    PipelineDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    PipelineDescription.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    PipelineDescription.type = Types::PipelineDescription
    PipelineDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineDescription, name: "member"))
    PipelineIdName.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "id"))
    PipelineIdName.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "name"))
    PipelineIdName.type = Types::PipelineIdName
    PipelineNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    PipelineNotFoundException.type = Types::PipelineNotFoundException
    PipelineObject.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "id", traits: {"smithy.api#required" => {}}))
    PipelineObject.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "name", traits: {"smithy.api#required" => {}}))
    PipelineObject.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "fields", traits: {"smithy.api#required" => {}}))
    PipelineObject.type = Types::PipelineObject
    PipelineObjectList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineObject, name: "member"))
    PipelineObjectMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "key"))
    PipelineObjectMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineObject, name: "value"))
    PollForTaskInput.add_member(:worker_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workerGroup", traits: {"smithy.api#required" => {}}))
    PollForTaskInput.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "hostname"))
    PollForTaskInput.add_member(:instance_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdentity, name: "instanceIdentity"))
    PollForTaskInput.type = Types::PollForTaskInput
    PollForTaskOutput.add_member(:task_object, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskObject, name: "taskObject"))
    PollForTaskOutput.type = Types::PollForTaskOutput
    PutPipelineDefinitionInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    PutPipelineDefinitionInput.add_member(:pipeline_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineObjectList, name: "pipelineObjects", traits: {"smithy.api#required" => {}}))
    PutPipelineDefinitionInput.add_member(:parameter_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterObjectList, name: "parameterObjects"))
    PutPipelineDefinitionInput.add_member(:parameter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValueList, name: "parameterValues"))
    PutPipelineDefinitionInput.type = Types::PutPipelineDefinitionInput
    PutPipelineDefinitionOutput.add_member(:validation_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationErrors, name: "validationErrors"))
    PutPipelineDefinitionOutput.add_member(:validation_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationWarnings, name: "validationWarnings"))
    PutPipelineDefinitionOutput.add_member(:errored, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "errored", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PutPipelineDefinitionOutput.type = Types::PutPipelineDefinitionOutput
    Query.add_member(:selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectorList, name: "selectors"))
    Query.type = Types::Query
    QueryObjectsInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    QueryObjectsInput.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: Query, name: "query"))
    QueryObjectsInput.add_member(:sphere, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sphere", traits: {"smithy.api#required" => {}}))
    QueryObjectsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "marker"))
    QueryObjectsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Int, name: "limit"))
    QueryObjectsInput.type = Types::QueryObjectsInput
    QueryObjectsOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IdList, name: "ids"))
    QueryObjectsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "marker"))
    QueryObjectsOutput.add_member(:has_more_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "hasMoreResults", traits: {"smithy.api#default" => false}))
    QueryObjectsOutput.type = Types::QueryObjectsOutput
    RemoveTagsInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    RemoveTagsInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    RemoveTagsInput.type = Types::RemoveTagsInput
    RemoveTagsOutput.type = Types::RemoveTagsOutput
    ReportTaskProgressInput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId", traits: {"smithy.api#required" => {}}))
    ReportTaskProgressInput.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "fields"))
    ReportTaskProgressInput.type = Types::ReportTaskProgressInput
    ReportTaskProgressOutput.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "canceled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ReportTaskProgressOutput.type = Types::ReportTaskProgressOutput
    ReportTaskRunnerHeartbeatInput.add_member(:taskrunner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "taskrunnerId", traits: {"smithy.api#required" => {}}))
    ReportTaskRunnerHeartbeatInput.add_member(:worker_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workerGroup"))
    ReportTaskRunnerHeartbeatInput.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "hostname"))
    ReportTaskRunnerHeartbeatInput.type = Types::ReportTaskRunnerHeartbeatInput
    ReportTaskRunnerHeartbeatOutput.add_member(:terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "terminate", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ReportTaskRunnerHeartbeatOutput.type = Types::ReportTaskRunnerHeartbeatOutput
    Selector.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fieldName"))
    Selector.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, name: "operator"))
    Selector.type = Types::Selector
    SelectorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Selector, name: "member"))
    SetStatusInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    SetStatusInput.add_member(:object_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IdList, name: "objectIds", traits: {"smithy.api#required" => {}}))
    SetStatusInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status", traits: {"smithy.api#required" => {}}))
    SetStatusInput.type = Types::SetStatusInput
    SetTaskStatusInput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId", traits: {"smithy.api#required" => {}}))
    SetTaskStatusInput.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "taskStatus", traits: {"smithy.api#required" => {}}))
    SetTaskStatusInput.add_member(:error_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorId"))
    SetTaskStatusInput.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    SetTaskStatusInput.add_member(:error_stack_trace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorStackTrace"))
    SetTaskStatusInput.type = Types::SetTaskStatusInput
    SetTaskStatusOutput.type = Types::SetTaskStatusOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TaskNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TaskNotFoundException.type = Types::TaskNotFoundException
    TaskObject.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, name: "taskId"))
    TaskObject.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId"))
    TaskObject.add_member(:attempt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "attemptId"))
    TaskObject.add_member(:objects, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineObjectMap, name: "objects"))
    TaskObject.type = Types::TaskObject
    TaskStatus.add_member(:finished, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINISHED", traits: {"smithy.api#enumValue" => "FINISHED"}))
    TaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TaskStatus.add_member(:false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FALSE", traits: {"smithy.api#enumValue" => "FALSE"}))
    ValidatePipelineDefinitionInput.add_member(:pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "pipelineId", traits: {"smithy.api#required" => {}}))
    ValidatePipelineDefinitionInput.add_member(:pipeline_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineObjectList, name: "pipelineObjects", traits: {"smithy.api#required" => {}}))
    ValidatePipelineDefinitionInput.add_member(:parameter_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterObjectList, name: "parameterObjects"))
    ValidatePipelineDefinitionInput.add_member(:parameter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValueList, name: "parameterValues"))
    ValidatePipelineDefinitionInput.type = Types::ValidatePipelineDefinitionInput
    ValidatePipelineDefinitionOutput.add_member(:validation_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationErrors, name: "validationErrors"))
    ValidatePipelineDefinitionOutput.add_member(:validation_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationWarnings, name: "validationWarnings"))
    ValidatePipelineDefinitionOutput.add_member(:errored, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "errored", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ValidatePipelineDefinitionOutput.type = Types::ValidatePipelineDefinitionOutput
    ValidationError.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "id"))
    ValidationError.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMessages, name: "errors"))
    ValidationError.type = Types::ValidationError
    ValidationErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationError, name: "member"))
    ValidationWarning.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "id"))
    ValidationWarning.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMessages, name: "warnings"))
    ValidationWarning.type = Types::ValidationWarning
    ValidationWarnings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationWarning, name: "member"))
    FieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Field, name: "member"))
    IdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "member"))
    PipelineList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineIdName, name: "member"))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    ValidationMessages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMessage, name: "member"))

    DataPipeline = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.datapipeline#DataPipeline"
      service.name = "DataPipeline"
      service.version = "2012-10-29"
      service.traits = {"aws.api#service" => {"sdkId" => "Data Pipeline", "arnNamespace" => "datapipeline", "cloudFormationName" => "DataPipeline", "cloudTrailEventSource" => "datapipeline.amazonaws.com", "docId" => "datapipeline-2012-10-29", "endpointPrefix" => "datapipeline"}, "aws.auth#sigv4" => {"name" => "datapipeline"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Data Pipeline", "smithy.api#xmlNamespace" => {"uri" => "http://datapipeline.amazonaws.com/doc/2012-10-29/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://datapipeline-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://datapipeline-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://datapipeline.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://datapipeline.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:activate_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#ActivatePipeline"
        operation.name = "ActivatePipeline"
        operation.input = ActivatePipelineInput
        operation.output = ActivatePipelineOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:add_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#AddTags"
        operation.name = "AddTags"
        operation.input = AddTagsInput
        operation.output = AddTagsOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#CreatePipeline"
        operation.name = "CreatePipeline"
        operation.input = CreatePipelineInput
        operation.output = CreatePipelineOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:deactivate_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#DeactivatePipeline"
        operation.name = "DeactivatePipeline"
        operation.input = DeactivatePipelineInput
        operation.output = DeactivatePipelineOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#DeletePipeline"
        operation.name = "DeletePipeline"
        operation.input = DeletePipelineInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_objects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#DescribeObjects"
        operation.name = "DescribeObjects"
        operation.input = DescribeObjectsInput
        operation.output = DescribeObjectsOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeObjects.new
      end)
      service.add_operation(:describe_pipelines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#DescribePipelines"
        operation.name = "DescribePipelines"
        operation.input = DescribePipelinesInput
        operation.output = DescribePipelinesOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:evaluate_expression, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#EvaluateExpression"
        operation.name = "EvaluateExpression"
        operation.input = EvaluateExpressionInput
        operation.output = EvaluateExpressionOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.errors << TaskNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_pipeline_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#GetPipelineDefinition"
        operation.name = "GetPipelineDefinition"
        operation.input = GetPipelineDefinitionInput
        operation.output = GetPipelineDefinitionOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_pipelines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#ListPipelines"
        operation.name = "ListPipelines"
        operation.input = ListPipelinesInput
        operation.output = ListPipelinesOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPipelines.new
      end)
      service.add_operation(:poll_for_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#PollForTask"
        operation.name = "PollForTask"
        operation.input = PollForTaskInput
        operation.output = PollForTaskOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << TaskNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_pipeline_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#PutPipelineDefinition"
        operation.name = "PutPipelineDefinition"
        operation.input = PutPipelineDefinitionInput
        operation.output = PutPipelineDefinitionOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:query_objects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#QueryObjects"
        operation.name = "QueryObjects"
        operation.input = QueryObjectsInput
        operation.output = QueryObjectsOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::QueryObjects.new
      end)
      service.add_operation(:remove_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = RemoveTagsInput
        operation.output = RemoveTagsOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:report_task_progress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#ReportTaskProgress"
        operation.name = "ReportTaskProgress"
        operation.input = ReportTaskProgressInput
        operation.output = ReportTaskProgressOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.errors << TaskNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:report_task_runner_heartbeat, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#ReportTaskRunnerHeartbeat"
        operation.name = "ReportTaskRunnerHeartbeat"
        operation.input = ReportTaskRunnerHeartbeatInput
        operation.output = ReportTaskRunnerHeartbeatOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:set_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#SetStatus"
        operation.name = "SetStatus"
        operation.input = SetStatusInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:set_task_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#SetTaskStatus"
        operation.name = "SetTaskStatus"
        operation.input = SetTaskStatusInput
        operation.output = SetTaskStatusOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.errors << TaskNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:validate_pipeline_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#ValidatePipelineDefinition"
        operation.name = "ValidatePipelineDefinition"
        operation.input = ValidatePipelineDefinitionInput
        operation.output = ValidatePipelineDefinitionOutput
        operation.errors << InternalServiceError
        operation.errors << InvalidRequestException
        operation.errors << PipelineDeletedException
        operation.errors << PipelineNotFoundException
        operation.traits = {}
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
