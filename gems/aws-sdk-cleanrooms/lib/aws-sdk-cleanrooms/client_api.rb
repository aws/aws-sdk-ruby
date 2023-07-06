# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CleanRooms
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionReason = Shapes::StringShape.new(name: 'AccessDeniedExceptionReason')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AggregateColumn = Shapes::StructureShape.new(name: 'AggregateColumn')
    AggregateColumnColumnNamesList = Shapes::ListShape.new(name: 'AggregateColumnColumnNamesList')
    AggregateFunctionName = Shapes::StringShape.new(name: 'AggregateFunctionName')
    AggregationConstraint = Shapes::StructureShape.new(name: 'AggregationConstraint')
    AggregationConstraintMinimumInteger = Shapes::IntegerShape.new(name: 'AggregationConstraintMinimumInteger')
    AggregationConstraints = Shapes::ListShape.new(name: 'AggregationConstraints')
    AggregationType = Shapes::StringShape.new(name: 'AggregationType')
    AllowedColumnList = Shapes::ListShape.new(name: 'AllowedColumnList')
    AnalysisMethod = Shapes::StringShape.new(name: 'AnalysisMethod')
    AnalysisRule = Shapes::StructureShape.new(name: 'AnalysisRule')
    AnalysisRuleAggregation = Shapes::StructureShape.new(name: 'AnalysisRuleAggregation')
    AnalysisRuleAggregationAggregateColumnsList = Shapes::ListShape.new(name: 'AnalysisRuleAggregationAggregateColumnsList')
    AnalysisRuleColumnList = Shapes::ListShape.new(name: 'AnalysisRuleColumnList')
    AnalysisRuleColumnName = Shapes::StringShape.new(name: 'AnalysisRuleColumnName')
    AnalysisRuleList = Shapes::StructureShape.new(name: 'AnalysisRuleList')
    AnalysisRuleListJoinColumnsList = Shapes::ListShape.new(name: 'AnalysisRuleListJoinColumnsList')
    AnalysisRulePolicy = Shapes::UnionShape.new(name: 'AnalysisRulePolicy')
    AnalysisRulePolicyV1 = Shapes::UnionShape.new(name: 'AnalysisRulePolicyV1')
    AnalysisRuleType = Shapes::StringShape.new(name: 'AnalysisRuleType')
    AnalysisRuleTypeList = Shapes::ListShape.new(name: 'AnalysisRuleTypeList')
    BatchGetSchemaError = Shapes::StructureShape.new(name: 'BatchGetSchemaError')
    BatchGetSchemaErrorList = Shapes::ListShape.new(name: 'BatchGetSchemaErrorList')
    BatchGetSchemaInput = Shapes::StructureShape.new(name: 'BatchGetSchemaInput')
    BatchGetSchemaOutput = Shapes::StructureShape.new(name: 'BatchGetSchemaOutput')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CleanroomsArn = Shapes::StringShape.new(name: 'CleanroomsArn')
    Collaboration = Shapes::StructureShape.new(name: 'Collaboration')
    CollaborationArn = Shapes::StringShape.new(name: 'CollaborationArn')
    CollaborationDescription = Shapes::StringShape.new(name: 'CollaborationDescription')
    CollaborationIdentifier = Shapes::StringShape.new(name: 'CollaborationIdentifier')
    CollaborationName = Shapes::StringShape.new(name: 'CollaborationName')
    CollaborationQueryLogStatus = Shapes::StringShape.new(name: 'CollaborationQueryLogStatus')
    CollaborationSummary = Shapes::StructureShape.new(name: 'CollaborationSummary')
    CollaborationSummaryList = Shapes::ListShape.new(name: 'CollaborationSummaryList')
    Column = Shapes::StructureShape.new(name: 'Column')
    ColumnList = Shapes::ListShape.new(name: 'ColumnList')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ColumnTypeString = Shapes::StringShape.new(name: 'ColumnTypeString')
    ConfiguredTable = Shapes::StructureShape.new(name: 'ConfiguredTable')
    ConfiguredTableAnalysisRule = Shapes::StructureShape.new(name: 'ConfiguredTableAnalysisRule')
    ConfiguredTableAnalysisRulePolicy = Shapes::UnionShape.new(name: 'ConfiguredTableAnalysisRulePolicy')
    ConfiguredTableAnalysisRulePolicyV1 = Shapes::UnionShape.new(name: 'ConfiguredTableAnalysisRulePolicyV1')
    ConfiguredTableAnalysisRuleType = Shapes::StringShape.new(name: 'ConfiguredTableAnalysisRuleType')
    ConfiguredTableAnalysisRuleTypeList = Shapes::ListShape.new(name: 'ConfiguredTableAnalysisRuleTypeList')
    ConfiguredTableArn = Shapes::StringShape.new(name: 'ConfiguredTableArn')
    ConfiguredTableAssociation = Shapes::StructureShape.new(name: 'ConfiguredTableAssociation')
    ConfiguredTableAssociationArn = Shapes::StringShape.new(name: 'ConfiguredTableAssociationArn')
    ConfiguredTableAssociationIdentifier = Shapes::StringShape.new(name: 'ConfiguredTableAssociationIdentifier')
    ConfiguredTableAssociationSummary = Shapes::StructureShape.new(name: 'ConfiguredTableAssociationSummary')
    ConfiguredTableAssociationSummaryList = Shapes::ListShape.new(name: 'ConfiguredTableAssociationSummaryList')
    ConfiguredTableIdentifier = Shapes::StringShape.new(name: 'ConfiguredTableIdentifier')
    ConfiguredTableSummary = Shapes::StructureShape.new(name: 'ConfiguredTableSummary')
    ConfiguredTableSummaryList = Shapes::ListShape.new(name: 'ConfiguredTableSummaryList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    CreateCollaborationInput = Shapes::StructureShape.new(name: 'CreateCollaborationInput')
    CreateCollaborationOutput = Shapes::StructureShape.new(name: 'CreateCollaborationOutput')
    CreateConfiguredTableAnalysisRuleInput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAnalysisRuleInput')
    CreateConfiguredTableAnalysisRuleOutput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAnalysisRuleOutput')
    CreateConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAssociationInput')
    CreateConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAssociationOutput')
    CreateConfiguredTableInput = Shapes::StructureShape.new(name: 'CreateConfiguredTableInput')
    CreateConfiguredTableOutput = Shapes::StructureShape.new(name: 'CreateConfiguredTableOutput')
    CreateMembershipInput = Shapes::StructureShape.new(name: 'CreateMembershipInput')
    CreateMembershipOutput = Shapes::StructureShape.new(name: 'CreateMembershipOutput')
    DataEncryptionMetadata = Shapes::StructureShape.new(name: 'DataEncryptionMetadata')
    DeleteCollaborationInput = Shapes::StructureShape.new(name: 'DeleteCollaborationInput')
    DeleteCollaborationOutput = Shapes::StructureShape.new(name: 'DeleteCollaborationOutput')
    DeleteConfiguredTableAnalysisRuleInput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAnalysisRuleInput')
    DeleteConfiguredTableAnalysisRuleOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAnalysisRuleOutput')
    DeleteConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAssociationInput')
    DeleteConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAssociationOutput')
    DeleteConfiguredTableInput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableInput')
    DeleteConfiguredTableOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableOutput')
    DeleteMemberInput = Shapes::StructureShape.new(name: 'DeleteMemberInput')
    DeleteMemberOutput = Shapes::StructureShape.new(name: 'DeleteMemberOutput')
    DeleteMembershipInput = Shapes::StructureShape.new(name: 'DeleteMembershipInput')
    DeleteMembershipOutput = Shapes::StructureShape.new(name: 'DeleteMembershipOutput')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    Double = Shapes::FloatShape.new(name: 'Double')
    FilterableMemberStatus = Shapes::StringShape.new(name: 'FilterableMemberStatus')
    GetCollaborationInput = Shapes::StructureShape.new(name: 'GetCollaborationInput')
    GetCollaborationOutput = Shapes::StructureShape.new(name: 'GetCollaborationOutput')
    GetConfiguredTableAnalysisRuleInput = Shapes::StructureShape.new(name: 'GetConfiguredTableAnalysisRuleInput')
    GetConfiguredTableAnalysisRuleOutput = Shapes::StructureShape.new(name: 'GetConfiguredTableAnalysisRuleOutput')
    GetConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'GetConfiguredTableAssociationInput')
    GetConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'GetConfiguredTableAssociationOutput')
    GetConfiguredTableInput = Shapes::StructureShape.new(name: 'GetConfiguredTableInput')
    GetConfiguredTableOutput = Shapes::StructureShape.new(name: 'GetConfiguredTableOutput')
    GetMembershipInput = Shapes::StructureShape.new(name: 'GetMembershipInput')
    GetMembershipOutput = Shapes::StructureShape.new(name: 'GetMembershipOutput')
    GetProtectedQueryInput = Shapes::StructureShape.new(name: 'GetProtectedQueryInput')
    GetProtectedQueryOutput = Shapes::StructureShape.new(name: 'GetProtectedQueryOutput')
    GetSchemaAnalysisRuleInput = Shapes::StructureShape.new(name: 'GetSchemaAnalysisRuleInput')
    GetSchemaAnalysisRuleOutput = Shapes::StructureShape.new(name: 'GetSchemaAnalysisRuleOutput')
    GetSchemaInput = Shapes::StructureShape.new(name: 'GetSchemaInput')
    GetSchemaOutput = Shapes::StructureShape.new(name: 'GetSchemaOutput')
    GlueDatabaseName = Shapes::StringShape.new(name: 'GlueDatabaseName')
    GlueTableName = Shapes::StringShape.new(name: 'GlueTableName')
    GlueTableReference = Shapes::StructureShape.new(name: 'GlueTableReference')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JoinOperator = Shapes::StringShape.new(name: 'JoinOperator')
    JoinOperatorsList = Shapes::ListShape.new(name: 'JoinOperatorsList')
    JoinRequiredOption = Shapes::StringShape.new(name: 'JoinRequiredOption')
    KeyPrefix = Shapes::StringShape.new(name: 'KeyPrefix')
    ListCollaborationsInput = Shapes::StructureShape.new(name: 'ListCollaborationsInput')
    ListCollaborationsOutput = Shapes::StructureShape.new(name: 'ListCollaborationsOutput')
    ListConfiguredTableAssociationsInput = Shapes::StructureShape.new(name: 'ListConfiguredTableAssociationsInput')
    ListConfiguredTableAssociationsOutput = Shapes::StructureShape.new(name: 'ListConfiguredTableAssociationsOutput')
    ListConfiguredTablesInput = Shapes::StructureShape.new(name: 'ListConfiguredTablesInput')
    ListConfiguredTablesOutput = Shapes::StructureShape.new(name: 'ListConfiguredTablesOutput')
    ListMembersInput = Shapes::StructureShape.new(name: 'ListMembersInput')
    ListMembersOutput = Shapes::StructureShape.new(name: 'ListMembersOutput')
    ListMembershipsInput = Shapes::StructureShape.new(name: 'ListMembershipsInput')
    ListMembershipsOutput = Shapes::StructureShape.new(name: 'ListMembershipsOutput')
    ListProtectedQueriesInput = Shapes::StructureShape.new(name: 'ListProtectedQueriesInput')
    ListProtectedQueriesOutput = Shapes::StructureShape.new(name: 'ListProtectedQueriesOutput')
    ListSchemasInput = Shapes::StructureShape.new(name: 'ListSchemasInput')
    ListSchemasOutput = Shapes::StructureShape.new(name: 'ListSchemasOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberAbilities = Shapes::ListShape.new(name: 'MemberAbilities')
    MemberAbility = Shapes::StringShape.new(name: 'MemberAbility')
    MemberList = Shapes::ListShape.new(name: 'MemberList')
    MemberSpecification = Shapes::StructureShape.new(name: 'MemberSpecification')
    MemberStatus = Shapes::StringShape.new(name: 'MemberStatus')
    MemberSummary = Shapes::StructureShape.new(name: 'MemberSummary')
    MemberSummaryList = Shapes::ListShape.new(name: 'MemberSummaryList')
    Membership = Shapes::StructureShape.new(name: 'Membership')
    MembershipArn = Shapes::StringShape.new(name: 'MembershipArn')
    MembershipIdentifier = Shapes::StringShape.new(name: 'MembershipIdentifier')
    MembershipQueryLogStatus = Shapes::StringShape.new(name: 'MembershipQueryLogStatus')
    MembershipStatus = Shapes::StringShape.new(name: 'MembershipStatus')
    MembershipSummary = Shapes::StructureShape.new(name: 'MembershipSummary')
    MembershipSummaryList = Shapes::ListShape.new(name: 'MembershipSummaryList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ProtectedQuery = Shapes::StructureShape.new(name: 'ProtectedQuery')
    ProtectedQueryError = Shapes::StructureShape.new(name: 'ProtectedQueryError')
    ProtectedQueryIdentifier = Shapes::StringShape.new(name: 'ProtectedQueryIdentifier')
    ProtectedQueryOutput = Shapes::UnionShape.new(name: 'ProtectedQueryOutput')
    ProtectedQueryOutputConfiguration = Shapes::UnionShape.new(name: 'ProtectedQueryOutputConfiguration')
    ProtectedQueryResult = Shapes::StructureShape.new(name: 'ProtectedQueryResult')
    ProtectedQueryResultConfiguration = Shapes::StructureShape.new(name: 'ProtectedQueryResultConfiguration')
    ProtectedQueryS3Output = Shapes::StructureShape.new(name: 'ProtectedQueryS3Output')
    ProtectedQueryS3OutputConfiguration = Shapes::StructureShape.new(name: 'ProtectedQueryS3OutputConfiguration')
    ProtectedQueryS3OutputConfigurationBucketString = Shapes::StringShape.new(name: 'ProtectedQueryS3OutputConfigurationBucketString')
    ProtectedQuerySQLParameters = Shapes::StructureShape.new(name: 'ProtectedQuerySQLParameters')
    ProtectedQuerySQLParametersQueryStringString = Shapes::StringShape.new(name: 'ProtectedQuerySQLParametersQueryStringString')
    ProtectedQueryStatistics = Shapes::StructureShape.new(name: 'ProtectedQueryStatistics')
    ProtectedQueryStatus = Shapes::StringShape.new(name: 'ProtectedQueryStatus')
    ProtectedQuerySummary = Shapes::StructureShape.new(name: 'ProtectedQuerySummary')
    ProtectedQuerySummaryList = Shapes::ListShape.new(name: 'ProtectedQuerySummaryList')
    ProtectedQueryType = Shapes::StringShape.new(name: 'ProtectedQueryType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResultFormat = Shapes::StringShape.new(name: 'ResultFormat')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    ScalarFunctions = Shapes::StringShape.new(name: 'ScalarFunctions')
    ScalarFunctionsList = Shapes::ListShape.new(name: 'ScalarFunctionsList')
    Schema = Shapes::StructureShape.new(name: 'Schema')
    SchemaList = Shapes::ListShape.new(name: 'SchemaList')
    SchemaSummary = Shapes::StructureShape.new(name: 'SchemaSummary')
    SchemaSummaryList = Shapes::ListShape.new(name: 'SchemaSummaryList')
    SchemaType = Shapes::StringShape.new(name: 'SchemaType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartProtectedQueryInput = Shapes::StructureShape.new(name: 'StartProtectedQueryInput')
    StartProtectedQueryOutput = Shapes::StructureShape.new(name: 'StartProtectedQueryOutput')
    String = Shapes::StringShape.new(name: 'String')
    TableAlias = Shapes::StringShape.new(name: 'TableAlias')
    TableAliasList = Shapes::ListShape.new(name: 'TableAliasList')
    TableDescription = Shapes::StringShape.new(name: 'TableDescription')
    TableReference = Shapes::UnionShape.new(name: 'TableReference')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetProtectedQueryStatus = Shapes::StringShape.new(name: 'TargetProtectedQueryStatus')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateCollaborationInput = Shapes::StructureShape.new(name: 'UpdateCollaborationInput')
    UpdateCollaborationOutput = Shapes::StructureShape.new(name: 'UpdateCollaborationOutput')
    UpdateConfiguredTableAnalysisRuleInput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAnalysisRuleInput')
    UpdateConfiguredTableAnalysisRuleOutput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAnalysisRuleOutput')
    UpdateConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAssociationInput')
    UpdateConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAssociationOutput')
    UpdateConfiguredTableInput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableInput')
    UpdateConfiguredTableOutput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableOutput')
    UpdateMembershipInput = Shapes::StructureShape.new(name: 'UpdateMembershipInput')
    UpdateMembershipOutput = Shapes::StructureShape.new(name: 'UpdateMembershipOutput')
    UpdateProtectedQueryInput = Shapes::StructureShape.new(name: 'UpdateProtectedQueryInput')
    UpdateProtectedQueryOutput = Shapes::StructureShape.new(name: 'UpdateProtectedQueryOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.add_member(:reason, Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, location_name: "reason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AggregateColumn.add_member(:column_names, Shapes::ShapeRef.new(shape: AggregateColumnColumnNamesList, required: true, location_name: "columnNames"))
    AggregateColumn.add_member(:function, Shapes::ShapeRef.new(shape: AggregateFunctionName, required: true, location_name: "function"))
    AggregateColumn.struct_class = Types::AggregateColumn

    AggregateColumnColumnNamesList.member = Shapes::ShapeRef.new(shape: AnalysisRuleColumnName)

    AggregationConstraint.add_member(:column_name, Shapes::ShapeRef.new(shape: AnalysisRuleColumnName, required: true, location_name: "columnName"))
    AggregationConstraint.add_member(:minimum, Shapes::ShapeRef.new(shape: AggregationConstraintMinimumInteger, required: true, location_name: "minimum"))
    AggregationConstraint.add_member(:type, Shapes::ShapeRef.new(shape: AggregationType, required: true, location_name: "type"))
    AggregationConstraint.struct_class = Types::AggregationConstraint

    AggregationConstraints.member = Shapes::ShapeRef.new(shape: AggregationConstraint)

    AllowedColumnList.member = Shapes::ShapeRef.new(shape: ColumnName)

    AnalysisRule.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location_name: "collaborationId"))
    AnalysisRule.add_member(:type, Shapes::ShapeRef.new(shape: AnalysisRuleType, required: true, location_name: "type"))
    AnalysisRule.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    AnalysisRule.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    AnalysisRule.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    AnalysisRule.add_member(:policy, Shapes::ShapeRef.new(shape: AnalysisRulePolicy, required: true, location_name: "policy"))
    AnalysisRule.struct_class = Types::AnalysisRule

    AnalysisRuleAggregation.add_member(:aggregate_columns, Shapes::ShapeRef.new(shape: AnalysisRuleAggregationAggregateColumnsList, required: true, location_name: "aggregateColumns"))
    AnalysisRuleAggregation.add_member(:join_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "joinColumns"))
    AnalysisRuleAggregation.add_member(:join_required, Shapes::ShapeRef.new(shape: JoinRequiredOption, location_name: "joinRequired"))
    AnalysisRuleAggregation.add_member(:allowed_join_operators, Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: "allowedJoinOperators"))
    AnalysisRuleAggregation.add_member(:dimension_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "dimensionColumns"))
    AnalysisRuleAggregation.add_member(:scalar_functions, Shapes::ShapeRef.new(shape: ScalarFunctionsList, required: true, location_name: "scalarFunctions"))
    AnalysisRuleAggregation.add_member(:output_constraints, Shapes::ShapeRef.new(shape: AggregationConstraints, required: true, location_name: "outputConstraints"))
    AnalysisRuleAggregation.struct_class = Types::AnalysisRuleAggregation

    AnalysisRuleAggregationAggregateColumnsList.member = Shapes::ShapeRef.new(shape: AggregateColumn)

    AnalysisRuleColumnList.member = Shapes::ShapeRef.new(shape: AnalysisRuleColumnName)

    AnalysisRuleList.add_member(:join_columns, Shapes::ShapeRef.new(shape: AnalysisRuleListJoinColumnsList, required: true, location_name: "joinColumns"))
    AnalysisRuleList.add_member(:allowed_join_operators, Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: "allowedJoinOperators"))
    AnalysisRuleList.add_member(:list_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "listColumns"))
    AnalysisRuleList.struct_class = Types::AnalysisRuleList

    AnalysisRuleListJoinColumnsList.member = Shapes::ShapeRef.new(shape: AnalysisRuleColumnName)

    AnalysisRulePolicy.add_member(:v1, Shapes::ShapeRef.new(shape: AnalysisRulePolicyV1, location_name: "v1"))
    AnalysisRulePolicy.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AnalysisRulePolicy.add_member_subclass(:v1, Types::AnalysisRulePolicy::V1)
    AnalysisRulePolicy.add_member_subclass(:unknown, Types::AnalysisRulePolicy::Unknown)
    AnalysisRulePolicy.struct_class = Types::AnalysisRulePolicy

    AnalysisRulePolicyV1.add_member(:list, Shapes::ShapeRef.new(shape: AnalysisRuleList, location_name: "list"))
    AnalysisRulePolicyV1.add_member(:aggregation, Shapes::ShapeRef.new(shape: AnalysisRuleAggregation, location_name: "aggregation"))
    AnalysisRulePolicyV1.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AnalysisRulePolicyV1.add_member_subclass(:list, Types::AnalysisRulePolicyV1::List)
    AnalysisRulePolicyV1.add_member_subclass(:aggregation, Types::AnalysisRulePolicyV1::Aggregation)
    AnalysisRulePolicyV1.add_member_subclass(:unknown, Types::AnalysisRulePolicyV1::Unknown)
    AnalysisRulePolicyV1.struct_class = Types::AnalysisRulePolicyV1

    AnalysisRuleTypeList.member = Shapes::ShapeRef.new(shape: AnalysisRuleType)

    BatchGetSchemaError.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    BatchGetSchemaError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BatchGetSchemaError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchGetSchemaError.struct_class = Types::BatchGetSchemaError

    BatchGetSchemaErrorList.member = Shapes::ShapeRef.new(shape: BatchGetSchemaError)

    BatchGetSchemaInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    BatchGetSchemaInput.add_member(:names, Shapes::ShapeRef.new(shape: TableAliasList, required: true, location_name: "names"))
    BatchGetSchemaInput.struct_class = Types::BatchGetSchemaInput

    BatchGetSchemaOutput.add_member(:schemas, Shapes::ShapeRef.new(shape: SchemaList, required: true, location_name: "schemas"))
    BatchGetSchemaOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetSchemaErrorList, required: true, location_name: "errors"))
    BatchGetSchemaOutput.struct_class = Types::BatchGetSchemaOutput

    Collaboration.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    Collaboration.add_member(:arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "arn"))
    Collaboration.add_member(:name, Shapes::ShapeRef.new(shape: CollaborationName, required: true, location_name: "name"))
    Collaboration.add_member(:description, Shapes::ShapeRef.new(shape: CollaborationDescription, location_name: "description"))
    Collaboration.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    Collaboration.add_member(:creator_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "creatorDisplayName"))
    Collaboration.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    Collaboration.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    Collaboration.add_member(:member_status, Shapes::ShapeRef.new(shape: MemberStatus, required: true, location_name: "memberStatus"))
    Collaboration.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, location_name: "membershipId"))
    Collaboration.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, location_name: "membershipArn"))
    Collaboration.add_member(:data_encryption_metadata, Shapes::ShapeRef.new(shape: DataEncryptionMetadata, location_name: "dataEncryptionMetadata"))
    Collaboration.add_member(:query_log_status, Shapes::ShapeRef.new(shape: CollaborationQueryLogStatus, required: true, location_name: "queryLogStatus"))
    Collaboration.struct_class = Types::Collaboration

    CollaborationSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    CollaborationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "arn"))
    CollaborationSummary.add_member(:name, Shapes::ShapeRef.new(shape: CollaborationName, required: true, location_name: "name"))
    CollaborationSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationSummary.add_member(:creator_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "creatorDisplayName"))
    CollaborationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationSummary.add_member(:member_status, Shapes::ShapeRef.new(shape: MemberStatus, required: true, location_name: "memberStatus"))
    CollaborationSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, location_name: "membershipId"))
    CollaborationSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, location_name: "membershipArn"))
    CollaborationSummary.struct_class = Types::CollaborationSummary

    CollaborationSummaryList.member = Shapes::ShapeRef.new(shape: CollaborationSummary)

    Column.add_member(:name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "name"))
    Column.add_member(:type, Shapes::ShapeRef.new(shape: ColumnTypeString, required: true, location_name: "type"))
    Column.struct_class = Types::Column

    ColumnList.member = Shapes::ShapeRef.new(shape: Column)

    ConfiguredTable.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ConfiguredTable.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredTableArn, required: true, location_name: "arn"))
    ConfiguredTable.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "name"))
    ConfiguredTable.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    ConfiguredTable.add_member(:table_reference, Shapes::ShapeRef.new(shape: TableReference, required: true, location_name: "tableReference"))
    ConfiguredTable.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTable.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTable.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleTypeList, required: true, location_name: "analysisRuleTypes"))
    ConfiguredTable.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, required: true, location_name: "analysisMethod"))
    ConfiguredTable.add_member(:allowed_columns, Shapes::ShapeRef.new(shape: AllowedColumnList, required: true, location_name: "allowedColumns"))
    ConfiguredTable.struct_class = Types::ConfiguredTable

    ConfiguredTableAnalysisRule.add_member(:configured_table_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "configuredTableId"))
    ConfiguredTableAnalysisRule.add_member(:configured_table_arn, Shapes::ShapeRef.new(shape: ConfiguredTableArn, required: true, location_name: "configuredTableArn"))
    ConfiguredTableAnalysisRule.add_member(:policy, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicy, required: true, location_name: "policy"))
    ConfiguredTableAnalysisRule.add_member(:type, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, required: true, location_name: "type"))
    ConfiguredTableAnalysisRule.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableAnalysisRule.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableAnalysisRule.struct_class = Types::ConfiguredTableAnalysisRule

    ConfiguredTableAnalysisRulePolicy.add_member(:v1, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicyV1, location_name: "v1"))
    ConfiguredTableAnalysisRulePolicy.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConfiguredTableAnalysisRulePolicy.add_member_subclass(:v1, Types::ConfiguredTableAnalysisRulePolicy::V1)
    ConfiguredTableAnalysisRulePolicy.add_member_subclass(:unknown, Types::ConfiguredTableAnalysisRulePolicy::Unknown)
    ConfiguredTableAnalysisRulePolicy.struct_class = Types::ConfiguredTableAnalysisRulePolicy

    ConfiguredTableAnalysisRulePolicyV1.add_member(:list, Shapes::ShapeRef.new(shape: AnalysisRuleList, location_name: "list"))
    ConfiguredTableAnalysisRulePolicyV1.add_member(:aggregation, Shapes::ShapeRef.new(shape: AnalysisRuleAggregation, location_name: "aggregation"))
    ConfiguredTableAnalysisRulePolicyV1.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConfiguredTableAnalysisRulePolicyV1.add_member_subclass(:list, Types::ConfiguredTableAnalysisRulePolicyV1::List)
    ConfiguredTableAnalysisRulePolicyV1.add_member_subclass(:aggregation, Types::ConfiguredTableAnalysisRulePolicyV1::Aggregation)
    ConfiguredTableAnalysisRulePolicyV1.add_member_subclass(:unknown, Types::ConfiguredTableAnalysisRulePolicyV1::Unknown)
    ConfiguredTableAnalysisRulePolicyV1.struct_class = Types::ConfiguredTableAnalysisRulePolicyV1

    ConfiguredTableAnalysisRuleTypeList.member = Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType)

    ConfiguredTableAssociation.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationArn, required: true, location_name: "arn"))
    ConfiguredTableAssociation.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ConfiguredTableAssociation.add_member(:configured_table_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "configuredTableId"))
    ConfiguredTableAssociation.add_member(:configured_table_arn, Shapes::ShapeRef.new(shape: ConfiguredTableArn, required: true, location_name: "configuredTableArn"))
    ConfiguredTableAssociation.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    ConfiguredTableAssociation.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ConfiguredTableAssociation.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    ConfiguredTableAssociation.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    ConfiguredTableAssociation.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    ConfiguredTableAssociation.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableAssociation.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableAssociation.struct_class = Types::ConfiguredTableAssociation

    ConfiguredTableAssociationSummary.add_member(:configured_table_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "configuredTableId"))
    ConfiguredTableAssociationSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location_name: "membershipId"))
    ConfiguredTableAssociationSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ConfiguredTableAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    ConfiguredTableAssociationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableAssociationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableAssociationSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ConfiguredTableAssociationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationArn, required: true, location_name: "arn"))
    ConfiguredTableAssociationSummary.struct_class = Types::ConfiguredTableAssociationSummary

    ConfiguredTableAssociationSummaryList.member = Shapes::ShapeRef.new(shape: ConfiguredTableAssociationSummary)

    ConfiguredTableSummary.add_member(:id, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location_name: "id"))
    ConfiguredTableSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredTableArn, required: true, location_name: "arn"))
    ConfiguredTableSummary.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "name"))
    ConfiguredTableSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableSummary.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleTypeList, required: true, location_name: "analysisRuleTypes"))
    ConfiguredTableSummary.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, required: true, location_name: "analysisMethod"))
    ConfiguredTableSummary.struct_class = Types::ConfiguredTableSummary

    ConfiguredTableSummaryList.member = Shapes::ShapeRef.new(shape: ConfiguredTableSummary)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: "reason"))
    ConflictException.struct_class = Types::ConflictException

    CreateCollaborationInput.add_member(:members, Shapes::ShapeRef.new(shape: MemberList, required: true, location_name: "members"))
    CreateCollaborationInput.add_member(:name, Shapes::ShapeRef.new(shape: CollaborationName, required: true, location_name: "name"))
    CreateCollaborationInput.add_member(:description, Shapes::ShapeRef.new(shape: CollaborationDescription, required: true, location_name: "description"))
    CreateCollaborationInput.add_member(:creator_member_abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "creatorMemberAbilities"))
    CreateCollaborationInput.add_member(:creator_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "creatorDisplayName"))
    CreateCollaborationInput.add_member(:data_encryption_metadata, Shapes::ShapeRef.new(shape: DataEncryptionMetadata, location_name: "dataEncryptionMetadata"))
    CreateCollaborationInput.add_member(:query_log_status, Shapes::ShapeRef.new(shape: CollaborationQueryLogStatus, required: true, location_name: "queryLogStatus"))
    CreateCollaborationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCollaborationInput.struct_class = Types::CreateCollaborationInput

    CreateCollaborationOutput.add_member(:collaboration, Shapes::ShapeRef.new(shape: Collaboration, required: true, location_name: "collaboration"))
    CreateCollaborationOutput.struct_class = Types::CreateCollaborationOutput

    CreateConfiguredTableAnalysisRuleInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    CreateConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, required: true, location_name: "analysisRuleType"))
    CreateConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_policy, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicy, required: true, location_name: "analysisRulePolicy"))
    CreateConfiguredTableAnalysisRuleInput.struct_class = Types::CreateConfiguredTableAnalysisRuleInput

    CreateConfiguredTableAnalysisRuleOutput.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRule, required: true, location_name: "analysisRule"))
    CreateConfiguredTableAnalysisRuleOutput.struct_class = Types::CreateConfiguredTableAnalysisRuleOutput

    CreateConfiguredTableAssociationInput.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    CreateConfiguredTableAssociationInput.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    CreateConfiguredTableAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreateConfiguredTableAssociationInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location_name: "configuredTableIdentifier"))
    CreateConfiguredTableAssociationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateConfiguredTableAssociationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateConfiguredTableAssociationInput.struct_class = Types::CreateConfiguredTableAssociationInput

    CreateConfiguredTableAssociationOutput.add_member(:configured_table_association, Shapes::ShapeRef.new(shape: ConfiguredTableAssociation, required: true, location_name: "configuredTableAssociation"))
    CreateConfiguredTableAssociationOutput.struct_class = Types::CreateConfiguredTableAssociationOutput

    CreateConfiguredTableInput.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "name"))
    CreateConfiguredTableInput.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    CreateConfiguredTableInput.add_member(:table_reference, Shapes::ShapeRef.new(shape: TableReference, required: true, location_name: "tableReference"))
    CreateConfiguredTableInput.add_member(:allowed_columns, Shapes::ShapeRef.new(shape: AllowedColumnList, required: true, location_name: "allowedColumns"))
    CreateConfiguredTableInput.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, required: true, location_name: "analysisMethod"))
    CreateConfiguredTableInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateConfiguredTableInput.struct_class = Types::CreateConfiguredTableInput

    CreateConfiguredTableOutput.add_member(:configured_table, Shapes::ShapeRef.new(shape: ConfiguredTable, required: true, location_name: "configuredTable"))
    CreateConfiguredTableOutput.struct_class = Types::CreateConfiguredTableOutput

    CreateMembershipInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location_name: "collaborationIdentifier"))
    CreateMembershipInput.add_member(:query_log_status, Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, required: true, location_name: "queryLogStatus"))
    CreateMembershipInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMembershipInput.struct_class = Types::CreateMembershipInput

    CreateMembershipOutput.add_member(:membership, Shapes::ShapeRef.new(shape: Membership, required: true, location_name: "membership"))
    CreateMembershipOutput.struct_class = Types::CreateMembershipOutput

    DataEncryptionMetadata.add_member(:allow_cleartext, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "allowCleartext"))
    DataEncryptionMetadata.add_member(:allow_duplicates, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "allowDuplicates"))
    DataEncryptionMetadata.add_member(:allow_joins_on_columns_with_different_names, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "allowJoinsOnColumnsWithDifferentNames"))
    DataEncryptionMetadata.add_member(:preserve_nulls, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "preserveNulls"))
    DataEncryptionMetadata.struct_class = Types::DataEncryptionMetadata

    DeleteCollaborationInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    DeleteCollaborationInput.struct_class = Types::DeleteCollaborationInput

    DeleteCollaborationOutput.struct_class = Types::DeleteCollaborationOutput

    DeleteConfiguredTableAnalysisRuleInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    DeleteConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, required: true, location: "uri", location_name: "analysisRuleType"))
    DeleteConfiguredTableAnalysisRuleInput.struct_class = Types::DeleteConfiguredTableAnalysisRuleInput

    DeleteConfiguredTableAnalysisRuleOutput.struct_class = Types::DeleteConfiguredTableAnalysisRuleOutput

    DeleteConfiguredTableAssociationInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    DeleteConfiguredTableAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteConfiguredTableAssociationInput.struct_class = Types::DeleteConfiguredTableAssociationInput

    DeleteConfiguredTableAssociationOutput.struct_class = Types::DeleteConfiguredTableAssociationOutput

    DeleteConfiguredTableInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    DeleteConfiguredTableInput.struct_class = Types::DeleteConfiguredTableInput

    DeleteConfiguredTableOutput.struct_class = Types::DeleteConfiguredTableOutput

    DeleteMemberInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    DeleteMemberInput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location: "uri", location_name: "accountId"))
    DeleteMemberInput.struct_class = Types::DeleteMemberInput

    DeleteMemberOutput.struct_class = Types::DeleteMemberOutput

    DeleteMembershipInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteMembershipInput.struct_class = Types::DeleteMembershipInput

    DeleteMembershipOutput.struct_class = Types::DeleteMembershipOutput

    GetCollaborationInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetCollaborationInput.struct_class = Types::GetCollaborationInput

    GetCollaborationOutput.add_member(:collaboration, Shapes::ShapeRef.new(shape: Collaboration, required: true, location_name: "collaboration"))
    GetCollaborationOutput.struct_class = Types::GetCollaborationOutput

    GetConfiguredTableAnalysisRuleInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    GetConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, required: true, location: "uri", location_name: "analysisRuleType"))
    GetConfiguredTableAnalysisRuleInput.struct_class = Types::GetConfiguredTableAnalysisRuleInput

    GetConfiguredTableAnalysisRuleOutput.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRule, required: true, location_name: "analysisRule"))
    GetConfiguredTableAnalysisRuleOutput.struct_class = Types::GetConfiguredTableAnalysisRuleOutput

    GetConfiguredTableAssociationInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    GetConfiguredTableAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetConfiguredTableAssociationInput.struct_class = Types::GetConfiguredTableAssociationInput

    GetConfiguredTableAssociationOutput.add_member(:configured_table_association, Shapes::ShapeRef.new(shape: ConfiguredTableAssociation, required: true, location_name: "configuredTableAssociation"))
    GetConfiguredTableAssociationOutput.struct_class = Types::GetConfiguredTableAssociationOutput

    GetConfiguredTableInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    GetConfiguredTableInput.struct_class = Types::GetConfiguredTableInput

    GetConfiguredTableOutput.add_member(:configured_table, Shapes::ShapeRef.new(shape: ConfiguredTable, required: true, location_name: "configuredTable"))
    GetConfiguredTableOutput.struct_class = Types::GetConfiguredTableOutput

    GetMembershipInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetMembershipInput.struct_class = Types::GetMembershipInput

    GetMembershipOutput.add_member(:membership, Shapes::ShapeRef.new(shape: Membership, required: true, location_name: "membership"))
    GetMembershipOutput.struct_class = Types::GetMembershipOutput

    GetProtectedQueryInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetProtectedQueryInput.add_member(:protected_query_identifier, Shapes::ShapeRef.new(shape: ProtectedQueryIdentifier, required: true, location: "uri", location_name: "protectedQueryIdentifier"))
    GetProtectedQueryInput.struct_class = Types::GetProtectedQueryInput

    GetProtectedQueryOutput.add_member(:protected_query, Shapes::ShapeRef.new(shape: ProtectedQuery, required: true, location_name: "protectedQuery"))
    GetProtectedQueryOutput.struct_class = Types::GetProtectedQueryOutput

    GetSchemaAnalysisRuleInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetSchemaAnalysisRuleInput.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location: "uri", location_name: "name"))
    GetSchemaAnalysisRuleInput.add_member(:type, Shapes::ShapeRef.new(shape: AnalysisRuleType, required: true, location: "uri", location_name: "type"))
    GetSchemaAnalysisRuleInput.struct_class = Types::GetSchemaAnalysisRuleInput

    GetSchemaAnalysisRuleOutput.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: AnalysisRule, required: true, location_name: "analysisRule"))
    GetSchemaAnalysisRuleOutput.struct_class = Types::GetSchemaAnalysisRuleOutput

    GetSchemaInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetSchemaInput.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location: "uri", location_name: "name"))
    GetSchemaInput.struct_class = Types::GetSchemaInput

    GetSchemaOutput.add_member(:schema, Shapes::ShapeRef.new(shape: Schema, required: true, location_name: "schema"))
    GetSchemaOutput.struct_class = Types::GetSchemaOutput

    GlueTableReference.add_member(:table_name, Shapes::ShapeRef.new(shape: GlueTableName, required: true, location_name: "tableName"))
    GlueTableReference.add_member(:database_name, Shapes::ShapeRef.new(shape: GlueDatabaseName, required: true, location_name: "databaseName"))
    GlueTableReference.struct_class = Types::GlueTableReference

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    JoinOperatorsList.member = Shapes::ShapeRef.new(shape: JoinOperator)

    ListCollaborationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationsInput.add_member(:member_status, Shapes::ShapeRef.new(shape: FilterableMemberStatus, location: "querystring", location_name: "memberStatus"))
    ListCollaborationsInput.struct_class = Types::ListCollaborationsInput

    ListCollaborationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCollaborationsOutput.add_member(:collaboration_list, Shapes::ShapeRef.new(shape: CollaborationSummaryList, required: true, location_name: "collaborationList"))
    ListCollaborationsOutput.struct_class = Types::ListCollaborationsOutput

    ListConfiguredTableAssociationsInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListConfiguredTableAssociationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListConfiguredTableAssociationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfiguredTableAssociationsInput.struct_class = Types::ListConfiguredTableAssociationsInput

    ListConfiguredTableAssociationsOutput.add_member(:configured_table_association_summaries, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationSummaryList, required: true, location_name: "configuredTableAssociationSummaries"))
    ListConfiguredTableAssociationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListConfiguredTableAssociationsOutput.struct_class = Types::ListConfiguredTableAssociationsOutput

    ListConfiguredTablesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListConfiguredTablesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfiguredTablesInput.struct_class = Types::ListConfiguredTablesInput

    ListConfiguredTablesOutput.add_member(:configured_table_summaries, Shapes::ShapeRef.new(shape: ConfiguredTableSummaryList, required: true, location_name: "configuredTableSummaries"))
    ListConfiguredTablesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListConfiguredTablesOutput.struct_class = Types::ListConfiguredTablesOutput

    ListMembersInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListMembersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListMembersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMembersInput.struct_class = Types::ListMembersInput

    ListMembersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMembersOutput.add_member(:member_summaries, Shapes::ShapeRef.new(shape: MemberSummaryList, required: true, location_name: "memberSummaries"))
    ListMembersOutput.struct_class = Types::ListMembersOutput

    ListMembershipsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListMembershipsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMembershipsInput.add_member(:status, Shapes::ShapeRef.new(shape: MembershipStatus, location: "querystring", location_name: "status"))
    ListMembershipsInput.struct_class = Types::ListMembershipsInput

    ListMembershipsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMembershipsOutput.add_member(:membership_summaries, Shapes::ShapeRef.new(shape: MembershipSummaryList, required: true, location_name: "membershipSummaries"))
    ListMembershipsOutput.struct_class = Types::ListMembershipsOutput

    ListProtectedQueriesInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListProtectedQueriesInput.add_member(:status, Shapes::ShapeRef.new(shape: ProtectedQueryStatus, location: "querystring", location_name: "status"))
    ListProtectedQueriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProtectedQueriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProtectedQueriesInput.struct_class = Types::ListProtectedQueriesInput

    ListProtectedQueriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProtectedQueriesOutput.add_member(:protected_queries, Shapes::ShapeRef.new(shape: ProtectedQuerySummaryList, required: true, location_name: "protectedQueries"))
    ListProtectedQueriesOutput.struct_class = Types::ListProtectedQueriesOutput

    ListSchemasInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListSchemasInput.add_member(:schema_type, Shapes::ShapeRef.new(shape: SchemaType, location: "querystring", location_name: "schemaType"))
    ListSchemasInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSchemasInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSchemasInput.struct_class = Types::ListSchemasInput

    ListSchemasOutput.add_member(:schema_summaries, Shapes::ShapeRef.new(shape: SchemaSummaryList, required: true, location_name: "schemaSummaries"))
    ListSchemasOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSchemasOutput.struct_class = Types::ListSchemasOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CleanroomsArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    MemberAbilities.member = Shapes::ShapeRef.new(shape: MemberAbility)

    MemberList.member = Shapes::ShapeRef.new(shape: MemberSpecification)

    MemberSpecification.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    MemberSpecification.add_member(:member_abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "memberAbilities"))
    MemberSpecification.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "displayName"))
    MemberSpecification.struct_class = Types::MemberSpecification

    MemberSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    MemberSummary.add_member(:status, Shapes::ShapeRef.new(shape: MemberStatus, required: true, location_name: "status"))
    MemberSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "displayName"))
    MemberSummary.add_member(:abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "abilities"))
    MemberSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    MemberSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    MemberSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, location_name: "membershipId"))
    MemberSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, location_name: "membershipArn"))
    MemberSummary.struct_class = Types::MemberSummary

    MemberSummaryList.member = Shapes::ShapeRef.new(shape: MemberSummary)

    Membership.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    Membership.add_member(:arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "arn"))
    Membership.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    Membership.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    Membership.add_member(:collaboration_creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "collaborationCreatorAccountId"))
    Membership.add_member(:collaboration_creator_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "collaborationCreatorDisplayName"))
    Membership.add_member(:collaboration_name, Shapes::ShapeRef.new(shape: CollaborationName, required: true, location_name: "collaborationName"))
    Membership.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    Membership.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    Membership.add_member(:status, Shapes::ShapeRef.new(shape: MembershipStatus, required: true, location_name: "status"))
    Membership.add_member(:member_abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "memberAbilities"))
    Membership.add_member(:query_log_status, Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, required: true, location_name: "queryLogStatus"))
    Membership.struct_class = Types::Membership

    MembershipSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    MembershipSummary.add_member(:arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "arn"))
    MembershipSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    MembershipSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location_name: "collaborationId"))
    MembershipSummary.add_member(:collaboration_creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "collaborationCreatorAccountId"))
    MembershipSummary.add_member(:collaboration_creator_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "collaborationCreatorDisplayName"))
    MembershipSummary.add_member(:collaboration_name, Shapes::ShapeRef.new(shape: CollaborationName, required: true, location_name: "collaborationName"))
    MembershipSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    MembershipSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    MembershipSummary.add_member(:status, Shapes::ShapeRef.new(shape: MembershipStatus, required: true, location_name: "status"))
    MembershipSummary.add_member(:member_abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "memberAbilities"))
    MembershipSummary.struct_class = Types::MembershipSummary

    MembershipSummaryList.member = Shapes::ShapeRef.new(shape: MembershipSummary)

    ProtectedQuery.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ProtectedQuery.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    ProtectedQuery.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ProtectedQuery.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ProtectedQuery.add_member(:sql_parameters, Shapes::ShapeRef.new(shape: ProtectedQuerySQLParameters, required: true, location_name: "sqlParameters"))
    ProtectedQuery.add_member(:status, Shapes::ShapeRef.new(shape: ProtectedQueryStatus, required: true, location_name: "status"))
    ProtectedQuery.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ProtectedQueryResultConfiguration, required: true, location_name: "resultConfiguration"))
    ProtectedQuery.add_member(:statistics, Shapes::ShapeRef.new(shape: ProtectedQueryStatistics, location_name: "statistics"))
    ProtectedQuery.add_member(:result, Shapes::ShapeRef.new(shape: ProtectedQueryResult, location_name: "result"))
    ProtectedQuery.add_member(:error, Shapes::ShapeRef.new(shape: ProtectedQueryError, location_name: "error"))
    ProtectedQuery.struct_class = Types::ProtectedQuery

    ProtectedQueryError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ProtectedQueryError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ProtectedQueryError.struct_class = Types::ProtectedQueryError

    ProtectedQueryOutput.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedQueryS3Output, location_name: "s3"))
    ProtectedQueryOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedQueryOutput.add_member_subclass(:s3, Types::ProtectedQueryOutput::S3)
    ProtectedQueryOutput.add_member_subclass(:unknown, Types::ProtectedQueryOutput::Unknown)
    ProtectedQueryOutput.struct_class = Types::ProtectedQueryOutput

    ProtectedQueryOutputConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedQueryS3OutputConfiguration, location_name: "s3"))
    ProtectedQueryOutputConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedQueryOutputConfiguration.add_member_subclass(:s3, Types::ProtectedQueryOutputConfiguration::S3)
    ProtectedQueryOutputConfiguration.add_member_subclass(:unknown, Types::ProtectedQueryOutputConfiguration::Unknown)
    ProtectedQueryOutputConfiguration.struct_class = Types::ProtectedQueryOutputConfiguration

    ProtectedQueryResult.add_member(:output, Shapes::ShapeRef.new(shape: ProtectedQueryOutput, required: true, location_name: "output"))
    ProtectedQueryResult.struct_class = Types::ProtectedQueryResult

    ProtectedQueryResultConfiguration.add_member(:output_configuration, Shapes::ShapeRef.new(shape: ProtectedQueryOutputConfiguration, required: true, location_name: "outputConfiguration"))
    ProtectedQueryResultConfiguration.struct_class = Types::ProtectedQueryResultConfiguration

    ProtectedQueryS3Output.add_member(:location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "location"))
    ProtectedQueryS3Output.struct_class = Types::ProtectedQueryS3Output

    ProtectedQueryS3OutputConfiguration.add_member(:result_format, Shapes::ShapeRef.new(shape: ResultFormat, required: true, location_name: "resultFormat"))
    ProtectedQueryS3OutputConfiguration.add_member(:bucket, Shapes::ShapeRef.new(shape: ProtectedQueryS3OutputConfigurationBucketString, required: true, location_name: "bucket"))
    ProtectedQueryS3OutputConfiguration.add_member(:key_prefix, Shapes::ShapeRef.new(shape: KeyPrefix, location_name: "keyPrefix"))
    ProtectedQueryS3OutputConfiguration.struct_class = Types::ProtectedQueryS3OutputConfiguration

    ProtectedQuerySQLParameters.add_member(:query_string, Shapes::ShapeRef.new(shape: ProtectedQuerySQLParametersQueryStringString, location_name: "queryString"))
    ProtectedQuerySQLParameters.struct_class = Types::ProtectedQuerySQLParameters

    ProtectedQueryStatistics.add_member(:total_duration_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "totalDurationInMillis"))
    ProtectedQueryStatistics.struct_class = Types::ProtectedQueryStatistics

    ProtectedQuerySummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ProtectedQuerySummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    ProtectedQuerySummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ProtectedQuerySummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ProtectedQuerySummary.add_member(:status, Shapes::ShapeRef.new(shape: ProtectedQueryStatus, required: true, location_name: "status"))
    ProtectedQuerySummary.struct_class = Types::ProtectedQuerySummary

    ProtectedQuerySummaryList.member = Shapes::ShapeRef.new(shape: ProtectedQuerySummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ScalarFunctionsList.member = Shapes::ShapeRef.new(shape: ScalarFunctions)

    Schema.add_member(:columns, Shapes::ShapeRef.new(shape: ColumnList, required: true, location_name: "columns"))
    Schema.add_member(:partition_keys, Shapes::ShapeRef.new(shape: ColumnList, required: true, location_name: "partitionKeys"))
    Schema.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: AnalysisRuleTypeList, required: true, location_name: "analysisRuleTypes"))
    Schema.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: "analysisMethod"))
    Schema.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    Schema.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    Schema.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    Schema.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    Schema.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, required: true, location_name: "description"))
    Schema.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    Schema.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    Schema.add_member(:type, Shapes::ShapeRef.new(shape: SchemaType, required: true, location_name: "type"))
    Schema.struct_class = Types::Schema

    SchemaList.member = Shapes::ShapeRef.new(shape: Schema)

    SchemaSummary.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    SchemaSummary.add_member(:type, Shapes::ShapeRef.new(shape: SchemaType, required: true, location_name: "type"))
    SchemaSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    SchemaSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    SchemaSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    SchemaSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    SchemaSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    SchemaSummary.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: AnalysisRuleTypeList, required: true, location_name: "analysisRuleTypes"))
    SchemaSummary.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: "analysisMethod"))
    SchemaSummary.struct_class = Types::SchemaSummary

    SchemaSummaryList.member = Shapes::ShapeRef.new(shape: SchemaSummary)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaName"))
    ServiceQuotaExceededException.add_member(:quota_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "quotaValue"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartProtectedQueryInput.add_member(:type, Shapes::ShapeRef.new(shape: ProtectedQueryType, required: true, location_name: "type"))
    StartProtectedQueryInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    StartProtectedQueryInput.add_member(:sql_parameters, Shapes::ShapeRef.new(shape: ProtectedQuerySQLParameters, required: true, location_name: "sqlParameters"))
    StartProtectedQueryInput.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ProtectedQueryResultConfiguration, required: true, location_name: "resultConfiguration"))
    StartProtectedQueryInput.struct_class = Types::StartProtectedQueryInput

    StartProtectedQueryOutput.add_member(:protected_query, Shapes::ShapeRef.new(shape: ProtectedQuery, required: true, location_name: "protectedQuery"))
    StartProtectedQueryOutput.struct_class = Types::StartProtectedQueryOutput

    TableAliasList.member = Shapes::ShapeRef.new(shape: TableAlias)

    TableReference.add_member(:glue, Shapes::ShapeRef.new(shape: GlueTableReference, location_name: "glue"))
    TableReference.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TableReference.add_member_subclass(:glue, Types::TableReference::Glue)
    TableReference.add_member_subclass(:unknown, Types::TableReference::Unknown)
    TableReference.struct_class = Types::TableReference

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CleanroomsArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CleanroomsArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateCollaborationInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    UpdateCollaborationInput.add_member(:name, Shapes::ShapeRef.new(shape: CollaborationName, location_name: "name"))
    UpdateCollaborationInput.add_member(:description, Shapes::ShapeRef.new(shape: CollaborationDescription, location_name: "description"))
    UpdateCollaborationInput.struct_class = Types::UpdateCollaborationInput

    UpdateCollaborationOutput.add_member(:collaboration, Shapes::ShapeRef.new(shape: Collaboration, required: true, location_name: "collaboration"))
    UpdateCollaborationOutput.struct_class = Types::UpdateCollaborationOutput

    UpdateConfiguredTableAnalysisRuleInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    UpdateConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, required: true, location: "uri", location_name: "analysisRuleType"))
    UpdateConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_policy, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicy, required: true, location_name: "analysisRulePolicy"))
    UpdateConfiguredTableAnalysisRuleInput.struct_class = Types::UpdateConfiguredTableAnalysisRuleInput

    UpdateConfiguredTableAnalysisRuleOutput.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRule, required: true, location_name: "analysisRule"))
    UpdateConfiguredTableAnalysisRuleOutput.struct_class = Types::UpdateConfiguredTableAnalysisRuleOutput

    UpdateConfiguredTableAssociationInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    UpdateConfiguredTableAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateConfiguredTableAssociationInput.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    UpdateConfiguredTableAssociationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateConfiguredTableAssociationInput.struct_class = Types::UpdateConfiguredTableAssociationInput

    UpdateConfiguredTableAssociationOutput.add_member(:configured_table_association, Shapes::ShapeRef.new(shape: ConfiguredTableAssociation, required: true, location_name: "configuredTableAssociation"))
    UpdateConfiguredTableAssociationOutput.struct_class = Types::UpdateConfiguredTableAssociationOutput

    UpdateConfiguredTableInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    UpdateConfiguredTableInput.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "name"))
    UpdateConfiguredTableInput.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    UpdateConfiguredTableInput.struct_class = Types::UpdateConfiguredTableInput

    UpdateConfiguredTableOutput.add_member(:configured_table, Shapes::ShapeRef.new(shape: ConfiguredTable, required: true, location_name: "configuredTable"))
    UpdateConfiguredTableOutput.struct_class = Types::UpdateConfiguredTableOutput

    UpdateMembershipInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateMembershipInput.add_member(:query_log_status, Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, location_name: "queryLogStatus"))
    UpdateMembershipInput.struct_class = Types::UpdateMembershipInput

    UpdateMembershipOutput.add_member(:membership, Shapes::ShapeRef.new(shape: Membership, required: true, location_name: "membership"))
    UpdateMembershipOutput.struct_class = Types::UpdateMembershipOutput

    UpdateProtectedQueryInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateProtectedQueryInput.add_member(:protected_query_identifier, Shapes::ShapeRef.new(shape: ProtectedQueryIdentifier, required: true, location: "uri", location_name: "protectedQueryIdentifier"))
    UpdateProtectedQueryInput.add_member(:target_status, Shapes::ShapeRef.new(shape: TargetProtectedQueryStatus, required: true, location_name: "targetStatus"))
    UpdateProtectedQueryInput.struct_class = Types::UpdateProtectedQueryInput

    UpdateProtectedQueryOutput.add_member(:protected_query, Shapes::ShapeRef.new(shape: ProtectedQuery, required: true, location_name: "protectedQuery"))
    UpdateProtectedQueryOutput.struct_class = Types::UpdateProtectedQueryOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-02-17"

      api.metadata = {
        "apiVersion" => "2022-02-17",
        "endpointPrefix" => "cleanrooms",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Clean Rooms Service",
        "serviceId" => "CleanRooms",
        "signatureVersion" => "v4",
        "signingName" => "cleanrooms",
        "uid" => "cleanrooms-2022-02-17",
      }

      api.add_operation(:batch_get_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetSchema"
        o.http_method = "POST"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/batch-schema"
        o.input = Shapes::ShapeRef.new(shape: BatchGetSchemaInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetSchemaOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_collaboration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCollaboration"
        o.http_method = "POST"
        o.http_request_uri = "/collaborations"
        o.input = Shapes::ShapeRef.new(shape: CreateCollaborationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCollaborationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_configured_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguredTable"
        o.http_method = "POST"
        o.http_request_uri = "/configuredTables"
        o.input = Shapes::ShapeRef.new(shape: CreateConfiguredTableInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConfiguredTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_configured_table_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguredTableAnalysisRule"
        o.http_method = "POST"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}/analysisRule"
        o.input = Shapes::ShapeRef.new(shape: CreateConfiguredTableAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConfiguredTableAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_configured_table_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguredTableAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations"
        o.input = Shapes::ShapeRef.new(shape: CreateConfiguredTableAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConfiguredTableAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMembership"
        o.http_method = "POST"
        o.http_request_uri = "/memberships"
        o.input = Shapes::ShapeRef.new(shape: CreateMembershipInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMembershipOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_collaboration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCollaboration"
        o.http_method = "DELETE"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCollaborationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteCollaborationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_configured_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredTable"
        o.http_method = "DELETE"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredTableInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfiguredTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_configured_table_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredTableAnalysisRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredTableAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfiguredTableAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_configured_table_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredTableAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredTableAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfiguredTableAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMember"
        o.http_method = "DELETE"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/member/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMemberInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMemberOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMembership"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMembershipInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMembershipOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_collaboration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollaboration"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCollaborationInput)
        o.output = Shapes::ShapeRef.new(shape: GetCollaborationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_configured_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredTable"
        o.http_method = "GET"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredTableInput)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_configured_table_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredTableAnalysisRule"
        o.http_method = "GET"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredTableAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredTableAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_configured_table_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredTableAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredTableAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredTableAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMembership"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetMembershipInput)
        o.output = Shapes::ShapeRef.new(shape: GetMembershipOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_protected_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProtectedQuery"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetProtectedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: GetProtectedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchema"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/schemas/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaInput)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_schema_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchemaAnalysisRule"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/schemas/{name}/analysisRule/{type}"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_collaborations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborations"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configured_table_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfiguredTableAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations"
        o.input = Shapes::ShapeRef.new(shape: ListConfiguredTableAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListConfiguredTableAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configured_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfiguredTables"
        o.http_method = "GET"
        o.http_request_uri = "/configuredTables"
        o.input = Shapes::ShapeRef.new(shape: ListConfiguredTablesInput)
        o.output = Shapes::ShapeRef.new(shape: ListConfiguredTablesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMembers"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/members"
        o.input = Shapes::ShapeRef.new(shape: ListMembersInput)
        o.output = Shapes::ShapeRef.new(shape: ListMembersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemberships"
        o.http_method = "GET"
        o.http_request_uri = "/memberships"
        o.input = Shapes::ShapeRef.new(shape: ListMembershipsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMembershipsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_protected_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProtectedQueries"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedQueries"
        o.input = Shapes::ShapeRef.new(shape: ListProtectedQueriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListProtectedQueriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchemas"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/schemas"
        o.input = Shapes::ShapeRef.new(shape: ListSchemasInput)
        o.output = Shapes::ShapeRef.new(shape: ListSchemasOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_protected_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartProtectedQuery"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedQueries"
        o.input = Shapes::ShapeRef.new(shape: StartProtectedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: StartProtectedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_collaboration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCollaboration"
        o.http_method = "PATCH"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCollaborationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCollaborationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_configured_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguredTable"
        o.http_method = "PATCH"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfiguredTableInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfiguredTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_configured_table_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguredTableAnalysisRule"
        o.http_method = "PATCH"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfiguredTableAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfiguredTableAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_configured_table_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguredTableAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfiguredTableAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfiguredTableAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMembership"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMembershipInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMembershipOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_protected_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProtectedQuery"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProtectedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateProtectedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
