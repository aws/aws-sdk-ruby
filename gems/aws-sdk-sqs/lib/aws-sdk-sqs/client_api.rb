# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SQS
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccountIdList = Shapes::ListShape.new(name: 'AWSAccountIdList', flattened: true)
    ActionNameList = Shapes::ListShape.new(name: 'ActionNameList', flattened: true)
    AddPermissionRequest = Shapes::StructureShape.new(name: 'AddPermissionRequest')
    AttributeNameList = Shapes::ListShape.new(name: 'AttributeNameList', flattened: true)
    BatchEntryIdsNotDistinct = Shapes::StructureShape.new(name: 'BatchEntryIdsNotDistinct')
    BatchRequestTooLong = Shapes::StructureShape.new(name: 'BatchRequestTooLong')
    BatchResultErrorEntry = Shapes::StructureShape.new(name: 'BatchResultErrorEntry')
    BatchResultErrorEntryList = Shapes::ListShape.new(name: 'BatchResultErrorEntryList', flattened: true)
    Binary = Shapes::BlobShape.new(name: 'Binary')
    BinaryList = Shapes::ListShape.new(name: 'BinaryList', flattened: true)
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    CancelMessageMoveTaskRequest = Shapes::StructureShape.new(name: 'CancelMessageMoveTaskRequest')
    CancelMessageMoveTaskResult = Shapes::StructureShape.new(name: 'CancelMessageMoveTaskResult')
    ChangeMessageVisibilityBatchRequest = Shapes::StructureShape.new(name: 'ChangeMessageVisibilityBatchRequest')
    ChangeMessageVisibilityBatchRequestEntry = Shapes::StructureShape.new(name: 'ChangeMessageVisibilityBatchRequestEntry')
    ChangeMessageVisibilityBatchRequestEntryList = Shapes::ListShape.new(name: 'ChangeMessageVisibilityBatchRequestEntryList', flattened: true)
    ChangeMessageVisibilityBatchResult = Shapes::StructureShape.new(name: 'ChangeMessageVisibilityBatchResult')
    ChangeMessageVisibilityBatchResultEntry = Shapes::StructureShape.new(name: 'ChangeMessageVisibilityBatchResultEntry')
    ChangeMessageVisibilityBatchResultEntryList = Shapes::ListShape.new(name: 'ChangeMessageVisibilityBatchResultEntryList', flattened: true)
    ChangeMessageVisibilityRequest = Shapes::StructureShape.new(name: 'ChangeMessageVisibilityRequest')
    CreateQueueRequest = Shapes::StructureShape.new(name: 'CreateQueueRequest')
    CreateQueueResult = Shapes::StructureShape.new(name: 'CreateQueueResult')
    DeleteMessageBatchRequest = Shapes::StructureShape.new(name: 'DeleteMessageBatchRequest')
    DeleteMessageBatchRequestEntry = Shapes::StructureShape.new(name: 'DeleteMessageBatchRequestEntry')
    DeleteMessageBatchRequestEntryList = Shapes::ListShape.new(name: 'DeleteMessageBatchRequestEntryList', flattened: true)
    DeleteMessageBatchResult = Shapes::StructureShape.new(name: 'DeleteMessageBatchResult')
    DeleteMessageBatchResultEntry = Shapes::StructureShape.new(name: 'DeleteMessageBatchResultEntry')
    DeleteMessageBatchResultEntryList = Shapes::ListShape.new(name: 'DeleteMessageBatchResultEntryList', flattened: true)
    DeleteMessageRequest = Shapes::StructureShape.new(name: 'DeleteMessageRequest')
    DeleteQueueRequest = Shapes::StructureShape.new(name: 'DeleteQueueRequest')
    EmptyBatchRequest = Shapes::StructureShape.new(name: 'EmptyBatchRequest')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    GetQueueAttributesRequest = Shapes::StructureShape.new(name: 'GetQueueAttributesRequest')
    GetQueueAttributesResult = Shapes::StructureShape.new(name: 'GetQueueAttributesResult')
    GetQueueUrlRequest = Shapes::StructureShape.new(name: 'GetQueueUrlRequest')
    GetQueueUrlResult = Shapes::StructureShape.new(name: 'GetQueueUrlResult')
    InvalidAddress = Shapes::StructureShape.new(name: 'InvalidAddress')
    InvalidAttributeName = Shapes::StructureShape.new(name: 'InvalidAttributeName')
    InvalidAttributeValue = Shapes::StructureShape.new(name: 'InvalidAttributeValue')
    InvalidBatchEntryId = Shapes::StructureShape.new(name: 'InvalidBatchEntryId')
    InvalidIdFormat = Shapes::StructureShape.new(name: 'InvalidIdFormat')
    InvalidMessageContents = Shapes::StructureShape.new(name: 'InvalidMessageContents')
    InvalidSecurity = Shapes::StructureShape.new(name: 'InvalidSecurity')
    KmsAccessDenied = Shapes::StructureShape.new(name: 'KmsAccessDenied')
    KmsDisabled = Shapes::StructureShape.new(name: 'KmsDisabled')
    KmsInvalidKeyUsage = Shapes::StructureShape.new(name: 'KmsInvalidKeyUsage')
    KmsInvalidState = Shapes::StructureShape.new(name: 'KmsInvalidState')
    KmsNotFound = Shapes::StructureShape.new(name: 'KmsNotFound')
    KmsOptInRequired = Shapes::StructureShape.new(name: 'KmsOptInRequired')
    KmsThrottled = Shapes::StructureShape.new(name: 'KmsThrottled')
    ListDeadLetterSourceQueuesRequest = Shapes::StructureShape.new(name: 'ListDeadLetterSourceQueuesRequest')
    ListDeadLetterSourceQueuesResult = Shapes::StructureShape.new(name: 'ListDeadLetterSourceQueuesResult')
    ListMessageMoveTasksRequest = Shapes::StructureShape.new(name: 'ListMessageMoveTasksRequest')
    ListMessageMoveTasksResult = Shapes::StructureShape.new(name: 'ListMessageMoveTasksResult')
    ListMessageMoveTasksResultEntry = Shapes::StructureShape.new(name: 'ListMessageMoveTasksResultEntry')
    ListMessageMoveTasksResultEntryList = Shapes::ListShape.new(name: 'ListMessageMoveTasksResultEntryList', flattened: true)
    ListQueueTagsRequest = Shapes::StructureShape.new(name: 'ListQueueTagsRequest')
    ListQueueTagsResult = Shapes::StructureShape.new(name: 'ListQueueTagsResult')
    ListQueuesRequest = Shapes::StructureShape.new(name: 'ListQueuesRequest')
    ListQueuesResult = Shapes::StructureShape.new(name: 'ListQueuesResult')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageAttributeName = Shapes::StringShape.new(name: 'MessageAttributeName')
    MessageAttributeNameList = Shapes::ListShape.new(name: 'MessageAttributeNameList', flattened: true)
    MessageAttributeValue = Shapes::StructureShape.new(name: 'MessageAttributeValue')
    MessageBodyAttributeMap = Shapes::MapShape.new(name: 'MessageBodyAttributeMap', flattened: true)
    MessageBodySystemAttributeMap = Shapes::MapShape.new(name: 'MessageBodySystemAttributeMap', flattened: true)
    MessageList = Shapes::ListShape.new(name: 'MessageList', flattened: true)
    MessageNotInflight = Shapes::StructureShape.new(name: 'MessageNotInflight')
    MessageSystemAttributeList = Shapes::ListShape.new(name: 'MessageSystemAttributeList', flattened: true)
    MessageSystemAttributeMap = Shapes::MapShape.new(name: 'MessageSystemAttributeMap', flattened: true)
    MessageSystemAttributeName = Shapes::StringShape.new(name: 'MessageSystemAttributeName')
    MessageSystemAttributeNameForSends = Shapes::StringShape.new(name: 'MessageSystemAttributeNameForSends')
    MessageSystemAttributeValue = Shapes::StructureShape.new(name: 'MessageSystemAttributeValue')
    NullableInteger = Shapes::IntegerShape.new(name: 'NullableInteger')
    NullableLong = Shapes::IntegerShape.new(name: 'NullableLong')
    OverLimit = Shapes::StructureShape.new(name: 'OverLimit')
    PurgeQueueInProgress = Shapes::StructureShape.new(name: 'PurgeQueueInProgress')
    PurgeQueueRequest = Shapes::StructureShape.new(name: 'PurgeQueueRequest')
    QueueAttributeMap = Shapes::MapShape.new(name: 'QueueAttributeMap', flattened: true)
    QueueAttributeName = Shapes::StringShape.new(name: 'QueueAttributeName')
    QueueDeletedRecently = Shapes::StructureShape.new(name: 'QueueDeletedRecently')
    QueueDoesNotExist = Shapes::StructureShape.new(name: 'QueueDoesNotExist')
    QueueNameExists = Shapes::StructureShape.new(name: 'QueueNameExists')
    QueueUrlList = Shapes::ListShape.new(name: 'QueueUrlList', flattened: true)
    ReceiptHandleIsInvalid = Shapes::StructureShape.new(name: 'ReceiptHandleIsInvalid')
    ReceiveMessageRequest = Shapes::StructureShape.new(name: 'ReceiveMessageRequest')
    ReceiveMessageResult = Shapes::StructureShape.new(name: 'ReceiveMessageResult')
    RemovePermissionRequest = Shapes::StructureShape.new(name: 'RemovePermissionRequest')
    RequestThrottled = Shapes::StructureShape.new(name: 'RequestThrottled')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SendMessageBatchRequest = Shapes::StructureShape.new(name: 'SendMessageBatchRequest')
    SendMessageBatchRequestEntry = Shapes::StructureShape.new(name: 'SendMessageBatchRequestEntry')
    SendMessageBatchRequestEntryList = Shapes::ListShape.new(name: 'SendMessageBatchRequestEntryList', flattened: true)
    SendMessageBatchResult = Shapes::StructureShape.new(name: 'SendMessageBatchResult')
    SendMessageBatchResultEntry = Shapes::StructureShape.new(name: 'SendMessageBatchResultEntry')
    SendMessageBatchResultEntryList = Shapes::ListShape.new(name: 'SendMessageBatchResultEntryList', flattened: true)
    SendMessageRequest = Shapes::StructureShape.new(name: 'SendMessageRequest')
    SendMessageResult = Shapes::StructureShape.new(name: 'SendMessageResult')
    SetQueueAttributesRequest = Shapes::StructureShape.new(name: 'SetQueueAttributesRequest')
    StartMessageMoveTaskRequest = Shapes::StructureShape.new(name: 'StartMessageMoveTaskRequest')
    StartMessageMoveTaskResult = Shapes::StructureShape.new(name: 'StartMessageMoveTaskResult')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList', flattened: true)
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList', flattened: true)
    TagMap = Shapes::MapShape.new(name: 'TagMap', flattened: true)
    TagQueueRequest = Shapes::StructureShape.new(name: 'TagQueueRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Token = Shapes::StringShape.new(name: 'Token')
    TooManyEntriesInBatchRequest = Shapes::StructureShape.new(name: 'TooManyEntriesInBatchRequest')
    UnsupportedOperation = Shapes::StructureShape.new(name: 'UnsupportedOperation')
    UntagQueueRequest = Shapes::StructureShape.new(name: 'UntagQueueRequest')

    AWSAccountIdList.member = Shapes::ShapeRef.new(shape: String)

    ActionNameList.member = Shapes::ShapeRef.new(shape: String)

    AddPermissionRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    AddPermissionRequest.add_member(:label, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Label"))
    AddPermissionRequest.add_member(:aws_account_ids, Shapes::ShapeRef.new(shape: AWSAccountIdList, required: true, location_name: "AWSAccountIds"))
    AddPermissionRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionNameList, required: true, location_name: "Actions"))
    AddPermissionRequest.struct_class = Types::AddPermissionRequest

    AttributeNameList.member = Shapes::ShapeRef.new(shape: QueueAttributeName)

    BatchEntryIdsNotDistinct.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    BatchEntryIdsNotDistinct.struct_class = Types::BatchEntryIdsNotDistinct

    BatchRequestTooLong.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    BatchRequestTooLong.struct_class = Types::BatchRequestTooLong

    BatchResultErrorEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    BatchResultErrorEntry.add_member(:sender_fault, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "SenderFault"))
    BatchResultErrorEntry.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Code"))
    BatchResultErrorEntry.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BatchResultErrorEntry.struct_class = Types::BatchResultErrorEntry

    BatchResultErrorEntryList.member = Shapes::ShapeRef.new(shape: BatchResultErrorEntry)

    BinaryList.member = Shapes::ShapeRef.new(shape: Binary)

    CancelMessageMoveTaskRequest.add_member(:task_handle, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TaskHandle"))
    CancelMessageMoveTaskRequest.struct_class = Types::CancelMessageMoveTaskRequest

    CancelMessageMoveTaskResult.add_member(:approximate_number_of_messages_moved, Shapes::ShapeRef.new(shape: Long, location_name: "ApproximateNumberOfMessagesMoved"))
    CancelMessageMoveTaskResult.struct_class = Types::CancelMessageMoveTaskResult

    ChangeMessageVisibilityBatchRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    ChangeMessageVisibilityBatchRequest.add_member(:entries, Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchRequestEntryList, required: true, location_name: "Entries"))
    ChangeMessageVisibilityBatchRequest.struct_class = Types::ChangeMessageVisibilityBatchRequest

    ChangeMessageVisibilityBatchRequestEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    ChangeMessageVisibilityBatchRequestEntry.add_member(:receipt_handle, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReceiptHandle"))
    ChangeMessageVisibilityBatchRequestEntry.add_member(:visibility_timeout, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "VisibilityTimeout"))
    ChangeMessageVisibilityBatchRequestEntry.struct_class = Types::ChangeMessageVisibilityBatchRequestEntry

    ChangeMessageVisibilityBatchRequestEntryList.member = Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchRequestEntry)

    ChangeMessageVisibilityBatchResult.add_member(:successful, Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchResultEntryList, required: true, location_name: "Successful"))
    ChangeMessageVisibilityBatchResult.add_member(:failed, Shapes::ShapeRef.new(shape: BatchResultErrorEntryList, required: true, location_name: "Failed"))
    ChangeMessageVisibilityBatchResult.struct_class = Types::ChangeMessageVisibilityBatchResult

    ChangeMessageVisibilityBatchResultEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    ChangeMessageVisibilityBatchResultEntry.struct_class = Types::ChangeMessageVisibilityBatchResultEntry

    ChangeMessageVisibilityBatchResultEntryList.member = Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchResultEntry)

    ChangeMessageVisibilityRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    ChangeMessageVisibilityRequest.add_member(:receipt_handle, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReceiptHandle"))
    ChangeMessageVisibilityRequest.add_member(:visibility_timeout, Shapes::ShapeRef.new(shape: NullableInteger, required: true, location_name: "VisibilityTimeout"))
    ChangeMessageVisibilityRequest.struct_class = Types::ChangeMessageVisibilityRequest

    CreateQueueRequest.add_member(:queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueName"))
    CreateQueueRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: QueueAttributeMap, location_name: "Attributes"))
    CreateQueueRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateQueueRequest.struct_class = Types::CreateQueueRequest

    CreateQueueResult.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, location_name: "QueueUrl"))
    CreateQueueResult.struct_class = Types::CreateQueueResult

    DeleteMessageBatchRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    DeleteMessageBatchRequest.add_member(:entries, Shapes::ShapeRef.new(shape: DeleteMessageBatchRequestEntryList, required: true, location_name: "Entries"))
    DeleteMessageBatchRequest.struct_class = Types::DeleteMessageBatchRequest

    DeleteMessageBatchRequestEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    DeleteMessageBatchRequestEntry.add_member(:receipt_handle, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReceiptHandle"))
    DeleteMessageBatchRequestEntry.struct_class = Types::DeleteMessageBatchRequestEntry

    DeleteMessageBatchRequestEntryList.member = Shapes::ShapeRef.new(shape: DeleteMessageBatchRequestEntry)

    DeleteMessageBatchResult.add_member(:successful, Shapes::ShapeRef.new(shape: DeleteMessageBatchResultEntryList, required: true, location_name: "Successful"))
    DeleteMessageBatchResult.add_member(:failed, Shapes::ShapeRef.new(shape: BatchResultErrorEntryList, required: true, location_name: "Failed"))
    DeleteMessageBatchResult.struct_class = Types::DeleteMessageBatchResult

    DeleteMessageBatchResultEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    DeleteMessageBatchResultEntry.struct_class = Types::DeleteMessageBatchResultEntry

    DeleteMessageBatchResultEntryList.member = Shapes::ShapeRef.new(shape: DeleteMessageBatchResultEntry)

    DeleteMessageRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    DeleteMessageRequest.add_member(:receipt_handle, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReceiptHandle"))
    DeleteMessageRequest.struct_class = Types::DeleteMessageRequest

    DeleteQueueRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    DeleteQueueRequest.struct_class = Types::DeleteQueueRequest

    EmptyBatchRequest.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    EmptyBatchRequest.struct_class = Types::EmptyBatchRequest

    GetQueueAttributesRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    GetQueueAttributesRequest.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributeNames"))
    GetQueueAttributesRequest.struct_class = Types::GetQueueAttributesRequest

    GetQueueAttributesResult.add_member(:attributes, Shapes::ShapeRef.new(shape: QueueAttributeMap, location_name: "Attributes"))
    GetQueueAttributesResult.struct_class = Types::GetQueueAttributesResult

    GetQueueUrlRequest.add_member(:queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueName"))
    GetQueueUrlRequest.add_member(:queue_owner_aws_account_id, Shapes::ShapeRef.new(shape: String, location_name: "QueueOwnerAWSAccountId"))
    GetQueueUrlRequest.struct_class = Types::GetQueueUrlRequest

    GetQueueUrlResult.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, location_name: "QueueUrl"))
    GetQueueUrlResult.struct_class = Types::GetQueueUrlResult

    InvalidAddress.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidAddress.struct_class = Types::InvalidAddress

    InvalidAttributeName.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidAttributeName.struct_class = Types::InvalidAttributeName

    InvalidAttributeValue.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidAttributeValue.struct_class = Types::InvalidAttributeValue

    InvalidBatchEntryId.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidBatchEntryId.struct_class = Types::InvalidBatchEntryId

    InvalidIdFormat.struct_class = Types::InvalidIdFormat

    InvalidMessageContents.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidMessageContents.struct_class = Types::InvalidMessageContents

    InvalidSecurity.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidSecurity.struct_class = Types::InvalidSecurity

    KmsAccessDenied.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KmsAccessDenied.struct_class = Types::KmsAccessDenied

    KmsDisabled.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KmsDisabled.struct_class = Types::KmsDisabled

    KmsInvalidKeyUsage.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KmsInvalidKeyUsage.struct_class = Types::KmsInvalidKeyUsage

    KmsInvalidState.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KmsInvalidState.struct_class = Types::KmsInvalidState

    KmsNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KmsNotFound.struct_class = Types::KmsNotFound

    KmsOptInRequired.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KmsOptInRequired.struct_class = Types::KmsOptInRequired

    KmsThrottled.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KmsThrottled.struct_class = Types::KmsThrottled

    ListDeadLetterSourceQueuesRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    ListDeadLetterSourceQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDeadLetterSourceQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "MaxResults"))
    ListDeadLetterSourceQueuesRequest.struct_class = Types::ListDeadLetterSourceQueuesRequest

    ListDeadLetterSourceQueuesResult.add_member(:queue_urls, Shapes::ShapeRef.new(shape: QueueUrlList, required: true, location_name: "queueUrls"))
    ListDeadLetterSourceQueuesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDeadLetterSourceQueuesResult.struct_class = Types::ListDeadLetterSourceQueuesResult

    ListMessageMoveTasksRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceArn"))
    ListMessageMoveTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaxResults"))
    ListMessageMoveTasksRequest.struct_class = Types::ListMessageMoveTasksRequest

    ListMessageMoveTasksResult.add_member(:results, Shapes::ShapeRef.new(shape: ListMessageMoveTasksResultEntryList, location_name: "Results", metadata: {"flattened"=>true}))
    ListMessageMoveTasksResult.struct_class = Types::ListMessageMoveTasksResult

    ListMessageMoveTasksResultEntry.add_member(:task_handle, Shapes::ShapeRef.new(shape: String, location_name: "TaskHandle"))
    ListMessageMoveTasksResultEntry.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ListMessageMoveTasksResultEntry.add_member(:source_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceArn"))
    ListMessageMoveTasksResultEntry.add_member(:destination_arn, Shapes::ShapeRef.new(shape: String, location_name: "DestinationArn"))
    ListMessageMoveTasksResultEntry.add_member(:max_number_of_messages_per_second, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaxNumberOfMessagesPerSecond"))
    ListMessageMoveTasksResultEntry.add_member(:approximate_number_of_messages_moved, Shapes::ShapeRef.new(shape: Long, location_name: "ApproximateNumberOfMessagesMoved"))
    ListMessageMoveTasksResultEntry.add_member(:approximate_number_of_messages_to_move, Shapes::ShapeRef.new(shape: NullableLong, location_name: "ApproximateNumberOfMessagesToMove"))
    ListMessageMoveTasksResultEntry.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    ListMessageMoveTasksResultEntry.add_member(:started_timestamp, Shapes::ShapeRef.new(shape: Long, location_name: "StartedTimestamp"))
    ListMessageMoveTasksResultEntry.struct_class = Types::ListMessageMoveTasksResultEntry

    ListMessageMoveTasksResultEntryList.member = Shapes::ShapeRef.new(shape: ListMessageMoveTasksResultEntry)

    ListQueueTagsRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    ListQueueTagsRequest.struct_class = Types::ListQueueTagsRequest

    ListQueueTagsResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListQueueTagsResult.struct_class = Types::ListQueueTagsResult

    ListQueuesRequest.add_member(:queue_name_prefix, Shapes::ShapeRef.new(shape: String, location_name: "QueueNamePrefix"))
    ListQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "MaxResults"))
    ListQueuesRequest.struct_class = Types::ListQueuesRequest

    ListQueuesResult.add_member(:queue_urls, Shapes::ShapeRef.new(shape: QueueUrlList, location_name: "QueueUrls"))
    ListQueuesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListQueuesResult.struct_class = Types::ListQueuesResult

    Message.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageId"))
    Message.add_member(:receipt_handle, Shapes::ShapeRef.new(shape: String, location_name: "ReceiptHandle"))
    Message.add_member(:md5_of_body, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfBody"))
    Message.add_member(:body, Shapes::ShapeRef.new(shape: String, location_name: "Body"))
    Message.add_member(:attributes, Shapes::ShapeRef.new(shape: MessageSystemAttributeMap, location_name: "Attributes"))
    Message.add_member(:md5_of_message_attributes, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfMessageAttributes"))
    Message.add_member(:message_attributes, Shapes::ShapeRef.new(shape: MessageBodyAttributeMap, location_name: "MessageAttributes"))
    Message.struct_class = Types::Message

    MessageAttributeNameList.member = Shapes::ShapeRef.new(shape: MessageAttributeName)

    MessageAttributeValue.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "StringValue"))
    MessageAttributeValue.add_member(:binary_value, Shapes::ShapeRef.new(shape: Binary, location_name: "BinaryValue"))
    MessageAttributeValue.add_member(:string_list_values, Shapes::ShapeRef.new(shape: StringList, location_name: "StringListValues"))
    MessageAttributeValue.add_member(:binary_list_values, Shapes::ShapeRef.new(shape: BinaryList, location_name: "BinaryListValues"))
    MessageAttributeValue.add_member(:data_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataType"))
    MessageAttributeValue.struct_class = Types::MessageAttributeValue

    MessageBodyAttributeMap.key = Shapes::ShapeRef.new(shape: String)
    MessageBodyAttributeMap.value = Shapes::ShapeRef.new(shape: MessageAttributeValue)

    MessageBodySystemAttributeMap.key = Shapes::ShapeRef.new(shape: MessageSystemAttributeNameForSends)
    MessageBodySystemAttributeMap.value = Shapes::ShapeRef.new(shape: MessageSystemAttributeValue)

    MessageList.member = Shapes::ShapeRef.new(shape: Message)

    MessageNotInflight.struct_class = Types::MessageNotInflight

    MessageSystemAttributeList.member = Shapes::ShapeRef.new(shape: MessageSystemAttributeName)

    MessageSystemAttributeMap.key = Shapes::ShapeRef.new(shape: MessageSystemAttributeName)
    MessageSystemAttributeMap.value = Shapes::ShapeRef.new(shape: String)

    MessageSystemAttributeValue.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "StringValue"))
    MessageSystemAttributeValue.add_member(:binary_value, Shapes::ShapeRef.new(shape: Binary, location_name: "BinaryValue"))
    MessageSystemAttributeValue.add_member(:string_list_values, Shapes::ShapeRef.new(shape: StringList, location_name: "StringListValues", metadata: {"flattened"=>true}))
    MessageSystemAttributeValue.add_member(:binary_list_values, Shapes::ShapeRef.new(shape: BinaryList, location_name: "BinaryListValues", metadata: {"flattened"=>true}))
    MessageSystemAttributeValue.add_member(:data_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataType"))
    MessageSystemAttributeValue.struct_class = Types::MessageSystemAttributeValue

    OverLimit.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    OverLimit.struct_class = Types::OverLimit

    PurgeQueueInProgress.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    PurgeQueueInProgress.struct_class = Types::PurgeQueueInProgress

    PurgeQueueRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    PurgeQueueRequest.struct_class = Types::PurgeQueueRequest

    QueueAttributeMap.key = Shapes::ShapeRef.new(shape: QueueAttributeName)
    QueueAttributeMap.value = Shapes::ShapeRef.new(shape: String)

    QueueDeletedRecently.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    QueueDeletedRecently.struct_class = Types::QueueDeletedRecently

    QueueDoesNotExist.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    QueueDoesNotExist.struct_class = Types::QueueDoesNotExist

    QueueNameExists.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    QueueNameExists.struct_class = Types::QueueNameExists

    QueueUrlList.member = Shapes::ShapeRef.new(shape: String)

    ReceiptHandleIsInvalid.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ReceiptHandleIsInvalid.struct_class = Types::ReceiptHandleIsInvalid

    ReceiveMessageRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    ReceiveMessageRequest.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNameList, deprecated: true, location_name: "AttributeNames", metadata: {"deprecatedMessage"=>"AttributeNames has been replaced by MessageSystemAttributeNames"}))
    ReceiveMessageRequest.add_member(:message_system_attribute_names, Shapes::ShapeRef.new(shape: MessageSystemAttributeList, location_name: "MessageSystemAttributeNames"))
    ReceiveMessageRequest.add_member(:message_attribute_names, Shapes::ShapeRef.new(shape: MessageAttributeNameList, location_name: "MessageAttributeNames"))
    ReceiveMessageRequest.add_member(:max_number_of_messages, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaxNumberOfMessages"))
    ReceiveMessageRequest.add_member(:visibility_timeout, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "VisibilityTimeout"))
    ReceiveMessageRequest.add_member(:wait_time_seconds, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "WaitTimeSeconds"))
    ReceiveMessageRequest.add_member(:receive_request_attempt_id, Shapes::ShapeRef.new(shape: String, location_name: "ReceiveRequestAttemptId"))
    ReceiveMessageRequest.struct_class = Types::ReceiveMessageRequest

    ReceiveMessageResult.add_member(:messages, Shapes::ShapeRef.new(shape: MessageList, location_name: "Messages"))
    ReceiveMessageResult.struct_class = Types::ReceiveMessageResult

    RemovePermissionRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    RemovePermissionRequest.add_member(:label, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Label"))
    RemovePermissionRequest.struct_class = Types::RemovePermissionRequest

    RequestThrottled.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RequestThrottled.struct_class = Types::RequestThrottled

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SendMessageBatchRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    SendMessageBatchRequest.add_member(:entries, Shapes::ShapeRef.new(shape: SendMessageBatchRequestEntryList, required: true, location_name: "Entries"))
    SendMessageBatchRequest.struct_class = Types::SendMessageBatchRequest

    SendMessageBatchRequestEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    SendMessageBatchRequestEntry.add_member(:message_body, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MessageBody"))
    SendMessageBatchRequestEntry.add_member(:delay_seconds, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "DelaySeconds"))
    SendMessageBatchRequestEntry.add_member(:message_attributes, Shapes::ShapeRef.new(shape: MessageBodyAttributeMap, location_name: "MessageAttributes"))
    SendMessageBatchRequestEntry.add_member(:message_system_attributes, Shapes::ShapeRef.new(shape: MessageBodySystemAttributeMap, location_name: "MessageSystemAttributes"))
    SendMessageBatchRequestEntry.add_member(:message_deduplication_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageDeduplicationId"))
    SendMessageBatchRequestEntry.add_member(:message_group_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageGroupId"))
    SendMessageBatchRequestEntry.struct_class = Types::SendMessageBatchRequestEntry

    SendMessageBatchRequestEntryList.member = Shapes::ShapeRef.new(shape: SendMessageBatchRequestEntry)

    SendMessageBatchResult.add_member(:successful, Shapes::ShapeRef.new(shape: SendMessageBatchResultEntryList, required: true, location_name: "Successful"))
    SendMessageBatchResult.add_member(:failed, Shapes::ShapeRef.new(shape: BatchResultErrorEntryList, required: true, location_name: "Failed"))
    SendMessageBatchResult.struct_class = Types::SendMessageBatchResult

    SendMessageBatchResultEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    SendMessageBatchResultEntry.add_member(:message_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MessageId"))
    SendMessageBatchResultEntry.add_member(:md5_of_message_body, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MD5OfMessageBody"))
    SendMessageBatchResultEntry.add_member(:md5_of_message_attributes, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfMessageAttributes"))
    SendMessageBatchResultEntry.add_member(:md5_of_message_system_attributes, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfMessageSystemAttributes"))
    SendMessageBatchResultEntry.add_member(:sequence_number, Shapes::ShapeRef.new(shape: String, location_name: "SequenceNumber"))
    SendMessageBatchResultEntry.struct_class = Types::SendMessageBatchResultEntry

    SendMessageBatchResultEntryList.member = Shapes::ShapeRef.new(shape: SendMessageBatchResultEntry)

    SendMessageRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    SendMessageRequest.add_member(:message_body, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MessageBody"))
    SendMessageRequest.add_member(:delay_seconds, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "DelaySeconds"))
    SendMessageRequest.add_member(:message_attributes, Shapes::ShapeRef.new(shape: MessageBodyAttributeMap, location_name: "MessageAttributes"))
    SendMessageRequest.add_member(:message_system_attributes, Shapes::ShapeRef.new(shape: MessageBodySystemAttributeMap, location_name: "MessageSystemAttributes"))
    SendMessageRequest.add_member(:message_deduplication_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageDeduplicationId"))
    SendMessageRequest.add_member(:message_group_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageGroupId"))
    SendMessageRequest.struct_class = Types::SendMessageRequest

    SendMessageResult.add_member(:md5_of_message_body, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfMessageBody"))
    SendMessageResult.add_member(:md5_of_message_attributes, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfMessageAttributes"))
    SendMessageResult.add_member(:md5_of_message_system_attributes, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfMessageSystemAttributes"))
    SendMessageResult.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageId"))
    SendMessageResult.add_member(:sequence_number, Shapes::ShapeRef.new(shape: String, location_name: "SequenceNumber"))
    SendMessageResult.struct_class = Types::SendMessageResult

    SetQueueAttributesRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    SetQueueAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: QueueAttributeMap, required: true, location_name: "Attributes"))
    SetQueueAttributesRequest.struct_class = Types::SetQueueAttributesRequest

    StartMessageMoveTaskRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceArn"))
    StartMessageMoveTaskRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: String, location_name: "DestinationArn"))
    StartMessageMoveTaskRequest.add_member(:max_number_of_messages_per_second, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "MaxNumberOfMessagesPerSecond"))
    StartMessageMoveTaskRequest.struct_class = Types::StartMessageMoveTaskRequest

    StartMessageMoveTaskResult.add_member(:task_handle, Shapes::ShapeRef.new(shape: String, location_name: "TaskHandle"))
    StartMessageMoveTaskResult.struct_class = Types::StartMessageMoveTaskResult

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagQueueRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    TagQueueRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagQueueRequest.struct_class = Types::TagQueueRequest

    TooManyEntriesInBatchRequest.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    TooManyEntriesInBatchRequest.struct_class = Types::TooManyEntriesInBatchRequest

    UnsupportedOperation.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnsupportedOperation.struct_class = Types::UnsupportedOperation

    UntagQueueRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    UntagQueueRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagQueueRequest.struct_class = Types::UntagQueueRequest


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2012-11-05"

      api.metadata = {
        "apiVersion" => "2012-11-05",
        "auth" => ["aws.auth#sigv4"],
        "awsQueryCompatible" => {},
        "endpointPrefix" => "sqs",
        "errorPrefix" => "AWS.SimpleQueueService.",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "Amazon SQS",
        "serviceFullName" => "Amazon Simple Queue Service",
        "serviceId" => "SQS",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonSQS",
        "uid" => "sqs-2012-11-05",
      }

      api.add_operation(:add_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddPermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: OverLimit)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:cancel_message_move_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelMessageMoveTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelMessageMoveTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelMessageMoveTaskResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:change_message_visibility, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChangeMessageVisibility"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ChangeMessageVisibilityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: MessageNotInflight)
        o.errors << Shapes::ShapeRef.new(shape: ReceiptHandleIsInvalid)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
      end)

      api.add_operation(:change_message_visibility_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChangeMessageVisibilityBatch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchResult)
        o.errors << Shapes::ShapeRef.new(shape: TooManyEntriesInBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: EmptyBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: BatchEntryIdsNotDistinct)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBatchEntryId)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
      end)

      api.add_operation(:create_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQueueResult)
        o.errors << Shapes::ShapeRef.new(shape: QueueDeletedRecently)
        o.errors << Shapes::ShapeRef.new(shape: QueueNameExists)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttributeName)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttributeValue)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
      end)

      api.add_operation(:delete_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMessage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidIdFormat)
        o.errors << Shapes::ShapeRef.new(shape: ReceiptHandleIsInvalid)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
      end)

      api.add_operation(:delete_message_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMessageBatch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMessageBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMessageBatchResult)
        o.errors << Shapes::ShapeRef.new(shape: TooManyEntriesInBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: EmptyBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: BatchEntryIdsNotDistinct)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBatchEntryId)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
      end)

      api.add_operation(:delete_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
      end)

      api.add_operation(:get_queue_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueueAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueueAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueueAttributesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttributeName)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
      end)

      api.add_operation(:get_queue_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueueUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueueUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueueUrlResult)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:list_dead_letter_source_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeadLetterSourceQueues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDeadLetterSourceQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeadLetterSourceQueuesResult)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_message_move_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMessageMoveTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMessageMoveTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMessageMoveTasksResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:list_queue_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueueTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListQueueTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueueTagsResult)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
      end)

      api.add_operation(:list_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueuesResult)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:purge_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurgeQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PurgeQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: PurgeQueueInProgress)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:receive_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReceiveMessage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ReceiveMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: ReceiveMessageResult)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: OverLimit)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: KmsDisabled)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidState)
        o.errors << Shapes::ShapeRef.new(shape: KmsNotFound)
        o.errors << Shapes::ShapeRef.new(shape: KmsOptInRequired)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottled)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidKeyUsage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
      end)

      api.add_operation(:remove_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemovePermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemovePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:send_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendMessage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: SendMessageResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMessageContents)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: KmsDisabled)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidState)
        o.errors << Shapes::ShapeRef.new(shape: KmsNotFound)
        o.errors << Shapes::ShapeRef.new(shape: KmsOptInRequired)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottled)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidKeyUsage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
      end)

      api.add_operation(:send_message_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendMessageBatch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendMessageBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: SendMessageBatchResult)
        o.errors << Shapes::ShapeRef.new(shape: TooManyEntriesInBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: EmptyBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: BatchEntryIdsNotDistinct)
        o.errors << Shapes::ShapeRef.new(shape: BatchRequestTooLong)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBatchEntryId)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: KmsDisabled)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidState)
        o.errors << Shapes::ShapeRef.new(shape: KmsNotFound)
        o.errors << Shapes::ShapeRef.new(shape: KmsOptInRequired)
        o.errors << Shapes::ShapeRef.new(shape: KmsThrottled)
        o.errors << Shapes::ShapeRef.new(shape: KmsAccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: KmsInvalidKeyUsage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
      end)

      api.add_operation(:set_queue_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetQueueAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetQueueAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttributeName)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttributeValue)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o.errors << Shapes::ShapeRef.new(shape: OverLimit)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
      end)

      api.add_operation(:start_message_move_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMessageMoveTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMessageMoveTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMessageMoveTaskResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:tag_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:untag_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidAddress)
        o.errors << Shapes::ShapeRef.new(shape: RequestThrottled)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurity)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)
    end

  end
end
