# frozen_string_literal: true

# This is generated code!

module Aws::IoTFleetHub
  # This module contains the types returned by client operations.
  module Types

    # <p>A summary of information about a Fleet Hub for IoT Device Management web application.</p>
    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the web application.</p>
    #   @return [String]
    # @!attribute application_description
    #   <p>An optional description of the web application.</p>
    #   @return [String]
    # @!attribute application_url
    #   <p>The URL of the web application.</p>
    #   @return [String]
    # @!attribute application_creation_date
    #   <p>The date (in Unix epoch time) when the web application was created.</p>
    #   @return [Integer]
    # @!attribute application_last_update_date
    #   <p>The date (in Unix epoch time) when the web application was last updated.</p>
    #   @return [Integer]
    # @!attribute application_state
    #   <p>The current state of the web application.</p>
    #   @return [String]
    class ApplicationSummary < Struct.new(
      nil,
      :application_id,
      :application_name,
      :application_description,
      :application_url,
      :application_creation_date,
      :application_last_update_date,
      :application_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:application_creation_date] = 0 unless options.key?(:application_creation_date)
        options[:application_last_update_date] = 0 unless options.key?(:application_last_update_date)
        super
      end
    end

    # <p>The request conflicts with the current state of the resource.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_name
    #   <p>The name of the web application.</p>
    #   @return [String]
    # @!attribute application_description
    #   <p>An optional description of the web application.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the role that the web application assumes when it interacts with Amazon Web Services IoT Core.</p>
    #            <note>
    #               <p>The name of the role must be in the form <code>AWSIotFleetHub_<i>random_string</i>
    #                  </code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that you can use to manage the web application resource.</p>
    #   @return [Hash<String, String>]
    class CreateApplicationRequest < Struct.new(
      nil,
      :application_name,
      :application_description,
      :client_token,
      :role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The ARN of the web application.</p>
    #   @return [String]
    class CreateApplicationResponse < Struct.new(
      nil,
      :application_id,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteApplicationRequest < Struct.new(
      nil,
      :application_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #   @return [String]
    class DescribeApplicationRequest < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The ARN of the web application.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the web application.</p>
    #   @return [String]
    # @!attribute application_description
    #   <p>An optional description of the web application.</p>
    #   @return [String]
    # @!attribute application_url
    #   <p>The URL of the web application.</p>
    #   @return [String]
    # @!attribute application_state
    #   <p>The current state of the web application.</p>
    #   @return [String]
    # @!attribute application_creation_date
    #   <p>The date (in Unix epoch time) when the application was created.</p>
    #   @return [Integer]
    # @!attribute application_last_update_date
    #   <p>The date (in Unix epoch time) when the application was last updated.</p>
    #   @return [Integer]
    # @!attribute role_arn
    #   <p>The ARN of the role that the web application assumes when it interacts with Amazon Web Services IoT Core.</p>
    #   @return [String]
    # @!attribute sso_client_id
    #   <p>The Id of the single sign-on client that you use to authenticate and authorize users on the web application.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message that explains any failures included in the <code>applicationState</code> response field. This message 
    #       explains failures in the <code>CreateApplication</code> and <code>DeleteApplication</code> actions.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key/value pairs that you can use to manage the web application resource.</p>
    #   @return [Hash<String, String>]
    class DescribeApplicationResponse < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:application_creation_date] = 0 unless options.key?(:application_creation_date)
        options[:application_last_update_date] = 0 unless options.key?(:application_last_update_date)
        super
      end
    end

    # <p>An unexpected error has occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalFailureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A limit has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token used to get the next set of results.</p>
    #   @return [String]
    class ListApplicationsRequest < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_summaries
    #   <p>An array of objects that provide summaries of information about the web applications in the list.</p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>A token used to get the next set of results.</p>
    #   @return [String]
    class ListApplicationsResponse < Struct.new(
      nil,
      :application_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags assigned to the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The new or modified tags for the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rate exceeds the limit.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of the keys of the tags to be removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the web application.</p>
    #   @return [String]
    # @!attribute application_description
    #   <p>An optional description of the web application.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class UpdateApplicationRequest < Struct.new(
      nil,
      :application_id,
      :application_name,
      :application_description,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateApplicationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
