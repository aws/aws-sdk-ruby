# frozen_string_literal: true

# This is generated code!

module Aws::SQS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#AWSAccountIdList', name: 'AWSAccountIdList')
    ActionNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#ActionNameList', name: 'ActionNameList')
    AddPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#AddPermissionRequest', name: 'AddPermissionRequest')
    AttributeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#AttributeNameList', name: 'AttributeNameList')
    BatchEntryIdsNotDistinct = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#BatchEntryIdsNotDistinct', name: 'BatchEntryIdsNotDistinct', traits: {"aws.protocols#awsQueryError" => {"code" => "AWS.SimpleQueueService.BatchEntryIdsNotDistinct", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchRequestTooLong = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#BatchRequestTooLong', name: 'BatchRequestTooLong', traits: {"aws.protocols#awsQueryError" => {"code" => "AWS.SimpleQueueService.BatchRequestTooLong", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchResultErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#BatchResultErrorEntry', name: 'BatchResultErrorEntry')
    BatchResultErrorEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#BatchResultErrorEntryList', name: 'BatchResultErrorEntryList')
    Binary = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.sqs#Binary', name: 'Binary')
    BinaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#BinaryList', name: 'BinaryList')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sqs#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BoxedInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sqs#BoxedInteger', name: 'BoxedInteger')
    CancelMessageMoveTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#CancelMessageMoveTaskRequest', name: 'CancelMessageMoveTaskRequest')
    CancelMessageMoveTaskResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#CancelMessageMoveTaskResult', name: 'CancelMessageMoveTaskResult')
    ChangeMessageVisibilityBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ChangeMessageVisibilityBatchRequest', name: 'ChangeMessageVisibilityBatchRequest')
    ChangeMessageVisibilityBatchRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ChangeMessageVisibilityBatchRequestEntry', name: 'ChangeMessageVisibilityBatchRequestEntry')
    ChangeMessageVisibilityBatchRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#ChangeMessageVisibilityBatchRequestEntryList', name: 'ChangeMessageVisibilityBatchRequestEntryList')
    ChangeMessageVisibilityBatchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ChangeMessageVisibilityBatchResult', name: 'ChangeMessageVisibilityBatchResult')
    ChangeMessageVisibilityBatchResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ChangeMessageVisibilityBatchResultEntry', name: 'ChangeMessageVisibilityBatchResultEntry')
    ChangeMessageVisibilityBatchResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#ChangeMessageVisibilityBatchResultEntryList', name: 'ChangeMessageVisibilityBatchResultEntryList')
    ChangeMessageVisibilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ChangeMessageVisibilityRequest', name: 'ChangeMessageVisibilityRequest')
    CreateQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#CreateQueueRequest', name: 'CreateQueueRequest')
    CreateQueueResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#CreateQueueResult', name: 'CreateQueueResult')
    DeleteMessageBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#DeleteMessageBatchRequest', name: 'DeleteMessageBatchRequest')
    DeleteMessageBatchRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#DeleteMessageBatchRequestEntry', name: 'DeleteMessageBatchRequestEntry')
    DeleteMessageBatchRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#DeleteMessageBatchRequestEntryList', name: 'DeleteMessageBatchRequestEntryList')
    DeleteMessageBatchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#DeleteMessageBatchResult', name: 'DeleteMessageBatchResult')
    DeleteMessageBatchResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#DeleteMessageBatchResultEntry', name: 'DeleteMessageBatchResultEntry')
    DeleteMessageBatchResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#DeleteMessageBatchResultEntryList', name: 'DeleteMessageBatchResultEntryList')
    DeleteMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#DeleteMessageRequest', name: 'DeleteMessageRequest')
    DeleteQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#DeleteQueueRequest', name: 'DeleteQueueRequest')
    EmptyBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#EmptyBatchRequest', name: 'EmptyBatchRequest', traits: {"aws.protocols#awsQueryError" => {"code" => "AWS.SimpleQueueService.EmptyBatchRequest", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sqs#ExceptionMessage', name: 'ExceptionMessage')
    GetQueueAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#GetQueueAttributesRequest', name: 'GetQueueAttributesRequest')
    GetQueueAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#GetQueueAttributesResult', name: 'GetQueueAttributesResult')
    GetQueueUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#GetQueueUrlRequest', name: 'GetQueueUrlRequest')
    GetQueueUrlResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#GetQueueUrlResult', name: 'GetQueueUrlResult')
    InvalidAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#InvalidAddress', name: 'InvalidAddress', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAddress", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    InvalidAttributeName = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#InvalidAttributeName', name: 'InvalidAttributeName', traits: {"smithy.api#error" => "client"})
    InvalidAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#InvalidAttributeValue', name: 'InvalidAttributeValue', traits: {"smithy.api#error" => "client"})
    InvalidBatchEntryId = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#InvalidBatchEntryId', name: 'InvalidBatchEntryId', traits: {"aws.protocols#awsQueryError" => {"code" => "AWS.SimpleQueueService.InvalidBatchEntryId", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidIdFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#InvalidIdFormat', name: 'InvalidIdFormat', traits: {"smithy.api#deprecated" => {"message" => "exception has been included in ReceiptHandleIsInvalid"}, "smithy.api#error" => "client"})
    InvalidMessageContents = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#InvalidMessageContents', name: 'InvalidMessageContents', traits: {"smithy.api#error" => "client"})
    InvalidSecurity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#InvalidSecurity', name: 'InvalidSecurity', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSecurity", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    KmsAccessDenied = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#KmsAccessDenied', name: 'KmsAccessDenied', traits: {"aws.protocols#awsQueryError" => {"code" => "KMS.AccessDeniedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsDisabled = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#KmsDisabled', name: 'KmsDisabled', traits: {"aws.protocols#awsQueryError" => {"code" => "KMS.DisabledException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsInvalidKeyUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#KmsInvalidKeyUsage', name: 'KmsInvalidKeyUsage', traits: {"aws.protocols#awsQueryError" => {"code" => "KMS.InvalidKeyUsageException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsInvalidState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#KmsInvalidState', name: 'KmsInvalidState', traits: {"aws.protocols#awsQueryError" => {"code" => "KMS.InvalidStateException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#KmsNotFound', name: 'KmsNotFound', traits: {"aws.protocols#awsQueryError" => {"code" => "KMS.NotFoundException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsOptInRequired = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#KmsOptInRequired', name: 'KmsOptInRequired', traits: {"aws.protocols#awsQueryError" => {"code" => "KMS.OptInRequired", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    KmsThrottled = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#KmsThrottled', name: 'KmsThrottled', traits: {"aws.protocols#awsQueryError" => {"code" => "KMS.ThrottlingException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListDeadLetterSourceQueuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ListDeadLetterSourceQueuesRequest', name: 'ListDeadLetterSourceQueuesRequest')
    ListDeadLetterSourceQueuesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ListDeadLetterSourceQueuesResult', name: 'ListDeadLetterSourceQueuesResult')
    ListMessageMoveTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ListMessageMoveTasksRequest', name: 'ListMessageMoveTasksRequest')
    ListMessageMoveTasksResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ListMessageMoveTasksResult', name: 'ListMessageMoveTasksResult', traits: {"smithy.api#xmlName" => "ListMessageMoveTasksResult"})
    ListMessageMoveTasksResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ListMessageMoveTasksResultEntry', name: 'ListMessageMoveTasksResultEntry')
    ListMessageMoveTasksResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#ListMessageMoveTasksResultEntryList', name: 'ListMessageMoveTasksResultEntryList')
    ListQueueTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ListQueueTagsRequest', name: 'ListQueueTagsRequest')
    ListQueueTagsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ListQueueTagsResult', name: 'ListQueueTagsResult')
    ListQueuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ListQueuesRequest', name: 'ListQueuesRequest')
    ListQueuesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ListQueuesResult', name: 'ListQueuesResult')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sqs#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#Message', name: 'Message')
    MessageAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sqs#MessageAttributeName', name: 'MessageAttributeName')
    MessageAttributeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#MessageAttributeNameList', name: 'MessageAttributeNameList')
    MessageAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#MessageAttributeValue', name: 'MessageAttributeValue')
    MessageBodyAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sqs#MessageBodyAttributeMap', name: 'MessageBodyAttributeMap')
    MessageBodySystemAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sqs#MessageBodySystemAttributeMap', name: 'MessageBodySystemAttributeMap')
    MessageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#MessageList', name: 'MessageList')
    MessageNotInflight = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#MessageNotInflight', name: 'MessageNotInflight', traits: {"aws.protocols#awsQueryError" => {"code" => "AWS.SimpleQueueService.MessageNotInflight", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MessageSystemAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#MessageSystemAttributeList', name: 'MessageSystemAttributeList')
    MessageSystemAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sqs#MessageSystemAttributeMap', name: 'MessageSystemAttributeMap')
    MessageSystemAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sqs#MessageSystemAttributeName', name: 'MessageSystemAttributeName')
    MessageSystemAttributeNameForSends = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sqs#MessageSystemAttributeNameForSends', name: 'MessageSystemAttributeNameForSends')
    MessageSystemAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#MessageSystemAttributeValue', name: 'MessageSystemAttributeValue')
    NullableInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sqs#NullableInteger', name: 'NullableInteger')
    NullableLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sqs#NullableLong', name: 'NullableLong')
    OverLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#OverLimit', name: 'OverLimit', traits: {"aws.protocols#awsQueryError" => {"code" => "OverLimit", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    PurgeQueueInProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#PurgeQueueInProgress', name: 'PurgeQueueInProgress', traits: {"aws.protocols#awsQueryError" => {"code" => "AWS.SimpleQueueService.PurgeQueueInProgress", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    PurgeQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#PurgeQueueRequest', name: 'PurgeQueueRequest')
    QueueAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sqs#QueueAttributeMap', name: 'QueueAttributeMap')
    QueueAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sqs#QueueAttributeName', name: 'QueueAttributeName')
    QueueDeletedRecently = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#QueueDeletedRecently', name: 'QueueDeletedRecently', traits: {"aws.protocols#awsQueryError" => {"code" => "AWS.SimpleQueueService.QueueDeletedRecently", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    QueueDoesNotExist = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#QueueDoesNotExist', name: 'QueueDoesNotExist', traits: {"aws.protocols#awsQueryError" => {"code" => "AWS.SimpleQueueService.NonExistentQueue", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    QueueNameExists = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#QueueNameExists', name: 'QueueNameExists', traits: {"aws.protocols#awsQueryError" => {"code" => "QueueAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    QueueUrlList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#QueueUrlList', name: 'QueueUrlList')
    ReceiptHandleIsInvalid = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ReceiptHandleIsInvalid', name: 'ReceiptHandleIsInvalid', traits: {"aws.protocols#awsQueryError" => {"code" => "ReceiptHandleIsInvalid", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReceiveMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ReceiveMessageRequest', name: 'ReceiveMessageRequest')
    ReceiveMessageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ReceiveMessageResult', name: 'ReceiveMessageResult')
    RemovePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#RemovePermissionRequest', name: 'RemovePermissionRequest')
    RequestThrottled = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#RequestThrottled', name: 'RequestThrottled', traits: {"aws.protocols#awsQueryError" => {"code" => "RequestThrottled", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SendMessageBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#SendMessageBatchRequest', name: 'SendMessageBatchRequest')
    SendMessageBatchRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#SendMessageBatchRequestEntry', name: 'SendMessageBatchRequestEntry')
    SendMessageBatchRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#SendMessageBatchRequestEntryList', name: 'SendMessageBatchRequestEntryList')
    SendMessageBatchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#SendMessageBatchResult', name: 'SendMessageBatchResult')
    SendMessageBatchResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#SendMessageBatchResultEntry', name: 'SendMessageBatchResultEntry')
    SendMessageBatchResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#SendMessageBatchResultEntryList', name: 'SendMessageBatchResultEntryList')
    SendMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#SendMessageRequest', name: 'SendMessageRequest')
    SendMessageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#SendMessageResult', name: 'SendMessageResult')
    SetQueueAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#SetQueueAttributesRequest', name: 'SetQueueAttributesRequest')
    StartMessageMoveTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#StartMessageMoveTaskRequest', name: 'StartMessageMoveTaskRequest')
    StartMessageMoveTaskResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#StartMessageMoveTaskResult', name: 'StartMessageMoveTaskResult')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sqs#String', name: 'String')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#StringList', name: 'StringList')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sqs#TagKey', name: 'TagKey')
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sqs#TagKeyList', name: 'TagKeyList')
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sqs#TagMap', name: 'TagMap')
    TagQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#TagQueueRequest', name: 'TagQueueRequest')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sqs#TagValue', name: 'TagValue')
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sqs#Token', name: 'Token')
    TooManyEntriesInBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#TooManyEntriesInBatchRequest', name: 'TooManyEntriesInBatchRequest', traits: {"aws.protocols#awsQueryError" => {"code" => "AWS.SimpleQueueService.TooManyEntriesInBatchRequest", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#UnsupportedOperation', name: 'UnsupportedOperation', traits: {"aws.protocols#awsQueryError" => {"code" => "AWS.SimpleQueueService.UnsupportedOperation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sqs#UntagQueueRequest', name: 'UntagQueueRequest')

    AWSAccountIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ActionNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AddPermissionRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    AddPermissionRequest.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Label', traits: {"smithy.api#required" => {}}))
    AddPermissionRequest.add_member(:aws_account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountIdList, location_name: 'AWSAccountIds', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "AWSAccountId"}))
    AddPermissionRequest.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionNameList, location_name: 'Actions', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "ActionName"}))
    AddPermissionRequest.type = Types::AddPermissionRequest
    AttributeNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueAttributeName)
    BatchEntryIdsNotDistinct.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    BatchEntryIdsNotDistinct.type = Types::BatchEntryIdsNotDistinct
    BatchRequestTooLong.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    BatchRequestTooLong.type = Types::BatchRequestTooLong
    BatchResultErrorEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    BatchResultErrorEntry.add_member(:sender_fault, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SenderFault', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    BatchResultErrorEntry.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code', traits: {"smithy.api#required" => {}}))
    BatchResultErrorEntry.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BatchResultErrorEntry.type = Types::BatchResultErrorEntry
    BatchResultErrorEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchResultErrorEntry)
    BinaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Binary, traits: {"smithy.api#xmlName" => "BinaryListValue"})
    CancelMessageMoveTaskRequest.add_member(:task_handle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TaskHandle', traits: {"smithy.api#required" => {}}))
    CancelMessageMoveTaskRequest.type = Types::CancelMessageMoveTaskRequest
    CancelMessageMoveTaskResult.add_member(:approximate_number_of_messages_moved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ApproximateNumberOfMessagesMoved', traits: {"smithy.api#default" => 0}))
    CancelMessageMoveTaskResult.type = Types::CancelMessageMoveTaskResult
    ChangeMessageVisibilityBatchRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    ChangeMessageVisibilityBatchRequest.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchRequestEntryList, location_name: 'Entries', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "ChangeMessageVisibilityBatchRequestEntry"}))
    ChangeMessageVisibilityBatchRequest.type = Types::ChangeMessageVisibilityBatchRequest
    ChangeMessageVisibilityBatchRequestEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    ChangeMessageVisibilityBatchRequestEntry.add_member(:receipt_handle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReceiptHandle', traits: {"smithy.api#required" => {}}))
    ChangeMessageVisibilityBatchRequestEntry.add_member(:visibility_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'VisibilityTimeout'))
    ChangeMessageVisibilityBatchRequestEntry.type = Types::ChangeMessageVisibilityBatchRequestEntry
    ChangeMessageVisibilityBatchRequestEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchRequestEntry)
    ChangeMessageVisibilityBatchResult.add_member(:successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchResultEntryList, location_name: 'Successful', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "ChangeMessageVisibilityBatchResultEntry"}))
    ChangeMessageVisibilityBatchResult.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchResultErrorEntryList, location_name: 'Failed', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "BatchResultErrorEntry"}))
    ChangeMessageVisibilityBatchResult.type = Types::ChangeMessageVisibilityBatchResult
    ChangeMessageVisibilityBatchResultEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    ChangeMessageVisibilityBatchResultEntry.type = Types::ChangeMessageVisibilityBatchResultEntry
    ChangeMessageVisibilityBatchResultEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchResultEntry)
    ChangeMessageVisibilityRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    ChangeMessageVisibilityRequest.add_member(:receipt_handle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReceiptHandle', traits: {"smithy.api#required" => {}}))
    ChangeMessageVisibilityRequest.add_member(:visibility_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'VisibilityTimeout', traits: {"smithy.api#required" => {}}))
    ChangeMessageVisibilityRequest.type = Types::ChangeMessageVisibilityRequest
    CreateQueueRequest.add_member(:queue_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueName', traits: {"smithy.api#required" => {}}))
    CreateQueueRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueAttributeMap, location_name: 'Attributes', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Attribute"}))
    CreateQueueRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Tag"}))
    CreateQueueRequest.type = Types::CreateQueueRequest
    CreateQueueResult.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl'))
    CreateQueueResult.type = Types::CreateQueueResult
    DeleteMessageBatchRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    DeleteMessageBatchRequest.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageBatchRequestEntryList, location_name: 'Entries', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "DeleteMessageBatchRequestEntry"}))
    DeleteMessageBatchRequest.type = Types::DeleteMessageBatchRequest
    DeleteMessageBatchRequestEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    DeleteMessageBatchRequestEntry.add_member(:receipt_handle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReceiptHandle', traits: {"smithy.api#required" => {}}))
    DeleteMessageBatchRequestEntry.type = Types::DeleteMessageBatchRequestEntry
    DeleteMessageBatchRequestEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageBatchRequestEntry)
    DeleteMessageBatchResult.add_member(:successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageBatchResultEntryList, location_name: 'Successful', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "DeleteMessageBatchResultEntry"}))
    DeleteMessageBatchResult.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchResultErrorEntryList, location_name: 'Failed', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "BatchResultErrorEntry"}))
    DeleteMessageBatchResult.type = Types::DeleteMessageBatchResult
    DeleteMessageBatchResultEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    DeleteMessageBatchResultEntry.type = Types::DeleteMessageBatchResultEntry
    DeleteMessageBatchResultEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageBatchResultEntry)
    DeleteMessageRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    DeleteMessageRequest.add_member(:receipt_handle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReceiptHandle', traits: {"smithy.api#required" => {}}))
    DeleteMessageRequest.type = Types::DeleteMessageRequest
    DeleteQueueRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    DeleteQueueRequest.type = Types::DeleteQueueRequest
    EmptyBatchRequest.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EmptyBatchRequest.type = Types::EmptyBatchRequest
    GetQueueAttributesRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    GetQueueAttributesRequest.add_member(:attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'AttributeNames', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "AttributeName"}))
    GetQueueAttributesRequest.type = Types::GetQueueAttributesRequest
    GetQueueAttributesResult.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueAttributeMap, location_name: 'Attributes', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Attribute"}))
    GetQueueAttributesResult.type = Types::GetQueueAttributesResult
    GetQueueUrlRequest.add_member(:queue_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueName', traits: {"smithy.api#required" => {}}))
    GetQueueUrlRequest.add_member(:queue_owner_aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueOwnerAWSAccountId'))
    GetQueueUrlRequest.type = Types::GetQueueUrlRequest
    GetQueueUrlResult.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl'))
    GetQueueUrlResult.type = Types::GetQueueUrlResult
    InvalidAddress.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidAddress.type = Types::InvalidAddress
    InvalidAttributeName.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidAttributeName.type = Types::InvalidAttributeName
    InvalidAttributeValue.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidAttributeValue.type = Types::InvalidAttributeValue
    InvalidBatchEntryId.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidBatchEntryId.type = Types::InvalidBatchEntryId
    InvalidIdFormat.type = Types::InvalidIdFormat
    InvalidMessageContents.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidMessageContents.type = Types::InvalidMessageContents
    InvalidSecurity.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSecurity.type = Types::InvalidSecurity
    KmsAccessDenied.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    KmsAccessDenied.type = Types::KmsAccessDenied
    KmsDisabled.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    KmsDisabled.type = Types::KmsDisabled
    KmsInvalidKeyUsage.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    KmsInvalidKeyUsage.type = Types::KmsInvalidKeyUsage
    KmsInvalidState.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    KmsInvalidState.type = Types::KmsInvalidState
    KmsNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    KmsNotFound.type = Types::KmsNotFound
    KmsOptInRequired.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    KmsOptInRequired.type = Types::KmsOptInRequired
    KmsThrottled.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    KmsThrottled.type = Types::KmsThrottled
    ListDeadLetterSourceQueuesRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    ListDeadLetterSourceQueuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListDeadLetterSourceQueuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInteger, location_name: 'MaxResults'))
    ListDeadLetterSourceQueuesRequest.type = Types::ListDeadLetterSourceQueuesRequest
    ListDeadLetterSourceQueuesResult.add_member(:queue_urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueUrlList, location_name: 'queueUrls', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "QueueUrl"}))
    ListDeadLetterSourceQueuesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListDeadLetterSourceQueuesResult.type = Types::ListDeadLetterSourceQueuesResult
    ListMessageMoveTasksRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn', traits: {"smithy.api#required" => {}}))
    ListMessageMoveTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'MaxResults'))
    ListMessageMoveTasksRequest.type = Types::ListMessageMoveTasksRequest
    ListMessageMoveTasksResult.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageMoveTasksResultEntryList, location_name: 'Results', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "ListMessageMoveTasksResultEntry"}))
    ListMessageMoveTasksResult.type = Types::ListMessageMoveTasksResult
    ListMessageMoveTasksResultEntry.add_member(:task_handle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TaskHandle'))
    ListMessageMoveTasksResultEntry.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ListMessageMoveTasksResultEntry.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn'))
    ListMessageMoveTasksResultEntry.add_member(:destination_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationArn'))
    ListMessageMoveTasksResultEntry.add_member(:max_number_of_messages_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'MaxNumberOfMessagesPerSecond'))
    ListMessageMoveTasksResultEntry.add_member(:approximate_number_of_messages_moved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ApproximateNumberOfMessagesMoved', traits: {"smithy.api#default" => 0}))
    ListMessageMoveTasksResultEntry.add_member(:approximate_number_of_messages_to_move, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'ApproximateNumberOfMessagesToMove'))
    ListMessageMoveTasksResultEntry.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FailureReason'))
    ListMessageMoveTasksResultEntry.add_member(:started_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'StartedTimestamp', traits: {"smithy.api#default" => 0}))
    ListMessageMoveTasksResultEntry.type = Types::ListMessageMoveTasksResultEntry
    ListMessageMoveTasksResultEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageMoveTasksResultEntry)
    ListQueueTagsRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    ListQueueTagsRequest.type = Types::ListQueueTagsRequest
    ListQueueTagsResult.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Tag"}))
    ListQueueTagsResult.type = Types::ListQueueTagsResult
    ListQueuesRequest.add_member(:queue_name_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueNamePrefix'))
    ListQueuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListQueuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInteger, location_name: 'MaxResults'))
    ListQueuesRequest.type = Types::ListQueuesRequest
    ListQueuesResult.add_member(:queue_urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueUrlList, location_name: 'QueueUrls', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "QueueUrl"}))
    ListQueuesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListQueuesResult.type = Types::ListQueuesResult
    Message.add_member(:message_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageId'))
    Message.add_member(:receipt_handle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReceiptHandle'))
    Message.add_member(:md5_of_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MD5OfBody'))
    Message.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body'))
    Message.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageSystemAttributeMap, location_name: 'Attributes', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Attribute"}))
    Message.add_member(:md5_of_message_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MD5OfMessageAttributes'))
    Message.add_member(:message_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBodyAttributeMap, location_name: 'MessageAttributes', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "MessageAttribute"}))
    Message.type = Types::Message
    MessageAttributeNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAttributeName)
    MessageAttributeValue.add_member(:string_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StringValue'))
    MessageAttributeValue.add_member(:binary_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Binary, location_name: 'BinaryValue'))
    MessageAttributeValue.add_member(:string_list_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'StringListValues', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "StringListValue"}))
    MessageAttributeValue.add_member(:binary_list_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryList, location_name: 'BinaryListValues', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "BinaryListValue"}))
    MessageAttributeValue.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType', traits: {"smithy.api#required" => {}}))
    MessageAttributeValue.type = Types::MessageAttributeValue
    MessageBodyAttributeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Name"})
    MessageBodyAttributeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAttributeValue, traits: {"smithy.api#xmlName" => "Value"})
    MessageBodySystemAttributeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageSystemAttributeNameForSends, traits: {"smithy.api#xmlName" => "Name"})
    MessageBodySystemAttributeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageSystemAttributeValue, traits: {"smithy.api#xmlName" => "Value"})
    MessageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message)
    MessageNotInflight.type = Types::MessageNotInflight
    MessageSystemAttributeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageSystemAttributeName)
    MessageSystemAttributeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageSystemAttributeName, traits: {"smithy.api#xmlName" => "Name"})
    MessageSystemAttributeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Value"})
    MessageSystemAttributeName.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'All', traits: {"smithy.api#enumValue" => "All"}))
    MessageSystemAttributeName.add_member(:sender_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SenderId', traits: {"smithy.api#enumValue" => "SenderId"}))
    MessageSystemAttributeName.add_member(:sent_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SentTimestamp', traits: {"smithy.api#enumValue" => "SentTimestamp"}))
    MessageSystemAttributeName.add_member(:approximate_receive_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ApproximateReceiveCount', traits: {"smithy.api#enumValue" => "ApproximateReceiveCount"}))
    MessageSystemAttributeName.add_member(:approximate_first_receive_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ApproximateFirstReceiveTimestamp', traits: {"smithy.api#enumValue" => "ApproximateFirstReceiveTimestamp"}))
    MessageSystemAttributeName.add_member(:sequence_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SequenceNumber', traits: {"smithy.api#enumValue" => "SequenceNumber"}))
    MessageSystemAttributeName.add_member(:message_deduplication_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MessageDeduplicationId', traits: {"smithy.api#enumValue" => "MessageDeduplicationId"}))
    MessageSystemAttributeName.add_member(:message_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MessageGroupId', traits: {"smithy.api#enumValue" => "MessageGroupId"}))
    MessageSystemAttributeName.add_member(:aws_trace_header, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSTraceHeader', traits: {"smithy.api#enumValue" => "AWSTraceHeader"}))
    MessageSystemAttributeName.add_member(:dead_letter_queue_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeadLetterQueueSourceArn', traits: {"smithy.api#enumValue" => "DeadLetterQueueSourceArn"}))
    MessageSystemAttributeNameForSends.add_member(:aws_trace_header, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSTraceHeader', traits: {"smithy.api#enumValue" => "AWSTraceHeader"}))
    MessageSystemAttributeValue.add_member(:string_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StringValue'))
    MessageSystemAttributeValue.add_member(:binary_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Binary, location_name: 'BinaryValue'))
    MessageSystemAttributeValue.add_member(:string_list_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'StringListValues', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "StringListValue"}))
    MessageSystemAttributeValue.add_member(:binary_list_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryList, location_name: 'BinaryListValues', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "BinaryListValue"}))
    MessageSystemAttributeValue.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType', traits: {"smithy.api#required" => {}}))
    MessageSystemAttributeValue.type = Types::MessageSystemAttributeValue
    OverLimit.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    OverLimit.type = Types::OverLimit
    PurgeQueueInProgress.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    PurgeQueueInProgress.type = Types::PurgeQueueInProgress
    PurgeQueueRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    PurgeQueueRequest.type = Types::PurgeQueueRequest
    QueueAttributeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueAttributeName, traits: {"smithy.api#xmlName" => "Name"})
    QueueAttributeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Value"})
    QueueAttributeName.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'All', traits: {"smithy.api#enumValue" => "All"}))
    QueueAttributeName.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy', traits: {"smithy.api#enumValue" => "Policy"}))
    QueueAttributeName.add_member(:visibility_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VisibilityTimeout', traits: {"smithy.api#enumValue" => "VisibilityTimeout"}))
    QueueAttributeName.add_member(:maximum_message_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MaximumMessageSize', traits: {"smithy.api#enumValue" => "MaximumMessageSize"}))
    QueueAttributeName.add_member(:message_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MessageRetentionPeriod', traits: {"smithy.api#enumValue" => "MessageRetentionPeriod"}))
    QueueAttributeName.add_member(:approximate_number_of_messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ApproximateNumberOfMessages', traits: {"smithy.api#enumValue" => "ApproximateNumberOfMessages"}))
    QueueAttributeName.add_member(:approximate_number_of_messages_not_visible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ApproximateNumberOfMessagesNotVisible', traits: {"smithy.api#enumValue" => "ApproximateNumberOfMessagesNotVisible"}))
    QueueAttributeName.add_member(:created_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CreatedTimestamp', traits: {"smithy.api#enumValue" => "CreatedTimestamp"}))
    QueueAttributeName.add_member(:last_modified_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LastModifiedTimestamp', traits: {"smithy.api#enumValue" => "LastModifiedTimestamp"}))
    QueueAttributeName.add_member(:queue_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QueueArn', traits: {"smithy.api#enumValue" => "QueueArn"}))
    QueueAttributeName.add_member(:approximate_number_of_messages_delayed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ApproximateNumberOfMessagesDelayed', traits: {"smithy.api#enumValue" => "ApproximateNumberOfMessagesDelayed"}))
    QueueAttributeName.add_member(:delay_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DelaySeconds', traits: {"smithy.api#enumValue" => "DelaySeconds"}))
    QueueAttributeName.add_member(:receive_message_wait_time_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReceiveMessageWaitTimeSeconds', traits: {"smithy.api#enumValue" => "ReceiveMessageWaitTimeSeconds"}))
    QueueAttributeName.add_member(:redrive_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RedrivePolicy', traits: {"smithy.api#enumValue" => "RedrivePolicy"}))
    QueueAttributeName.add_member(:fifo_queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FifoQueue', traits: {"smithy.api#enumValue" => "FifoQueue"}))
    QueueAttributeName.add_member(:content_based_deduplication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ContentBasedDeduplication', traits: {"smithy.api#enumValue" => "ContentBasedDeduplication"}))
    QueueAttributeName.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KmsMasterKeyId', traits: {"smithy.api#enumValue" => "KmsMasterKeyId"}))
    QueueAttributeName.add_member(:kms_data_key_reuse_period_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KmsDataKeyReusePeriodSeconds', traits: {"smithy.api#enumValue" => "KmsDataKeyReusePeriodSeconds"}))
    QueueAttributeName.add_member(:deduplication_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeduplicationScope', traits: {"smithy.api#enumValue" => "DeduplicationScope"}))
    QueueAttributeName.add_member(:fifo_throughput_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FifoThroughputLimit', traits: {"smithy.api#enumValue" => "FifoThroughputLimit"}))
    QueueAttributeName.add_member(:redrive_allow_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RedriveAllowPolicy', traits: {"smithy.api#enumValue" => "RedriveAllowPolicy"}))
    QueueAttributeName.add_member(:sqs_managed_sse_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SqsManagedSseEnabled', traits: {"smithy.api#enumValue" => "SqsManagedSseEnabled"}))
    QueueDeletedRecently.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    QueueDeletedRecently.type = Types::QueueDeletedRecently
    QueueDoesNotExist.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    QueueDoesNotExist.type = Types::QueueDoesNotExist
    QueueNameExists.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    QueueNameExists.type = Types::QueueNameExists
    QueueUrlList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ReceiptHandleIsInvalid.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReceiptHandleIsInvalid.type = Types::ReceiptHandleIsInvalid
    ReceiveMessageRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    ReceiveMessageRequest.add_member(:attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'AttributeNames', traits: {"smithy.api#deprecated" => {"message" => "AttributeNames has been replaced by MessageSystemAttributeNames"}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "AttributeName"}))
    ReceiveMessageRequest.add_member(:message_system_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageSystemAttributeList, location_name: 'MessageSystemAttributeNames', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "AttributeName"}))
    ReceiveMessageRequest.add_member(:message_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAttributeNameList, location_name: 'MessageAttributeNames', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "MessageAttributeName"}))
    ReceiveMessageRequest.add_member(:max_number_of_messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'MaxNumberOfMessages'))
    ReceiveMessageRequest.add_member(:visibility_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'VisibilityTimeout'))
    ReceiveMessageRequest.add_member(:wait_time_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'WaitTimeSeconds'))
    ReceiveMessageRequest.add_member(:receive_request_attempt_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReceiveRequestAttemptId'))
    ReceiveMessageRequest.type = Types::ReceiveMessageRequest
    ReceiveMessageResult.add_member(:messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageList, location_name: 'Messages', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Message"}))
    ReceiveMessageResult.type = Types::ReceiveMessageResult
    RemovePermissionRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    RemovePermissionRequest.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Label', traits: {"smithy.api#required" => {}}))
    RemovePermissionRequest.type = Types::RemovePermissionRequest
    RequestThrottled.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    RequestThrottled.type = Types::RequestThrottled
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SendMessageBatchRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    SendMessageBatchRequest.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageBatchRequestEntryList, location_name: 'Entries', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "SendMessageBatchRequestEntry"}))
    SendMessageBatchRequest.type = Types::SendMessageBatchRequest
    SendMessageBatchRequestEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    SendMessageBatchRequestEntry.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageBody', traits: {"smithy.api#required" => {}}))
    SendMessageBatchRequestEntry.add_member(:delay_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'DelaySeconds'))
    SendMessageBatchRequestEntry.add_member(:message_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBodyAttributeMap, location_name: 'MessageAttributes', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "MessageAttribute"}))
    SendMessageBatchRequestEntry.add_member(:message_system_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBodySystemAttributeMap, location_name: 'MessageSystemAttributes', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "MessageSystemAttribute"}))
    SendMessageBatchRequestEntry.add_member(:message_deduplication_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageDeduplicationId'))
    SendMessageBatchRequestEntry.add_member(:message_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageGroupId'))
    SendMessageBatchRequestEntry.type = Types::SendMessageBatchRequestEntry
    SendMessageBatchRequestEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageBatchRequestEntry)
    SendMessageBatchResult.add_member(:successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageBatchResultEntryList, location_name: 'Successful', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "SendMessageBatchResultEntry"}))
    SendMessageBatchResult.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchResultErrorEntryList, location_name: 'Failed', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "BatchResultErrorEntry"}))
    SendMessageBatchResult.type = Types::SendMessageBatchResult
    SendMessageBatchResultEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    SendMessageBatchResultEntry.add_member(:message_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageId', traits: {"smithy.api#required" => {}}))
    SendMessageBatchResultEntry.add_member(:md5_of_message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MD5OfMessageBody', traits: {"smithy.api#required" => {}}))
    SendMessageBatchResultEntry.add_member(:md5_of_message_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MD5OfMessageAttributes'))
    SendMessageBatchResultEntry.add_member(:md5_of_message_system_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MD5OfMessageSystemAttributes'))
    SendMessageBatchResultEntry.add_member(:sequence_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SequenceNumber'))
    SendMessageBatchResultEntry.type = Types::SendMessageBatchResultEntry
    SendMessageBatchResultEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageBatchResultEntry)
    SendMessageRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageBody', traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:delay_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'DelaySeconds'))
    SendMessageRequest.add_member(:message_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBodyAttributeMap, location_name: 'MessageAttributes', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "MessageAttribute"}))
    SendMessageRequest.add_member(:message_system_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBodySystemAttributeMap, location_name: 'MessageSystemAttributes', traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "MessageSystemAttribute"}))
    SendMessageRequest.add_member(:message_deduplication_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageDeduplicationId'))
    SendMessageRequest.add_member(:message_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageGroupId'))
    SendMessageRequest.type = Types::SendMessageRequest
    SendMessageResult.add_member(:md5_of_message_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MD5OfMessageBody'))
    SendMessageResult.add_member(:md5_of_message_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MD5OfMessageAttributes'))
    SendMessageResult.add_member(:md5_of_message_system_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MD5OfMessageSystemAttributes'))
    SendMessageResult.add_member(:message_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageId'))
    SendMessageResult.add_member(:sequence_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SequenceNumber'))
    SendMessageResult.type = Types::SendMessageResult
    SetQueueAttributesRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    SetQueueAttributesRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueAttributeMap, location_name: 'Attributes', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Attribute"}))
    SetQueueAttributesRequest.type = Types::SetQueueAttributesRequest
    StartMessageMoveTaskRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn', traits: {"smithy.api#required" => {}}))
    StartMessageMoveTaskRequest.add_member(:destination_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationArn'))
    StartMessageMoveTaskRequest.add_member(:max_number_of_messages_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'MaxNumberOfMessagesPerSecond'))
    StartMessageMoveTaskRequest.type = Types::StartMessageMoveTaskRequest
    StartMessageMoveTaskResult.add_member(:task_handle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TaskHandle'))
    StartMessageMoveTaskResult.type = Types::StartMessageMoveTaskResult
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "StringListValue"})
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, traits: {"smithy.api#xmlName" => "Key"})
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, traits: {"smithy.api#xmlName" => "Value"})
    TagQueueRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    TagQueueRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Tag"}))
    TagQueueRequest.type = Types::TagQueueRequest
    TooManyEntriesInBatchRequest.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyEntriesInBatchRequest.type = Types::TooManyEntriesInBatchRequest
    UnsupportedOperation.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnsupportedOperation.type = Types::UnsupportedOperation
    UntagQueueRequest.add_member(:queue_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueueUrl', traits: {"smithy.api#required" => {}}))
    UntagQueueRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "TagKey"}))
    UntagQueueRequest.type = Types::UntagQueueRequest

    AmazonSQS = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sqs#AmazonSQS"
      service.name = "AmazonSQS"
      service.version = "2012-11-05"
      service.traits = {"aws.api#service" => {"sdkId" => "SQS", "arnNamespace" => "sqs", "cloudFormationName" => "SQS", "cloudTrailEventSource" => "sqs.amazonaws.com", "endpointPrefix" => "sqs"}, "aws.auth#sigv4" => {"name" => "sqs"}, "aws.protocols#awsJson1_0" => {}, "aws.protocols#awsQueryCompatible" => {}, "smithy.api#title" => "Amazon Simple Queue Service"}
      service.add_operation(:add_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#AddPermission"
        operation.name = "AddPermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddPermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverLimit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:cancel_message_move_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#CancelMessageMoveTask"
        operation.name = "CancelMessageMoveTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelMessageMoveTaskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelMessageMoveTaskResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:change_message_visibility, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#ChangeMessageVisibility"
        operation.name = "ChangeMessageVisibility"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeMessageVisibilityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageNotInflight)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptHandleIsInvalid)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:change_message_visibility_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#ChangeMessageVisibilityBatch"
        operation.name = "ChangeMessageVisibilityBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEntryIdsNotDistinct)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyBatchRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBatchEntryId)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyEntriesInBatchRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:create_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#CreateQueue"
        operation.name = "CreateQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAttributeName)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAttributeValue)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDeletedRecently)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueNameExists)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:delete_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#DeleteMessage"
        operation.name = "DeleteMessage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIdFormat)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptHandleIsInvalid)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:delete_message_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#DeleteMessageBatch"
        operation.name = "DeleteMessageBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageBatchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMessageBatchResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEntryIdsNotDistinct)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyBatchRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBatchEntryId)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyEntriesInBatchRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:delete_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#DeleteQueue"
        operation.name = "DeleteQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:get_queue_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#GetQueueAttributes"
        operation.name = "GetQueueAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueAttributesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAttributeName)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:get_queue_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#GetQueueUrl"
        operation.name = "GetQueueUrl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueUrlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueUrlResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:list_dead_letter_source_queues, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#ListDeadLetterSourceQueues"
        operation.name = "ListDeadLetterSourceQueues"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeadLetterSourceQueuesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeadLetterSourceQueuesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDeadLetterSourceQueues.new
      end)
      service.add_operation(:list_message_move_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#ListMessageMoveTasks"
        operation.name = "ListMessageMoveTasks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageMoveTasksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessageMoveTasksResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:list_queue_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#ListQueueTags"
        operation.name = "ListQueueTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueueTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueueTagsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:list_queues, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#ListQueues"
        operation.name = "ListQueues"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueuesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueuesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
        operation[:paginator] = Paginators::ListQueues.new
      end)
      service.add_operation(:purge_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#PurgeQueue"
        operation.name = "PurgeQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurgeQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurgeQueueInProgress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:receive_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#ReceiveMessage"
        operation.name = "ReceiveMessage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiveMessageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiveMessageResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDenied)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDisabled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidKeyUsage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsOptInRequired)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverLimit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:remove_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#RemovePermission"
        operation.name = "RemovePermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemovePermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:send_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#SendMessage"
        operation.name = "SendMessage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMessageContents)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDenied)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDisabled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidKeyUsage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsOptInRequired)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:send_message_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#SendMessageBatch"
        operation.name = "SendMessageBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageBatchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageBatchResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEntryIdsNotDistinct)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRequestTooLong)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyBatchRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBatchEntryId)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsAccessDenied)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsDisabled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidKeyUsage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsInvalidState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsOptInRequired)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyEntriesInBatchRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:set_queue_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#SetQueueAttributes"
        operation.name = "SetQueueAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetQueueAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAttributeName)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAttributeValue)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverLimit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:start_message_move_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#StartMessageMoveTask"
        operation.name = "StartMessageMoveTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMessageMoveTaskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMessageMoveTaskResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:tag_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#TagQueue"
        operation.name = "TagQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {}
      end)
      service.add_operation(:untag_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sqs#UntagQueue"
        operation.name = "UntagQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAddress)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestThrottled)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
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
