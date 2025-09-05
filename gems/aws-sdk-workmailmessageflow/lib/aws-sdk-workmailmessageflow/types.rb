# frozen_string_literal: true

# This is generated code!

module Aws::WorkMailMessageFlow
  # This module contains the types returned by client operations.
  module Types

    # @!attribute message_id
    #   <p>The identifier of the email message to retrieve.</p>
    #   @return [String]
    class GetRawMessageContentRequest < Struct.new(
      :message_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_content
    #   <p>The raw content of the email message, in MIME format.</p>
    #   @return [String]
    class GetRawMessageContentResponse < Struct.new(
      :message_content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>WorkMail could not access the updated email content. Possible reasons:</p>
    #          <ul>
    #             <li>
    #                <p>You made the request in a region other than your S3 bucket region.</p>
    #             </li>
    #             <li>
    #                <p>The <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-owner-condition.html">S3 bucket owner</a> is not the 
    #         same as the calling AWS account.</p>
    #             </li>
    #             <li>
    #                <p>You have an incomplete or missing S3 bucket policy. For more information about policies, see 
    #         <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html">
    #           Updating message content with AWS Lambda
    #         </a> in the <i>WorkMail Administrator
    #           Guide</i>.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    class InvalidContentLocation < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested email is not eligible for update. This is usually the case for a redirected email.</p>
    # @!attribute message
    #   @return [String]
    class MessageFrozen < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested email could not be updated due to an error in the MIME content. Check the error message for more information about 
    #       what caused the error.</p>
    # @!attribute message
    #   @return [String]
    class MessageRejected < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The identifier of the email message being updated.</p>
    #   @return [String]
    # @!attribute content
    #   <p>Describes the raw message content of the updated email message.</p>
    #   @return [Types::RawMessageContent]
    class PutRawMessageContentRequest < Struct.new(
      :message_id,
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutRawMessageContentResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the MIME content of the updated email message as an S3 object. All MIME content must meet the following criteria:</p>
    #          <ul>
    #             <li>
    #                <p>Each part of a multipart MIME message must be formatted properly.</p>
    #             </li>
    #             <li>
    #                <p>Attachments must be of a content type that Amazon SES supports. For more information, see 
    #         <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types-appendix.html">Unsupported Attachment Types</a>.</p>
    #             </li>
    #             <li>
    #                <p>If any of the MIME parts in a message contain content that is outside of the 7-bit ASCII character range, we recommend 
    #         encoding that content.</p>
    #             </li>
    #             <li>
    #                <p>Per <a href="https://tools.ietf.org/html/rfc5321#section-4.5.3.1.6">RFC 5321</a>, the maximum length of each line of 
    #         text, including the <CRLF>, must not exceed 1,000 characters.</p>
    #             </li>
    #             <li>
    #                <p>The message must contain all the required header fields. Check the returned error message for more information.</p>
    #             </li>
    #             <li>
    #                <p>The value of immutable headers must remain unchanged. Check the returned error message for more information.</p>
    #             </li>
    #             <li>
    #                <p>Certain unique headers can only appear once. Check the returned error message for more information.</p>
    #             </li>
    #          </ul>
    # @!attribute s3_reference
    #   <p>The S3 reference of an email message.</p>
    #   @return [Types::S3Reference]
    class RawMessageContent < Struct.new(
      :s3_reference,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested email message is not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon S3 object representing the updated message content, in MIME format.</p>
    #          <note>
    #             <p>The region for the S3 bucket containing the S3 object must match the region used for WorkMail operations. Also, for WorkMail to process 
    #       an S3 object, it must have permission to access that object. For more information, see 
    #       <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html">
    #         Updating message content with AWS Lambda</a>.</p>
    #          </note>
    # @!attribute bucket
    #   <p>The S3 bucket name.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The S3 key object name.</p>
    #   @return [String]
    # @!attribute object_version
    #   <p>If you enable versioning for the bucket, you can specify the object version.</p>
    #   @return [String]
    class S3Reference < Struct.new(
      :bucket,
      :key,
      :object_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
