# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKMeetings
  # This module contains the types returned by client operations.
  module Types

    # <p>An Amazon Chime SDK meeting attendee. Includes a unique 
    #            <code>AttendeeId</code> and <code>JoinToken</code>. The 
    #            <code>JoinToken</code>
    #            allows a client to authenticate and join as the specified attendee. The 
    #            <code>JoinToken</code>
    #            expires when the meeting ends, or when 
    #            <a>DeleteAttendee</a>
    #            is called. After that, the attendee is unable to join the meeting.
    #        </p>
    #          <p>We recommend securely transferring each <code>JoinToken</code> from your server application
    #            to the client so that no other client has access to the token except for the one
    #            authorized to represent the attendee.</p>
    # @!attribute external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #            <p>Pattern: <code>[-_&@+=,(){}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*</code>
    #            </p>
    #            <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. 
    #               Case insensitive.</p>
    #   @return [String]
    # @!attribute attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #   @return [String]
    # @!attribute join_token
    #   <p>The join token used by the Amazon Chime SDK attendee.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>The capabilities assigned to an attendee: audio, video, or content.</p>
    #            <note>
    #               <p>You use the capabilities with a set of values that control what the capabilities can do, such as <code>SendReceive</code> data. For more information about those values, see 
    #               .</p>
    #            </note>
    #            <p>When using capabilities, be aware of these corner cases:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify <code>MeetingFeatures:Video:MaxResolution:None</code> when you create a meeting, all API requests 
    #                       that include <code>SendReceive</code>, <code>Send</code>, or <code>Receive</code> for <code>AttendeeCapabilities:Video</code> will be rejected with <code>ValidationError 400</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>MeetingFeatures:Content:MaxResolution:None</code> when you create a meeting, all API requests that include <code>SendReceive</code>, <code>Send</code>, or 
    #                       <code>Receive</code> for <code>AttendeeCapabilities:Content</code> will be rejected with <code>ValidationError 400</code>.</p>
    #               </li>
    #               <li>
    #                  <p>You can't set <code>content</code> capabilities to <code>SendReceive</code> or <code>Receive</code> unless you also set <code>video</code> capabilities to <code>SendReceive</code> 
    #                       or <code>Receive</code>. If you don't set the <code>video</code> capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your <code>video</code> capability 
    #                       to receive and you set your <code>content</code> capability to not receive.</p>
    #               </li>
    #               <li>
    #                  <p>When you change an <code>audio</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                       and if the attendee left their microphone unmuted, audio will flow from the attendee to the other meeting participants.</p>
    #               </li>
    #               <li>
    #                  <p>When you change a <code>video</code> or <code>content</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                       and if the attendee turned on their video or content streams, remote attendees can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.</p>
    #               </li>
    #            </ul>
    #   @return [Types::AttendeeCapabilities]
    class Attendee < Struct.new(
      :external_user_id,
      :attendee_id,
      :join_token,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The media capabilities of an attendee: audio, video, or content.</p>
    #          <note>
    #             <p>You use the capabilities with a set of values that control what the capabilities can do, such as <code>SendReceive</code> data. For more information, refer to 
    #              and .</p>
    #          </note>
    #          <p>When using capabilities, be aware of these corner cases:</p>
    #          <ul>
    #             <li>
    #                <p>If you specify <code>MeetingFeatures:Video:MaxResolution:None</code> when you create a meeting, all API requests 
    #                     that include <code>SendReceive</code>, <code>Send</code>, or <code>Receive</code> for <code>AttendeeCapabilities:Video</code> will be rejected with <code>ValidationError 400</code>.</p>
    #             </li>
    #             <li>
    #                <p>If you specify <code>MeetingFeatures:Content:MaxResolution:None</code> when you create a meeting, all API requests that include <code>SendReceive</code>, <code>Send</code>, or 
    #                     <code>Receive</code> for <code>AttendeeCapabilities:Content</code> will be rejected with <code>ValidationError 400</code>.</p>
    #             </li>
    #             <li>
    #                <p>You can't set <code>content</code> capabilities to <code>SendReceive</code> or <code>Receive</code> unless you also set <code>video</code> capabilities to <code>SendReceive</code> 
    #                     or <code>Receive</code>. If you don't set the <code>video</code> capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your 
    #                     <code>video</code> capability to receive and you set your <code>content</code> capability to not receive.</p>
    #             </li>
    #             <li>
    #                <p>When you change an <code>audio</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                     and an attendee unmutes their microphone, audio flows from the attendee to the other meeting participants.</p>
    #             </li>
    #             <li>
    #                <p>When you change a <code>video</code> or <code>content</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                     and the attendee turns on their video or content streams, remote attendees can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.</p>
    #             </li>
    #          </ul>
    # @!attribute audio
    #   <p>The audio capability assigned to an attendee.</p>
    #   @return [String]
    # @!attribute video
    #   <p>The video capability assigned to an attendee.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content capability assigned to an attendee.</p>
    #   @return [String]
    class AttendeeCapabilities < Struct.new(
      :audio,
      :video,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lists the maximum number of attendees allowed into the meeting.</p>
    #          <note>
    #             <p>If you specify <code>FHD</code> for <code>MeetingFeatures:Video:MaxResolution</code>, or if you specify  
    #            <code>UHD</code> for <code>MeetingFeatures:Content:MaxResolution</code>, the maximum number of attendees changes from the default of <code>250</code> to <code>25</code>.</p>
    #          </note>
    # @!attribute max_count
    #   <p>The maximum number of attendees allowed into the meeting.</p>
    #   @return [Integer]
    class AttendeeFeatures < Struct.new(
      :max_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains one or more attendee IDs.</p>
    # @!attribute attendee_id
    #   <p>A list of one or more attendee IDs.</p>
    #   @return [String]
    class AttendeeIdItem < Struct.new(
      :attendee_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An optional category of meeting features that contains audio-specific configurations, such as operating parameters for Amazon Voice Focus. </p>
    # @!attribute echo_reduction
    #   <p>Makes echo reduction available to clients who connect to the meeting.</p>
    #   @return [String]
    class AudioFeatures < Struct.new(
      :echo_reduction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input parameters don't match the service's restrictions.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #   @return [String]
    class BadRequestException < Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK ID of the meeting to which you're adding attendees.</p>
    #   @return [String]
    # @!attribute attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    #   @return [Array<Types::CreateAttendeeRequestItem>]
    class BatchCreateAttendeeRequest < Struct.new(
      :meeting_id,
      :attendees,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    #   @return [Array<Types::Attendee>]
    # @!attribute errors
    #   <p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::CreateAttendeeError>]
    class BatchCreateAttendeeResponse < Struct.new(
      :attendees,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The ID of the meeting associated with the update request.</p>
    #   @return [String]
    # @!attribute excluded_attendee_ids
    #   <p>The <code>AttendeeIDs</code> that you want to exclude from one or more capabilities.</p>
    #   @return [Array<Types::AttendeeIdItem>]
    # @!attribute capabilities
    #   <p>The capabilities (<code>audio</code>, <code>video</code>, or <code>content</code>) that you want to update.</p>
    #   @return [Types::AttendeeCapabilities]
    class BatchUpdateAttendeeCapabilitiesExceptRequest < Struct.new(
      :meeting_id,
      :excluded_attendee_ids,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Multiple instances of the same request have been made simultaneously.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request involved in the conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lists the content (screen share) features for the meeting. Applies to all attendees.</p>
    #          <note>
    #             <p>If you specify <code>MeetingFeatures:Content:MaxResolution:None</code> when you create a meeting, all API requests that include <code>SendReceive</code>, <code>Send</code>, or 
    #                 <code>Receive</code> for <code>AttendeeCapabilities:Content</code> will be rejected with <code>ValidationError 400</code>.</p>
    #          </note>
    # @!attribute max_resolution
    #   <p>The maximum resolution for the meeting content.</p>
    #            <note>
    #               <p>Defaults to <code>FHD</code>. To use <code>UHD</code>, you must also provide a <code>MeetingFeatures:Attendee:MaxCount</code>
    #            value and override the default size limit of 250 attendees.</p>
    #            </note>
    #   @return [String]
    class ContentFeatures < Struct.new(
      :max_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of errors returned when errors are encountered during the BatchCreateAttendee and CreateAttendee actions. This includes external user IDs, error codes, and error messages.</p>
    # @!attribute external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #            <p>Pattern: <code>[-_&@+=,(){}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*</code>
    #            </p>
    #            <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. 
    #               Case insensitive.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class CreateAttendeeError < Struct.new(
      :external_user_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The unique ID of the meeting.</p>
    #   @return [String]
    # @!attribute external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #            <p>Pattern: <code>[-_&@+=,(){}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*</code>
    #            </p>
    #            <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that
    #               uses this prefix.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>The capabilities (<code>audio</code>, <code>video</code>, or <code>content</code>) that you want to grant an attendee. If you don't specify capabilities, all users have send and receive capabilities on 
    #               all media channels by default.</p>
    #            <note>
    #               <p>You use the capabilities with a set of values that control what the capabilities can do, such as <code>SendReceive</code> data. For more information about those values, see 
    #               .</p>
    #            </note>
    #            <p>When using capabilities, be aware of these corner cases:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify <code>MeetingFeatures:Video:MaxResolution:None</code> when you create a meeting, all API requests 
    #                           that include <code>SendReceive</code>, <code>Send</code>, or <code>Receive</code> for <code>AttendeeCapabilities:Video</code> will be rejected with <code>ValidationError 400</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>MeetingFeatures:Content:MaxResolution:None</code> when you create a meeting, all API requests that include <code>SendReceive</code>, <code>Send</code>, or 
    #                           <code>Receive</code> for <code>AttendeeCapabilities:Content</code> will be rejected with <code>ValidationError 400</code>.</p>
    #               </li>
    #               <li>
    #                  <p>You can't set <code>content</code> capabilities to <code>SendReceive</code> or <code>Receive</code> unless you also set <code>video</code> capabilities to <code>SendReceive</code> 
    #                       or <code>Receive</code>. If you don't set the <code>video</code> capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your <code>video</code> capability 
    #                       to receive and you set your <code>content</code> capability to not receive.</p>
    #               </li>
    #               <li>
    #                  <p>When you change an <code>audio</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                       and if the attendee left their microphone unmuted, audio will flow from the attendee to the other meeting participants.</p>
    #               </li>
    #               <li>
    #                  <p>When you change a <code>video</code> or <code>content</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                      and if the attendee turned on their video or content streams, remote attendees can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.</p>
    #               </li>
    #            </ul>
    #   @return [Types::AttendeeCapabilities]
    class CreateAttendeeRequest < Struct.new(
      :meeting_id,
      :external_user_id,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Chime SDK attendee fields to create, used with the BatchCreateAttendee action.</p>
    # @!attribute external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #            <p>Pattern: <code>[-_&@+=,(){}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*</code>
    #            </p>
    #            <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. 
    #               Case insensitive.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>A list of one or more capabilities.</p>
    #   @return [Types::AttendeeCapabilities]
    class CreateAttendeeRequestItem < Struct.new(
      :external_user_id,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attendee
    #   <p>The attendee information, including attendee ID and join token.</p>
    #   @return [Types::Attendee]
    class CreateAttendeeResponse < Struct.new(
      :attendee,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different meetings.</p>
    #   @return [String]
    # @!attribute media_region
    #   <p>The Region in which to create the meeting.</p>
    #            <p>
    #              Available values: 
    #              <code>af-south-1</code>, 
    #              <code>ap-northeast-1</code>, 
    #              <code>ap-northeast-2</code>, 
    #              <code>ap-south-1</code>, 
    #              <code>ap-southeast-1</code>, 
    #              <code>ap-southeast-2</code>,           
    #              <code>ca-central-1</code>, 
    #              <code>eu-central-1</code>, 
    #              <code>eu-north-1</code>, 
    #              <code>eu-south-1</code>, 
    #              <code>eu-west-1</code>, 
    #              <code>eu-west-2</code>, 
    #              <code>eu-west-3</code>,            
    #              <code>sa-east-1</code>, 
    #              <code>us-east-1</code>, 
    #              <code>us-east-2</code>, 
    #              <code>us-west-1</code>, 
    #              <code>us-west-2</code>.
    #          </p>
    #            <p>Available values in Amazon Web Services GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>
    #   @return [String]
    # @!attribute meeting_host_id
    #   <p>Reserved.</p>
    #   @return [String]
    # @!attribute external_meeting_id
    #   <p>The external meeting ID.</p>
    #            <p>Pattern: <code>[-_&@+=,(){}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*</code>
    #            </p>
    #            <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. 
    #              Case insensitive.</p>
    #   @return [String]
    # @!attribute notifications_configuration
    #   <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    #   @return [Types::NotificationsConfiguration]
    # @!attribute meeting_features
    #   <p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>
    #   @return [Types::MeetingFeaturesConfiguration]
    # @!attribute primary_meeting_id
    #   <p>When specified, replicates the media from the primary meeting to the new meeting.</p>
    #   @return [String]
    # @!attribute tenant_ids
    #   <p>A consistent and opaque identifier, created and maintained by the builder to represent a segment of their users.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Applies one or more tags to an Amazon Chime SDK meeting. Note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Not all resources have tags. For a list of services with resources that support tagging using this operation, see 
    #           <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html">Services that support the Resource Groups Tagging API</a>. If the resource 
    #           doesn't yet support this operation, the resource's service might support tagging using its own API operations. For more information, refer to the documentation for that service.</p>
    #               </li>
    #               <li>
    #                  <p>Each resource can have up to 50 tags. For other limits, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions">Tag Naming and Usage Conventions</a> in the 
    #          <i>AWS General Reference</i>.</p>
    #               </li>
    #               <li>
    #                  <p>You can only tag resources that are located in the specified Amazon Web Services Region for the Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see the 
    #           documentation for each service.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be 
    #               used for private or sensitive data.</p>
    #            </important>
    #            <p>
    #               <b>Minimum permissions</b>
    #            </p>
    #            <p>In addition to the <code>tag:TagResources</code> permission required by this operation, you must also have the tagging permission defined by the service that created the resource. For example, 
    #                      to tag a <code>ChimeSDKMeetings</code> instance using the <code>TagResources</code> operation, you must have both of the following permissions:</p>
    #            <p>
    #               <code>tag:TagResources</code>
    #            </p>
    #            <p>
    #               <code>ChimeSDKMeetings:CreateTags</code>
    #            </p>
    #            <note>
    #               <p>Some services might have specific requirements for tagging some resources. For example, to tag an Amazon S3 bucket, you must also have the <code>s3:GetBucketTagging</code> permission. 
    #                   If the expected minimum permissions don't work, check the documentation for that service's tagging APIs for more information.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateMeetingRequest < Struct.new(
      :client_request_token,
      :media_region,
      :meeting_host_id,
      :external_meeting_id,
      :notifications_configuration,
      :meeting_features,
      :primary_meeting_id,
      :tenant_ids,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting
    #   <p>The meeting information, including the meeting ID and 
    #              <code>MediaPlacement</code>.</p>
    #   @return [Types::Meeting]
    class CreateMeetingResponse < Struct.new(
      :meeting,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different meetings.</p>
    #   @return [String]
    # @!attribute media_region
    #   <p>The Region in which to create the meeting.</p>
    #            <p>
    #              Available values: 
    #              <code>af-south-1</code>, 
    #              <code>ap-northeast-1</code>, 
    #              <code>ap-northeast-2</code>, 
    #              <code>ap-south-1</code>, 
    #              <code>ap-southeast-1</code>, 
    #              <code>ap-southeast-2</code>,           
    #              <code>ca-central-1</code>, 
    #              <code>eu-central-1</code>, 
    #              <code>eu-north-1</code>, 
    #              <code>eu-south-1</code>, 
    #              <code>eu-west-1</code>, 
    #              <code>eu-west-2</code>, 
    #              <code>eu-west-3</code>,            
    #              <code>sa-east-1</code>, 
    #              <code>us-east-1</code>, 
    #              <code>us-east-2</code>, 
    #              <code>us-west-1</code>, 
    #              <code>us-west-2</code>.
    #          </p>
    #            <p>Available values in Amazon Web Services GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>
    #   @return [String]
    # @!attribute meeting_host_id
    #   <p>Reserved.</p>
    #   @return [String]
    # @!attribute external_meeting_id
    #   <p>The external meeting ID.</p>
    #            <p>Pattern: <code>[-_&@+=,(){}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*</code>
    #            </p>
    #            <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. 
    #              Case insensitive.</p>
    #   @return [String]
    # @!attribute meeting_features
    #   <p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>
    #   @return [Types::MeetingFeaturesConfiguration]
    # @!attribute notifications_configuration
    #   <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    #   @return [Types::NotificationsConfiguration]
    # @!attribute attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    #   @return [Array<Types::CreateAttendeeRequestItem>]
    # @!attribute primary_meeting_id
    #   <p>When specified, replicates the media from the primary meeting to the new meeting.</p>
    #   @return [String]
    # @!attribute tenant_ids
    #   <p>A consistent and opaque identifier, created and maintained by the builder to represent a segment of their users.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags in the request.</p>
    #   @return [Array<Types::Tag>]
    class CreateMeetingWithAttendeesRequest < Struct.new(
      :client_request_token,
      :media_region,
      :meeting_host_id,
      :external_meeting_id,
      :meeting_features,
      :notifications_configuration,
      :attendees,
      :primary_meeting_id,
      :tenant_ids,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting
    #   <p>The meeting information, including the meeting ID and 
    #              <code>MediaPlacement</code>.</p>
    #   @return [Types::Meeting]
    # @!attribute attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    #   @return [Array<Types::Attendee>]
    # @!attribute errors
    #   <p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::CreateAttendeeError>]
    class CreateMeetingWithAttendeesResponse < Struct.new(
      :meeting,
      :attendees,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #   @return [String]
    # @!attribute attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #   @return [String]
    class DeleteAttendeeRequest < Struct.new(
      :meeting_id,
      :attendee_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #   @return [String]
    class DeleteMeetingRequest < Struct.new(
      :meeting_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings specific to the Amazon Transcribe Medical engine.</p>
    # @!attribute language_code
    #   <p>The language code specified for the Amazon Transcribe Medical engine.</p>
    #   @return [String]
    # @!attribute specialty
    #   <p>The specialty specified for the Amazon Transcribe Medical engine.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of transcription.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>The name of the vocabulary passed to Amazon Transcribe Medical.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region passed to Amazon Transcribe Medical. If you don't specify a Region, Amazon Chime uses the meeting's Region. </p>
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Set this field to <code>PHI</code> to identify personal health information in the transcription output.</p>
    #   @return [String]
    class EngineTranscribeMedicalSettings < Struct.new(
      :language_code,
      :specialty,
      :type,
      :vocabulary_name,
      :region,
      :content_identification_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings specific for Amazon Transcribe as the live transcription engine. </p>
    #          <p>If you specify an invalid combination of parameters, a <code>TranscriptFailed</code> event will be sent with the contents of the 
    #             <code>BadRequestException</code> generated by Amazon Transcribe.  For more information on each parameter and which combinations are valid, refer to the 
    #             <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_StartStreamTranscription.html">StartStreamTranscription</a> API in the 
    #             <i>Amazon Transcribe Developer Guide</i>.</p>
    # @!attribute language_code
    #   <p>Specify the language code that represents the language spoken.</p>
    #            <p>If you're unsure of the language spoken in your audio, consider using <code>IdentifyLanguage</code> to enable automatic language identification.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_method
    #   <p>Specify how you want your vocabulary filter applied to your transcript.</p>
    #            <p>To replace words with <code>***</code>, choose <code>mask</code>.</p>
    #            <p>To delete words, choose <code>remove</code>.</p>
    #            <p>To flag words without changing them, choose <code>tag</code>.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_name
    #   <p>Specify the name of the custom vocabulary filter that you want to use when processing your transcription. Note that vocabulary filter names are case sensitive. </p>
    #            <p>If you use Amazon Transcribe in multiple Regions, the vocabulary filter must be available in Amazon Transcribe in each Region.</p>
    #            <p>If you include <code>IdentifyLanguage</code> and want to use one or more vocabulary filters with your transcription, use the <code>VocabularyFilterNames</code> parameter instead.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>Specify the name of the custom vocabulary that you want to use when processing your transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If you use Amazon Transcribe multiple Regions, the vocabulary must be available in Amazon Transcribe in each Region.</p>
    #            <p>If you include <code>IdentifyLanguage</code> and want to use one or more custom vocabularies with your transcription, use the <code>VocabularyNames</code> 
    #                   parameter instead.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region in which to use Amazon Transcribe.</p>
    #            <p>If you don't specify a Region, then the <a href="https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html">MediaRegion</a> of the meeting is used.  
    #               However, if Amazon Transcribe is not available in the <code>MediaRegion</code>, then a <code>TranscriptFailed</code> event is sent.</p>
    #            <p>Use <code>auto</code> to use Amazon Transcribe in a Region near the meeting’s <code>MediaRegion</code>.  For more information, refer to 
    #               <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/transcription-options.html#choose-region">Choosing a transcription Region</a> in the 
    #               <i>Amazon Chime SDK Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute enable_partial_results_stabilization
    #   <p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce latency in your output, but may impact accuracy.</p>
    #   @return [Boolean]
    # @!attribute partial_results_stability
    #   <p>Specify the level of stability to use when you enable partial results stabilization (<code>EnablePartialResultsStabilization</code>).</p>
    #            <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly lower accuracy.</p>
    #   @return [String]
    # @!attribute content_identification_type
    #   <p>Labels all personally identifiable information (PII) identified in your transcript. If you don't include <code>PiiEntityTypes</code>, all PII is identified.</p>
    #            <note>
    #               <p>You can’t set <code>ContentIdentificationType</code> and <code>ContentRedactionType</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute content_redaction_type
    #   <p>Content redaction is performed at the segment level. If you don't include <code>PiiEntityTypes</code>, all PII is redacted.</p>
    #            <note>
    #               <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute pii_entity_types
    #   <p>Specify which types of personally identifiable information (PII) you want to redact in your transcript. You can include as many types as you'd like, or you can select <code>ALL</code>.</p>
    #            <p>Values must be comma-separated and can include: <code>ADDRESS</code>, <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>, <code>CREDIT_DEBIT_CVV</code>, <code>CREDIT_DEBIT_EXPIRY</code>
    #               <code>CREDIT_DEBIT_NUMBER</code>, <code>EMAIL</code>,<code>NAME</code>, <code>PHONE</code>,  <code>PIN</code>, 
    #                   <code>SSN</code>, or <code>ALL</code>.</p>
    #            <p>Note that if you include <code>PiiEntityTypes</code>, you must also include <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>
    #            <p>If you include <code>ContentRedactionType</code> or <code>ContentIdentificationType</code>, but do not include PiiEntityTypes, all PII is redacted or identified.</p>
    #   @return [String]
    # @!attribute language_model_name
    #   <p>Specify the name of the custom language model that you want to use when processing your transcription. Note that language model names are case sensitive.</p>
    #            <p>The language of the specified language model must match the language code. If the languages don't match, the custom language model isn't applied. There are no errors or warnings associated with 
    #               a language mismatch.</p>
    #            <p>If you use Amazon Transcribe in multiple Regions, the custom language model must be available in Amazon Transcribe in each Region.</p>
    #   @return [String]
    # @!attribute identify_language
    #   <p>Enables automatic language identification for your transcription.</p>
    #            <p>If you include <code>IdentifyLanguage</code>, you can optionally use <code>LanguageOptions</code> to include a list of language codes that you think may be present in your audio stream. 
    #               Including language options can improve transcription accuracy.</p>
    #            <p>You can also use <code>PreferredLanguage</code> to include a preferred language. Doing so can help Amazon Transcribe identify the language faster.</p>
    #            <p>You must include either <code>LanguageCode</code> or <code>IdentifyLanguage</code>.</p>
    #            <p>Language identification can't be combined with custom language models or redaction.</p>
    #   @return [Boolean]
    # @!attribute language_options
    #   <p>Specify two or more language codes that represent the languages you think may be present in your media; including more than five is not recommended. If you're unsure what languages 
    #               are present, do not include this parameter.</p>
    #            <p>Including language options can improve the accuracy of language identification.</p>
    #            <p>If you include <code>LanguageOptions</code>, you must also include <code>IdentifyLanguage</code>.</p>
    #            <important>
    #               <p>You can only include one language dialect per language. For example, you cannot include <code>en-US</code> and <code>en-AU</code>.</p>
    #            </important>
    #   @return [String]
    # @!attribute preferred_language
    #   <p>Specify a preferred language from the subset of languages codes you specified in <code>LanguageOptions</code>.</p>
    #            <p>You can only use this parameter if you include <code>IdentifyLanguage</code> and <code>LanguageOptions</code>.</p>
    #   @return [String]
    # @!attribute vocabulary_names
    #   <p>Specify the names of the custom vocabularies that you want to use when processing your transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If you use Amazon Transcribe in multiple Regions, the vocabulary must be available in Amazon Transcribe in each Region.</p>
    #            <p>If you don't include <code>IdentifyLanguage</code> and want to use a custom vocabulary with your transcription, use the <code>VocabularyName</code> parameter instead.</p>
    #   @return [String]
    # @!attribute vocabulary_filter_names
    #   <p>Specify the names of the custom vocabulary filters that you want to use when processing your transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>If you use Amazon Transcribe in multiple Regions, the vocabulary filter must be available in Amazon Transcribe in each Region.</p>
    #            <p> If you're <i>not</i> including <code>IdentifyLanguage</code> and want to use a custom vocabulary filter with your transcription, use the <code>VocabularyFilterName</code> 
    #               parameter instead.</p>
    #   @return [String]
    class EngineTranscribeSettings < Struct.new(
      :language_code,
      :vocabulary_filter_method,
      :vocabulary_filter_name,
      :vocabulary_name,
      :region,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      :language_model_name,
      :identify_language,
      :language_options,
      :preferred_language,
      :vocabulary_names,
      :vocabulary_filter_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_partial_results_stabilization] = false unless options.key?(:enable_partial_results_stabilization)
        options[:identify_language] = false unless options.key?(:identify_language)
        super
      end
    end

    # <p>The client is permanently forbidden from making the request.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #   @return [String]
    class ForbiddenException < Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #   @return [String]
    # @!attribute attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #   @return [String]
    class GetAttendeeRequest < Struct.new(
      :meeting_id,
      :attendee_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attendee
    #   <p>The Amazon Chime SDK attendee information.</p>
    #   @return [Types::Attendee]
    class GetAttendeeResponse < Struct.new(
      :attendee,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #   @return [String]
    class GetMeetingRequest < Struct.new(
      :meeting_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting
    #   <p>The Amazon Chime SDK meeting information.</p>
    #   @return [Types::Meeting]
    class GetMeetingResponse < Struct.new(
      :meeting,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the resource limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListAttendeesRequest < Struct.new(
      :meeting_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attendees
    #   <p>The Amazon Chime SDK attendee information.</p>
    #   @return [Array<Types::Attendee>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListAttendeesResponse < Struct.new(
      :attendees,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags requested for the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of endpoints used by clients to connect to the media service group for an Amazon Chime SDK meeting.</p>
    # @!attribute audio_host_url
    #   <p>The audio host URL.</p>
    #   @return [String]
    # @!attribute audio_fallback_url
    #   <p>The audio fallback URL.</p>
    #   @return [String]
    # @!attribute signaling_url
    #   <p>The signaling URL.</p>
    #   @return [String]
    # @!attribute turn_control_url
    #   <p>The turn control URL.</p>
    #            <important>
    #               <p>
    #                  <b>This parameter is deprecated and no longer used by the Amazon Chime SDK.</b>
    #               </p>
    #            </important>
    #   @return [String]
    # @!attribute screen_data_url
    #   <p>The screen data URL.</p>
    #            <important>
    #               <p>
    #                  <b>This parameter is deprecated and no longer used by the Amazon Chime SDK.</b>
    #               </p>
    #            </important>
    #   @return [String]
    # @!attribute screen_viewing_url
    #   <p>The screen viewing URL.</p>
    #            <important>
    #               <p>
    #                  <b>This parameter is deprecated and no longer used by the Amazon Chime SDK.</b>
    #               </p>
    #            </important>
    #   @return [String]
    # @!attribute screen_sharing_url
    #   <p>The screen sharing URL.</p>
    #            <important>
    #               <p>
    #                  <b>This parameter is deprecated and no longer used by the Amazon Chime SDK.</b>
    #               </p>
    #            </important>
    #   @return [String]
    # @!attribute event_ingestion_url
    #   <p>The event ingestion URL.</p>
    #   @return [String]
    class MediaPlacement < Struct.new(
      :audio_host_url,
      :audio_fallback_url,
      :signaling_url,
      :turn_control_url,
      :screen_data_url,
      :screen_viewing_url,
      :screen_sharing_url,
      :event_ingestion_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A meeting created using the Amazon Chime SDK.</p>
    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #   @return [String]
    # @!attribute meeting_host_id
    #   <p>Reserved.</p>
    #   @return [String]
    # @!attribute external_meeting_id
    #   <p>The external meeting ID.</p>
    #            <p>Pattern: <code>[-_&@+=,(){}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*</code>
    #            </p>
    #            <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. 
    #               Case insensitive.</p>
    #   @return [String]
    # @!attribute media_region
    #   <p>The Region in which you create the meeting. Available values: <code>af-south-1</code>, <code>ap-northeast-1</code>, 
    #               <code>ap-northeast-2</code>, <code>ap-south-1</code>, <code>ap-southeast-1</code>, <code>ap-southeast-2</code>, <code>ca-central-1</code>, 
    #               <code>eu-central-1</code>, <code>eu-north-1</code>, <code>eu-south-1</code>,
    #               <code>eu-west-1</code>, <code>eu-west-2</code>, <code>eu-west-3</code>,
    #               <code>sa-east-1</code>, <code>us-east-1</code>, <code>us-east-2</code>,
    #               <code>us-west-1</code>, <code>us-west-2</code>.</p>
    #            <p>Available values in Amazon Web Services GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>
    #   @return [String]
    # @!attribute media_placement
    #   <p>The media placement for the meeting.</p>
    #   @return [Types::MediaPlacement]
    # @!attribute meeting_features
    #   <p>The features available to a meeting, such as echo reduction.</p>
    #   @return [Types::MeetingFeaturesConfiguration]
    # @!attribute primary_meeting_id
    #   <p>When specified, replicates the media from the primary meeting to this meeting.</p>
    #   @return [String]
    # @!attribute tenant_ids
    #   <p>Array of strings.</p>
    #   @return [Array<String>]
    # @!attribute meeting_arn
    #   <p>The ARN of the meeting.</p>
    #   @return [String]
    class Meeting < Struct.new(
      :meeting_id,
      :meeting_host_id,
      :external_meeting_id,
      :media_region,
      :media_placement,
      :meeting_features,
      :primary_meeting_id,
      :tenant_ids,
      :meeting_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings of the features available to a meeting.</p>
    # @!attribute audio
    #   <p>The configuration settings for the audio features available to a meeting.</p>
    #   @return [Types::AudioFeatures]
    # @!attribute video
    #   <p>The configuration settings for the video features available to a meeting.</p>
    #   @return [Types::VideoFeatures]
    # @!attribute content
    #   <p>The configuration settings for the content features available to a meeting.</p>
    #   @return [Types::ContentFeatures]
    # @!attribute attendee
    #   <p>The configuration settings for the attendee features available to a meeting.</p>
    #   @return [Types::AttendeeFeatures]
    class MeetingFeaturesConfiguration < Struct.new(
      :audio,
      :video,
      :content,
      :attendee,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the resources in the request does not exist in the system.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request ID associated with the call responsible for the exception.</p>
    #   @return [String]
    class NotFoundException < Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    # @!attribute lambda_function_arn
    #   <p>The ARN of the Amazon Web Services Lambda function in the notifications configuration.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The ARN of the SNS topic.</p>
    #   @return [String]
    # @!attribute sqs_queue_arn
    #   <p>The ARN of the SQS queue.</p>
    #   @return [String]
    class NotificationsConfiguration < Struct.new(
      :lambda_function_arn,
      :sns_topic_arn,
      :sqs_queue_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource that you want to tag couldn't be found.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the resource that couldn't be found.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource that couldn't be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :code,
      :message,
      :request_id,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service encountered an unexpected error.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the failed request.</p>
    #   @return [String]
    class ServiceFailureException < Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is currently unavailable.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds the caller should wait before retrying.</p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :code,
      :message,
      :request_id,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The unique ID of the meeting being transcribed.</p>
    #   @return [String]
    # @!attribute transcription_configuration
    #   <p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or 
    #               <code>EngineTranscribeMedicalSettings</code>.</p>
    #   @return [Types::TranscriptionConfiguration]
    class StartMeetingTranscriptionRequest < Struct.new(
      :meeting_id,
      :transcription_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The unique ID of the meeting for which you stop transcription.</p>
    #   @return [String]
    class StopMeetingTranscriptionRequest < Struct.new(
      :meeting_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair that you define.</p>
    # @!attribute key
    #   <p>The tag's key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Lists the requested tags.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of customer requests exceeds the request rate limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request that exceeded the throttling limit.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Too many tags were added to the specified resource.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request that contains too many tags.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource that received too many tags.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :code,
      :message,
      :request_id,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or <code>EngineTranscribeMedicalSettings</code>.</p>
    # @!attribute engine_transcribe_settings
    #   <p>The transcription configuration settings passed to Amazon Transcribe.</p>
    #   @return [Types::EngineTranscribeSettings]
    # @!attribute engine_transcribe_medical_settings
    #   <p>The transcription configuration settings passed to Amazon Transcribe Medical.</p>
    #   @return [Types::EngineTranscribeMedicalSettings]
    class TranscriptionConfiguration < Struct.new(
      :engine_transcribe_settings,
      :engine_transcribe_medical_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The user isn't authorized to request a resource.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was well-formed but was unable to be followed due to semantic errors.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #   @return [String]
    class UnprocessableEntityException < Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you're removing tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys being removed from the resources.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The ID of the meeting associated with the update request.</p>
    #   @return [String]
    # @!attribute attendee_id
    #   <p>The ID of the attendee associated with the update request.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>The capabilities that you want to update.</p>
    #   @return [Types::AttendeeCapabilities]
    class UpdateAttendeeCapabilitiesRequest < Struct.new(
      :meeting_id,
      :attendee_id,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attendee
    #   <p>The updated attendee data.</p>
    #   @return [Types::Attendee]
    class UpdateAttendeeCapabilitiesResponse < Struct.new(
      :attendee,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The video features set for the meeting. Applies to all attendees.</p>
    #          <note>
    #             <p>If you specify <code>MeetingFeatures:Video:MaxResolution:None</code> when you create a meeting, all API requests 
    #                 that include <code>SendReceive</code>, <code>Send</code>, or <code>Receive</code> for <code>AttendeeCapabilities:Video</code> will be rejected with <code>ValidationError 400</code>.</p>
    #          </note>
    # @!attribute max_resolution
    #   <p>The maximum video resolution for the meeting. Applies to all attendees.</p>
    #            <note>
    #               <p>Defaults to <code>HD</code>. To use <code>FHD</code>, you must also provide a <code>MeetingFeatures:Attendee:MaxCount</code> value and override the default size 
    #               limit of 250 attendees.</p>
    #            </note>
    #   @return [String]
    class VideoFeatures < Struct.new(
      :max_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
