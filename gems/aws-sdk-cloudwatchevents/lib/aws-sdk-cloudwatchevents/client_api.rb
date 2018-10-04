# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchEvents
  # @api private
  module ClientApi

    include Seahorse::Model

    Action = Shapes::StringShape.new(name: 'Action')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssignPublicIp = Shapes::StringShape.new(name: 'AssignPublicIp')
    AwsVpcConfiguration = Shapes::StructureShape.new(name: 'AwsVpcConfiguration')
    BatchArrayProperties = Shapes::StructureShape.new(name: 'BatchArrayProperties')
    BatchParameters = Shapes::StructureShape.new(name: 'BatchParameters')
    BatchRetryStrategy = Shapes::StructureShape.new(name: 'BatchRetryStrategy')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    DeleteRuleRequest = Shapes::StructureShape.new(name: 'DeleteRuleRequest')
    DescribeEventBusRequest = Shapes::StructureShape.new(name: 'DescribeEventBusRequest')
    DescribeEventBusResponse = Shapes::StructureShape.new(name: 'DescribeEventBusResponse')
    DescribeRuleRequest = Shapes::StructureShape.new(name: 'DescribeRuleRequest')
    DescribeRuleResponse = Shapes::StructureShape.new(name: 'DescribeRuleResponse')
    DisableRuleRequest = Shapes::StructureShape.new(name: 'DisableRuleRequest')
    EcsParameters = Shapes::StructureShape.new(name: 'EcsParameters')
    EnableRuleRequest = Shapes::StructureShape.new(name: 'EnableRuleRequest')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventId = Shapes::StringShape.new(name: 'EventId')
    EventPattern = Shapes::StringShape.new(name: 'EventPattern')
    EventResource = Shapes::StringShape.new(name: 'EventResource')
    EventResourceList = Shapes::ListShape.new(name: 'EventResourceList')
    EventTime = Shapes::TimestampShape.new(name: 'EventTime')
    InputTransformer = Shapes::StructureShape.new(name: 'InputTransformer')
    InputTransformerPathKey = Shapes::StringShape.new(name: 'InputTransformerPathKey')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidEventPatternException = Shapes::StructureShape.new(name: 'InvalidEventPatternException')
    KinesisParameters = Shapes::StructureShape.new(name: 'KinesisParameters')
    LaunchType = Shapes::StringShape.new(name: 'LaunchType')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LimitMax100 = Shapes::IntegerShape.new(name: 'LimitMax100')
    LimitMin1 = Shapes::IntegerShape.new(name: 'LimitMin1')
    ListRuleNamesByTargetRequest = Shapes::StructureShape.new(name: 'ListRuleNamesByTargetRequest')
    ListRuleNamesByTargetResponse = Shapes::StructureShape.new(name: 'ListRuleNamesByTargetResponse')
    ListRulesRequest = Shapes::StructureShape.new(name: 'ListRulesRequest')
    ListRulesResponse = Shapes::StructureShape.new(name: 'ListRulesResponse')
    ListTargetsByRuleRequest = Shapes::StructureShape.new(name: 'ListTargetsByRuleRequest')
    ListTargetsByRuleResponse = Shapes::StructureShape.new(name: 'ListTargetsByRuleResponse')
    MessageGroupId = Shapes::StringShape.new(name: 'MessageGroupId')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PolicyLengthExceededException = Shapes::StructureShape.new(name: 'PolicyLengthExceededException')
    Principal = Shapes::StringShape.new(name: 'Principal')
    PutEventsRequest = Shapes::StructureShape.new(name: 'PutEventsRequest')
    PutEventsRequestEntry = Shapes::StructureShape.new(name: 'PutEventsRequestEntry')
    PutEventsRequestEntryList = Shapes::ListShape.new(name: 'PutEventsRequestEntryList')
    PutEventsResponse = Shapes::StructureShape.new(name: 'PutEventsResponse')
    PutEventsResultEntry = Shapes::StructureShape.new(name: 'PutEventsResultEntry')
    PutEventsResultEntryList = Shapes::ListShape.new(name: 'PutEventsResultEntryList')
    PutPermissionRequest = Shapes::StructureShape.new(name: 'PutPermissionRequest')
    PutRuleRequest = Shapes::StructureShape.new(name: 'PutRuleRequest')
    PutRuleResponse = Shapes::StructureShape.new(name: 'PutRuleResponse')
    PutTargetsRequest = Shapes::StructureShape.new(name: 'PutTargetsRequest')
    PutTargetsResponse = Shapes::StructureShape.new(name: 'PutTargetsResponse')
    PutTargetsResultEntry = Shapes::StructureShape.new(name: 'PutTargetsResultEntry')
    PutTargetsResultEntryList = Shapes::ListShape.new(name: 'PutTargetsResultEntryList')
    RemovePermissionRequest = Shapes::StructureShape.new(name: 'RemovePermissionRequest')
    RemoveTargetsRequest = Shapes::StructureShape.new(name: 'RemoveTargetsRequest')
    RemoveTargetsResponse = Shapes::StructureShape.new(name: 'RemoveTargetsResponse')
    RemoveTargetsResultEntry = Shapes::StructureShape.new(name: 'RemoveTargetsResultEntry')
    RemoveTargetsResultEntryList = Shapes::ListShape.new(name: 'RemoveTargetsResultEntryList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleArn = Shapes::StringShape.new(name: 'RuleArn')
    RuleDescription = Shapes::StringShape.new(name: 'RuleDescription')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    RuleNameList = Shapes::ListShape.new(name: 'RuleNameList')
    RuleResponseList = Shapes::ListShape.new(name: 'RuleResponseList')
    RuleState = Shapes::StringShape.new(name: 'RuleState')
    RunCommandParameters = Shapes::StructureShape.new(name: 'RunCommandParameters')
    RunCommandTarget = Shapes::StructureShape.new(name: 'RunCommandTarget')
    RunCommandTargetKey = Shapes::StringShape.new(name: 'RunCommandTargetKey')
    RunCommandTargetValue = Shapes::StringShape.new(name: 'RunCommandTargetValue')
    RunCommandTargetValues = Shapes::ListShape.new(name: 'RunCommandTargetValues')
    RunCommandTargets = Shapes::ListShape.new(name: 'RunCommandTargets')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    SqsParameters = Shapes::StructureShape.new(name: 'SqsParameters')
    StatementId = Shapes::StringShape.new(name: 'StatementId')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Target = Shapes::StructureShape.new(name: 'Target')
    TargetArn = Shapes::StringShape.new(name: 'TargetArn')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TargetIdList = Shapes::ListShape.new(name: 'TargetIdList')
    TargetInput = Shapes::StringShape.new(name: 'TargetInput')
    TargetInputPath = Shapes::StringShape.new(name: 'TargetInputPath')
    TargetList = Shapes::ListShape.new(name: 'TargetList')
    TargetPartitionKeyPath = Shapes::StringShape.new(name: 'TargetPartitionKeyPath')
    TestEventPatternRequest = Shapes::StructureShape.new(name: 'TestEventPatternRequest')
    TestEventPatternResponse = Shapes::StructureShape.new(name: 'TestEventPatternResponse')
    TransformerInput = Shapes::StringShape.new(name: 'TransformerInput')
    TransformerPaths = Shapes::MapShape.new(name: 'TransformerPaths')

    AwsVpcConfiguration.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "Subnets"))
    AwsVpcConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroups"))
    AwsVpcConfiguration.add_member(:assign_public_ip, Shapes::ShapeRef.new(shape: AssignPublicIp, location_name: "AssignPublicIp"))
    AwsVpcConfiguration.struct_class = Types::AwsVpcConfiguration

    BatchArrayProperties.add_member(:size, Shapes::ShapeRef.new(shape: Integer, location_name: "Size"))
    BatchArrayProperties.struct_class = Types::BatchArrayProperties

    BatchParameters.add_member(:job_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "JobDefinition"))
    BatchParameters.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "JobName"))
    BatchParameters.add_member(:array_properties, Shapes::ShapeRef.new(shape: BatchArrayProperties, location_name: "ArrayProperties"))
    BatchParameters.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: BatchRetryStrategy, location_name: "RetryStrategy"))
    BatchParameters.struct_class = Types::BatchParameters

    BatchRetryStrategy.add_member(:attempts, Shapes::ShapeRef.new(shape: Integer, location_name: "Attempts"))
    BatchRetryStrategy.struct_class = Types::BatchRetryStrategy

    DeleteRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    DeleteRuleRequest.struct_class = Types::DeleteRuleRequest

    DescribeEventBusRequest.struct_class = Types::DescribeEventBusRequest

    DescribeEventBusResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    DescribeEventBusResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    DescribeEventBusResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    DescribeEventBusResponse.struct_class = Types::DescribeEventBusResponse

    DescribeRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    DescribeRuleRequest.struct_class = Types::DescribeRuleRequest

    DescribeRuleResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "Name"))
    DescribeRuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "Arn"))
    DescribeRuleResponse.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    DescribeRuleResponse.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    DescribeRuleResponse.add_member(:state, Shapes::ShapeRef.new(shape: RuleState, location_name: "State"))
    DescribeRuleResponse.add_member(:description, Shapes::ShapeRef.new(shape: RuleDescription, location_name: "Description"))
    DescribeRuleResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeRuleResponse.struct_class = Types::DescribeRuleResponse

    DisableRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    DisableRuleRequest.struct_class = Types::DisableRuleRequest

    EcsParameters.add_member(:task_definition_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "TaskDefinitionArn"))
    EcsParameters.add_member(:task_count, Shapes::ShapeRef.new(shape: LimitMin1, location_name: "TaskCount"))
    EcsParameters.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "LaunchType"))
    EcsParameters.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "NetworkConfiguration"))
    EcsParameters.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "PlatformVersion"))
    EcsParameters.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "Group"))
    EcsParameters.struct_class = Types::EcsParameters

    EnableRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    EnableRuleRequest.struct_class = Types::EnableRuleRequest

    EventResourceList.member = Shapes::ShapeRef.new(shape: EventResource)

    InputTransformer.add_member(:input_paths_map, Shapes::ShapeRef.new(shape: TransformerPaths, location_name: "InputPathsMap"))
    InputTransformer.add_member(:input_template, Shapes::ShapeRef.new(shape: TransformerInput, required: true, location_name: "InputTemplate"))
    InputTransformer.struct_class = Types::InputTransformer

    KinesisParameters.add_member(:partition_key_path, Shapes::ShapeRef.new(shape: TargetPartitionKeyPath, required: true, location_name: "PartitionKeyPath"))
    KinesisParameters.struct_class = Types::KinesisParameters

    ListRuleNamesByTargetRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, required: true, location_name: "TargetArn"))
    ListRuleNamesByTargetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRuleNamesByTargetRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListRuleNamesByTargetRequest.struct_class = Types::ListRuleNamesByTargetRequest

    ListRuleNamesByTargetResponse.add_member(:rule_names, Shapes::ShapeRef.new(shape: RuleNameList, location_name: "RuleNames"))
    ListRuleNamesByTargetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRuleNamesByTargetResponse.struct_class = Types::ListRuleNamesByTargetResponse

    ListRulesRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: RuleName, location_name: "NamePrefix"))
    ListRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRulesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListRulesRequest.struct_class = Types::ListRulesRequest

    ListRulesResponse.add_member(:rules, Shapes::ShapeRef.new(shape: RuleResponseList, location_name: "Rules"))
    ListRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRulesResponse.struct_class = Types::ListRulesResponse

    ListTargetsByRuleRequest.add_member(:rule, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Rule"))
    ListTargetsByRuleRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTargetsByRuleRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListTargetsByRuleRequest.struct_class = Types::ListTargetsByRuleRequest

    ListTargetsByRuleResponse.add_member(:targets, Shapes::ShapeRef.new(shape: TargetList, location_name: "Targets"))
    ListTargetsByRuleResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTargetsByRuleResponse.struct_class = Types::ListTargetsByRuleResponse

    NetworkConfiguration.add_member(:awsvpc_configuration, Shapes::ShapeRef.new(shape: AwsVpcConfiguration, location_name: "awsvpcConfiguration"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    PutEventsRequest.add_member(:entries, Shapes::ShapeRef.new(shape: PutEventsRequestEntryList, required: true, location_name: "Entries"))
    PutEventsRequest.struct_class = Types::PutEventsRequest

    PutEventsRequestEntry.add_member(:time, Shapes::ShapeRef.new(shape: EventTime, location_name: "Time"))
    PutEventsRequestEntry.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    PutEventsRequestEntry.add_member(:resources, Shapes::ShapeRef.new(shape: EventResourceList, location_name: "Resources"))
    PutEventsRequestEntry.add_member(:detail_type, Shapes::ShapeRef.new(shape: String, location_name: "DetailType"))
    PutEventsRequestEntry.add_member(:detail, Shapes::ShapeRef.new(shape: String, location_name: "Detail"))
    PutEventsRequestEntry.struct_class = Types::PutEventsRequestEntry

    PutEventsRequestEntryList.member = Shapes::ShapeRef.new(shape: PutEventsRequestEntry)

    PutEventsResponse.add_member(:failed_entry_count, Shapes::ShapeRef.new(shape: Integer, location_name: "FailedEntryCount"))
    PutEventsResponse.add_member(:entries, Shapes::ShapeRef.new(shape: PutEventsResultEntryList, location_name: "Entries"))
    PutEventsResponse.struct_class = Types::PutEventsResponse

    PutEventsResultEntry.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "EventId"))
    PutEventsResultEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PutEventsResultEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    PutEventsResultEntry.struct_class = Types::PutEventsResultEntry

    PutEventsResultEntryList.member = Shapes::ShapeRef.new(shape: PutEventsResultEntry)

    PutPermissionRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    PutPermissionRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location_name: "Principal"))
    PutPermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "StatementId"))
    PutPermissionRequest.struct_class = Types::PutPermissionRequest

    PutRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    PutRuleRequest.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    PutRuleRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    PutRuleRequest.add_member(:state, Shapes::ShapeRef.new(shape: RuleState, location_name: "State"))
    PutRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: RuleDescription, location_name: "Description"))
    PutRuleRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    PutRuleRequest.struct_class = Types::PutRuleRequest

    PutRuleResponse.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "RuleArn"))
    PutRuleResponse.struct_class = Types::PutRuleResponse

    PutTargetsRequest.add_member(:rule, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Rule"))
    PutTargetsRequest.add_member(:targets, Shapes::ShapeRef.new(shape: TargetList, required: true, location_name: "Targets"))
    PutTargetsRequest.struct_class = Types::PutTargetsRequest

    PutTargetsResponse.add_member(:failed_entry_count, Shapes::ShapeRef.new(shape: Integer, location_name: "FailedEntryCount"))
    PutTargetsResponse.add_member(:failed_entries, Shapes::ShapeRef.new(shape: PutTargetsResultEntryList, location_name: "FailedEntries"))
    PutTargetsResponse.struct_class = Types::PutTargetsResponse

    PutTargetsResultEntry.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "TargetId"))
    PutTargetsResultEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PutTargetsResultEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    PutTargetsResultEntry.struct_class = Types::PutTargetsResultEntry

    PutTargetsResultEntryList.member = Shapes::ShapeRef.new(shape: PutTargetsResultEntry)

    RemovePermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "StatementId"))
    RemovePermissionRequest.struct_class = Types::RemovePermissionRequest

    RemoveTargetsRequest.add_member(:rule, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Rule"))
    RemoveTargetsRequest.add_member(:ids, Shapes::ShapeRef.new(shape: TargetIdList, required: true, location_name: "Ids"))
    RemoveTargetsRequest.struct_class = Types::RemoveTargetsRequest

    RemoveTargetsResponse.add_member(:failed_entry_count, Shapes::ShapeRef.new(shape: Integer, location_name: "FailedEntryCount"))
    RemoveTargetsResponse.add_member(:failed_entries, Shapes::ShapeRef.new(shape: RemoveTargetsResultEntryList, location_name: "FailedEntries"))
    RemoveTargetsResponse.struct_class = Types::RemoveTargetsResponse

    RemoveTargetsResultEntry.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "TargetId"))
    RemoveTargetsResultEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    RemoveTargetsResultEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    RemoveTargetsResultEntry.struct_class = Types::RemoveTargetsResultEntry

    RemoveTargetsResultEntryList.member = Shapes::ShapeRef.new(shape: RemoveTargetsResultEntry)

    Rule.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "Name"))
    Rule.add_member(:arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "Arn"))
    Rule.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    Rule.add_member(:state, Shapes::ShapeRef.new(shape: RuleState, location_name: "State"))
    Rule.add_member(:description, Shapes::ShapeRef.new(shape: RuleDescription, location_name: "Description"))
    Rule.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    Rule.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    Rule.struct_class = Types::Rule

    RuleNameList.member = Shapes::ShapeRef.new(shape: RuleName)

    RuleResponseList.member = Shapes::ShapeRef.new(shape: Rule)

    RunCommandParameters.add_member(:run_command_targets, Shapes::ShapeRef.new(shape: RunCommandTargets, required: true, location_name: "RunCommandTargets"))
    RunCommandParameters.struct_class = Types::RunCommandParameters

    RunCommandTarget.add_member(:key, Shapes::ShapeRef.new(shape: RunCommandTargetKey, required: true, location_name: "Key"))
    RunCommandTarget.add_member(:values, Shapes::ShapeRef.new(shape: RunCommandTargetValues, required: true, location_name: "Values"))
    RunCommandTarget.struct_class = Types::RunCommandTarget

    RunCommandTargetValues.member = Shapes::ShapeRef.new(shape: RunCommandTargetValue)

    RunCommandTargets.member = Shapes::ShapeRef.new(shape: RunCommandTarget)

    SqsParameters.add_member(:message_group_id, Shapes::ShapeRef.new(shape: MessageGroupId, location_name: "MessageGroupId"))
    SqsParameters.struct_class = Types::SqsParameters

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Target.add_member(:id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "Id"))
    Target.add_member(:arn, Shapes::ShapeRef.new(shape: TargetArn, required: true, location_name: "Arn"))
    Target.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    Target.add_member(:input, Shapes::ShapeRef.new(shape: TargetInput, location_name: "Input"))
    Target.add_member(:input_path, Shapes::ShapeRef.new(shape: TargetInputPath, location_name: "InputPath"))
    Target.add_member(:input_transformer, Shapes::ShapeRef.new(shape: InputTransformer, location_name: "InputTransformer"))
    Target.add_member(:kinesis_parameters, Shapes::ShapeRef.new(shape: KinesisParameters, location_name: "KinesisParameters"))
    Target.add_member(:run_command_parameters, Shapes::ShapeRef.new(shape: RunCommandParameters, location_name: "RunCommandParameters"))
    Target.add_member(:ecs_parameters, Shapes::ShapeRef.new(shape: EcsParameters, location_name: "EcsParameters"))
    Target.add_member(:batch_parameters, Shapes::ShapeRef.new(shape: BatchParameters, location_name: "BatchParameters"))
    Target.add_member(:sqs_parameters, Shapes::ShapeRef.new(shape: SqsParameters, location_name: "SqsParameters"))
    Target.struct_class = Types::Target

    TargetIdList.member = Shapes::ShapeRef.new(shape: TargetId)

    TargetList.member = Shapes::ShapeRef.new(shape: Target)

    TestEventPatternRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, required: true, location_name: "EventPattern"))
    TestEventPatternRequest.add_member(:event, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Event"))
    TestEventPatternRequest.struct_class = Types::TestEventPatternRequest

    TestEventPatternResponse.add_member(:result, Shapes::ShapeRef.new(shape: Boolean, location_name: "Result"))
    TestEventPatternResponse.struct_class = Types::TestEventPatternResponse

    TransformerPaths.key = Shapes::ShapeRef.new(shape: InputTransformerPathKey)
    TransformerPaths.value = Shapes::ShapeRef.new(shape: TargetInputPath)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-10-07"

      api.metadata = {
        "apiVersion" => "2015-10-07",
        "endpointPrefix" => "events",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon CloudWatch Events",
        "serviceId" => "CloudWatch Events",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSEvents",
        "uid" => "events-2015-10-07",
      }

      api.add_operation(:delete_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_event_bus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventBus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventBusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventBusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:disable_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:enable_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_rule_names_by_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleNamesByTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRuleNamesByTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuleNamesByTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_targets_by_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTargetsByRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTargetsByRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTargetsByRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:put_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:put_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:put_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventPatternException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:put_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:remove_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemovePermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemovePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:remove_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:test_event_pattern, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestEventPattern"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestEventPatternRequest)
        o.output = Shapes::ShapeRef.new(shape: TestEventPatternResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventPatternException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)
    end

  end
end
