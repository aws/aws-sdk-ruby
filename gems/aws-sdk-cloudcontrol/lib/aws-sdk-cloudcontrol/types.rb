# frozen_string_literal: true

# This is generated code!

module Aws::CloudControl
  # This module contains the types returned by client operations.
  module Types

    # <p>The resource with the name requested already exists.</p>
    # @!attribute message
    #   @return [String]
    class AlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute request_token
    #   <p>The <code>RequestToken</code> of the <code>ProgressEvent</code> object returned by the
    #         resource operation request.</p>
    #   @return [String]
    class CancelResourceRequestOperationInput < Struct.new(
      :request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_event
    #   <p>Represents the current status of a resource operation request. For more information, see
    #           <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html">Managing resource operation requests</a> in the
    #           <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #   @return [Types::ProgressEvent]
    class CancelResourceRequestOperationOutput < Struct.new(
      :progress_event,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified client token has already been used in another resource request.</p>
    #          <p>It's best practice for client tokens to be unique for each resource operation request.
    #       However, client token expire after 36 hours.</p>
    # @!attribute message
    #   @return [String]
    class ClientTokenConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource is currently being modified by another operation.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Another resource operation is currently being performed on this resource.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentOperationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute type_name
    #   <p>The name of the resource type.</p>
    #   @return [String]
    # @!attribute type_version_id
    #   <p>For private resource types, the type version to use in this resource
    #                                        operation. If you do not specify a resource version, CloudFormation
    #                                        uses the default version.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management
    #                                       (IAM) role for Cloud Control API to use when performing this resource
    #                                       operation. The role specified must have the permissions required for this
    #                                       operation. The necessary permissions for each event handler are defined in the
    #                                       <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code>
    #                                       section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type
    #                                       definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using
    #                                       your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying
    #                                       credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier to ensure the idempotency of the resource request. As a
    #                                        best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can
    #                                        accurately distinguish between request retries and new resource requests. You
    #                                        might retry a resource request to ensure that it was successfully received.</p>
    #            <p>A client token is valid for 36 hours once used. After that, a resource
    #                                        request with the same client token is treated as a new request.</p>
    #            <p>If you
    #                                        do not specify a client token, one is generated for inclusion in the request.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency">Ensuring
    #                                        resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User
    #                                        Guide</i>.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>Structured data format representing the desired state of the resource, consisting of that
    #         resource's properties and their desired values.</p>
    #            <note>
    #               <p>Cloud Control API currently supports JSON as a structured data format.</p>
    #            </note>
    #            <p>Specify the desired state as one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>A JSON blob</p>
    #               </li>
    #               <li>
    #                  <p>A local path containing the desired state in JSON data format</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html#resource-operations-create-desiredstate">Composing the desired state of the resource</a> in the <i>Amazon Web Services Cloud Control API User
    #           Guide</i>.</p>
    #            <p>For more information about the properties of a specific resource, refer to the related
    #         topic for the resource in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Resource and property types reference</a> in the <i>CloudFormation Users Guide</i>.</p>
    #   @return [String]
    class CreateResourceOperationInput < Struct.new(
      :type_name,
      :type_version_id,
      :role_arn,
      :client_token,
      :desired_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_event
    #   <p>Represents the current status of the resource creation request.</p>
    #            <p>After you have initiated a resource creation request, you can monitor the progress of your
    #         request by calling <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html">GetResourceRequestStatus</a> using the <code>RequestToken</code> of the
    #           <code>ProgressEvent</code> returned by <code>CreateResource</code>.</p>
    #   @return [Types::ProgressEvent]
    class CreateResourceOperationOutput < Struct.new(
      :progress_event,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute type_name
    #   <p>The name of the resource type.</p>
    #   @return [String]
    # @!attribute type_version_id
    #   <p>For private resource types, the type version to use in this resource
    #                                        operation. If you do not specify a resource version, CloudFormation
    #                                        uses the default version.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management
    #                                       (IAM) role for Cloud Control API to use when performing this resource
    #                                       operation. The role specified must have the permissions required for this
    #                                       operation. The necessary permissions for each event handler are defined in the
    #                                       <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code>
    #                                       section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type
    #                                       definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using
    #                                       your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying
    #                                       credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier to ensure the idempotency of the resource request. As a
    #                                        best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can
    #                                        accurately distinguish between request retries and new resource requests. You
    #                                        might retry a resource request to ensure that it was successfully received.</p>
    #            <p>A client token is valid for 36 hours once used. After that, a resource
    #                                        request with the same client token is treated as a new request.</p>
    #            <p>If you
    #                                        do not specify a client token, one is generated for inclusion in the request.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency">Ensuring
    #                                        resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User
    #                                        Guide</i>.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier for the resource.</p>
    #            <p>You can specify the primary identifier, or any secondary identifier
    #                                               defined for the resource type in its resource schema. You can only specify
    #                                               one identifier. Primary identifiers can be specified as a string or JSON;
    #                                               secondary identifiers must be specified as JSON.</p>
    #            <p>For compound primary identifiers (that is, one that consists of
    #                                               multiple resource properties strung together), to specify the primary
    #                                               identifier as a string, list the property values <i>in the order
    #                                               they are specified</i> in the primary identifier definition,
    #                                               separated by <code>|</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html">Identifying
    #                                               resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #   @return [String]
    class DeleteResourceOperationInput < Struct.new(
      :type_name,
      :type_version_id,
      :role_arn,
      :client_token,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_event
    #   <p>Represents the current status of the resource deletion request.</p>
    #            <p>After you have initiated a resource deletion request, you can monitor the progress of your
    #         request by calling <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html">GetResourceRequestStatus</a> using the <code>RequestToken</code> of the
    #           <code>ProgressEvent</code> returned by <code>DeleteResource</code>.</p>
    #   @return [Types::ProgressEvent]
    class DeleteResourceOperationOutput < Struct.new(
      :progress_event,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource handler has returned that the downstream service generated an error that
    #       doesn't map to any other handler error code.</p>
    # @!attribute message
    #   @return [String]
    class GeneralServiceException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute type_name
    #   <p>The name of the resource type.</p>
    #   @return [String]
    # @!attribute type_version_id
    #   <p>For private resource types, the type version to use in this resource
    #                                        operation. If you do not specify a resource version, CloudFormation
    #                                        uses the default version.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management
    #                                       (IAM) role for Cloud Control API to use when performing this resource
    #                                       operation. The role specified must have the permissions required for this
    #                                       operation. The necessary permissions for each event handler are defined in the
    #                                       <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code>
    #                                       section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type
    #                                       definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using
    #                                       your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying
    #                                       credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier for the resource.</p>
    #            <p>You can specify the primary identifier, or any secondary identifier
    #                                               defined for the resource type in its resource schema. You can only specify
    #                                               one identifier. Primary identifiers can be specified as a string or JSON;
    #                                               secondary identifiers must be specified as JSON.</p>
    #            <p>For compound primary identifiers (that is, one that consists of
    #                                               multiple resource properties strung together), to specify the primary
    #                                               identifier as a string, list the property values <i>in the order
    #                                               they are specified</i> in the primary identifier definition,
    #                                               separated by <code>|</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html">Identifying
    #                                               resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #   @return [String]
    class GetResourceOperationInput < Struct.new(
      :type_name,
      :type_version_id,
      :role_arn,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute type_name
    #   <p>The name of the resource type.</p>
    #   @return [String]
    # @!attribute resource_description
    #   <p>Represents information about a provisioned resource.</p>
    #   @return [Types::ResourceDescription]
    class GetResourceOperationOutput < Struct.new(
      :type_name,
      :resource_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute request_token
    #   <p>A unique token used to track the progress of the resource operation request.</p>
    #            <p>Request tokens are included in the <code>ProgressEvent</code> type returned by a resource
    #         operation request.</p>
    #   @return [String]
    class GetResourceRequestStatusOperationInput < Struct.new(
      :request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_event
    #   <p>Represents the current status of the resource operation request.</p>
    #   @return [Types::ProgressEvent]
    # @!attribute hooks_progress_event
    #   <p>Lists Hook invocations for the specified target in the request. This is a list since the same target can invoke multiple Hooks.</p>
    #   @return [Array<Types::HookProgressEvent>]
    class GetResourceRequestStatusOperationOutput < Struct.new(
      :progress_event,
      :hooks_progress_event,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource handler has failed without a returning a more specific error code. This can
    #       include timeouts.</p>
    # @!attribute message
    #   @return [String]
    class HandlerFailureException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource handler has returned that an unexpected error occurred within the resource
    #       handler.</p>
    # @!attribute message
    #   @return [String]
    class HandlerInternalFailureException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the current status of applicable Hooks for a resource operation request. It contains list of 
    #       Hook invocation information for the resource specified in the request since the same target can invoke multiple Hooks. 
    #       For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html">Managing resource operation requests with Amazon Web Services Cloud Control API
    #     </a>.</p>
    # @!attribute hook_type_name
    #   <p>The type name of the Hook being invoked.</p>
    #   @return [String]
    # @!attribute hook_type_version_id
    #   <p>The type version of the Hook being invoked.</p>
    #   @return [String]
    # @!attribute hook_type_arn
    #   <p>The ARN of the Hook being invoked.</p>
    #   @return [String]
    # @!attribute invocation_point
    #   <p>States whether the Hook is invoked before or after resource provisioning.</p>
    #   @return [String]
    # @!attribute hook_status
    #   <p>The status of the Hook invocation. The following are potential statuses:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HOOK_PENDING</code>: The Hook was added to the invocation plan, but not yet invoked.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_IN_PROGRESS</code>: The Hook was invoked, but hasn't completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_COMPLETE_SUCCEEDED</code>: The Hook invocation is complete with a successful result.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_COMPLETE_FAILED</code>: The Hook invocation is complete with a failed result.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_FAILED</code>: The Hook invocation didn't complete successfully.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute hook_event_time
    #   <p>The time that the Hook invocation request initiated.</p>
    #   @return [Time]
    # @!attribute hook_status_message
    #   <p>The message explaining the current Hook status.</p>
    #   @return [String]
    # @!attribute failure_mode
    #   <p>The failure mode of the invocation. The following are the potential statuses:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FAIL</code>: This will fail the Hook invocation and the request associated with it.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WARN</code>: This will fail the Hook invocation, but not the request associated with it.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class HookProgressEvent < Struct.new(
      :hook_type_name,
      :hook_type_version_id,
      :hook_type_arn,
      :invocation_point,
      :hook_status,
      :hook_event_time,
      :hook_status_message,
      :failure_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource handler has returned that the credentials provided by the user are
    #       invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidCredentialsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource handler has returned that invalid input from the user has generated a generic
    #       exception.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    #            <p>The default is <code>20</code>.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all of the remaining results,
    #                                      the response object's <code>NextToken</code> parameter value is set to a token.
    #                                      To retrieve the next set of results, call this action again and assign that token to
    #                                      the request object's <code>NextToken</code> parameter. If there are no remaining
    #                                      results, the previous response object's <code>NextToken</code> parameter is set to
    #                                      <code>null</code>.</p>
    #   @return [String]
    # @!attribute resource_request_status_filter
    #   <p>The filter criteria to apply to the requests returned.</p>
    #   @return [Types::ResourceRequestStatusFilter]
    class ListResourceRequestsOperationInput < Struct.new(
      :max_results,
      :next_token,
      :resource_request_status_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_request_status_summaries
    #   <p>The requests that match the specified filter criteria.</p>
    #   @return [Array<Types::ProgressEvent>]
    # @!attribute next_token
    #   <p>If the request doesn't return all of the remaining results,
    #                                       <code>NextToken</code> is set to a token. To retrieve the next set of results, call
    #                                       <code>ListResources</code> again and assign that token to the request object's
    #                                       <code>NextToken</code> parameter. If the request returns all results,
    #                                       <code>NextToken</code> is set to null.</p>
    #   @return [String]
    class ListResourceRequestsOutput < Struct.new(
      :resource_request_status_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute type_name
    #   <p>The name of the resource type.</p>
    #   @return [String]
    # @!attribute type_version_id
    #   <p>For private resource types, the type version to use in this resource
    #                                        operation. If you do not specify a resource version, CloudFormation
    #                                        uses the default version.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management
    #                                       (IAM) role for Cloud Control API to use when performing this resource
    #                                       operation. The role specified must have the permissions required for this
    #                                       operation. The necessary permissions for each event handler are defined in the
    #                                       <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code>
    #                                       section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type
    #                                       definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using
    #                                       your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying
    #                                       credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all of the remaining results,
    #                                      the response object's <code>NextToken</code> parameter value is set to a token.
    #                                      To retrieve the next set of results, call this action again and assign that token to
    #                                      the request object's <code>NextToken</code> parameter. If there are no remaining
    #                                      results, the previous response object's <code>NextToken</code> parameter is set to
    #                                      <code>null</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Reserved.</p>
    #   @return [Integer]
    # @!attribute resource_model
    #   <p>The resource model to use to select the resources to return.</p>
    #   @return [String]
    class ListResourcesOperationInput < Struct.new(
      :type_name,
      :type_version_id,
      :role_arn,
      :next_token,
      :max_results,
      :resource_model,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute type_name
    #   <p>The name of the resource type.</p>
    #   @return [String]
    # @!attribute resource_descriptions
    #   <p>Information about the specified resources, including primary identifier and resource
    #         model.</p>
    #   @return [Array<Types::ResourceDescription>]
    # @!attribute next_token
    #   <p>If the request doesn't return all of the remaining results,
    #                                       <code>NextToken</code> is set to a token. To retrieve the next set of results, call
    #                                       <code>ListResources</code> again and assign that token to the request object's
    #                                       <code>NextToken</code> parameter. If the request returns all results,
    #                                       <code>NextToken</code> is set to null.</p>
    #   @return [String]
    class ListResourcesOutput < Struct.new(
      :type_name,
      :resource_descriptions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource handler has returned that the request couldn't be completed due to networking
    #       issues, such as a failure to receive a response from the server.</p>
    # @!attribute message
    #   @return [String]
    class NetworkFailureException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource handler has returned that the downstream resource failed to complete all of
    #       its ready-state checks.</p>
    # @!attribute message
    #   @return [String]
    class NotStabilizedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>One or more properties included in this resource operation are defined as create-only, and
    #       therefore can't be updated.</p>
    # @!attribute message
    #   @return [String]
    class NotUpdatableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Cloud Control API hasn't received a valid response from the resource handler, due to a configuration
    #       error. This includes issues such as the resource handler returning an invalid response, or
    #       timing out.</p>
    # @!attribute message
    #   @return [String]
    class PrivateTypeException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the current status of a resource operation request. For more information, see
    #         <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html">Managing resource operation requests</a> in the
    #         <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    # @!attribute type_name
    #   <p>The name of the resource type used in the operation.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The primary identifier for the resource.</p>
    #            <note>
    #               <p>In some cases, the resource identifier may be available before the resource operation
    #           has reached a status of <code>SUCCESS</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_token
    #   <p>The unique token representing this resource operation request.</p>
    #            <p>Use the <code>RequestToken</code> with <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html">GetResourceRequestStatus</a> to return the current status of a resource operation
    #         request.</p>
    #   @return [String]
    # @!attribute hooks_request_token
    #   <p>The unique token representing the Hooks operation for the request.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The resource operation type.</p>
    #   @return [String]
    # @!attribute operation_status
    #   <p>The current status of the resource operation request.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: The resource operation hasn't yet started.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code>: The resource operation is currently in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS</code>: The resource operation has successfully completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The resource operation has failed. Refer to the error code and
    #             status message for more information.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCEL_IN_PROGRESS</code>: The resource operation is in the process of being
    #             canceled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCEL_COMPLETE</code>: The resource operation has been canceled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute event_time
    #   <p>When the resource operation request was initiated.</p>
    #   @return [Time]
    # @!attribute resource_model
    #   <p>A JSON string containing the resource model, consisting of each resource property and its
    #         current value.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Any message explaining the current status.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>For requests with a status of <code>FAILED</code>, the associated error code.</p>
    #            <p>For error code definitions, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-test-contract-errors.html">Handler error codes</a> in the <i>CloudFormation Command
    #           Line Interface User Guide for Extension Development</i>.</p>
    #   @return [String]
    # @!attribute retry_after
    #   <p>When to next request the status of this resource operation request.</p>
    #   @return [Time]
    class ProgressEvent < Struct.new(
      :type_name,
      :identifier,
      :request_token,
      :hooks_request_token,
      :operation,
      :operation_status,
      :event_time,
      :resource_model,
      :status_message,
      :error_code,
      :retry_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource operation with the specified request token can't be found.</p>
    # @!attribute message
    #   @return [String]
    class RequestTokenNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource is temporarily unavailable to be acted upon. For example, if the resource is
    #       currently undergoing an operation and can't be acted upon until that operation is
    #       finished.</p>
    # @!attribute message
    #   @return [String]
    class ResourceConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents information about a provisioned resource.</p>
    # @!attribute identifier
    #   <p>The primary identifier for the resource.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html">Identifying
    #           resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>A list of the resource properties and their current values.</p>
    #   @return [String]
    class ResourceDescription < Struct.new(
      :identifier,
      :properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource with the specified identifier can't be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The filter criteria to use in determining the requests returned.</p>
    # @!attribute operations
    #   <p>The operation types to include in the filter.</p>
    #   @return [Array<String>]
    # @!attribute operation_statuses
    #   <p>The operation statuses to include in the filter.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: The operation has been requested, but not yet initiated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code>: The operation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS</code>: The operation completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The operation failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCEL_IN_PROGRESS</code>: The operation is in the process of being
    #             canceled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCEL_COMPLETE</code>: The operation has been canceled.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class ResourceRequestStatusFilter < Struct.new(
      :operations,
      :operation_statuses,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource handler has returned that the downstream service returned an internal error,
    #       typically with a <code>5XX HTTP</code> status code.</p>
    # @!attribute message
    #   @return [String]
    class ServiceInternalErrorException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource handler has returned that a non-transient resource limit was reached on the
    #       service side.</p>
    # @!attribute message
    #   @return [String]
    class ServiceLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified extension doesn't exist in the CloudFormation registry.</p>
    # @!attribute message
    #   @return [String]
    class TypeNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource doesn't support this resource operation.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedActionException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute type_name
    #   <p>The name of the resource type.</p>
    #   @return [String]
    # @!attribute type_version_id
    #   <p>For private resource types, the type version to use in this resource
    #                                        operation. If you do not specify a resource version, CloudFormation
    #                                        uses the default version.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management
    #                                       (IAM) role for Cloud Control API to use when performing this resource
    #                                       operation. The role specified must have the permissions required for this
    #                                       operation. The necessary permissions for each event handler are defined in the
    #                                       <code>
    #                  <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers">handlers</a>
    #               </code>
    #                                       section of the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource type
    #                                       definition schema</a>.</p>
    #            <p>If you do not specify a role, Cloud Control API uses a temporary session created using
    #                                       your Amazon Web Services user credentials.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying
    #                                       credentials</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier to ensure the idempotency of the resource request. As a
    #                                        best practice, specify this token to ensure idempotency, so that Amazon Web Services Cloud Control API can
    #                                        accurately distinguish between request retries and new resource requests. You
    #                                        might retry a resource request to ensure that it was successfully received.</p>
    #            <p>A client token is valid for 36 hours once used. After that, a resource
    #                                        request with the same client token is treated as a new request.</p>
    #            <p>If you
    #                                        do not specify a client token, one is generated for inclusion in the request.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency">Ensuring
    #                                        resource operation requests are unique</a> in the <i>Amazon Web Services Cloud Control API User
    #                                        Guide</i>.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier for the resource.</p>
    #            <p>You can specify the primary identifier, or any secondary identifier
    #                                               defined for the resource type in its resource schema. You can only specify
    #                                               one identifier. Primary identifiers can be specified as a string or JSON;
    #                                               secondary identifiers must be specified as JSON.</p>
    #            <p>For compound primary identifiers (that is, one that consists of
    #                                               multiple resource properties strung together), to specify the primary
    #                                               identifier as a string, list the property values <i>in the order
    #                                               they are specified</i> in the primary identifier definition,
    #                                               separated by <code>|</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html">Identifying
    #                                               resources</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p>
    #   @return [String]
    # @!attribute patch_document
    #   <p>A JavaScript Object Notation (JSON) document listing the patch operations that represent
    #         the updates to apply to the current resource properties. For details, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html#resource-operations-update-patch">Composing the patch document</a> in the <i>Amazon Web Services Cloud Control API User
    #         Guide</i>.</p>
    #   @return [String]
    class UpdateResourceOperationInput < Struct.new(
      :type_name,
      :type_version_id,
      :role_arn,
      :client_token,
      :identifier,
      :patch_document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_event
    #   <p>Represents the current status of the resource update request.</p>
    #            <p>Use the <code>RequestToken</code> of the <code>ProgressEvent</code> with <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html">GetResourceRequestStatus</a> to return the current status of a resource operation
    #         request.</p>
    #   @return [Types::ProgressEvent]
    class UpdateResourceOperationOutput < Struct.new(
      :progress_event,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
