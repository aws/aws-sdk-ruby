# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkMailMessageFlow
  module Types

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

    # WorkMail could not access the updated email content. Possible reasons:
    #
    # * You made the request in a region other than your S3 bucket region.
    #
    # * The [S3 bucket owner][1] is not the same as the calling AWS account.
    #
    # * You have an incomplete or missing S3 bucket policy. For more
    #   information about policies, see [ Updating message content with AWS
    #   Lambda ][2] in the *WorkMail Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-owner-condition.html
    # [2]: https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow-2019-05-01/InvalidContentLocation AWS API Documentation
    #
    class InvalidContentLocation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested email is not eligible for update. This is usually the
    # case for a redirected email.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow-2019-05-01/MessageFrozen AWS API Documentation
    #
    class MessageFrozen < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested email could not be updated due to an error in the MIME
    # content. Check the error message for more information about what
    # caused the error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow-2019-05-01/MessageRejected AWS API Documentation
    #
    class MessageRejected < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_id
    #   The identifier of the email message being updated.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Describes the raw message content of the updated email message.
    #   @return [Types::RawMessageContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow-2019-05-01/PutRawMessageContentRequest AWS API Documentation
    #
    class PutRawMessageContentRequest < Struct.new(
      :message_id,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow-2019-05-01/PutRawMessageContentResponse AWS API Documentation
    #
    class PutRawMessageContentResponse < Aws::EmptyStructure; end

    # Provides the MIME content of the updated email message as an S3
    # object. All MIME content must meet the following criteria:
    #
    # * Each part of a multipart MIME message must be formatted properly.
    #
    # * Attachments must be of a content type that Amazon SES supports. For
    #   more information, see [Unsupported Attachment Types][1].
    #
    # * If any of the MIME parts in a message contain content that is
    #   outside of the 7-bit ASCII character range, we recommend encoding
    #   that content.
    #
    # * Per [RFC 5321][2], the maximum length of each line of text,
    #   including the &lt;CRLF&gt;, must not exceed 1,000 characters.
    #
    # * The message must contain all the required header fields. Check the
    #   returned error message for more information.
    #
    # * The value of immutable headers must remain unchanged. Check the
    #   returned error message for more information.
    #
    # * Certain unique headers can only appear once. Check the returned
    #   error message for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types-appendix.html
    # [2]: https://tools.ietf.org/html/rfc5321#section-4.5.3.1.6
    #
    # @!attribute [rw] s3_reference
    #   The S3 reference of an email message.
    #   @return [Types::S3Reference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow-2019-05-01/RawMessageContent AWS API Documentation
    #
    class RawMessageContent < Struct.new(
      :s3_reference)
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

    # Amazon S3 object representing the updated message content, in MIME
    # format.
    #
    # <note markdown="1"> The region for the S3 bucket containing the S3 object must match the
    # region used for WorkMail operations. Also, for WorkMail to process an
    # S3 object, it must have permission to access that object. For more
    # information, see [ Updating message content with AWS Lambda][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html
    #
    # @!attribute [rw] bucket
    #   The S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The S3 key object name.
    #   @return [String]
    #
    # @!attribute [rw] object_version
    #   If you enable versioning for the bucket, you can specify the object
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow-2019-05-01/S3Reference AWS API Documentation
    #
    class S3Reference < Struct.new(
      :bucket,
      :key,
      :object_version)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
