# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudControlApi
  module Types

    # The resource with the name requested already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/AlreadyExistsException AWS API Documentation
    #
    class AlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_token
    #   The `RequestToken` of the `ProgressEvent` object returned by the
    #   resource operation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/CancelResourceRequestInput AWS API Documentation
    #
    class CancelResourceRequestInput < Struct.new(
      :request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] progress_event
    #   Represents the current status of a resource operation request. For
    #   more information, see [Managing resource operation requests][1] in
    #   the *Amazon Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html
    #   @return [Types::ProgressEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/CancelResourceRequestOutput AWS API Documentation
    #
    class CancelResourceRequestOutput < Struct.new(
      :progress_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified client token has already been used in another resource
    # request.
    #
    # It's best practice for client tokens to be unique for each resource
    # operation request. However, client token expire after 36 hours.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ClientTokenConflictException AWS API Documentation
    #
    class ClientTokenConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is currently being modified by another operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Another resource operation is currently being performed on this
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ConcurrentOperationException AWS API Documentation
    #
    class ConcurrentOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_name
    #   The name of the resource type.
    #   @return [String]
    #
    # @!attribute [rw] type_version_id
    #   For private resource types, the type version to use in this resource
    #   operation. If you do not specify a resource version, CloudFormation
    #   uses the default version.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role for Cloud Control API to use when performing this
    #   resource operation. The role specified must have the permissions
    #   required for this operation. The necessary permissions for each
    #   event handler are defined in the ` handlers ` section of the
    #   [resource type definition schema][1].
    #
    #   If you do not specify a role, Cloud Control API uses a temporary
    #   session created using your Amazon Web Services user credentials.
    #
    #   For more information, see [Specifying credentials][2] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier to ensure the idempotency of the resource
    #   request. As a best practice, specify this token to ensure
    #   idempotency, so that Amazon Web Services Cloud Control API can
    #   accurately distinguish between request retries and new resource
    #   requests. You might retry a resource request to ensure that it was
    #   successfully received.
    #
    #   A client token is valid for 36 hours once used. After that, a
    #   resource request with the same client token is treated as a new
    #   request.
    #
    #   If you do not specify a client token, one is generated for inclusion
    #   in the request.
    #
    #   For more information, see [Ensuring resource operation requests are
    #   unique][1] in the *Amazon Web Services Cloud Control API User
    #   Guide*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   Structured data format representing the desired state of the
    #   resource, consisting of that resource's properties and their
    #   desired values.
    #
    #   <note markdown="1"> Cloud Control API currently supports JSON as a structured data
    #   format.
    #
    #    </note>
    #
    #        <p>Specify the desired state as one of the following:</p> <ul> <li> <p>A JSON blob</p> </li> <li> <p>A local path containing the desired state in JSON data format</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html#resource-operations-create-desiredstate">Composing the desired state of the resource</a> in the <i>Amazon Web Services Cloud Control API User Guide</i>.</p> <p>For more information about the properties of a specific resource, refer to the related topic for the resource in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Resource and property types reference</a> in the <i>CloudFormation Users Guide</i>.</p>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/CreateResourceInput AWS API Documentation
    #
    class CreateResourceInput < Struct.new(
      :type_name,
      :type_version_id,
      :role_arn,
      :client_token,
      :desired_state)
      SENSITIVE = [:desired_state]
      include Aws::Structure
    end

    # @!attribute [rw] progress_event
    #   Represents the current status of the resource creation request.
    #
    #   After you have initiated a resource creation request, you can
    #   monitor the progress of your request by calling
    #   [GetResourceRequestStatus][1] using the `RequestToken` of the
    #   `ProgressEvent` returned by `CreateResource`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
    #   @return [Types::ProgressEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/CreateResourceOutput AWS API Documentation
    #
    class CreateResourceOutput < Struct.new(
      :progress_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_name
    #   The name of the resource type.
    #   @return [String]
    #
    # @!attribute [rw] type_version_id
    #   For private resource types, the type version to use in this resource
    #   operation. If you do not specify a resource version, CloudFormation
    #   uses the default version.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role for Cloud Control API to use when performing this
    #   resource operation. The role specified must have the permissions
    #   required for this operation. The necessary permissions for each
    #   event handler are defined in the ` handlers ` section of the
    #   [resource type definition schema][1].
    #
    #   If you do not specify a role, Cloud Control API uses a temporary
    #   session created using your Amazon Web Services user credentials.
    #
    #   For more information, see [Specifying credentials][2] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier to ensure the idempotency of the resource
    #   request. As a best practice, specify this token to ensure
    #   idempotency, so that Amazon Web Services Cloud Control API can
    #   accurately distinguish between request retries and new resource
    #   requests. You might retry a resource request to ensure that it was
    #   successfully received.
    #
    #   A client token is valid for 36 hours once used. After that, a
    #   resource request with the same client token is treated as a new
    #   request.
    #
    #   If you do not specify a client token, one is generated for inclusion
    #   in the request.
    #
    #   For more information, see [Ensuring resource operation requests are
    #   unique][1] in the *Amazon Web Services Cloud Control API User
    #   Guide*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier for the resource.
    #
    #   You can specify the primary identifier, or any secondary identifier
    #   defined for the resource type in its resource schema. You can only
    #   specify one identifier. Primary identifiers can be specified as a
    #   string or JSON; secondary identifiers must be specified as JSON.
    #
    #   For compound primary identifiers (that is, one that consists of
    #   multiple resource properties strung together), to specify the
    #   primary identifier as a string, list the property values *in the
    #   order they are specified* in the primary identifier definition,
    #   separated by `|`.
    #
    #   For more information, see [Identifying resources][1] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/DeleteResourceInput AWS API Documentation
    #
    class DeleteResourceInput < Struct.new(
      :type_name,
      :type_version_id,
      :role_arn,
      :client_token,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] progress_event
    #   Represents the current status of the resource deletion request.
    #
    #   After you have initiated a resource deletion request, you can
    #   monitor the progress of your request by calling
    #   [GetResourceRequestStatus][1] using the `RequestToken` of the
    #   `ProgressEvent` returned by `DeleteResource`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
    #   @return [Types::ProgressEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/DeleteResourceOutput AWS API Documentation
    #
    class DeleteResourceOutput < Struct.new(
      :progress_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource handler has returned that the downstream service
    # generated an error that doesn't map to any other handler error code.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/GeneralServiceException AWS API Documentation
    #
    class GeneralServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_name
    #   The name of the resource type.
    #   @return [String]
    #
    # @!attribute [rw] type_version_id
    #   For private resource types, the type version to use in this resource
    #   operation. If you do not specify a resource version, CloudFormation
    #   uses the default version.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role for Cloud Control API to use when performing this
    #   resource operation. The role specified must have the permissions
    #   required for this operation. The necessary permissions for each
    #   event handler are defined in the ` handlers ` section of the
    #   [resource type definition schema][1].
    #
    #   If you do not specify a role, Cloud Control API uses a temporary
    #   session created using your Amazon Web Services user credentials.
    #
    #   For more information, see [Specifying credentials][2] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier for the resource.
    #
    #   You can specify the primary identifier, or any secondary identifier
    #   defined for the resource type in its resource schema. You can only
    #   specify one identifier. Primary identifiers can be specified as a
    #   string or JSON; secondary identifiers must be specified as JSON.
    #
    #   For compound primary identifiers (that is, one that consists of
    #   multiple resource properties strung together), to specify the
    #   primary identifier as a string, list the property values *in the
    #   order they are specified* in the primary identifier definition,
    #   separated by `|`.
    #
    #   For more information, see [Identifying resources][1] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/GetResourceInput AWS API Documentation
    #
    class GetResourceInput < Struct.new(
      :type_name,
      :type_version_id,
      :role_arn,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_name
    #   The name of the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_description
    #   Represents information about a provisioned resource.
    #   @return [Types::ResourceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/GetResourceOutput AWS API Documentation
    #
    class GetResourceOutput < Struct.new(
      :type_name,
      :resource_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_token
    #   A unique token used to track the progress of the resource operation
    #   request.
    #
    #   Request tokens are included in the `ProgressEvent` type returned by
    #   a resource operation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/GetResourceRequestStatusInput AWS API Documentation
    #
    class GetResourceRequestStatusInput < Struct.new(
      :request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] progress_event
    #   Represents the current status of the resource operation request.
    #   @return [Types::ProgressEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/GetResourceRequestStatusOutput AWS API Documentation
    #
    class GetResourceRequestStatusOutput < Struct.new(
      :progress_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource handler has failed without a returning a more specific
    # error code. This can include timeouts.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/HandlerFailureException AWS API Documentation
    #
    class HandlerFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource handler has returned that an unexpected error occurred
    # within the resource handler.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/HandlerInternalFailureException AWS API Documentation
    #
    class HandlerInternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource handler has returned that the credentials provided by the
    # user are invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/InvalidCredentialsException AWS API Documentation
    #
    class InvalidCredentialsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource handler has returned that invalid input from the user has
    # generated a generic exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #
    #   The default is `20`.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request didn't return all of the
    #   remaining results, the response object's `NextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   this action again and assign that token to the request object's
    #   `NextToken` parameter. If there are no remaining results, the
    #   previous response object's `NextToken` parameter is set to `null`.
    #   @return [String]
    #
    # @!attribute [rw] resource_request_status_filter
    #   The filter criteria to apply to the requests returned.
    #   @return [Types::ResourceRequestStatusFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ListResourceRequestsInput AWS API Documentation
    #
    class ListResourceRequestsInput < Struct.new(
      :max_results,
      :next_token,
      :resource_request_status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_request_status_summaries
    #   The requests that match the specified filter criteria.
    #   @return [Array<Types::ProgressEvent>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all of the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call `ListResources` again and assign that token to the request
    #   object's `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ListResourceRequestsOutput AWS API Documentation
    #
    class ListResourceRequestsOutput < Struct.new(
      :resource_request_status_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_name
    #   The name of the resource type.
    #   @return [String]
    #
    # @!attribute [rw] type_version_id
    #   For private resource types, the type version to use in this resource
    #   operation. If you do not specify a resource version, CloudFormation
    #   uses the default version.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role for Cloud Control API to use when performing this
    #   resource operation. The role specified must have the permissions
    #   required for this operation. The necessary permissions for each
    #   event handler are defined in the ` handlers ` section of the
    #   [resource type definition schema][1].
    #
    #   If you do not specify a role, Cloud Control API uses a temporary
    #   session created using your Amazon Web Services user credentials.
    #
    #   For more information, see [Specifying credentials][2] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request didn't return all of the
    #   remaining results, the response object's `NextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   this action again and assign that token to the request object's
    #   `NextToken` parameter. If there are no remaining results, the
    #   previous response object's `NextToken` parameter is set to `null`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_model
    #   The resource model to use to select the resources to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ListResourcesInput AWS API Documentation
    #
    class ListResourcesInput < Struct.new(
      :type_name,
      :type_version_id,
      :role_arn,
      :next_token,
      :max_results,
      :resource_model)
      SENSITIVE = [:resource_model]
      include Aws::Structure
    end

    # @!attribute [rw] type_name
    #   The name of the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_descriptions
    #   Information about the specified resources, including primary
    #   identifier and resource model.
    #   @return [Array<Types::ResourceDescription>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all of the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call `ListResources` again and assign that token to the request
    #   object's `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ListResourcesOutput AWS API Documentation
    #
    class ListResourcesOutput < Struct.new(
      :type_name,
      :resource_descriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource handler has returned that the request couldn't be
    # completed due to networking issues, such as a failure to receive a
    # response from the server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/NetworkFailureException AWS API Documentation
    #
    class NetworkFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource handler has returned that the downstream resource failed
    # to complete all of its ready-state checks.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/NotStabilizedException AWS API Documentation
    #
    class NotStabilizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more properties included in this resource operation are defined
    # as create-only, and therefore can't be updated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/NotUpdatableException AWS API Documentation
    #
    class NotUpdatableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cloud Control API hasn't received a valid response from the resource
    # handler, due to a configuration error. This includes issues such as
    # the resource handler returning an invalid response, or timing out.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/PrivateTypeException AWS API Documentation
    #
    class PrivateTypeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the current status of a resource operation request. For
    # more information, see [Managing resource operation requests][1] in the
    # *Amazon Web Services Cloud Control API User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html
    #
    # @!attribute [rw] type_name
    #   The name of the resource type used in the operation.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The primary identifier for the resource.
    #
    #   <note markdown="1"> In some cases, the resource identifier may be available before the
    #   resource operation has reached a status of `SUCCESS`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] request_token
    #   The unique token representing this resource operation request.
    #
    #   Use the `RequestToken` with [GetResourceRequestStatus][1] to return
    #   the current status of a resource operation request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The resource operation type.
    #   @return [String]
    #
    # @!attribute [rw] operation_status
    #   The current status of the resource operation request.
    #
    #   * `PENDING`: The resource operation hasn't yet started.
    #
    #   * `IN_PROGRESS`: The resource operation is currently in progress.
    #
    #   * `SUCCESS`: The resource operation has successfully completed.
    #
    #   * `FAILED`: The resource operation has failed. Refer to the error
    #     code and status message for more information.
    #
    #   * `CANCEL_IN_PROGRESS`: The resource operation is in the process of
    #     being canceled.
    #
    #   * `CANCEL_COMPLETE`: The resource operation has been canceled.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   When the resource operation request was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] resource_model
    #   A JSON string containing the resource model, consisting of each
    #   resource property and its current value.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Any message explaining the current status.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   For requests with a status of `FAILED`, the associated error code.
    #
    #   For error code definitions, see [Handler error codes][1] in the
    #   *CloudFormation Command Line Interface User Guide for Extension
    #   Development*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-test-contract-errors.html
    #   @return [String]
    #
    # @!attribute [rw] retry_after
    #   When to next request the status of this resource operation request.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ProgressEvent AWS API Documentation
    #
    class ProgressEvent < Struct.new(
      :type_name,
      :identifier,
      :request_token,
      :operation,
      :operation_status,
      :event_time,
      :resource_model,
      :status_message,
      :error_code,
      :retry_after)
      SENSITIVE = [:resource_model]
      include Aws::Structure
    end

    # A resource operation with the specified request token can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/RequestTokenNotFoundException AWS API Documentation
    #
    class RequestTokenNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is temporarily unavailable to be acted upon. For example,
    # if the resource is currently undergoing an operation and can't be
    # acted upon until that operation is finished.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents information about a provisioned resource.
    #
    # @!attribute [rw] identifier
    #   The primary identifier for the resource.
    #
    #   For more information, see [Identifying resources][1] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   A list of the resource properties and their current values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ResourceDescription AWS API Documentation
    #
    class ResourceDescription < Struct.new(
      :identifier,
      :properties)
      SENSITIVE = [:properties]
      include Aws::Structure
    end

    # A resource with the specified identifier can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter criteria to use in determining the requests returned.
    #
    # @!attribute [rw] operations
    #   The operation types to include in the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operation_statuses
    #   The operation statuses to include in the filter.
    #
    #   * `PENDING`: The operation has been requested, but not yet
    #     initiated.
    #
    #   * `IN_PROGRESS`: The operation is in progress.
    #
    #   * `SUCCESS`: The operation completed.
    #
    #   * `FAILED`: The operation failed.
    #
    #   * `CANCEL_IN_PROGRESS`: The operation is in the process of being
    #     canceled.
    #
    #   * `CANCEL_COMPLETE`: The operation has been canceled.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ResourceRequestStatusFilter AWS API Documentation
    #
    class ResourceRequestStatusFilter < Struct.new(
      :operations,
      :operation_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource handler has returned that the downstream service returned
    # an internal error, typically with a `5XX HTTP` status code.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ServiceInternalErrorException AWS API Documentation
    #
    class ServiceInternalErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource handler has returned that a non-transient resource limit
    # was reached on the service side.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ServiceLimitExceededException AWS API Documentation
    #
    class ServiceLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified extension doesn't exist in the CloudFormation registry.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/TypeNotFoundException AWS API Documentation
    #
    class TypeNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource doesn't support this resource operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/UnsupportedActionException AWS API Documentation
    #
    class UnsupportedActionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_name
    #   The name of the resource type.
    #   @return [String]
    #
    # @!attribute [rw] type_version_id
    #   For private resource types, the type version to use in this resource
    #   operation. If you do not specify a resource version, CloudFormation
    #   uses the default version.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role for Cloud Control API to use when performing this
    #   resource operation. The role specified must have the permissions
    #   required for this operation. The necessary permissions for each
    #   event handler are defined in the ` handlers ` section of the
    #   [resource type definition schema][1].
    #
    #   If you do not specify a role, Cloud Control API uses a temporary
    #   session created using your Amazon Web Services user credentials.
    #
    #   For more information, see [Specifying credentials][2] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   [2]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier to ensure the idempotency of the resource
    #   request. As a best practice, specify this token to ensure
    #   idempotency, so that Amazon Web Services Cloud Control API can
    #   accurately distinguish between request retries and new resource
    #   requests. You might retry a resource request to ensure that it was
    #   successfully received.
    #
    #   A client token is valid for 36 hours once used. After that, a
    #   resource request with the same client token is treated as a new
    #   request.
    #
    #   If you do not specify a client token, one is generated for inclusion
    #   in the request.
    #
    #   For more information, see [Ensuring resource operation requests are
    #   unique][1] in the *Amazon Web Services Cloud Control API User
    #   Guide*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier for the resource.
    #
    #   You can specify the primary identifier, or any secondary identifier
    #   defined for the resource type in its resource schema. You can only
    #   specify one identifier. Primary identifiers can be specified as a
    #   string or JSON; secondary identifiers must be specified as JSON.
    #
    #   For compound primary identifiers (that is, one that consists of
    #   multiple resource properties strung together), to specify the
    #   primary identifier as a string, list the property values *in the
    #   order they are specified* in the primary identifier definition,
    #   separated by `|`.
    #
    #   For more information, see [Identifying resources][1] in the *Amazon
    #   Web Services Cloud Control API User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html
    #   @return [String]
    #
    # @!attribute [rw] patch_document
    #   A JavaScript Object Notation (JSON) document listing the patch
    #   operations that represent the updates to apply to the current
    #   resource properties. For details, see [Composing the patch
    #   document][1] in the *Amazon Web Services Cloud Control API User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html#resource-operations-update-patch
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/UpdateResourceInput AWS API Documentation
    #
    class UpdateResourceInput < Struct.new(
      :type_name,
      :type_version_id,
      :role_arn,
      :client_token,
      :identifier,
      :patch_document)
      SENSITIVE = [:patch_document]
      include Aws::Structure
    end

    # @!attribute [rw] progress_event
    #   Represents the current status of the resource update request.
    #
    #   Use the `RequestToken` of the `ProgressEvent` with
    #   [GetResourceRequestStatus][1] to return the current status of a
    #   resource operation request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html
    #   @return [Types::ProgressEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudcontrol-2021-09-30/UpdateResourceOutput AWS API Documentation
    #
    class UpdateResourceOutput < Struct.new(
      :progress_event)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
