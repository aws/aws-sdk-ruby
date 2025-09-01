# frozen_string_literal: true

# This is generated code!

module Aws::DataPipeline
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActivatePipelineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ActivatePipelineInput', name: 'ActivatePipelineInput')
    ActivatePipelineOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ActivatePipelineOutput', name: 'ActivatePipelineOutput')
    AddTagsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#AddTagsInput', name: 'AddTagsInput')
    AddTagsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#AddTagsOutput', name: 'AddTagsOutput')
    CreatePipelineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#CreatePipelineInput', name: 'CreatePipelineInput')
    CreatePipelineOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#CreatePipelineOutput', name: 'CreatePipelineOutput')
    DeactivatePipelineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#DeactivatePipelineInput', name: 'DeactivatePipelineInput')
    DeactivatePipelineOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#DeactivatePipelineOutput', name: 'DeactivatePipelineOutput')
    DeletePipelineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#DeletePipelineInput', name: 'DeletePipelineInput')
    DescribeObjectsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#DescribeObjectsInput', name: 'DescribeObjectsInput')
    DescribeObjectsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#DescribeObjectsOutput', name: 'DescribeObjectsOutput')
    DescribePipelinesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#DescribePipelinesInput', name: 'DescribePipelinesInput')
    DescribePipelinesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#DescribePipelinesOutput', name: 'DescribePipelinesOutput')
    EvaluateExpressionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#EvaluateExpressionInput', name: 'EvaluateExpressionInput')
    EvaluateExpressionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#EvaluateExpressionOutput', name: 'EvaluateExpressionOutput')
    Field = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#Field', name: 'Field')
    GetPipelineDefinitionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#GetPipelineDefinitionInput', name: 'GetPipelineDefinitionInput')
    GetPipelineDefinitionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#GetPipelineDefinitionOutput', name: 'GetPipelineDefinitionOutput')
    InstanceIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#InstanceIdentity', name: 'InstanceIdentity')
    InternalServiceError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#InternalServiceError', name: 'InternalServiceError', traits: {"smithy.api#error" => "server"})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    ListPipelinesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ListPipelinesInput', name: 'ListPipelinesInput')
    ListPipelinesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ListPipelinesOutput', name: 'ListPipelinesOutput')
    Operator = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#Operator', name: 'Operator')
    OperatorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.datapipeline#OperatorType', name: 'OperatorType')
    ParameterAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ParameterAttribute', name: 'ParameterAttribute')
    ParameterAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#ParameterAttributeList', name: 'ParameterAttributeList')
    ParameterObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ParameterObject', name: 'ParameterObject')
    ParameterObjectList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#ParameterObjectList', name: 'ParameterObjectList')
    ParameterValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ParameterValue', name: 'ParameterValue')
    ParameterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#ParameterValueList', name: 'ParameterValueList')
    PipelineDeletedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#PipelineDeletedException', name: 'PipelineDeletedException', traits: {"smithy.api#error" => "client"})
    PipelineDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#PipelineDescription', name: 'PipelineDescription')
    PipelineDescriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#PipelineDescriptionList', name: 'PipelineDescriptionList')
    PipelineIdName = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#PipelineIdName', name: 'PipelineIdName')
    PipelineNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#PipelineNotFoundException', name: 'PipelineNotFoundException', traits: {"smithy.api#error" => "client"})
    PipelineObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#PipelineObject', name: 'PipelineObject')
    PipelineObjectList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#PipelineObjectList', name: 'PipelineObjectList')
    PipelineObjectMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.datapipeline#PipelineObjectMap', name: 'PipelineObjectMap')
    PollForTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#PollForTaskInput', name: 'PollForTaskInput')
    PollForTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#PollForTaskOutput', name: 'PollForTaskOutput')
    PutPipelineDefinitionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#PutPipelineDefinitionInput', name: 'PutPipelineDefinitionInput')
    PutPipelineDefinitionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#PutPipelineDefinitionOutput', name: 'PutPipelineDefinitionOutput')
    Query = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#Query', name: 'Query')
    QueryObjectsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#QueryObjectsInput', name: 'QueryObjectsInput')
    QueryObjectsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#QueryObjectsOutput', name: 'QueryObjectsOutput')
    RemoveTagsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#RemoveTagsInput', name: 'RemoveTagsInput')
    RemoveTagsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#RemoveTagsOutput', name: 'RemoveTagsOutput')
    ReportTaskProgressInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ReportTaskProgressInput', name: 'ReportTaskProgressInput')
    ReportTaskProgressOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ReportTaskProgressOutput', name: 'ReportTaskProgressOutput')
    ReportTaskRunnerHeartbeatInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ReportTaskRunnerHeartbeatInput', name: 'ReportTaskRunnerHeartbeatInput')
    ReportTaskRunnerHeartbeatOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ReportTaskRunnerHeartbeatOutput', name: 'ReportTaskRunnerHeartbeatOutput')
    Selector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#Selector', name: 'Selector')
    SelectorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#SelectorList', name: 'SelectorList')
    SetStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#SetStatusInput', name: 'SetStatusInput')
    SetTaskStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#SetTaskStatusInput', name: 'SetTaskStatusInput')
    SetTaskStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#SetTaskStatusOutput', name: 'SetTaskStatusOutput')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#Tag', name: 'Tag')
    TaskNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#TaskNotFoundException', name: 'TaskNotFoundException', traits: {"smithy.api#error" => "client"})
    TaskObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#TaskObject', name: 'TaskObject')
    TaskStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.datapipeline#TaskStatus', name: 'TaskStatus')
    ValidatePipelineDefinitionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ValidatePipelineDefinitionInput', name: 'ValidatePipelineDefinitionInput')
    ValidatePipelineDefinitionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ValidatePipelineDefinitionOutput', name: 'ValidatePipelineDefinitionOutput')
    ValidationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ValidationError', name: 'ValidationError')
    ValidationErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#ValidationErrors', name: 'ValidationErrors')
    ValidationWarning = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.datapipeline#ValidationWarning', name: 'ValidationWarning')
    ValidationWarnings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#ValidationWarnings', name: 'ValidationWarnings')
    AttributeNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#attributeNameString', name: 'AttributeNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    AttributeValueString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#attributeValueString', name: 'AttributeValueString', traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.datapipeline#boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    CancelActive = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.datapipeline#cancelActive', name: 'CancelActive')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#errorMessage', name: 'ErrorMessage')
    FieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#fieldList', name: 'FieldList')
    FieldNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#fieldNameString', name: 'FieldNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    FieldStringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#fieldStringValue', name: 'FieldStringValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    Id = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#id', name: 'Id', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    IdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#idList', name: 'IdList')
    Int = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.datapipeline#int', name: 'Int')
    LongString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#longString', name: 'LongString', traits: {"smithy.api#length" => {"min" => 0, "max" => 20971520}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    PipelineList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#pipelineList', name: 'PipelineList')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#string', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#stringList', name: 'StringList')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#tagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#tagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#tagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#taskId', name: 'TaskId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.datapipeline#timestamp', name: 'Timestamp')
    ValidationMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.datapipeline#validationMessage', name: 'ValidationMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    ValidationMessages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.datapipeline#validationMessages', name: 'ValidationMessages')

    ActivatePipelineInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline.</p>", "smithy.api#required" => {}}))
    ActivatePipelineInput.add_member(:parameter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValueList, location_name: 'parameterValues', traits: {"smithy.api#documentation" => "<p>A list of parameter values to pass to the pipeline at activation.</p>"}))
    ActivatePipelineInput.add_member(:start_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.</p>"}))
    ActivatePipelineInput.type = Types::ActivatePipelineInput
    ActivatePipelineOutput.type = Types::ActivatePipelineOutput
    AddTagsInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline.</p>", "smithy.api#required" => {}}))
    AddTagsInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to add, as key/value pairs.</p>", "smithy.api#required" => {}}))
    AddTagsInput.type = Types::AddTagsInput
    AddTagsOutput.type = Types::AddTagsOutput
    CreatePipelineInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the pipeline. You can use the same name for multiple pipelines associated with your AWS account, \n            because AWS Data Pipeline assigns each pipeline a unique pipeline identifier.</p>", "smithy.api#required" => {}}))
    CreatePipelineInput.add_member(:unique_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'uniqueId', traits: {"smithy.api#documentation" => "<p>A unique identifier. This identifier is not the same as the pipeline identifier assigned by AWS Data Pipeline. \n            You are responsible for defining the format and ensuring the uniqueness of this identifier. You use this \n            parameter to ensure idempotency during repeated calls to <code>CreatePipeline</code>. For example, if the \n            first call to <code>CreatePipeline</code> does not succeed, you can pass in the same unique identifier and \n            pipeline name combination on a subsequent call to <code>CreatePipeline</code>. <code>CreatePipeline</code> \n            ensures that if a pipeline already exists with the same name and unique identifier, a new pipeline is not \n            created. Instead, you'll receive the pipeline identifier from the previous attempt. The uniqueness of the \n            name and unique identifier combination is scoped to the AWS account or IAM user credentials.</p>", "smithy.api#required" => {}}))
    CreatePipelineInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the pipeline.</p>"}))
    CreatePipelineInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags to associate with the pipeline at creation. Tags let you control access to pipelines. \n            For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> \n            in the <i>AWS Data Pipeline Developer Guide</i>.</p>"}))
    CreatePipelineInput.type = Types::CreatePipelineInput
    CreatePipelineOutput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID that AWS Data Pipeline assigns the newly created pipeline. For example, <code>df-06372391ZG65EXAMPLE</code>.</p>", "smithy.api#required" => {}}))
    CreatePipelineOutput.type = Types::CreatePipelineOutput
    DeactivatePipelineInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline.</p>", "smithy.api#required" => {}}))
    DeactivatePipelineInput.add_member(:cancel_active, Smithy::Schema::Shapes::ShapeRef.new(shape: CancelActive, location_name: 'cancelActive', traits: {"smithy.api#documentation" => "<p>Indicates whether to cancel any running objects. The default is true, \n          which sets the state of any running objects to <code>CANCELED</code>.\n          If this value is false, the pipeline is deactivated after all \n          running objects finish.</p>"}))
    DeactivatePipelineInput.type = Types::DeactivatePipelineInput
    DeactivatePipelineOutput.type = Types::DeactivatePipelineOutput
    DeletePipelineInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline.</p>", "smithy.api#required" => {}}))
    DeletePipelineInput.type = Types::DeletePipelineInput
    DescribeObjectsInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline that contains the object definitions.</p>", "smithy.api#required" => {}}))
    DescribeObjectsInput.add_member(:object_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IdList, location_name: 'objectIds', traits: {"smithy.api#documentation" => "<p>The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to <code>DescribeObjects</code>.</p>", "smithy.api#required" => {}}))
    DescribeObjectsInput.add_member(:evaluate_expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'evaluateExpressions', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.</p>"}))
    DescribeObjectsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'marker', traits: {"smithy.api#documentation" => "<p>The starting point for the results to be returned. For the first call, this value should be empty. \n           As long as there are more results, continue to call <code>DescribeObjects</code> with\n           the marker value from the previous call to retrieve the next set of results.</p>"}))
    DescribeObjectsInput.type = Types::DescribeObjectsInput
    DescribeObjectsOutput.add_member(:pipeline_objects, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineObjectList, location_name: 'pipelineObjects', traits: {"smithy.api#documentation" => "<p>An array of object definitions.</p>", "smithy.api#required" => {}}))
    DescribeObjectsOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'marker', traits: {"smithy.api#documentation" => "<p>The starting point for the next page of results. To view the next page of results, call <code>DescribeObjects</code> \n           again with this marker value. If the value is null, there are no more results.</p>"}))
    DescribeObjectsOutput.add_member(:has_more_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'hasMoreResults', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether there are more results to return.</p>"}))
    DescribeObjectsOutput.type = Types::DescribeObjectsOutput
    DescribePipelinesInput.add_member(:pipeline_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IdList, location_name: 'pipelineIds', traits: {"smithy.api#documentation" => "<p>The IDs of the pipelines to describe. You can pass as many as 25 identifiers in a single call. \n            To obtain pipeline IDs, call <a>ListPipelines</a>.</p>", "smithy.api#required" => {}}))
    DescribePipelinesInput.type = Types::DescribePipelinesInput
    DescribePipelinesOutput.add_member(:pipeline_description_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDescriptionList, location_name: 'pipelineDescriptionList', traits: {"smithy.api#documentation" => "<p>An array of descriptions for the specified pipelines.</p>", "smithy.api#required" => {}}))
    DescribePipelinesOutput.type = Types::DescribePipelinesOutput
    EvaluateExpressionInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline.</p>", "smithy.api#required" => {}}))
    EvaluateExpressionInput.add_member(:object_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'objectId', traits: {"smithy.api#documentation" => "<p>The ID of the object.</p>", "smithy.api#required" => {}}))
    EvaluateExpressionInput.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: LongString, location_name: 'expression', traits: {"smithy.api#documentation" => "<p>The expression to evaluate.</p>", "smithy.api#required" => {}}))
    EvaluateExpressionInput.type = Types::EvaluateExpressionInput
    EvaluateExpressionOutput.add_member(:evaluated_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: LongString, location_name: 'evaluatedExpression', traits: {"smithy.api#documentation" => "<p>The evaluated expression.</p>", "smithy.api#required" => {}}))
    EvaluateExpressionOutput.type = Types::EvaluateExpressionOutput
    Field.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameString, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The field identifier.</p>", "smithy.api#required" => {}}))
    Field.add_member(:string_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldStringValue, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p>The field value, expressed as a String.</p>"}))
    Field.add_member(:ref_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameString, location_name: 'refValue', traits: {"smithy.api#documentation" => "<p>The field value, expressed as the identifier of another object.</p>"}))
    Field.type = Types::Field
    GetPipelineDefinitionInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline.</p>", "smithy.api#required" => {}}))
    GetPipelineDefinitionInput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the pipeline definition to retrieve. Set this parameter to <code>latest</code> (default) \n            to use the last definition saved to the pipeline or <code>active</code> to use the last definition  \n            that was activated.</p>"}))
    GetPipelineDefinitionInput.type = Types::GetPipelineDefinitionInput
    GetPipelineDefinitionOutput.add_member(:pipeline_objects, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineObjectList, location_name: 'pipelineObjects', traits: {"smithy.api#documentation" => "<p>The objects defined in the pipeline.</p>"}))
    GetPipelineDefinitionOutput.add_member(:parameter_objects, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterObjectList, location_name: 'parameterObjects', traits: {"smithy.api#documentation" => "<p>The parameter objects used in the pipeline definition.</p>"}))
    GetPipelineDefinitionOutput.add_member(:parameter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValueList, location_name: 'parameterValues', traits: {"smithy.api#documentation" => "<p>The parameter values used in the pipeline definition.</p>"}))
    GetPipelineDefinitionOutput.type = Types::GetPipelineDefinitionOutput
    InstanceIdentity.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'document', traits: {"smithy.api#documentation" => "<p>A description of an EC2 instance that is generated when the instance is launched and exposed to the instance via the instance metadata service in the form of a JSON representation of an object.</p>"}))
    InstanceIdentity.add_member(:signature, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'signature', traits: {"smithy.api#documentation" => "<p>A signature which can be used to verify the accuracy and authenticity of the information provided in the instance identity document.</p>"}))
    InstanceIdentity.type = Types::InstanceIdentity
    InternalServiceError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error message.</p>"}))
    InternalServiceError.type = Types::InternalServiceError
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error message.</p>"}))
    InvalidRequestException.type = Types::InvalidRequestException
    ListPipelinesInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'marker', traits: {"smithy.api#documentation" => "<p>The starting point for the results to be returned. For the first call, this value should be empty. \n           As long as there are more results, continue to call <code>ListPipelines</code> with\n           the marker value from the previous call to retrieve the next set of results.</p>"}))
    ListPipelinesInput.type = Types::ListPipelinesInput
    ListPipelinesOutput.add_member(:pipeline_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineList, location_name: 'pipelineIdList', traits: {"smithy.api#documentation" => "<p>The pipeline identifiers. If you require additional information about the pipelines, you can use these identifiers to call \n            <a>DescribePipelines</a> and <a>GetPipelineDefinition</a>.</p>", "smithy.api#required" => {}}))
    ListPipelinesOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'marker', traits: {"smithy.api#documentation" => "<p>The starting point for the next page of results. To view the next page of results, call <code>ListPipelinesOutput</code> \n           again with this marker value. If the value is null, there are no more results.</p>"}))
    ListPipelinesOutput.add_member(:has_more_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'hasMoreResults', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether there are more results that can be obtained by a subsequent call.</p>"}))
    ListPipelinesOutput.type = Types::ListPipelinesOutput
    Operator.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatorType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>\n            The logical operation to be performed: equal (<code>EQ</code>), equal reference (<code>REF_EQ</code>), less than or equal (<code>LE</code>), greater than or equal (<code>GE</code>), or between (<code>BETWEEN</code>). Equal reference (<code>REF_EQ</code>) can be used only with reference fields. The other comparison types can be used only with String fields. The comparison types you can use apply only to certain object fields, as detailed below.  \n        </p>\n        <p>\n          The comparison operators EQ and REF_EQ act on the following fields:\n        </p>\n        <ul>\n            <li>name</li>\n            <li>@sphere</li>\n            <li>parent</li>\n            <li>@componentParent</li>\n            <li>@instanceParent</li>\n            <li>@status</li>\n            <li>@scheduledStartTime</li>\n            <li>@scheduledEndTime</li>\n            <li>@actualStartTime</li>\n            <li>@actualEndTime</li>\n        </ul>\n        \n        <p>\n            The comparison operators <code>GE</code>, <code>LE</code>, and <code>BETWEEN</code> act on the following fields:\n        </p>\n        <ul>\n            <li>@scheduledStartTime</li>\n            <li>@scheduledEndTime</li>\n            <li>@actualStartTime</li>\n            <li>@actualEndTime</li>\n        </ul>\n        <p>Note that fields beginning with the at sign (@) are read-only and set by the web service. When you name fields, you should choose names containing only alpha-numeric values, as symbols may be reserved by AWS Data Pipeline. User-defined fields that you add to a pipeline should prefix their name with the string \"my\".</p>"}))
    Operator.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The value that the actual field value will be compared with.</p>"}))
    Operator.type = Types::Operator
    OperatorType.add_member(:equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Equal', traits: {"smithy.api#enumValue" => "EQ"}))
    OperatorType.add_member(:reference_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReferenceEqual', traits: {"smithy.api#enumValue" => "REF_EQ"}))
    OperatorType.add_member(:less_than_or_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LessThanOrEqual', traits: {"smithy.api#enumValue" => "LE"}))
    OperatorType.add_member(:greater_than_or_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreaterThanOrEqual', traits: {"smithy.api#enumValue" => "GE"}))
    OperatorType.add_member(:between, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Between', traits: {"smithy.api#enumValue" => "BETWEEN"}))
    ParameterAttribute.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameString, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The field identifier.</p>", "smithy.api#required" => {}}))
    ParameterAttribute.add_member(:string_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueString, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p>The field value, expressed as a String.</p>", "smithy.api#required" => {}}))
    ParameterAttribute.type = Types::ParameterAttribute
    ParameterAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterAttribute)
    ParameterObject.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the parameter object. </p>", "smithy.api#required" => {}}))
    ParameterObject.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterAttributeList, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The attributes of the parameter object.</p>", "smithy.api#required" => {}}))
    ParameterObject.type = Types::ParameterObject
    ParameterObjectList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterObject)
    ParameterValue.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the parameter value.</p>", "smithy.api#required" => {}}))
    ParameterValue.add_member(:string_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldStringValue, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p>The field value, expressed as a String.</p>", "smithy.api#required" => {}}))
    ParameterValue.type = Types::ParameterValue
    ParameterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue)
    PipelineDeletedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error message.</p>"}))
    PipelineDeletedException.type = Types::PipelineDeletedException
    PipelineDescription.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The pipeline identifier that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>", "smithy.api#required" => {}}))
    PipelineDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>", "smithy.api#required" => {}}))
    PipelineDescription.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>A list of read-only fields that contain metadata about the pipeline: @userId, @accountId, and @pipelineState.</p>", "smithy.api#required" => {}}))
    PipelineDescription.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Description of the pipeline.</p>"}))
    PipelineDescription.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags to associated with a pipeline. Tags let you control access to pipelines. \n            For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>"}))
    PipelineDescription.type = Types::PipelineDescription
    PipelineDescriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDescription)
    PipelineIdName.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>"}))
    PipelineIdName.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>"}))
    PipelineIdName.type = Types::PipelineIdName
    PipelineNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error message.</p>"}))
    PipelineNotFoundException.type = Types::PipelineNotFoundException
    PipelineObject.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the object.</p>", "smithy.api#required" => {}}))
    PipelineObject.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the object.</p>", "smithy.api#required" => {}}))
    PipelineObject.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>Key-value pairs that define the properties of the object.</p>", "smithy.api#required" => {}}))
    PipelineObject.type = Types::PipelineObject
    PipelineObjectList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineObject)
    PipelineObjectMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Id)
    PipelineObjectMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineObject)
    PollForTaskInput.add_member(:worker_group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'workerGroup', traits: {"smithy.api#documentation" => "<p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. \n            You can only specify a single value for <code>workerGroup</code> in the call to <code>PollForTask</code>. There are no wildcard values permitted in \n            <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>", "smithy.api#required" => {}}))
    PollForTaskInput.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'hostname', traits: {"smithy.api#documentation" => "<p>The public DNS name of the calling task runner.</p>"}))
    PollForTaskInput.add_member(:instance_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdentity, location_name: 'instanceIdentity', traits: {"smithy.api#documentation" => "<p>Identity information for the EC2 instance that is hosting the task runner. You can get this value from the instance using <code>http://169.254.169.254/latest/meta-data/instance-id</code>. For more information, see <a href=\"http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html\">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p>"}))
    PollForTaskInput.type = Types::PollForTaskInput
    PollForTaskOutput.add_member(:task_object, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskObject, location_name: 'taskObject', traits: {"smithy.api#documentation" => "<p>The information needed to complete the task that is being assigned to the task runner. One of the fields returned in this object is <code>taskId</code>, \n            which contains an identifier for the task being assigned. The calling task runner uses <code>taskId</code> in subsequent calls to <a>ReportTaskProgress</a> \n            and <a>SetTaskStatus</a>.</p>"}))
    PollForTaskOutput.type = Types::PollForTaskOutput
    PutPipelineDefinitionInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline.</p>", "smithy.api#required" => {}}))
    PutPipelineDefinitionInput.add_member(:pipeline_objects, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineObjectList, location_name: 'pipelineObjects', traits: {"smithy.api#documentation" => "<p>The objects that define the pipeline. These objects overwrite the existing pipeline definition.</p>", "smithy.api#required" => {}}))
    PutPipelineDefinitionInput.add_member(:parameter_objects, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterObjectList, location_name: 'parameterObjects', traits: {"smithy.api#documentation" => "<p>The parameter objects used with the pipeline.</p>"}))
    PutPipelineDefinitionInput.add_member(:parameter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValueList, location_name: 'parameterValues', traits: {"smithy.api#documentation" => "<p>The parameter values used with the pipeline.</p>"}))
    PutPipelineDefinitionInput.type = Types::PutPipelineDefinitionInput
    PutPipelineDefinitionOutput.add_member(:validation_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationErrors, location_name: 'validationErrors', traits: {"smithy.api#documentation" => "<p>The validation errors that are associated with the objects defined in <code>pipelineObjects</code>.</p>"}))
    PutPipelineDefinitionOutput.add_member(:validation_warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationWarnings, location_name: 'validationWarnings', traits: {"smithy.api#documentation" => "<p>The validation warnings that are associated with the objects defined in <code>pipelineObjects</code>.</p>"}))
    PutPipelineDefinitionOutput.add_member(:errored, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'errored', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether there were validation errors, and the pipeline definition is stored but cannot be \n            activated until you correct the pipeline and call <code>PutPipelineDefinition</code> to commit the corrected pipeline.</p>", "smithy.api#required" => {}}))
    PutPipelineDefinitionOutput.type = Types::PutPipelineDefinitionOutput
    Query.add_member(:selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectorList, location_name: 'selectors', traits: {"smithy.api#documentation" => "<p>List of selectors that define the query. An object must satisfy all of the selectors to match the query.</p>"}))
    Query.type = Types::Query
    QueryObjectsInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline.</p>", "smithy.api#required" => {}}))
    QueryObjectsInput.add_member(:query, Smithy::Schema::Shapes::ShapeRef.new(shape: Query, location_name: 'query', traits: {"smithy.api#documentation" => "<p>The query that defines the objects to be returned. The <code>Query</code> object can contain a maximum of ten selectors. \n            The conditions in the query are limited to top-level String fields in the object. \n            These filters can be applied to components, instances, and attempts.</p>"}))
    QueryObjectsInput.add_member(:sphere, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sphere', traits: {"smithy.api#documentation" => "<p>Indicates whether the query applies to components or instances. The possible values are:\t\n            <code>COMPONENT</code>, <code>INSTANCE</code>, and <code>ATTEMPT</code>.</p>", "smithy.api#required" => {}}))
    QueryObjectsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'marker', traits: {"smithy.api#documentation" => "<p>The starting point for the results to be returned. For the first call, this value should be empty. \n           As long as there are more results, continue to call <code>QueryObjects</code> with\n           the marker value from the previous call to retrieve the next set of results.</p>"}))
    QueryObjectsInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Int, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of object names that <code>QueryObjects</code> will return in a single call. The default value is 100. </p>"}))
    QueryObjectsInput.type = Types::QueryObjectsInput
    QueryObjectsOutput.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IdList, location_name: 'ids', traits: {"smithy.api#documentation" => "<p>The identifiers that match the query selectors.</p>"}))
    QueryObjectsOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'marker', traits: {"smithy.api#documentation" => "<p>The starting point for the next page of results. To view the next page of results, call <code>QueryObjects</code> \n           again with this marker value. If the value is null, there are no more results.</p>"}))
    QueryObjectsOutput.add_member(:has_more_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'hasMoreResults', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether there are more results that can be obtained by a subsequent call.</p>"}))
    QueryObjectsOutput.type = Types::QueryObjectsOutput
    RemoveTagsInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline.</p>", "smithy.api#required" => {}}))
    RemoveTagsInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags to remove.</p>", "smithy.api#required" => {}}))
    RemoveTagsInput.type = Types::RemoveTagsInput
    RemoveTagsOutput.type = Types::RemoveTagsOutput
    ReportTaskProgressInput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>", "smithy.api#required" => {}}))
    ReportTaskProgressInput.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>Key-value pairs that define the properties of the ReportTaskProgressInput object.</p>"}))
    ReportTaskProgressInput.type = Types::ReportTaskProgressInput
    ReportTaskProgressOutput.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'canceled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, the calling task runner should cancel processing of the task. The task runner does not need to call <a>SetTaskStatus</a> for canceled tasks.</p>", "smithy.api#required" => {}}))
    ReportTaskProgressOutput.type = Types::ReportTaskProgressOutput
    ReportTaskRunnerHeartbeatInput.add_member(:taskrunner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'taskrunnerId', traits: {"smithy.api#documentation" => "<p>The ID of the task runner. This value should be unique across your AWS account. In the case of AWS Data Pipeline Task Runner \n            launched on a resource managed by AWS Data Pipeline, the web service provides a unique identifier when it launches the application. \n            If you have written a custom task runner, you should assign a unique identifier for the task runner.</p>", "smithy.api#required" => {}}))
    ReportTaskRunnerHeartbeatInput.add_member(:worker_group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'workerGroup', traits: {"smithy.api#documentation" => "<p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. \n            You can only specify a single value for <code>workerGroup</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string \n            must be an exact, case-sensitive, match.</p>"}))
    ReportTaskRunnerHeartbeatInput.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'hostname', traits: {"smithy.api#documentation" => "<p>The public DNS name of the task runner.</p>"}))
    ReportTaskRunnerHeartbeatInput.type = Types::ReportTaskRunnerHeartbeatInput
    ReportTaskRunnerHeartbeatOutput.add_member(:terminate, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'terminate', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the calling task runner should terminate.</p>", "smithy.api#required" => {}}))
    ReportTaskRunnerHeartbeatOutput.type = Types::ReportTaskRunnerHeartbeatOutput
    Selector.add_member(:field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fieldName', traits: {"smithy.api#documentation" => "<p>The name of the field that the operator will be applied to. The field name is the \"key\" portion of the field definition in the pipeline definition syntax that is used by the AWS Data Pipeline API. If the field is not set on the object, the condition fails.</p>"}))
    Selector.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'operator'))
    Selector.type = Types::Selector
    SelectorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Selector)
    SetStatusInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline that contains the objects.</p>", "smithy.api#required" => {}}))
    SetStatusInput.add_member(:object_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IdList, location_name: 'objectIds', traits: {"smithy.api#documentation" => "<p>The IDs of the objects. The corresponding objects can be either physical or components, but not a mix of both types.</p>", "smithy.api#required" => {}}))
    SetStatusInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status to be set on all the objects specified in <code>objectIds</code>. For components, use <code>PAUSE</code> or <code>RESUME</code>. \n            For instances, use <code>TRY_CANCEL</code>, <code>RERUN</code>, or <code>MARK_FINISHED</code>.</p>", "smithy.api#required" => {}}))
    SetStatusInput.type = Types::SetStatusInput
    SetTaskStatusInput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>", "smithy.api#required" => {}}))
    SetTaskStatusInput.add_member(:task_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatus, location_name: 'taskStatus', traits: {"smithy.api#documentation" => "<p>If <code>FINISHED</code>, the task successfully completed. If <code>FAILED</code>, the task ended unsuccessfully. Preconditions use false.</p>", "smithy.api#required" => {}}))
    SetTaskStatusInput.add_member(:error_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorId', traits: {"smithy.api#documentation" => "<p>If an error occurred during the task, this value specifies the error code. This value is set on the physical attempt object. \n            It is used to display error information to the user. It should not start with string \"Service_\" which is reserved by the system.</p>"}))
    SetTaskStatusInput.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>If an error occurred during the task, this value specifies a text description of the error. This value is set on the physical attempt object. \n            It is used to display error information to the user. The web service does not parse this value.</p>"}))
    SetTaskStatusInput.add_member(:error_stack_trace, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorStackTrace', traits: {"smithy.api#documentation" => "<p>If an error occurred during the task, this value specifies the stack trace associated with the error. This value is set on the physical attempt object. \n            It is used to display error information to the user. The web service does not parse this value.</p>"}))
    SetTaskStatusInput.type = Types::SetTaskStatusInput
    SetTaskStatusOutput.type = Types::SetTaskStatusOutput
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key name of a tag defined by a user.  \n            For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The optional value portion of a tag defined by a user.    \n            For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TaskNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error message.</p>"}))
    TaskNotFoundException.type = Types::TaskNotFoundException
    TaskObject.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>An internal identifier for the task. This ID is passed to the <a>SetTaskStatus</a> and <a>ReportTaskProgress</a> actions.</p>"}))
    TaskObject.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline that provided the task.</p>"}))
    TaskObject.add_member(:attempt_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'attemptId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline task attempt object. AWS Data Pipeline uses this value to track how many times a task is attempted.</p>"}))
    TaskObject.add_member(:objects, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineObjectMap, location_name: 'objects', traits: {"smithy.api#documentation" => "<p>Connection information for the location where the task runner will publish the output of the task.</p>"}))
    TaskObject.type = Types::TaskObject
    TaskStatus.add_member(:finished, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINISHED', traits: {"smithy.api#enumValue" => "FINISHED"}))
    TaskStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    TaskStatus.add_member(:false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    ValidatePipelineDefinitionInput.add_member(:pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'pipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline.</p>", "smithy.api#required" => {}}))
    ValidatePipelineDefinitionInput.add_member(:pipeline_objects, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineObjectList, location_name: 'pipelineObjects', traits: {"smithy.api#documentation" => "<p>The objects that define the pipeline changes to validate against the pipeline.</p>", "smithy.api#required" => {}}))
    ValidatePipelineDefinitionInput.add_member(:parameter_objects, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterObjectList, location_name: 'parameterObjects', traits: {"smithy.api#documentation" => "<p>The parameter objects used with the pipeline.</p>"}))
    ValidatePipelineDefinitionInput.add_member(:parameter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValueList, location_name: 'parameterValues', traits: {"smithy.api#documentation" => "<p>The parameter values used with the pipeline.</p>"}))
    ValidatePipelineDefinitionInput.type = Types::ValidatePipelineDefinitionInput
    ValidatePipelineDefinitionOutput.add_member(:validation_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationErrors, location_name: 'validationErrors', traits: {"smithy.api#documentation" => "<p>Any validation errors that were found.</p>"}))
    ValidatePipelineDefinitionOutput.add_member(:validation_warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationWarnings, location_name: 'validationWarnings', traits: {"smithy.api#documentation" => "<p>Any validation warnings that were found.</p>"}))
    ValidatePipelineDefinitionOutput.add_member(:errored, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'errored', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether there were validation errors.</p>", "smithy.api#required" => {}}))
    ValidatePipelineDefinitionOutput.type = Types::ValidatePipelineDefinitionOutput
    ValidationError.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the object that contains the validation error.</p>"}))
    ValidationError.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMessages, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>A description of the validation error.</p>"}))
    ValidationError.type = Types::ValidationError
    ValidationErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationError)
    ValidationWarning.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the object that contains the validation warning.</p>"}))
    ValidationWarning.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMessages, location_name: 'warnings', traits: {"smithy.api#documentation" => "<p>A description of the validation warning.</p>"}))
    ValidationWarning.type = Types::ValidationWarning
    ValidationWarnings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationWarning)
    FieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Field)
    IdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Id)
    PipelineList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineIdName)
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ValidationMessages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMessage)

    DataPipeline = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.datapipeline#DataPipeline"
      service.name = "DataPipeline"
      service.version = "2012-10-29"
      service.traits = {"aws.api#service" => {"sdkId" => "Data Pipeline", "arnNamespace" => "datapipeline", "cloudFormationName" => "DataPipeline", "cloudTrailEventSource" => "datapipeline.amazonaws.com", "docId" => "datapipeline-2012-10-29", "endpointPrefix" => "datapipeline"}, "aws.auth#sigv4" => {"name" => "datapipeline"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Data Pipeline", "smithy.api#xmlNamespace" => {"uri" => "http://datapipeline.amazonaws.com/doc/2012-10-29/"}}
      service.add_operation(:activate_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#ActivatePipeline"
        operation.name = "ActivatePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatePipelineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivatePipelineOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:add_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#AddTags"
        operation.name = "AddTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#CreatePipeline"
        operation.name = "CreatePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePipelineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePipelineOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:deactivate_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#DeactivatePipeline"
        operation.name = "DeactivatePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivatePipelineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivatePipelineOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#DeletePipeline"
        operation.name = "DeletePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePipelineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_objects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#DescribeObjects"
        operation.name = "DescribeObjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeObjectsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeObjectsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeObjects.new
      end)
      service.add_operation(:describe_pipelines, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#DescribePipelines"
        operation.name = "DescribePipelines"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePipelinesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePipelinesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:evaluate_expression, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#EvaluateExpression"
        operation.name = "EvaluateExpression"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateExpressionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateExpressionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TaskNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_pipeline_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#GetPipelineDefinition"
        operation.name = "GetPipelineDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineDefinitionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineDefinitionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_pipelines, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#ListPipelines"
        operation.name = "ListPipelines"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelinesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelinesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPipelines.new
      end)
      service.add_operation(:poll_for_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#PollForTask"
        operation.name = "PollForTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PollForTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PollForTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TaskNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_pipeline_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#PutPipelineDefinition"
        operation.name = "PutPipelineDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPipelineDefinitionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPipelineDefinitionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:query_objects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#QueryObjects"
        operation.name = "QueryObjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryObjectsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryObjectsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::QueryObjects.new
      end)
      service.add_operation(:remove_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:report_task_progress, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#ReportTaskProgress"
        operation.name = "ReportTaskProgress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ReportTaskProgressInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ReportTaskProgressOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TaskNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:report_task_runner_heartbeat, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#ReportTaskRunnerHeartbeat"
        operation.name = "ReportTaskRunnerHeartbeat"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ReportTaskRunnerHeartbeatInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ReportTaskRunnerHeartbeatOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:set_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#SetStatus"
        operation.name = "SetStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:set_task_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#SetTaskStatus"
        operation.name = "SetTaskStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetTaskStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetTaskStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TaskNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:validate_pipeline_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datapipeline#ValidatePipelineDefinition"
        operation.name = "ValidatePipelineDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePipelineDefinitionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePipelineDefinitionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.traits = {}
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
