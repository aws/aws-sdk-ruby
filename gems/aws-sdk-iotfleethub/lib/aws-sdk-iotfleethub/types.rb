# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTFleetHub
  module Types

    # A summary of information about a AWS IoT Device Management web
    # application.
    #
    # <note markdown="1"> Fleet Hub for AWS IoT Device Management is in public preview and is
    # subject to change.
    #
    #  </note>
    #
    # @!attribute [rw] application_id
    #   The unique Id of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The name of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_description
    #   An optional description of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_url
    #   The URL of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_creation_date
    #   The date (in Unix epoch time) when the web application was created.
    #   @return [Integer]
    #
    # @!attribute [rw] application_last_update_date
    #   The date (in Unix epoch time) when the web application was last
    #   updated.
    #   @return [Integer]
    #
    # @!attribute [rw] application_state
    #   The current state of the web application.
    #   @return [String]
    #
    class ApplicationSummary < Struct.new(
      :application_id,
      :application_name,
      :application_description,
      :application_url,
      :application_creation_date,
      :application_last_update_date,
      :application_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_description
    #   An optional description of the web application.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that the web application assumes when it
    #   interacts with AWS IoT Core.
    #
    #   <note markdown="1"> The name of the role must be in the form
    #   `AWSIotFleetHub_random_string `.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that you can use to manage the web
    #   application resource.
    #   @return [Hash<String,String>]
    #
    class CreateApplicationRequest < Struct.new(
      :application_name,
      :application_description,
      :client_token,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique Id of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   The ARN of the web application.
    #   @return [String]
    #
    class CreateApplicationResponse < Struct.new(
      :application_id,
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique Id of the web application.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class DeleteApplicationRequest < Struct.new(
      :application_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The unique Id of the web application.
    #   @return [String]
    #
    class DescribeApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique Id of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   The ARN of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The name of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_description
    #   An optional description of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_url
    #   The URL of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_state
    #   The current state of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_creation_date
    #   The date (in Unix epoch time) when the application was created.
    #   @return [Integer]
    #
    # @!attribute [rw] application_last_update_date
    #   The date (in Unix epoch time) when the application was last updated.
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that the web application assumes when it
    #   interacts with AWS IoT Core.
    #   @return [String]
    #
    # @!attribute [rw] sso_client_id
    #   The Id of the single sign-on client that you use to authenticate and
    #   authorize users on the web application.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message indicating why the `DescribeApplication` API failed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key/value pairs that you can use to manage the web
    #   application resource.
    #   @return [Hash<String,String>]
    #
    class DescribeApplicationResponse < Struct.new(
      :application_id,
      :application_arn,
      :application_name,
      :application_description,
      :application_url,
      :application_state,
      :application_creation_date,
      :application_last_update_date,
      :role_arn,
      :sso_client_id,
      :error_message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error has occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A limit has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token used to get the next set of results.
    #   @return [String]
    #
    class ListApplicationsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_summaries
    #   An array of objects that provide summaries of information about the
    #   web applications in the list.
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used to get the next set of results.
    #   @return [String]
    #
    class ListApplicationsResponse < Struct.new(
      :application_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags assigned to the resource.
    #   @return [Hash<String,String>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The new or modified tags for the resource.
    #   @return [Hash<String,String>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # The rate exceeds the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of the keys of the tags to be removed from the resource.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The unique Id of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The name of the web application.
    #   @return [String]
    #
    # @!attribute [rw] application_description
    #   An optional description of the web application.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique case-sensitive identifier that you can provide to ensure
    #   the idempotency of the request. Don't reuse this client token if a
    #   new idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class UpdateApplicationRequest < Struct.new(
      :application_id,
      :application_name,
      :application_description,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateApplicationResponse < Aws::EmptyStructure; end

  end
end
