# frozen_string_literal: true

# This is generated code!

module Aws::AIOps
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ChatConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#ChatConfigurationArn', name: 'ChatConfigurationArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*$"})
    ChatConfigurationArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.aiops#ChatConfigurationArns', name: 'ChatConfigurationArns', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ChatbotNotificationChannel = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.aiops#ChatbotNotificationChannel', name: 'ChatbotNotificationChannel')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateInvestigationGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#CreateInvestigationGroupInput', name: 'CreateInvestigationGroupInput')
    CreateInvestigationGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#CreateInvestigationGroupOutput', name: 'CreateInvestigationGroupOutput')
    CrossAccountConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#CrossAccountConfiguration', name: 'CrossAccountConfiguration')
    CrossAccountConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.aiops#CrossAccountConfigurations', name: 'CrossAccountConfigurations', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    DeleteInvestigationGroupPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#DeleteInvestigationGroupPolicyOutput', name: 'DeleteInvestigationGroupPolicyOutput')
    DeleteInvestigationGroupPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#DeleteInvestigationGroupPolicyRequest', name: 'DeleteInvestigationGroupPolicyRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    DeleteInvestigationGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#DeleteInvestigationGroupRequest', name: 'DeleteInvestigationGroupRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    EncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#EncryptionConfiguration', name: 'EncryptionConfiguration')
    EncryptionConfigurationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.aiops#EncryptionConfigurationType', name: 'EncryptionConfigurationType')
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetInvestigationGroupPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#GetInvestigationGroupPolicyRequest', name: 'GetInvestigationGroupPolicyRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    GetInvestigationGroupPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#GetInvestigationGroupPolicyResponse', name: 'GetInvestigationGroupPolicyResponse')
    GetInvestigationGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#GetInvestigationGroupRequest', name: 'GetInvestigationGroupRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    GetInvestigationGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#GetInvestigationGroupResponse', name: 'GetInvestigationGroupResponse')
    IdentifierStringWithPatternAndLengthLimits = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#IdentifierStringWithPatternAndLengthLimits', name: 'IdentifierStringWithPatternAndLengthLimits', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\-_\\/A-Za-z0-9:\\.]+$"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvestigationGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#InvestigationGroupArn', name: 'InvestigationGroupArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):aiops:[a-zA-Z0-9-]*:[0-9]{12}:investigation-group\\/[A-Za-z0-9]{16}$"})
    InvestigationGroupIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#InvestigationGroupIdentifier', name: 'InvestigationGroupIdentifier', traits: {"smithy.api#pattern" => "^(?:[\\-_A-Za-z0-9]{1,512}|arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):aiops:[a-zA-Z0-9-]*:[0-9]{12}:investigation-group\\/[A-Za-z0-9]{16})$"})
    InvestigationGroupPolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#InvestigationGroupPolicyDocument', name: 'InvestigationGroupPolicyDocument', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    InvestigationGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.aiops#InvestigationGroups', name: 'InvestigationGroups')
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:.*$"})
    ListInvestigationGroupsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#ListInvestigationGroupsInput', name: 'ListInvestigationGroupsInput')
    ListInvestigationGroupsModel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#ListInvestigationGroupsModel', name: 'ListInvestigationGroupsModel')
    ListInvestigationGroupsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#ListInvestigationGroupsOutput', name: 'ListInvestigationGroupsOutput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "resourceArn"}}]})
    PutInvestigationGroupPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#PutInvestigationGroupPolicyRequest', name: 'PutInvestigationGroupPolicyRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    PutInvestigationGroupPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#PutInvestigationGroupPolicyResponse', name: 'PutInvestigationGroupPolicyResponse')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Retention = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.aiops#Retention', name: 'Retention', traits: {"smithy.api#range" => {"min" => 7, "max" => 90}})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*$"})
    SNSTopicArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#SNSTopicArn', name: 'SNSTopicArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*$"})
    SensitiveStringWithLengthLimits = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#SensitiveStringWithLengthLimits', name: 'SensitiveStringWithLengthLimits', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StringWithPatternAndLengthLimits = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#StringWithPatternAndLengthLimits', name: 'StringWithPatternAndLengthLimits', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\-_A-Za-z0-9\\[\\]\\(\\)\\{\\}\\.: ]+$"})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$"})
    TagKeyBoundaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.aiops#TagKeyBoundaries', name: 'TagKeyBoundaries')
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.aiops#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#TagResourceRequest', name: 'TagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "resourceArn"}}]})
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.aiops#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.aiops#Tags', name: 'Tags')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#UntagResourceRequest', name: 'UntagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "resourceArn"}}]})
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateInvestigationGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#UpdateInvestigationGroupOutput', name: 'UpdateInvestigationGroupOutput')
    UpdateInvestigationGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#UpdateInvestigationGroupRequest', name: 'UpdateInvestigationGroupRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.aiops#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ChatConfigurationArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArn)
    ChatbotNotificationChannel.key = Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArn)
    ChatbotNotificationChannel.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ChatConfigurationArns)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateInvestigationGroupInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithPatternAndLengthLimits, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Provides a name for the investigation group.</p>", "smithy.api#required" => {}}))
    CreateInvestigationGroupInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>Specify the ARN of the IAM role that CloudWatch investigations will use when it gathers investigation data. The permissions in this role determine which of your resources that CloudWatch investigations will have access to during investigations.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-Security-Data\">How to control what data CloudWatch investigations has access to during investigations</a>.</p>", "smithy.api#required" => {}}))
    CreateInvestigationGroupInput.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Use this structure if you want to use a customer managed KMS key to encrypt your investigation data. If you omit this parameter, CloudWatch investigations will use an Amazon Web Services key to encrypt the data. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-KMS\">Encryption of investigation data</a>.</p>"}))
    CreateInvestigationGroupInput.add_member(:retention_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Retention, location_name: 'retentionInDays', traits: {"smithy.api#documentation" => "<p>Specify how long that investigation data is kept. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Retention.html\">Operational investigation data retention</a>. </p> <p>If you omit this parameter, the default of 90 days is used.</p>"}))
    CreateInvestigationGroupInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs to associate with the investigation group. You can associate as many as 50 tags with an investigation group. To be able to associate tags when you create the investigation group, you must have the <code>cloudwatch:TagResource</code> permission.</p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p>"}))
    CreateInvestigationGroupInput.add_member(:tag_key_boundaries, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyBoundaries, location_name: 'tagKeyBoundaries', traits: {"smithy.api#documentation" => "<p>Enter the existing custom tag keys for custom applications in your system. Resource tags help CloudWatch investigations narrow the search space when it is unable to discover definite relationships between resources. For example, to discover that an Amazon ECS service depends on an Amazon RDS database, CloudWatch investigations can discover this relationship using data sources such as X-Ray and CloudWatch Application Signals. However, if you haven't deployed these features, CloudWatch investigations will attempt to identify possible relationships. Tag boundaries can be used to narrow the resources that will be discovered by CloudWatch investigations in these cases.</p> <p>You don't need to enter tags created by myApplications or CloudFormation, because CloudWatch investigations can automatically detect those tags.</p>"}))
    CreateInvestigationGroupInput.add_member(:chatbot_notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatbotNotificationChannel, location_name: 'chatbotNotificationChannel', traits: {"smithy.api#documentation" => "<p>Use this structure to integrate CloudWatch investigations with chat applications. This structure is a string array. For the first string, specify the ARN of an Amazon SNS topic. For the array of strings, specify the ARNs of one or more chat applications configurations that you want to associate with that topic. For more information about these configuration ARNs, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/getting-started.html\">Getting started with Amazon Q in chat applications</a> and <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awschatbot.html#awschatbot-resources-for-iam-policies\">Resource type defined by Amazon Web Services Chatbot</a>.</p>"}))
    CreateInvestigationGroupInput.add_member(:is_cloud_trail_event_history_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isCloudTrailEventHistoryEnabled', traits: {"smithy.api#documentation" => "<p>Specify <code>true</code> to enable CloudWatch investigations to have access to change events that are recorded by CloudTrail. The default is <code>true</code>.</p>"}))
    CreateInvestigationGroupInput.add_member(:cross_account_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: CrossAccountConfigurations, location_name: 'crossAccountConfigurations', traits: {"smithy.api#documentation" => "<p>List of <code>sourceRoleArn</code> values that have been configured for cross-account access.</p>"}))
    CreateInvestigationGroupInput.type = Types::CreateInvestigationGroupInput
    CreateInvestigationGroupOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the investigation group that you just created.</p>"}))
    CreateInvestigationGroupOutput.type = Types::CreateInvestigationGroupOutput
    CrossAccountConfiguration.add_member(:source_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'sourceRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an existing role which will be used to do investigations on your behalf. </p>"}))
    CrossAccountConfiguration.type = Types::CrossAccountConfiguration
    CrossAccountConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CrossAccountConfiguration)
    DeleteInvestigationGroupPolicyOutput.type = Types::DeleteInvestigationGroupPolicyOutput
    DeleteInvestigationGroupPolicyRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or the ARN of the investigation group that you want to remove the policy from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInvestigationGroupPolicyRequest.type = Types::DeleteInvestigationGroupPolicyRequest
    DeleteInvestigationGroupRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or the ARN of the investigation group that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInvestigationGroupRequest.type = Types::DeleteInvestigationGroupRequest
    EncryptionConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfigurationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Displays whether investigation data is encrypted by a customer managed key or an Amazon Web Services owned key.</p>"}))
    EncryptionConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>If the investigation group uses a customer managed key for encryption, this field displays the ID of that key.</p>"}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionConfigurationType.add_member(:aws_owned_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_OWNED_KEY', traits: {"smithy.api#enumValue" => "AWS_OWNED_KEY"}))
    EncryptionConfigurationType.add_member(:customer_managed_kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_MANAGED_KMS_KEY', traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KMS_KEY"}))
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ForbiddenException.type = Types::ForbiddenException
    GetInvestigationGroupPolicyRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or the ARN of the investigation group that you want to view the policy of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvestigationGroupPolicyRequest.type = Types::GetInvestigationGroupPolicyRequest
    GetInvestigationGroupPolicyResponse.add_member(:investigation_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupArn, location_name: 'investigationGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the investigation group that you want to view the policy of.</p>"}))
    GetInvestigationGroupPolicyResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupPolicyDocument, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The policy, in JSON format.</p>"}))
    GetInvestigationGroupPolicyResponse.type = Types::GetInvestigationGroupPolicyResponse
    GetInvestigationGroupRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or the ARN of the investigation group that you want to view. This is used to set the name of the investigation group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvestigationGroupRequest.type = Types::GetInvestigationGroupRequest
    GetInvestigationGroupResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentifierStringWithPatternAndLengthLimits, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The name of the user who created the investigation group.</p>"}))
    GetInvestigationGroupResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the investigation group was created.</p>"}))
    GetInvestigationGroupResponse.add_member(:last_modified_by, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentifierStringWithPatternAndLengthLimits, location_name: 'lastModifiedBy', traits: {"smithy.api#documentation" => "<p>The name of the user who created the investigation group.</p>"}))
    GetInvestigationGroupResponse.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the investigation group was most recently modified.</p>"}))
    GetInvestigationGroupResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithPatternAndLengthLimits, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the investigation group.</p>"}))
    GetInvestigationGroupResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the investigation group.</p>"}))
    GetInvestigationGroupResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that the investigation group uses for permissions to gather data.</p>"}))
    GetInvestigationGroupResponse.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the customer managed KMS key that the investigation group uses to encrypt data, if there is one. If not, the investigation group uses an Amazon Web Services key to encrypt the data.</p>"}))
    GetInvestigationGroupResponse.add_member(:retention_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Retention, location_name: 'retentionInDays', traits: {"smithy.api#documentation" => "<p>Specifies how long that investigation data is kept.</p>"}))
    GetInvestigationGroupResponse.add_member(:chatbot_notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatbotNotificationChannel, location_name: 'chatbotNotificationChannel', traits: {"smithy.api#documentation" => "<p>This structure is a string array. The first string is the ARN of a Amazon SNS topic. The array of strings display the ARNs of chat applications configurations that are associated with that topic. For more information about these configuration ARNs, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/getting-started.html\">Getting started with Amazon Q in chat applications</a> and <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awschatbot.html#awschatbot-resources-for-iam-policies\">Resource type defined by Amazon Web Services Chatbot</a>.</p>"}))
    GetInvestigationGroupResponse.add_member(:tag_key_boundaries, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyBoundaries, location_name: 'tagKeyBoundaries', traits: {"smithy.api#documentation" => "<p>Displays the custom tag keys for custom applications in your system that you have specified in the investigation group. Resource tags help CloudWatch investigations narrow the search space when it is unable to discover definite relationships between resources. </p>"}))
    GetInvestigationGroupResponse.add_member(:is_cloud_trail_event_history_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isCloudTrailEventHistoryEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether CloudWatch investigationshas access to change events that are recorded by CloudTrail.</p>"}))
    GetInvestigationGroupResponse.add_member(:cross_account_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: CrossAccountConfigurations, location_name: 'crossAccountConfigurations', traits: {"smithy.api#documentation" => "<p>Lists the <code>AWSAccountId</code> of the accounts configured for cross-account access and the results of the last scan performed on each account.</p>"}))
    GetInvestigationGroupResponse.type = Types::GetInvestigationGroupResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InvestigationGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvestigationGroupsModel)
    ListInvestigationGroupsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringWithLengthLimits, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Include this value, if it was returned by the previous operation, to get the next set of service operations.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListInvestigationGroupsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListInvestigationGroupsInput.type = Types::ListInvestigationGroupsInput
    ListInvestigationGroupsModel.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the investigation group.</p>"}))
    ListInvestigationGroupsModel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithPatternAndLengthLimits, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the investigation group.</p>"}))
    ListInvestigationGroupsModel.type = Types::ListInvestigationGroupsModel
    ListInvestigationGroupsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringWithLengthLimits, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Include this value in your next use of this operation to get the next set of service operations.</p>"}))
    ListInvestigationGroupsOutput.add_member(:investigation_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroups, location_name: 'investigationGroups', traits: {"smithy.api#documentation" => "<p>An array of structures, where each structure contains the information about one investigation group in the account.</p>"}))
    ListInvestigationGroupsOutput.type = Types::ListInvestigationGroupsOutput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with the resource you specified.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudWatch investigations resource that you want to view tags for. You can use the <code>ListInvestigationGroups</code> operation to find the ARNs of investigation groups.</p> <p>The ARN format for an investigation group is <code>arn:aws:aiops:<i>Region</i>:<i>account-id</i>:investigation-group:<i>investigation-group-id</i> </code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    PutInvestigationGroupPolicyRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or the ARN of the investigation group that you want to assign the policy to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutInvestigationGroupPolicyRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupPolicyDocument, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The policy, in JSON format.</p>", "smithy.api#required" => {}}))
    PutInvestigationGroupPolicyRequest.type = Types::PutInvestigationGroupPolicyRequest
    PutInvestigationGroupPolicyResponse.add_member(:investigation_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupArn, location_name: 'investigationGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the investigation group that will use this policy.</p>"}))
    PutInvestigationGroupPolicyResponse.type = Types::PutInvestigationGroupPolicyResponse
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource that caused the quota exception.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource that caused the quota exception.</p>"}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>This name of the service associated with the error.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>This quota that was exceeded.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyBoundaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to apply the tags to. You can use the <code>ListInvestigationGroups</code> operation to find the ARNs of investigation groups.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs to associate with the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to remove the tags from. You can use the<code>ListInvestigationGroups</code> operation to find the ARNs of investigation groups.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateInvestigationGroupOutput.type = Types::UpdateInvestigationGroupOutput
    UpdateInvestigationGroupRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>Specify either the name or the ARN of the investigation group that you want to modify.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateInvestigationGroupRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>Specify this field if you want to change the IAM role that CloudWatch investigations will use when it gathers investigation data. To do so, specify the ARN of the new role.</p> <p>The permissions in this role determine which of your resources that CloudWatch investigations will have access to during investigations.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-Security-Data\">How to control what data CloudWatch investigations has access to during investigations</a>.</p>"}))
    UpdateInvestigationGroupRequest.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Use this structure if you want to use a customer managed KMS key to encrypt your investigation data. If you omit this parameter, CloudWatch investigations will use an Amazon Web Services key to encrypt the data. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-KMS\">Encryption of investigation data</a>.</p>"}))
    UpdateInvestigationGroupRequest.add_member(:tag_key_boundaries, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyBoundaries, location_name: 'tagKeyBoundaries', traits: {"smithy.api#documentation" => "<p>Enter the existing custom tag keys for custom applications in your system. Resource tags help CloudWatch investigations narrow the search space when it is unable to discover definite relationships between resources. For example, to discover that an Amazon ECS service depends on an Amazon RDS database, CloudWatch investigations can discover this relationship using data sources such as X-Ray and CloudWatch Application Signals. However, if you haven't deployed these features, CloudWatch investigations will attempt to identify possible relationships. Tag boundaries can be used to narrow the resources that will be discovered by CloudWatch investigations in these cases.</p> <p>You don't need to enter tags created by myApplications or CloudFormation, because CloudWatch investigations can automatically detect those tags.</p>"}))
    UpdateInvestigationGroupRequest.add_member(:chatbot_notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatbotNotificationChannel, location_name: 'chatbotNotificationChannel', traits: {"smithy.api#documentation" => "<p>Use this structure to integrate CloudWatch investigations with chat applications. This structure is a string array. For the first string, specify the ARN of an Amazon SNS topic. For the array of strings, specify the ARNs of one or more chat applications configurations that you want to associate with that topic. For more information about these configuration ARNs, see <a href=\"https://docs.aws.amazon.com/chatbot/latest/adminguide/getting-started.html\">Getting started with Amazon Q in chat applications</a> and <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awschatbot.html#awschatbot-resources-for-iam-policies\">Resource type defined by Amazon Web Services Chatbot</a>.</p>"}))
    UpdateInvestigationGroupRequest.add_member(:is_cloud_trail_event_history_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isCloudTrailEventHistoryEnabled', traits: {"smithy.api#documentation" => "<p>Specify <code>true</code> to enable CloudWatch investigations to have access to change events that are recorded by CloudTrail. The default is <code>true</code>.</p>"}))
    UpdateInvestigationGroupRequest.add_member(:cross_account_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: CrossAccountConfigurations, location_name: 'crossAccountConfigurations', traits: {"smithy.api#documentation" => "<p>Used to configure cross-account access for an investigation group. It allows the investigation group to access resources in other accounts. </p>"}))
    UpdateInvestigationGroupRequest.type = Types::UpdateInvestigationGroupRequest
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    AIOps = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.aiops#AIOps"
      service.name = "AIOps"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "AIOps", "arnNamespace" => "aiops", "cloudTrailEventSource" => "aiops.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "aiops"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["X-Amz-Requested-Operation"]}, "smithy.api#title" => "AWS AI Ops"}
      service.add_operation(:create_investigation_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#CreateInvestigationGroup"
        operation.name = "CreateInvestigationGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvestigationGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvestigationGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/investigationGroups"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "CreateInvestigationGroupUnauthorized", "params" => {"name" => "test-smoke", "roleArn" => "arn:aws:iam::123456789012:role/assistant-role"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:delete_investigation_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#DeleteInvestigationGroup"
        operation.name = "DeleteInvestigationGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInvestigationGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/investigationGroups/{identifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_investigation_group_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#DeleteInvestigationGroupPolicy"
        operation.name = "DeleteInvestigationGroupPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInvestigationGroupPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInvestigationGroupPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/investigationGroups/{identifier}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_investigation_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#GetInvestigationGroup"
        operation.name = "GetInvestigationGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvestigationGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvestigationGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/investigationGroups/{identifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_investigation_group_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#GetInvestigationGroupPolicy"
        operation.name = "GetInvestigationGroupPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvestigationGroupPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvestigationGroupPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/investigationGroups/{identifier}/policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_investigation_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#ListInvestigationGroups"
        operation.name = "ListInvestigationGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvestigationGroupsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvestigationGroupsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/investigationGroups"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListInvestigationGroups.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_investigation_group_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#PutInvestigationGroupPolicy"
        operation.name = "PutInvestigationGroupPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutInvestigationGroupPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutInvestigationGroupPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/investigationGroups/{identifier}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_investigation_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#UpdateInvestigationGroup"
        operation.name = "UpdateInvestigationGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInvestigationGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInvestigationGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/investigationGroups/{identifier}"}, "smithy.api#idempotent" => {}}
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
