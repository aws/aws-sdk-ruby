# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class DataPipeline

    # Client class for AWS Data Pipeline.
    class Client < Core::JSONClient

      # @private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method activate_pipeline(options = {})
      # Calls the ActivatePipeline API operation.
      # @param [Hash] options
      #   * +:pipeline_id+ - *required* - (String) The identifier of the
      #     pipeline to activate.
      # @return [Core::Response]

      # @!method create_pipeline(options = {})
      # Calls the CreatePipeline API operation.
      # @param [Hash] options
      #   * +:name+ - *required* - (String) The name of the new pipeline. You
      #     can use the same name for multiple pipelines associated with your
      #     AWS account, because AWS Data Pipeline assigns each new pipeline a
      #     unique pipeline identifier.
      #   * +:unique_id+ - *required* - (String) A unique identifier that you
      #     specify. This identifier is not the same as the pipeline identifier
      #     assigned by AWS Data Pipeline. You are responsible for defining the
      #     format and ensuring the uniqueness of this identifier. You use this
      #     parameter to ensure idempotency during repeated calls to
      #     CreatePipeline. For example, if the first call to CreatePipeline
      #     does not return a clear success, you can pass in the same unique
      #     identifier and pipeline name combination on a subsequent call to
      #     CreatePipeline. CreatePipeline ensures that if a pipeline already
      #     exists with the same name and unique identifier, a new pipeline
      #     will not be created. Instead, you'll receive the pipeline
      #     identifier from the previous attempt. The uniqueness of the name
      #     and unique identifier combination is scoped to the AWS account.
      #   * +:description+ - (String) The description of the new pipeline.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:pipeline_id+ - (String)

      # @!method delete_pipeline(options = {})
      # Calls the DeletePipeline API operation.
      # @param [Hash] options
      #   * +:pipeline_id+ - *required* - (String) The identifier of the
      #     pipeline to be deleted.
      # @return [Core::Response]

      # @!method describe_objects(options = {})
      # Calls the DescribeObjects API operation.
      # @param [Hash] options
      #   * +:pipeline_id+ - *required* - (String) Identifier of the pipeline
      #     that contains the object definitions.
      #   * +:object_ids+ - *required* - (Array<String>) Identifiers of the
      #     pipeline objects that contain the definitions to be described. You
      #     can pass as many as 25 identifiers in a single call to
      #     DescribeObjects
      #   * +:marker+ - (String) The starting point for the results to be
      #     returned. The first time you call DescribeObjects, this value
      #     should be empty. As long as the action returns HasMoreResults as
      #     True, you can call DescribeObjects again and pass the marker value
      #     from the response to retrieve the next set of results.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:pipeline_objects+ - (Array<Hash>)
      #     * +:id+ - (String)
      #     * +:name+ - (String)
      #     * +:fields+ - (Array<Hash>)
      #       * +:key+ - (String)
      #       * +:string_value+ - (String)
      #       * +:ref_value+ - (String)
      #   * +:marker+ - (String)
      #   * +:has_more_results+ - (Boolean)

      # @!method describe_pipelines(options = {})
      # Calls the DescribePipelines API operation.
      # @param [Hash] options
      #   * +:pipeline_ids+ - *required* - (Array<String>) Identifiers of the
      #     pipelines to describe. You can pass as many as 25 identifiers in a
      #     single call to DescribePipelines. You can obtain pipeline
      #     identifiers by calling ListPipelines.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:pipeline_description_list+ - (Array<Hash>)
      #     * +:pipeline_id+ - (String)
      #     * +:name+ - (String)
      #     * +:fields+ - (Array<Hash>)
      #       * +:key+ - (String)
      #       * +:string_value+ - (String)
      #       * +:ref_value+ - (String)
      #     * +:description+ - (String)

      # @!method evaluate_expression(options = {})
      # Calls the EvaluateExpression API operation.
      # @param [Hash] options
      #   * +:pipeline_id+ - *required* - (String)
      #   * +:object_id+ - *required* - (String)
      #   * +:expression+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:evaluated_expression+ - (String)

      # @!method get_pipeline_definition(options = {})
      # Calls the GetPipelineDefinition API operation.
      # @param [Hash] options
      #   * +:pipeline_id+ - *required* - (String) The identifier of the
      #     pipeline.
      #   * +:version+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:pipeline_objects+ - (Array<Hash>)
      #     * +:id+ - (String)
      #     * +:name+ - (String)
      #     * +:fields+ - (Array<Hash>)
      #       * +:key+ - (String)
      #       * +:string_value+ - (String)
      #       * +:ref_value+ - (String)

      # @!method list_pipelines(options = {})
      # Calls the ListPipelines API operation.
      # @param [Hash] options
      #   * +:marker+ - (String) The starting point for the results to be
      #     returned. The first time you call ListPipelines, this value should
      #     be empty. As long as the action returns HasMoreResults as True, you
      #     can call ListPipelines again and pass the marker value from the
      #     response to retrieve the next set of results.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:pipeline_id_list+ - (Array<Hash>)
      #     * +:id+ - (String)
      #     * +:name+ - (String)
      #   * +:marker+ - (String)
      #   * +:has_more_results+ - (Boolean)

      # @!method poll_for_task(options = {})
      # Calls the PollForTask API operation.
      # @param [Hash] options
      #   * +:worker_group+ - *required* - (String) Indicates the type of task
      #     the worker is configured to accept and process. The worker group is
      #     set as a field on objects in the pipeline when they are created.
      #     You can only specify a single value for workerGroup in the call to
      #     PollForTask. There are no wildcard values permitted in workerGroup,
      #     the string must be an exact match.
      #   * +:hostname+ - (String) The public DNS name of the calling worker
      #     client.
      #   * +:instance_identity+ - (Hash) Identity information for the Amazon
      #     EC2 instance that is hosting the worker client.
      #     * +:document+ - (String) A description of an Amazon EC2 instance
      #       that is generated when the instance is launched and exposed to
      #       the instance via the instance meta-data service in the form of a
      #       JSON representation of an object.
      #     * +:signature+ - (String) A signature which can be used to verify
      #       the accuracy and authenticity of the information provided in the
      #       instance identity document.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:task_object+ - (Hash)
      #     * +:task_id+ - (String)
      #     * +:pipeline_id+ - (String)
      #     * +:attempt_id+ - (String)
      #     * +:objects+ - (Hash<String,Hash>)
      #       * +:id+ - (String)
      #       * +:name+ - (String)
      #       * +:fields+ - (Array<Hash>)
      #         * +:key+ - (String)
      #         * +:string_value+ - (String)
      #         * +:ref_value+ - (String)

      # @!method put_pipeline_definition(options = {})
      # Calls the PutPipelineDefinition API operation.
      # @param [Hash] options
      #   * +:pipeline_id+ - *required* - (String) The identifier of the
      #     pipeline to be configured.
      #   * +:pipeline_objects+ - *required* - (Array<Hash>) The objects that
      #     define the pipeline. These will overwrite the existing pipeline
      #     definition.
      #     * +:id+ - *required* - (String) Identifier of the object.
      #     * +:name+ - *required* - (String) Name of the object.
      #     * +:fields+ - *required* - (Array<Hash>) Key-value pairs that
      #       define the properties of the object.
      #       * +:key+ - *required* - (String) The field identifier.
      #       * +:string_value+ - (String) The field value, expressed as a
      #         String.
      #       * +:ref_value+ - (String) The field value, expressed as the
      #         identifier of another object.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:validation_errors+ - (Array<Hash>)
      #     * +:id+ - (String)
      #     * +:errors+ - (Array<String>)
      #   * +:errored+ - (Boolean)

      # @!method query_objects(options = {})
      # Calls the QueryObjects API operation.
      # @param [Hash] options
      #   * +:pipeline_id+ - *required* - (String) Identifier of the pipeline
      #     to be queried for object names.
      #   * +:query+ - (Hash) Query that defines the objects to be returned.
      #     The Query object can contain a maximum of ten selectors. The
      #     conditions in the query are limited to top-level String fields in
      #     the object. These filters can be applied to both logical, physical,
      #     and physical attempt objects.
      #     * +:selectors+ - (Array<Hash>) List of selectors that define the
      #       query. An object must satisfy all of the selectors to match the
      #       query.
      #       * +:field_name+ - (String) The name of the field that the
      #         operator will be applied to. The field name is the "key"
      #         portion of the field definition in the pipeline definition
      #         syntax that is used by the AWS Data Pipeline API.
      #       * +:operator+ - (Hash)
      #         * +:type+ - (String) The logical operation to be performed:
      #           equal (EQ), equal reference (REF_EQ), less than or equal
      #           (LE), greater than or equal (GE), or between (BETWEEN). Equal
      #           reference (REF_EQ) can be used only with reference fields.
      #           The other comparison types can be used only with String
      #           fields.
      #         * +:values+ - (Array<String>) The value that the actual field
      #           value will be compared with.
      #   * +:sphere+ - *required* - (String) Specifies whether the query
      #     applies to logical objects or physical objects. Allowable values:
      #     LO (logical object), PO (physical object), POAttempt (physical
      #     object attempt).
      #   * +:marker+ - (String) The starting point for the results to be
      #     returned. The first time you call QueryObjects, this value should
      #     be empty. As long as the action returns HasMoreResults as True, you
      #     can call QueryObjects again and pass the marker value from the
      #     response to retrieve the next set of results.
      #   * +:limit+ - (Integer) Specifies the maximum number of object names
      #     that QueryObjects will return in a single call. The default value
      #     is 100.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:ids+ - (Array<String>)
      #   * +:marker+ - (String)
      #   * +:has_more_results+ - (Boolean)

      # @!method report_task_progress(options = {})
      # Calls the ReportTaskProgress API operation.
      # @param [Hash] options
      #   * +:task_id+ - *required* - (String) Identifier of the task assigned
      #     to the worker. This value is provided in the TaskObject that the
      #     service returns with the response for the PollForTask action.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:canceled+ - (Boolean)

      # @!method set_status(options = {})
      # Calls the SetStatus API operation.
      # @param [Hash] options
      #   * +:pipeline_id+ - *required* - (String) Identifies the pipeline that
      #     contains the objects.
      #   * +:object_ids+ - *required* - (Array<String>) Identifies an array of
      #     objects. The corresponding objects can be either physical or
      #     logical objects, but not a mix of both types.
      #   * +:status+ - *required* - (String) Specifies the status to be set on
      #     all the objects in objectIds.member.N. For logical objects, this
      #     can be either pause or resume. For physical objects, this can be
      #     either cancel or rerun.
      # @return [Core::Response]

      # @!method set_task_status(options = {})
      # Calls the SetTaskStatus API operation.
      # @param [Hash] options
      #   * +:task_id+ - *required* - (String) Identifies the task assigned to
      #     the worker. This value is set in the TaskObject that is returned by
      #     the PollForTask action.
      #   * +:task_status+ - *required* - (String) If FINISHED, the task was
      #     Status successfully completed.
      #   * +:error_code+ - (Integer) If an error occurred during the task,
      #     specifies a numerical value that represents the error. This value
      #     is set on the physical attempt object. It is used to display error
      #     information to the user. The web service does not parse this value.
      #   * +:error_message+ - (String) If an error occurred during the task,
      #     specifies a text description of the error. This value is set on the
      #     physical attempt object. It is used to display error information to
      #     the user. The web service does not parse this value.
      #   * +:error_stack_trace+ - (String) If an error occurred during the
      #     task, specifies the stack trace associated with the error. This
      #     value is set on the physical attempt object. It is used to display
      #     error information to the user. The web service does not parse this
      #     value.
      # @return [Core::Response]

      # @!method validate_pipeline_definition(options = {})
      # Calls the ValidatePipelineDefinition API operation.
      # @param [Hash] options
      #   * +:pipeline_id+ - *required* - (String) Identifies the pipeline
      #     whose definition is to be validated.
      #   * +:pipeline_objects+ - *required* - (Array<Hash>) A list of objects
      #     that define the pipeline changes to validate against the pipeline.
      #     * +:id+ - *required* - (String) Identifier of the object.
      #     * +:name+ - *required* - (String) Name of the object.
      #     * +:fields+ - *required* - (Array<Hash>) Key-value pairs that
      #       define the properties of the object.
      #       * +:key+ - *required* - (String) The field identifier.
      #       * +:string_value+ - (String) The field value, expressed as a
      #         String.
      #       * +:ref_value+ - (String) The field value, expressed as the
      #         identifier of another object.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:validation_errors+ - (Array<Hash>)
      #     * +:id+ - (String)
      #     * +:errors+ - (Array<String>)
      #   * +:errored+ - (Boolean)

      # end client methods #

      define_client_methods('2012-10-29')

    end
  end
end
