# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Connect
  module Types

    # @note When making an API call, you may pass StartOutboundVoiceContactRequest
    #   data as a hash:
    #
    #       {
    #         destination_phone_number: "PhoneNumber", # required
    #         contact_flow_id: "ContactFlowId", # required
    #         instance_id: "InstanceId", # required
    #         client_token: "ClientToken",
    #         source_phone_number: "PhoneNumber",
    #         queue_id: "QueueId",
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #       }
    #
    # @!attribute [rw] destination_phone_number
    #   The phone number, in E.164 format, of the customer to call with the
    #   outbound contact.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier for the contact flow to execute for the outbound
    #   call. This is a GUID value only. Amazon Resource Name (ARN) values
    #   are not supported.
    #
    #   To find the `ContactFlowId`, open the contact flow to use in the
    #   Amazon Connect contact flow designer. The ID for the contact flow is
    #   displayed in the address bar as part of the URL. For example, an
    #   address displayed when you open a contact flow is similar to the
    #   following:
    #   `https://myconnectinstance.awsapps.com/connect/contact-flows/edit?id=arn:aws:connect:us-east-1:361814831152:instance/2fb42df9-78a2-4b99-b484-f5cf80dc300c/contact-flow/b0b8f2dd-ed1b-4c44-af36-ce189a178181
    #   `. At the end of the URL, you see
    #   `contact-flow/b0b8f2dd-ed1b-4c44-af36-ce189a178181`. The
    #   `ContactFlowID` for this contact flow is `
    #   b0b8f2dd-ed1b-4c44-af36-ce189a178181 `. Make sure to include only
    #   the GUID after the "contact-flow/" in your requests.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the
    #   `InstanceId` value for your Amazon Connect instance, open the
    #   [Amazon Connect console][1]. Select the instance alias of the
    #   instance and view the instance ID in the **Overview** section. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after "instance/", such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/connect/
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. The token is valid for 7 days after
    #   creation. If a contact is already started, the contact ID is
    #   returned. If the contact is disconnected, a new contact is started.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] source_phone_number
    #   The phone number, in E.164 format, associated with your Amazon
    #   Connect instance to use to place the outbound call.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue to which to add the call. If you specify a queue, the
    #   phone displayed for caller ID is the phone number defined for the
    #   queue. If you do not specify a queue, the queue used is the queue
    #   defined in the contact flow specified by `ContactFlowId`.
    #
    #   To find the `QueueId`, open the queue to use in the Amazon Connect
    #   queue editor. The ID for the queue is displayed in the address bar
    #   as part of the URL. For example, the `QueueId` value is the set of
    #   characters at the end of the URL, after "queue/", such as
    #   `aeg40574-2d01-51c3-73d6-bf8624d2168c`.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Specify a custom key-value pair using an attribute map. The
    #   attributes are standard Amazon Connect attributes, and can be
    #   accessed in contact flows just like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs.
    #   Attribute keys can include only alphanumeric, dash, and underscore
    #   characters.
    #
    #   For example, to play a greeting when the customer answers the call,
    #   you can pass the customer name in attributes similar to the
    #   following:
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundVoiceContactRequest AWS API Documentation
    #
    class StartOutboundVoiceContactRequest < Struct.new(
      :destination_phone_number,
      :contact_flow_id,
      :instance_id,
      :client_token,
      :source_phone_number,
      :queue_id,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] contact_id
    #   The unique identifier of this contact within your Amazon Connect
    #   instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundVoiceContactResponse AWS API Documentation
    #
    class StartOutboundVoiceContactResponse < Struct.new(
      :contact_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "ContactId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] contact_id
    #   The unique identifier of the contact to end. This is the `ContactId`
    #   value returned from the `StartOutboundVoiceContact` operation.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance in which the contact
    #   is active.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactRequest AWS API Documentation
    #
    class StopContactRequest < Struct.new(
      :contact_id,
      :instance_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactResponse AWS API Documentation
    #
    class StopContactResponse < Aws::EmptyStructure; end

  end
end
