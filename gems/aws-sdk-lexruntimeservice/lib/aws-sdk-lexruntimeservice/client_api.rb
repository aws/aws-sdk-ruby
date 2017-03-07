# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LexRuntimeService
  # @api private
  module ClientApi

    include Seahorse::Model

    BadGatewayException = Shapes::StructureShape.new(name: 'BadGatewayException')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BotAlias = Shapes::StringShape.new(name: 'BotAlias')
    BotName = Shapes::StringShape.new(name: 'BotName')
    Button = Shapes::StructureShape.new(name: 'Button')
    ButtonTextStringWithLength = Shapes::StringShape.new(name: 'ButtonTextStringWithLength')
    ButtonValueStringWithLength = Shapes::StringShape.new(name: 'ButtonValueStringWithLength')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    DependencyFailedException = Shapes::StructureShape.new(name: 'DependencyFailedException')
    DialogState = Shapes::StringShape.new(name: 'DialogState')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GenericAttachment = Shapes::StructureShape.new(name: 'GenericAttachment')
    IntentName = Shapes::StringShape.new(name: 'IntentName')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LoopDetectedException = Shapes::StructureShape.new(name: 'LoopDetectedException')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PostTextRequest = Shapes::StructureShape.new(name: 'PostTextRequest')
    PostTextResponse = Shapes::StructureShape.new(name: 'PostTextResponse')
    ResponseCard = Shapes::StructureShape.new(name: 'ResponseCard')
    String = Shapes::StringShape.new(name: 'String')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    StringUrlWithLength = Shapes::StringShape.new(name: 'StringUrlWithLength')
    StringWithLength = Shapes::StringShape.new(name: 'StringWithLength')
    Text = Shapes::StringShape.new(name: 'Text')
    UserId = Shapes::StringShape.new(name: 'UserId')
    genericAttachmentList = Shapes::ListShape.new(name: 'genericAttachmentList')
    listOfButtons = Shapes::ListShape.new(name: 'listOfButtons')

    Button.add_member(:text, Shapes::ShapeRef.new(shape: ButtonTextStringWithLength, required: true, location_name: "text"))
    Button.add_member(:value, Shapes::ShapeRef.new(shape: ButtonValueStringWithLength, required: true, location_name: "value"))
    Button.struct_class = Types::Button

    GenericAttachment.add_member(:title, Shapes::ShapeRef.new(shape: StringWithLength, location_name: "title"))
    GenericAttachment.add_member(:sub_title, Shapes::ShapeRef.new(shape: StringWithLength, location_name: "subTitle"))
    GenericAttachment.add_member(:attachment_link_url, Shapes::ShapeRef.new(shape: StringUrlWithLength, location_name: "attachmentLinkUrl"))
    GenericAttachment.add_member(:image_url, Shapes::ShapeRef.new(shape: StringUrlWithLength, location_name: "imageUrl"))
    GenericAttachment.add_member(:buttons, Shapes::ShapeRef.new(shape: listOfButtons, location_name: "buttons"))
    GenericAttachment.struct_class = Types::GenericAttachment

    PostTextRequest.add_member(:bot_name, Shapes::ShapeRef.new(shape: BotName, required: true, location: "uri", location_name: "botName"))
    PostTextRequest.add_member(:bot_alias, Shapes::ShapeRef.new(shape: BotAlias, required: true, location: "uri", location_name: "botAlias"))
    PostTextRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    PostTextRequest.add_member(:session_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "sessionAttributes"))
    PostTextRequest.add_member(:input_text, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "inputText"))
    PostTextRequest.struct_class = Types::PostTextRequest

    PostTextResponse.add_member(:intent_name, Shapes::ShapeRef.new(shape: IntentName, location_name: "intentName"))
    PostTextResponse.add_member(:slots, Shapes::ShapeRef.new(shape: StringMap, location_name: "slots"))
    PostTextResponse.add_member(:session_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "sessionAttributes"))
    PostTextResponse.add_member(:message, Shapes::ShapeRef.new(shape: Text, location_name: "message"))
    PostTextResponse.add_member(:dialog_state, Shapes::ShapeRef.new(shape: DialogState, location_name: "dialogState"))
    PostTextResponse.add_member(:slot_to_elicit, Shapes::ShapeRef.new(shape: String, location_name: "slotToElicit"))
    PostTextResponse.add_member(:response_card, Shapes::ShapeRef.new(shape: ResponseCard, location_name: "responseCard"))
    PostTextResponse.struct_class = Types::PostTextResponse

    ResponseCard.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    ResponseCard.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "contentType"))
    ResponseCard.add_member(:generic_attachments, Shapes::ShapeRef.new(shape: genericAttachmentList, location_name: "genericAttachments"))
    ResponseCard.struct_class = Types::ResponseCard

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    genericAttachmentList.member = Shapes::ShapeRef.new(shape: GenericAttachment)

    listOfButtons.member = Shapes::ShapeRef.new(shape: Button)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-11-28"

      api.metadata = {
        "endpointPrefix" => "runtime.lex",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Lex Runtime Service",
        "signatureVersion" => "v4",
        "signingName" => "lex",
      }

      api.add_operation(:post_text, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostText"
        o.http_method = "POST"
        o.http_request_uri = "/bot/{botName}/alias/{botAlias}/user/{userId}/text"
        o.input = Shapes::ShapeRef.new(shape: PostTextRequest)
        o.output = Shapes::ShapeRef.new(shape: PostTextResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: LoopDetectedException)
      end)
    end

  end
end
