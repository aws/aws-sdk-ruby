# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DataPipeline
  # @api private
  module ClientApi

    include Seahorse::Model

    ActivatePipelineInput = Shapes::StructureShape.new(name: 'ActivatePipelineInput')
    ActivatePipelineOutput = Shapes::StructureShape.new(name: 'ActivatePipelineOutput')
    AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
    AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
    CreatePipelineInput = Shapes::StructureShape.new(name: 'CreatePipelineInput')
    CreatePipelineOutput = Shapes::StructureShape.new(name: 'CreatePipelineOutput')
    DeactivatePipelineInput = Shapes::StructureShape.new(name: 'DeactivatePipelineInput')
    DeactivatePipelineOutput = Shapes::StructureShape.new(name: 'DeactivatePipelineOutput')
    DeletePipelineInput = Shapes::StructureShape.new(name: 'DeletePipelineInput')
    DescribeObjectsInput = Shapes::StructureShape.new(name: 'DescribeObjectsInput')
    DescribeObjectsOutput = Shapes::StructureShape.new(name: 'DescribeObjectsOutput')
    DescribePipelinesInput = Shapes::StructureShape.new(name: 'DescribePipelinesInput')
    DescribePipelinesOutput = Shapes::StructureShape.new(name: 'DescribePipelinesOutput')
    EvaluateExpressionInput = Shapes::StructureShape.new(name: 'EvaluateExpressionInput')
    EvaluateExpressionOutput = Shapes::StructureShape.new(name: 'EvaluateExpressionOutput')
    Field = Shapes::StructureShape.new(name: 'Field')
    GetPipelineDefinitionInput = Shapes::StructureShape.new(name: 'GetPipelineDefinitionInput')
    GetPipelineDefinitionOutput = Shapes::StructureShape.new(name: 'GetPipelineDefinitionOutput')
    InstanceIdentity = Shapes::StructureShape.new(name: 'InstanceIdentity')
    InternalServiceError = Shapes::StructureShape.new(name: 'InternalServiceError')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    ListPipelinesInput = Shapes::StructureShape.new(name: 'ListPipelinesInput')
    ListPipelinesOutput = Shapes::StructureShape.new(name: 'ListPipelinesOutput')
    Operator = Shapes::StructureShape.new(name: 'Operator')
    OperatorType = Shapes::StringShape.new(name: 'OperatorType')
    ParameterAttribute = Shapes::StructureShape.new(name: 'ParameterAttribute')
    ParameterAttributeList = Shapes::ListShape.new(name: 'ParameterAttributeList')
    ParameterObject = Shapes::StructureShape.new(name: 'ParameterObject')
    ParameterObjectList = Shapes::ListShape.new(name: 'ParameterObjectList')
    ParameterValue = Shapes::StructureShape.new(name: 'ParameterValue')
    ParameterValueList = Shapes::ListShape.new(name: 'ParameterValueList')
    PipelineDeletedException = Shapes::StructureShape.new(name: 'PipelineDeletedException')
    PipelineDescription = Shapes::StructureShape.new(name: 'PipelineDescription')
    PipelineDescriptionList = Shapes::ListShape.new(name: 'PipelineDescriptionList')
    PipelineIdName = Shapes::StructureShape.new(name: 'PipelineIdName')
    PipelineNotFoundException = Shapes::StructureShape.new(name: 'PipelineNotFoundException')
    PipelineObject = Shapes::StructureShape.new(name: 'PipelineObject')
    PipelineObjectList = Shapes::ListShape.new(name: 'PipelineObjectList')
    PipelineObjectMap = Shapes::MapShape.new(name: 'PipelineObjectMap')
    PollForTaskInput = Shapes::StructureShape.new(name: 'PollForTaskInput')
    PollForTaskOutput = Shapes::StructureShape.new(name: 'PollForTaskOutput')
    PutPipelineDefinitionInput = Shapes::StructureShape.new(name: 'PutPipelineDefinitionInput')
    PutPipelineDefinitionOutput = Shapes::StructureShape.new(name: 'PutPipelineDefinitionOutput')
    Query = Shapes::StructureShape.new(name: 'Query')
    QueryObjectsInput = Shapes::StructureShape.new(name: 'QueryObjectsInput')
    QueryObjectsOutput = Shapes::StructureShape.new(name: 'QueryObjectsOutput')
    RemoveTagsInput = Shapes::StructureShape.new(name: 'RemoveTagsInput')
    RemoveTagsOutput = Shapes::StructureShape.new(name: 'RemoveTagsOutput')
    ReportTaskProgressInput = Shapes::StructureShape.new(name: 'ReportTaskProgressInput')
    ReportTaskProgressOutput = Shapes::StructureShape.new(name: 'ReportTaskProgressOutput')
    ReportTaskRunnerHeartbeatInput = Shapes::StructureShape.new(name: 'ReportTaskRunnerHeartbeatInput')
    ReportTaskRunnerHeartbeatOutput = Shapes::StructureShape.new(name: 'ReportTaskRunnerHeartbeatOutput')
    Selector = Shapes::StructureShape.new(name: 'Selector')
    SelectorList = Shapes::ListShape.new(name: 'SelectorList')
    SetStatusInput = Shapes::StructureShape.new(name: 'SetStatusInput')
    SetTaskStatusInput = Shapes::StructureShape.new(name: 'SetTaskStatusInput')
    SetTaskStatusOutput = Shapes::StructureShape.new(name: 'SetTaskStatusOutput')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TaskNotFoundException = Shapes::StructureShape.new(name: 'TaskNotFoundException')
    TaskObject = Shapes::StructureShape.new(name: 'TaskObject')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    ValidatePipelineDefinitionInput = Shapes::StructureShape.new(name: 'ValidatePipelineDefinitionInput')
    ValidatePipelineDefinitionOutput = Shapes::StructureShape.new(name: 'ValidatePipelineDefinitionOutput')
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')
    ValidationErrors = Shapes::ListShape.new(name: 'ValidationErrors')
    ValidationWarning = Shapes::StructureShape.new(name: 'ValidationWarning')
    ValidationWarnings = Shapes::ListShape.new(name: 'ValidationWarnings')
    attributeNameString = Shapes::StringShape.new(name: 'attributeNameString')
    attributeValueString = Shapes::StringShape.new(name: 'attributeValueString')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    cancelActive = Shapes::BooleanShape.new(name: 'cancelActive')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    fieldList = Shapes::ListShape.new(name: 'fieldList')
    fieldNameString = Shapes::StringShape.new(name: 'fieldNameString')
    fieldStringValue = Shapes::StringShape.new(name: 'fieldStringValue')
    id = Shapes::StringShape.new(name: 'id')
    idList = Shapes::ListShape.new(name: 'idList')
    int = Shapes::IntegerShape.new(name: 'int')
    longString = Shapes::StringShape.new(name: 'longString')
    pipelineList = Shapes::ListShape.new(name: 'pipelineList')
    string = Shapes::StringShape.new(name: 'string')
    stringList = Shapes::ListShape.new(name: 'stringList')
    tagKey = Shapes::StringShape.new(name: 'tagKey')
    tagList = Shapes::ListShape.new(name: 'tagList')
    tagValue = Shapes::StringShape.new(name: 'tagValue')
    taskId = Shapes::StringShape.new(name: 'taskId')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')
    validationMessage = Shapes::StringShape.new(name: 'validationMessage')
    validationMessages = Shapes::ListShape.new(name: 'validationMessages')

    ActivatePipelineInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    ActivatePipelineInput.add_member(:parameter_values, Shapes::ShapeRef.new(shape: ParameterValueList, location_name: "parameterValues"))
    ActivatePipelineInput.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: timestamp, location_name: "startTimestamp"))
    ActivatePipelineInput.struct_class = Types::ActivatePipelineInput

    ActivatePipelineOutput.struct_class = Types::ActivatePipelineOutput

    AddTagsInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    AddTagsInput.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, required: true, location_name: "tags"))
    AddTagsInput.struct_class = Types::AddTagsInput

    AddTagsOutput.struct_class = Types::AddTagsOutput

    CreatePipelineInput.add_member(:name, Shapes::ShapeRef.new(shape: id, required: true, location_name: "name"))
    CreatePipelineInput.add_member(:unique_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "uniqueId"))
    CreatePipelineInput.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "description"))
    CreatePipelineInput.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    CreatePipelineInput.struct_class = Types::CreatePipelineInput

    CreatePipelineOutput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    CreatePipelineOutput.struct_class = Types::CreatePipelineOutput

    DeactivatePipelineInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    DeactivatePipelineInput.add_member(:cancel_active, Shapes::ShapeRef.new(shape: cancelActive, location_name: "cancelActive"))
    DeactivatePipelineInput.struct_class = Types::DeactivatePipelineInput

    DeactivatePipelineOutput.struct_class = Types::DeactivatePipelineOutput

    DeletePipelineInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    DeletePipelineInput.struct_class = Types::DeletePipelineInput

    DescribeObjectsInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    DescribeObjectsInput.add_member(:object_ids, Shapes::ShapeRef.new(shape: idList, required: true, location_name: "objectIds"))
    DescribeObjectsInput.add_member(:evaluate_expressions, Shapes::ShapeRef.new(shape: boolean, location_name: "evaluateExpressions"))
    DescribeObjectsInput.add_member(:marker, Shapes::ShapeRef.new(shape: string, location_name: "marker"))
    DescribeObjectsInput.struct_class = Types::DescribeObjectsInput

    DescribeObjectsOutput.add_member(:pipeline_objects, Shapes::ShapeRef.new(shape: PipelineObjectList, required: true, location_name: "pipelineObjects"))
    DescribeObjectsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: string, location_name: "marker"))
    DescribeObjectsOutput.add_member(:has_more_results, Shapes::ShapeRef.new(shape: boolean, location_name: "hasMoreResults"))
    DescribeObjectsOutput.struct_class = Types::DescribeObjectsOutput

    DescribePipelinesInput.add_member(:pipeline_ids, Shapes::ShapeRef.new(shape: idList, required: true, location_name: "pipelineIds"))
    DescribePipelinesInput.struct_class = Types::DescribePipelinesInput

    DescribePipelinesOutput.add_member(:pipeline_description_list, Shapes::ShapeRef.new(shape: PipelineDescriptionList, required: true, location_name: "pipelineDescriptionList"))
    DescribePipelinesOutput.struct_class = Types::DescribePipelinesOutput

    EvaluateExpressionInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    EvaluateExpressionInput.add_member(:object_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "objectId"))
    EvaluateExpressionInput.add_member(:expression, Shapes::ShapeRef.new(shape: longString, required: true, location_name: "expression"))
    EvaluateExpressionInput.struct_class = Types::EvaluateExpressionInput

    EvaluateExpressionOutput.add_member(:evaluated_expression, Shapes::ShapeRef.new(shape: longString, required: true, location_name: "evaluatedExpression"))
    EvaluateExpressionOutput.struct_class = Types::EvaluateExpressionOutput

    Field.add_member(:key, Shapes::ShapeRef.new(shape: fieldNameString, required: true, location_name: "key"))
    Field.add_member(:string_value, Shapes::ShapeRef.new(shape: fieldStringValue, location_name: "stringValue"))
    Field.add_member(:ref_value, Shapes::ShapeRef.new(shape: fieldNameString, location_name: "refValue"))
    Field.struct_class = Types::Field

    GetPipelineDefinitionInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    GetPipelineDefinitionInput.add_member(:version, Shapes::ShapeRef.new(shape: string, location_name: "version"))
    GetPipelineDefinitionInput.struct_class = Types::GetPipelineDefinitionInput

    GetPipelineDefinitionOutput.add_member(:pipeline_objects, Shapes::ShapeRef.new(shape: PipelineObjectList, location_name: "pipelineObjects"))
    GetPipelineDefinitionOutput.add_member(:parameter_objects, Shapes::ShapeRef.new(shape: ParameterObjectList, location_name: "parameterObjects"))
    GetPipelineDefinitionOutput.add_member(:parameter_values, Shapes::ShapeRef.new(shape: ParameterValueList, location_name: "parameterValues"))
    GetPipelineDefinitionOutput.struct_class = Types::GetPipelineDefinitionOutput

    InstanceIdentity.add_member(:document, Shapes::ShapeRef.new(shape: string, location_name: "document"))
    InstanceIdentity.add_member(:signature, Shapes::ShapeRef.new(shape: string, location_name: "signature"))
    InstanceIdentity.struct_class = Types::InstanceIdentity

    ListPipelinesInput.add_member(:marker, Shapes::ShapeRef.new(shape: string, location_name: "marker"))
    ListPipelinesInput.struct_class = Types::ListPipelinesInput

    ListPipelinesOutput.add_member(:pipeline_id_list, Shapes::ShapeRef.new(shape: pipelineList, required: true, location_name: "pipelineIdList"))
    ListPipelinesOutput.add_member(:marker, Shapes::ShapeRef.new(shape: string, location_name: "marker"))
    ListPipelinesOutput.add_member(:has_more_results, Shapes::ShapeRef.new(shape: boolean, location_name: "hasMoreResults"))
    ListPipelinesOutput.struct_class = Types::ListPipelinesOutput

    Operator.add_member(:type, Shapes::ShapeRef.new(shape: OperatorType, location_name: "type"))
    Operator.add_member(:values, Shapes::ShapeRef.new(shape: stringList, location_name: "values"))
    Operator.struct_class = Types::Operator

    ParameterAttribute.add_member(:key, Shapes::ShapeRef.new(shape: attributeNameString, required: true, location_name: "key"))
    ParameterAttribute.add_member(:string_value, Shapes::ShapeRef.new(shape: attributeValueString, required: true, location_name: "stringValue"))
    ParameterAttribute.struct_class = Types::ParameterAttribute

    ParameterAttributeList.member = Shapes::ShapeRef.new(shape: ParameterAttribute)

    ParameterObject.add_member(:id, Shapes::ShapeRef.new(shape: fieldNameString, required: true, location_name: "id"))
    ParameterObject.add_member(:attributes, Shapes::ShapeRef.new(shape: ParameterAttributeList, required: true, location_name: "attributes"))
    ParameterObject.struct_class = Types::ParameterObject

    ParameterObjectList.member = Shapes::ShapeRef.new(shape: ParameterObject)

    ParameterValue.add_member(:id, Shapes::ShapeRef.new(shape: fieldNameString, required: true, location_name: "id"))
    ParameterValue.add_member(:string_value, Shapes::ShapeRef.new(shape: fieldStringValue, required: true, location_name: "stringValue"))
    ParameterValue.struct_class = Types::ParameterValue

    ParameterValueList.member = Shapes::ShapeRef.new(shape: ParameterValue)

    PipelineDescription.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    PipelineDescription.add_member(:name, Shapes::ShapeRef.new(shape: id, required: true, location_name: "name"))
    PipelineDescription.add_member(:fields, Shapes::ShapeRef.new(shape: fieldList, required: true, location_name: "fields"))
    PipelineDescription.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "description"))
    PipelineDescription.add_member(:tags, Shapes::ShapeRef.new(shape: tagList, location_name: "tags"))
    PipelineDescription.struct_class = Types::PipelineDescription

    PipelineDescriptionList.member = Shapes::ShapeRef.new(shape: PipelineDescription)

    PipelineIdName.add_member(:id, Shapes::ShapeRef.new(shape: id, location_name: "id"))
    PipelineIdName.add_member(:name, Shapes::ShapeRef.new(shape: id, location_name: "name"))
    PipelineIdName.struct_class = Types::PipelineIdName

    PipelineObject.add_member(:id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "id"))
    PipelineObject.add_member(:name, Shapes::ShapeRef.new(shape: id, required: true, location_name: "name"))
    PipelineObject.add_member(:fields, Shapes::ShapeRef.new(shape: fieldList, required: true, location_name: "fields"))
    PipelineObject.struct_class = Types::PipelineObject

    PipelineObjectList.member = Shapes::ShapeRef.new(shape: PipelineObject)

    PipelineObjectMap.key = Shapes::ShapeRef.new(shape: id)
    PipelineObjectMap.value = Shapes::ShapeRef.new(shape: PipelineObject)

    PollForTaskInput.add_member(:worker_group, Shapes::ShapeRef.new(shape: string, required: true, location_name: "workerGroup"))
    PollForTaskInput.add_member(:hostname, Shapes::ShapeRef.new(shape: id, location_name: "hostname"))
    PollForTaskInput.add_member(:instance_identity, Shapes::ShapeRef.new(shape: InstanceIdentity, location_name: "instanceIdentity"))
    PollForTaskInput.struct_class = Types::PollForTaskInput

    PollForTaskOutput.add_member(:task_object, Shapes::ShapeRef.new(shape: TaskObject, location_name: "taskObject"))
    PollForTaskOutput.struct_class = Types::PollForTaskOutput

    PutPipelineDefinitionInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    PutPipelineDefinitionInput.add_member(:pipeline_objects, Shapes::ShapeRef.new(shape: PipelineObjectList, required: true, location_name: "pipelineObjects"))
    PutPipelineDefinitionInput.add_member(:parameter_objects, Shapes::ShapeRef.new(shape: ParameterObjectList, location_name: "parameterObjects"))
    PutPipelineDefinitionInput.add_member(:parameter_values, Shapes::ShapeRef.new(shape: ParameterValueList, location_name: "parameterValues"))
    PutPipelineDefinitionInput.struct_class = Types::PutPipelineDefinitionInput

    PutPipelineDefinitionOutput.add_member(:validation_errors, Shapes::ShapeRef.new(shape: ValidationErrors, location_name: "validationErrors"))
    PutPipelineDefinitionOutput.add_member(:validation_warnings, Shapes::ShapeRef.new(shape: ValidationWarnings, location_name: "validationWarnings"))
    PutPipelineDefinitionOutput.add_member(:errored, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "errored"))
    PutPipelineDefinitionOutput.struct_class = Types::PutPipelineDefinitionOutput

    Query.add_member(:selectors, Shapes::ShapeRef.new(shape: SelectorList, location_name: "selectors"))
    Query.struct_class = Types::Query

    QueryObjectsInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    QueryObjectsInput.add_member(:query, Shapes::ShapeRef.new(shape: Query, location_name: "query"))
    QueryObjectsInput.add_member(:sphere, Shapes::ShapeRef.new(shape: string, required: true, location_name: "sphere"))
    QueryObjectsInput.add_member(:marker, Shapes::ShapeRef.new(shape: string, location_name: "marker"))
    QueryObjectsInput.add_member(:limit, Shapes::ShapeRef.new(shape: int, location_name: "limit"))
    QueryObjectsInput.struct_class = Types::QueryObjectsInput

    QueryObjectsOutput.add_member(:ids, Shapes::ShapeRef.new(shape: idList, location_name: "ids"))
    QueryObjectsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: string, location_name: "marker"))
    QueryObjectsOutput.add_member(:has_more_results, Shapes::ShapeRef.new(shape: boolean, location_name: "hasMoreResults"))
    QueryObjectsOutput.struct_class = Types::QueryObjectsOutput

    RemoveTagsInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    RemoveTagsInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: stringList, required: true, location_name: "tagKeys"))
    RemoveTagsInput.struct_class = Types::RemoveTagsInput

    RemoveTagsOutput.struct_class = Types::RemoveTagsOutput

    ReportTaskProgressInput.add_member(:task_id, Shapes::ShapeRef.new(shape: taskId, required: true, location_name: "taskId"))
    ReportTaskProgressInput.add_member(:fields, Shapes::ShapeRef.new(shape: fieldList, location_name: "fields"))
    ReportTaskProgressInput.struct_class = Types::ReportTaskProgressInput

    ReportTaskProgressOutput.add_member(:canceled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "canceled"))
    ReportTaskProgressOutput.struct_class = Types::ReportTaskProgressOutput

    ReportTaskRunnerHeartbeatInput.add_member(:taskrunner_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "taskrunnerId"))
    ReportTaskRunnerHeartbeatInput.add_member(:worker_group, Shapes::ShapeRef.new(shape: string, location_name: "workerGroup"))
    ReportTaskRunnerHeartbeatInput.add_member(:hostname, Shapes::ShapeRef.new(shape: id, location_name: "hostname"))
    ReportTaskRunnerHeartbeatInput.struct_class = Types::ReportTaskRunnerHeartbeatInput

    ReportTaskRunnerHeartbeatOutput.add_member(:terminate, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "terminate"))
    ReportTaskRunnerHeartbeatOutput.struct_class = Types::ReportTaskRunnerHeartbeatOutput

    Selector.add_member(:field_name, Shapes::ShapeRef.new(shape: string, location_name: "fieldName"))
    Selector.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, location_name: "operator"))
    Selector.struct_class = Types::Selector

    SelectorList.member = Shapes::ShapeRef.new(shape: Selector)

    SetStatusInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    SetStatusInput.add_member(:object_ids, Shapes::ShapeRef.new(shape: idList, required: true, location_name: "objectIds"))
    SetStatusInput.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "status"))
    SetStatusInput.struct_class = Types::SetStatusInput

    SetTaskStatusInput.add_member(:task_id, Shapes::ShapeRef.new(shape: taskId, required: true, location_name: "taskId"))
    SetTaskStatusInput.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, required: true, location_name: "taskStatus"))
    SetTaskStatusInput.add_member(:error_id, Shapes::ShapeRef.new(shape: string, location_name: "errorId"))
    SetTaskStatusInput.add_member(:error_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "errorMessage"))
    SetTaskStatusInput.add_member(:error_stack_trace, Shapes::ShapeRef.new(shape: string, location_name: "errorStackTrace"))
    SetTaskStatusInput.struct_class = Types::SetTaskStatusInput

    SetTaskStatusOutput.struct_class = Types::SetTaskStatusOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: tagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: tagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TaskObject.add_member(:task_id, Shapes::ShapeRef.new(shape: taskId, location_name: "taskId"))
    TaskObject.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, location_name: "pipelineId"))
    TaskObject.add_member(:attempt_id, Shapes::ShapeRef.new(shape: id, location_name: "attemptId"))
    TaskObject.add_member(:objects, Shapes::ShapeRef.new(shape: PipelineObjectMap, location_name: "objects"))
    TaskObject.struct_class = Types::TaskObject

    ValidatePipelineDefinitionInput.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: id, required: true, location_name: "pipelineId"))
    ValidatePipelineDefinitionInput.add_member(:pipeline_objects, Shapes::ShapeRef.new(shape: PipelineObjectList, required: true, location_name: "pipelineObjects"))
    ValidatePipelineDefinitionInput.add_member(:parameter_objects, Shapes::ShapeRef.new(shape: ParameterObjectList, location_name: "parameterObjects"))
    ValidatePipelineDefinitionInput.add_member(:parameter_values, Shapes::ShapeRef.new(shape: ParameterValueList, location_name: "parameterValues"))
    ValidatePipelineDefinitionInput.struct_class = Types::ValidatePipelineDefinitionInput

    ValidatePipelineDefinitionOutput.add_member(:validation_errors, Shapes::ShapeRef.new(shape: ValidationErrors, location_name: "validationErrors"))
    ValidatePipelineDefinitionOutput.add_member(:validation_warnings, Shapes::ShapeRef.new(shape: ValidationWarnings, location_name: "validationWarnings"))
    ValidatePipelineDefinitionOutput.add_member(:errored, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "errored"))
    ValidatePipelineDefinitionOutput.struct_class = Types::ValidatePipelineDefinitionOutput

    ValidationError.add_member(:id, Shapes::ShapeRef.new(shape: id, location_name: "id"))
    ValidationError.add_member(:errors, Shapes::ShapeRef.new(shape: validationMessages, location_name: "errors"))
    ValidationError.struct_class = Types::ValidationError

    ValidationErrors.member = Shapes::ShapeRef.new(shape: ValidationError)

    ValidationWarning.add_member(:id, Shapes::ShapeRef.new(shape: id, location_name: "id"))
    ValidationWarning.add_member(:warnings, Shapes::ShapeRef.new(shape: validationMessages, location_name: "warnings"))
    ValidationWarning.struct_class = Types::ValidationWarning

    ValidationWarnings.member = Shapes::ShapeRef.new(shape: ValidationWarning)

    fieldList.member = Shapes::ShapeRef.new(shape: Field)

    idList.member = Shapes::ShapeRef.new(shape: id)

    pipelineList.member = Shapes::ShapeRef.new(shape: PipelineIdName)

    stringList.member = Shapes::ShapeRef.new(shape: string)

    tagList.member = Shapes::ShapeRef.new(shape: Tag)

    validationMessages.member = Shapes::ShapeRef.new(shape: validationMessage)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2012-10-29"

      api.metadata = {
        "apiVersion" => "2012-10-29",
        "endpointPrefix" => "datapipeline",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Data Pipeline",
        "signatureVersion" => "v4",
        "targetPrefix" => "DataPipeline",
        "uid" => "datapipeline-2012-10-29",
      }

      api.add_operation(:activate_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ActivatePipelineInput)
        o.output = Shapes::ShapeRef.new(shape: ActivatePipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:add_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsInput)
        o.output = Shapes::ShapeRef.new(shape: AddTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
      end)

      api.add_operation(:create_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePipelineInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:deactivate_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeactivatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeactivatePipelineInput)
        o.output = Shapes::ShapeRef.new(shape: DeactivatePipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePipelineInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_objects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeObjects"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeObjectsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeObjectsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
        o[:pager] = Aws::Pager.new(
          more_results: "has_more_results",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePipelines"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePipelinesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribePipelinesOutput)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:evaluate_expression, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EvaluateExpression"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EvaluateExpressionInput)
        o.output = Shapes::ShapeRef.new(shape: EvaluateExpressionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: TaskNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
      end)

      api.add_operation(:get_pipeline_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPipelineDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPipelineDefinitionInput)
        o.output = Shapes::ShapeRef.new(shape: GetPipelineDefinitionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
      end)

      api.add_operation(:list_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelines"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPipelinesInput)
        o.output = Shapes::ShapeRef.new(shape: ListPipelinesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          more_results: "has_more_results",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:poll_for_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PollForTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PollForTaskInput)
        o.output = Shapes::ShapeRef.new(shape: PollForTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TaskNotFoundException)
      end)

      api.add_operation(:put_pipeline_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPipelineDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPipelineDefinitionInput)
        o.output = Shapes::ShapeRef.new(shape: PutPipelineDefinitionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
      end)

      api.add_operation(:query_objects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "QueryObjects"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: QueryObjectsInput)
        o.output = Shapes::ShapeRef.new(shape: QueryObjectsOutput)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          more_results: "has_more_results",
          limit_key: "limit",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:remove_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
      end)

      api.add_operation(:report_task_progress, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReportTaskProgress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ReportTaskProgressInput)
        o.output = Shapes::ShapeRef.new(shape: ReportTaskProgressOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TaskNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
      end)

      api.add_operation(:report_task_runner_heartbeat, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReportTaskRunnerHeartbeat"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ReportTaskRunnerHeartbeatInput)
        o.output = Shapes::ShapeRef.new(shape: ReportTaskRunnerHeartbeatOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:set_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetStatusInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:set_task_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetTaskStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetTaskStatusInput)
        o.output = Shapes::ShapeRef.new(shape: SetTaskStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: TaskNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
      end)

      api.add_operation(:validate_pipeline_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidatePipelineDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ValidatePipelineDefinitionInput)
        o.output = Shapes::ShapeRef.new(shape: ValidatePipelineDefinitionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PipelineDeletedException)
      end)
    end

  end
end
