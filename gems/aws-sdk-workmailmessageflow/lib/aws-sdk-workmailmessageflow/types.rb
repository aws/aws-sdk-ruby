# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkMailMessageFlow
  module Types

    # @note When making an API call, you may pass GetRawMessageContentRequest
    #   data as a hash:
    #
    #       {
    #         message_id: "messageIdType", # required
    #       }
    #
    # @!attribute [rw] message_id
    #   The identifier of the email message to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow-2019-05-01/GetRawMessageContentRequest AWS API Documentation
    #
    class GetRawMessageContentRequest < Struct.new(
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_content
    #   The raw content of the email message, in MIME format.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow-2019-05-01/GetRawMessageContentResponse AWS API Documentation
    #
    class GetRawMessageContentResponse < Struct.new(
      :message_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested email message is not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow-2019-05-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
