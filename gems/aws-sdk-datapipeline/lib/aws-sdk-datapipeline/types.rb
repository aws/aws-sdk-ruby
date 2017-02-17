# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DataPipeline
  module Types

    # Contains the parameters for ActivatePipeline.
    #
    # @note When making an API call, you may pass ActivatePipelineInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #         parameter_values: [
    #           {
    #             id: "fieldNameString", # required
    #             string_value: "fieldStringValue", # required
    #           },
    #         ],
    #         start_timestamp: Time.now,
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] parameter_values
    #   A list of parameter values to pass to the pipeline at activation.
    #   @return [Array<Types::ParameterValue>]
    #
    # @!attribute [rw] start_timestamp
    #   The date and time to resume the pipeline. By default, the pipeline
    #   resumes from the last completed execution.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ActivatePipelineInput AWS API Documentation
    #
    class ActivatePipelineInput < Struct.new(
      :pipeline_id,
      :parameter_values,
      :start_timestamp)
      include Aws::Structure
    end

    # Contains the output of ActivatePipeline.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ActivatePipelineOutput AWS API Documentation
    #
    class ActivatePipelineOutput < Aws::EmptyStructure; end

    # Contains the parameters for AddTags.
    #
    # @note When making an API call, you may pass AddTagsInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #         tags: [ # required
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add, as key/value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/AddTagsInput AWS API Documentation
    #
    class AddTagsInput < Struct.new(
      :pipeline_id,
      :tags)
      include Aws::Structure
    end

    # Contains the output of AddTags.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/AddTagsOutput AWS API Documentation
    #
    class AddTagsOutput < Aws::EmptyStructure; end

    # Contains the parameters for CreatePipeline.
    #
    # @note When making an API call, you may pass CreatePipelineInput
    #   data as a hash:
    #
    #       {
    #         name: "id", # required
    #         unique_id: "id", # required
    #         description: "string",
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name for the pipeline. You can use the same name for multiple
    #   pipelines associated with your AWS account, because AWS Data
    #   Pipeline assigns each pipeline a unique pipeline identifier.
    #   @return [String]
    #
    # @!attribute [rw] unique_id
    #   A unique identifier. This identifier is not the same as the pipeline
    #   identifier assigned by AWS Data Pipeline. You are responsible for
    #   defining the format and ensuring the uniqueness of this identifier.
    #   You use this parameter to ensure idempotency during repeated calls
    #   to `CreatePipeline`. For example, if the first call to
    #   `CreatePipeline` does not succeed, you can pass in the same unique
    #   identifier and pipeline name combination on a subsequent call to
    #   `CreatePipeline`. `CreatePipeline` ensures that if a pipeline
    #   already exists with the same name and unique identifier, a new
    #   pipeline is not created. Instead, you'll receive the pipeline
    #   identifier from the previous attempt. The uniqueness of the name and
    #   unique identifier combination is scoped to the AWS account or IAM
    #   user credentials.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with the pipeline at creation. Tags let
    #   you control access to pipelines. For more information, see
    #   [Controlling User Access to Pipelines][1] in the *AWS Data Pipeline
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/CreatePipelineInput AWS API Documentation
    #
    class CreatePipelineInput < Struct.new(
      :name,
      :unique_id,
      :description,
      :tags)
      include Aws::Structure
    end

    # Contains the output of CreatePipeline.
    #
    # @!attribute [rw] pipeline_id
    #   The ID that AWS Data Pipeline assigns the newly created pipeline.
    #   For example, `df-06372391ZG65EXAMPLE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/CreatePipelineOutput AWS API Documentation
    #
    class CreatePipelineOutput < Struct.new(
      :pipeline_id)
      include Aws::Structure
    end

    # Contains the parameters for DeactivatePipeline.
    #
    # @note When making an API call, you may pass DeactivatePipelineInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #         cancel_active: false,
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] cancel_active
    #   Indicates whether to cancel any running objects. The default is
    #   true, which sets the state of any running objects to `CANCELED`. If
    #   this value is false, the pipeline is deactivated after all running
    #   objects finish.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DeactivatePipelineInput AWS API Documentation
    #
    class DeactivatePipelineInput < Struct.new(
      :pipeline_id,
      :cancel_active)
      include Aws::Structure
    end

    # Contains the output of DeactivatePipeline.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DeactivatePipelineOutput AWS API Documentation
    #
    class DeactivatePipelineOutput < Aws::EmptyStructure; end

    # Contains the parameters for DeletePipeline.
    #
    # @note When making an API call, you may pass DeletePipelineInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DeletePipelineInput AWS API Documentation
    #
    class DeletePipelineInput < Struct.new(
      :pipeline_id)
      include Aws::Structure
    end

    # Contains the parameters for DescribeObjects.
    #
    # @note When making an API call, you may pass DescribeObjectsInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #         object_ids: ["id"], # required
    #         evaluate_expressions: false,
    #         marker: "string",
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline that contains the object definitions.
    #   @return [String]
    #
    # @!attribute [rw] object_ids
    #   The IDs of the pipeline objects that contain the definitions to be
    #   described. You can pass as many as 25 identifiers in a single call
    #   to `DescribeObjects`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] evaluate_expressions
    #   Indicates whether any expressions in the object should be evaluated
    #   when the object descriptions are returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   The starting point for the results to be returned. For the first
    #   call, this value should be empty. As long as there are more results,
    #   continue to call `DescribeObjects` with the marker value from the
    #   previous call to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DescribeObjectsInput AWS API Documentation
    #
    class DescribeObjectsInput < Struct.new(
      :pipeline_id,
      :object_ids,
      :evaluate_expressions,
      :marker)
      include Aws::Structure
    end

    # Contains the output of DescribeObjects.
    #
    # @!attribute [rw] pipeline_objects
    #   An array of object definitions.
    #   @return [Array<Types::PipelineObject>]
    #
    # @!attribute [rw] marker
    #   The starting point for the next page of results. To view the next
    #   page of results, call `DescribeObjects` again with this marker
    #   value. If the value is null, there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] has_more_results
    #   Indicates whether there are more results to return.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DescribeObjectsOutput AWS API Documentation
    #
    class DescribeObjectsOutput < Struct.new(
      :pipeline_objects,
      :marker,
      :has_more_results)
      include Aws::Structure
    end

    # Contains the parameters for DescribePipelines.
    #
    # @note When making an API call, you may pass DescribePipelinesInput
    #   data as a hash:
    #
    #       {
    #         pipeline_ids: ["id"], # required
    #       }
    #
    # @!attribute [rw] pipeline_ids
    #   The IDs of the pipelines to describe. You can pass as many as 25
    #   identifiers in a single call. To obtain pipeline IDs, call
    #   ListPipelines.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DescribePipelinesInput AWS API Documentation
    #
    class DescribePipelinesInput < Struct.new(
      :pipeline_ids)
      include Aws::Structure
    end

    # Contains the output of DescribePipelines.
    #
    # @!attribute [rw] pipeline_description_list
    #   An array of descriptions for the specified pipelines.
    #   @return [Array<Types::PipelineDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DescribePipelinesOutput AWS API Documentation
    #
    class DescribePipelinesOutput < Struct.new(
      :pipeline_description_list)
      include Aws::Structure
    end

    # Contains the parameters for EvaluateExpression.
    #
    # @note When making an API call, you may pass EvaluateExpressionInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #         object_id: "id", # required
    #         expression: "longString", # required
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] object_id
    #   The ID of the object.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The expression to evaluate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/EvaluateExpressionInput AWS API Documentation
    #
    class EvaluateExpressionInput < Struct.new(
      :pipeline_id,
      :object_id,
      :expression)
      include Aws::Structure
    end

    # Contains the output of EvaluateExpression.
    #
    # @!attribute [rw] evaluated_expression
    #   The evaluated expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/EvaluateExpressionOutput AWS API Documentation
    #
    class EvaluateExpressionOutput < Struct.new(
      :evaluated_expression)
      include Aws::Structure
    end

    # A key-value pair that describes a property of a pipeline object. The
    # value is specified as either a string value (`StringValue`) or a
    # reference to another object (`RefValue`) but not as both.
    #
    # @note When making an API call, you may pass Field
    #   data as a hash:
    #
    #       {
    #         key: "fieldNameString", # required
    #         string_value: "fieldStringValue",
    #         ref_value: "fieldNameString",
    #       }
    #
    # @!attribute [rw] key
    #   The field identifier.
    #   @return [String]
    #
    # @!attribute [rw] string_value
    #   The field value, expressed as a String.
    #   @return [String]
    #
    # @!attribute [rw] ref_value
    #   The field value, expressed as the identifier of another object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/Field AWS API Documentation
    #
    class Field < Struct.new(
      :key,
      :string_value,
      :ref_value)
      include Aws::Structure
    end

    # Contains the parameters for GetPipelineDefinition.
    #
    # @note When making an API call, you may pass GetPipelineDefinitionInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #         version: "string",
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the pipeline definition to retrieve. Set this
    #   parameter to `latest` (default) to use the last definition saved to
    #   the pipeline or `active` to use the last definition that was
    #   activated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/GetPipelineDefinitionInput AWS API Documentation
    #
    class GetPipelineDefinitionInput < Struct.new(
      :pipeline_id,
      :version)
      include Aws::Structure
    end

    # Contains the output of GetPipelineDefinition.
    #
    # @!attribute [rw] pipeline_objects
    #   The objects defined in the pipeline.
    #   @return [Array<Types::PipelineObject>]
    #
    # @!attribute [rw] parameter_objects
    #   The parameter objects used in the pipeline definition.
    #   @return [Array<Types::ParameterObject>]
    #
    # @!attribute [rw] parameter_values
    #   The parameter values used in the pipeline definition.
    #   @return [Array<Types::ParameterValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/GetPipelineDefinitionOutput AWS API Documentation
    #
    class GetPipelineDefinitionOutput < Struct.new(
      :pipeline_objects,
      :parameter_objects,
      :parameter_values)
      include Aws::Structure
    end

    # Identity information for the EC2 instance that is hosting the task
    # runner. You can get this value by calling a metadata URI from the EC2
    # instance. For more information, see [Instance Metadata][1] in the
    # *Amazon Elastic Compute Cloud User Guide.* Passing in this value
    # proves that your task runner is running on an EC2 instance, and
    # ensures the proper AWS Data Pipeline service charges are applied to
    # your pipeline.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html
    #
    # @note When making an API call, you may pass InstanceIdentity
    #   data as a hash:
    #
    #       {
    #         document: "string",
    #         signature: "string",
    #       }
    #
    # @!attribute [rw] document
    #   A description of an EC2 instance that is generated when the instance
    #   is launched and exposed to the instance via the instance metadata
    #   service in the form of a JSON representation of an object.
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   A signature which can be used to verify the accuracy and
    #   authenticity of the information provided in the instance identity
    #   document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/InstanceIdentity AWS API Documentation
    #
    class InstanceIdentity < Struct.new(
      :document,
      :signature)
      include Aws::Structure
    end

    # Contains the parameters for ListPipelines.
    #
    # @note When making an API call, you may pass ListPipelinesInput
    #   data as a hash:
    #
    #       {
    #         marker: "string",
    #       }
    #
    # @!attribute [rw] marker
    #   The starting point for the results to be returned. For the first
    #   call, this value should be empty. As long as there are more results,
    #   continue to call `ListPipelines` with the marker value from the
    #   previous call to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ListPipelinesInput AWS API Documentation
    #
    class ListPipelinesInput < Struct.new(
      :marker)
      include Aws::Structure
    end

    # Contains the output of ListPipelines.
    #
    # @!attribute [rw] pipeline_id_list
    #   The pipeline identifiers. If you require additional information
    #   about the pipelines, you can use these identifiers to call
    #   DescribePipelines and GetPipelineDefinition.
    #   @return [Array<Types::PipelineIdName>]
    #
    # @!attribute [rw] marker
    #   The starting point for the next page of results. To view the next
    #   page of results, call `ListPipelinesOutput` again with this marker
    #   value. If the value is null, there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] has_more_results
    #   Indicates whether there are more results that can be obtained by a
    #   subsequent call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ListPipelinesOutput AWS API Documentation
    #
    class ListPipelinesOutput < Struct.new(
      :pipeline_id_list,
      :marker,
      :has_more_results)
      include Aws::Structure
    end

    # Contains a logical operation for comparing the value of a field with a
    # specified value.
    #
    # @note When making an API call, you may pass Operator
    #   data as a hash:
    #
    #       {
    #         type: "EQ", # accepts EQ, REF_EQ, LE, GE, BETWEEN
    #         values: ["string"],
    #       }
    #
    # @!attribute [rw] type
    #   The logical operation to be performed: equal (`EQ`), equal reference
    #   (`REF_EQ`), less than or equal (`LE`), greater than or equal (`GE`),
    #   or between (`BETWEEN`). Equal reference (`REF_EQ`) can be used only
    #   with reference fields. The other comparison types can be used only
    #   with String fields. The comparison types you can use apply only to
    #   certain object fields, as detailed below.
    #
    #   The comparison operators EQ and REF\_EQ act on the following fields:
    #
    #   * name
    #   * @sphere
    #   * parent
    #   * @componentParent
    #   * @instanceParent
    #   * @status
    #   * @scheduledStartTime
    #   * @scheduledEndTime
    #   * @actualStartTime
    #   * @actualEndTime
    #
    #   The comparison operators `GE`, `LE`, and `BETWEEN` act on the
    #   following fields:
    #
    #   * @scheduledStartTime
    #   * @scheduledEndTime
    #   * @actualStartTime
    #   * @actualEndTime
    #
    #   Note that fields beginning with the at sign (@) are read-only and
    #   set by the web service. When you name fields, you should choose
    #   names containing only alpha-numeric values, as symbols may be
    #   reserved by AWS Data Pipeline. User-defined fields that you add to a
    #   pipeline should prefix their name with the string "my".
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value that the actual field value will be compared with.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/Operator AWS API Documentation
    #
    class Operator < Struct.new(
      :type,
      :values)
      include Aws::Structure
    end

    # The attributes allowed or specified with a parameter object.
    #
    # @note When making an API call, you may pass ParameterAttribute
    #   data as a hash:
    #
    #       {
    #         key: "attributeNameString", # required
    #         string_value: "attributeValueString", # required
    #       }
    #
    # @!attribute [rw] key
    #   The field identifier.
    #   @return [String]
    #
    # @!attribute [rw] string_value
    #   The field value, expressed as a String.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ParameterAttribute AWS API Documentation
    #
    class ParameterAttribute < Struct.new(
      :key,
      :string_value)
      include Aws::Structure
    end

    # Contains information about a parameter object.
    #
    # @note When making an API call, you may pass ParameterObject
    #   data as a hash:
    #
    #       {
    #         id: "fieldNameString", # required
    #         attributes: [ # required
    #           {
    #             key: "attributeNameString", # required
    #             string_value: "attributeValueString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the parameter object.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes of the parameter object.
    #   @return [Array<Types::ParameterAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ParameterObject AWS API Documentation
    #
    class ParameterObject < Struct.new(
      :id,
      :attributes)
      include Aws::Structure
    end

    # A value or list of parameter values.
    #
    # @note When making an API call, you may pass ParameterValue
    #   data as a hash:
    #
    #       {
    #         id: "fieldNameString", # required
    #         string_value: "fieldStringValue", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the parameter value.
    #   @return [String]
    #
    # @!attribute [rw] string_value
    #   The field value, expressed as a String.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ParameterValue AWS API Documentation
    #
    class ParameterValue < Struct.new(
      :id,
      :string_value)
      include Aws::Structure
    end

    # Contains pipeline metadata.
    #
    # @!attribute [rw] pipeline_id
    #   The pipeline identifier that was assigned by AWS Data Pipeline. This
    #   is a string of the form `df-297EG78HU43EEXAMPLE`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   A list of read-only fields that contain metadata about the pipeline:
    #   @userId, @accountId, and @pipelineState.
    #   @return [Array<Types::Field>]
    #
    # @!attribute [rw] description
    #   Description of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associated with a pipeline. Tags let you control
    #   access to pipelines. For more information, see [Controlling User
    #   Access to Pipelines][1] in the *AWS Data Pipeline Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/PipelineDescription AWS API Documentation
    #
    class PipelineDescription < Struct.new(
      :pipeline_id,
      :name,
      :fields,
      :description,
      :tags)
      include Aws::Structure
    end

    # Contains the name and identifier of a pipeline.
    #
    # @!attribute [rw] id
    #   The ID of the pipeline that was assigned by AWS Data Pipeline. This
    #   is a string of the form `df-297EG78HU43EEXAMPLE`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/PipelineIdName AWS API Documentation
    #
    class PipelineIdName < Struct.new(
      :id,
      :name)
      include Aws::Structure
    end

    # Contains information about a pipeline object. This can be a logical,
    # physical, or physical attempt pipeline object. The complete set of
    # components of a pipeline defines the pipeline.
    #
    # @note When making an API call, you may pass PipelineObject
    #   data as a hash:
    #
    #       {
    #         id: "id", # required
    #         name: "id", # required
    #         fields: [ # required
    #           {
    #             key: "fieldNameString", # required
    #             string_value: "fieldStringValue",
    #             ref_value: "fieldNameString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the object.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the object.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   Key-value pairs that define the properties of the object.
    #   @return [Array<Types::Field>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/PipelineObject AWS API Documentation
    #
    class PipelineObject < Struct.new(
      :id,
      :name,
      :fields)
      include Aws::Structure
    end

    # Contains the parameters for PollForTask.
    #
    # @note When making an API call, you may pass PollForTaskInput
    #   data as a hash:
    #
    #       {
    #         worker_group: "string", # required
    #         hostname: "id",
    #         instance_identity: {
    #           document: "string",
    #           signature: "string",
    #         },
    #       }
    #
    # @!attribute [rw] worker_group
    #   The type of task the task runner is configured to accept and
    #   process. The worker group is set as a field on objects in the
    #   pipeline when they are created. You can only specify a single value
    #   for `workerGroup` in the call to `PollForTask`. There are no
    #   wildcard values permitted in `workerGroup`; the string must be an
    #   exact, case-sensitive, match.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   The public DNS name of the calling task runner.
    #   @return [String]
    #
    # @!attribute [rw] instance_identity
    #   Identity information for the EC2 instance that is hosting the task
    #   runner. You can get this value from the instance using
    #   `http://169.254.169.254/latest/meta-data/instance-id`. For more
    #   information, see [Instance Metadata][1] in the *Amazon Elastic
    #   Compute Cloud User Guide.* Passing in this value proves that your
    #   task runner is running on an EC2 instance, and ensures the proper
    #   AWS Data Pipeline service charges are applied to your pipeline.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html
    #   @return [Types::InstanceIdentity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/PollForTaskInput AWS API Documentation
    #
    class PollForTaskInput < Struct.new(
      :worker_group,
      :hostname,
      :instance_identity)
      include Aws::Structure
    end

    # Contains the output of PollForTask.
    #
    # @!attribute [rw] task_object
    #   The information needed to complete the task that is being assigned
    #   to the task runner. One of the fields returned in this object is
    #   `taskId`, which contains an identifier for the task being assigned.
    #   The calling task runner uses `taskId` in subsequent calls to
    #   ReportTaskProgress and SetTaskStatus.
    #   @return [Types::TaskObject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/PollForTaskOutput AWS API Documentation
    #
    class PollForTaskOutput < Struct.new(
      :task_object)
      include Aws::Structure
    end

    # Contains the parameters for PutPipelineDefinition.
    #
    # @note When making an API call, you may pass PutPipelineDefinitionInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #         pipeline_objects: [ # required
    #           {
    #             id: "id", # required
    #             name: "id", # required
    #             fields: [ # required
    #               {
    #                 key: "fieldNameString", # required
    #                 string_value: "fieldStringValue",
    #                 ref_value: "fieldNameString",
    #               },
    #             ],
    #           },
    #         ],
    #         parameter_objects: [
    #           {
    #             id: "fieldNameString", # required
    #             attributes: [ # required
    #               {
    #                 key: "attributeNameString", # required
    #                 string_value: "attributeValueString", # required
    #               },
    #             ],
    #           },
    #         ],
    #         parameter_values: [
    #           {
    #             id: "fieldNameString", # required
    #             string_value: "fieldStringValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_objects
    #   The objects that define the pipeline. These objects overwrite the
    #   existing pipeline definition.
    #   @return [Array<Types::PipelineObject>]
    #
    # @!attribute [rw] parameter_objects
    #   The parameter objects used with the pipeline.
    #   @return [Array<Types::ParameterObject>]
    #
    # @!attribute [rw] parameter_values
    #   The parameter values used with the pipeline.
    #   @return [Array<Types::ParameterValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/PutPipelineDefinitionInput AWS API Documentation
    #
    class PutPipelineDefinitionInput < Struct.new(
      :pipeline_id,
      :pipeline_objects,
      :parameter_objects,
      :parameter_values)
      include Aws::Structure
    end

    # Contains the output of PutPipelineDefinition.
    #
    # @!attribute [rw] validation_errors
    #   The validation errors that are associated with the objects defined
    #   in `pipelineObjects`.
    #   @return [Array<Types::ValidationError>]
    #
    # @!attribute [rw] validation_warnings
    #   The validation warnings that are associated with the objects defined
    #   in `pipelineObjects`.
    #   @return [Array<Types::ValidationWarning>]
    #
    # @!attribute [rw] errored
    #   Indicates whether there were validation errors, and the pipeline
    #   definition is stored but cannot be activated until you correct the
    #   pipeline and call `PutPipelineDefinition` to commit the corrected
    #   pipeline.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/PutPipelineDefinitionOutput AWS API Documentation
    #
    class PutPipelineDefinitionOutput < Struct.new(
      :validation_errors,
      :validation_warnings,
      :errored)
      include Aws::Structure
    end

    # Defines the query to run against an object.
    #
    # @note When making an API call, you may pass Query
    #   data as a hash:
    #
    #       {
    #         selectors: [
    #           {
    #             field_name: "string",
    #             operator: {
    #               type: "EQ", # accepts EQ, REF_EQ, LE, GE, BETWEEN
    #               values: ["string"],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] selectors
    #   List of selectors that define the query. An object must satisfy all
    #   of the selectors to match the query.
    #   @return [Array<Types::Selector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/Query AWS API Documentation
    #
    class Query < Struct.new(
      :selectors)
      include Aws::Structure
    end

    # Contains the parameters for QueryObjects.
    #
    # @note When making an API call, you may pass QueryObjectsInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #         query: {
    #           selectors: [
    #             {
    #               field_name: "string",
    #               operator: {
    #                 type: "EQ", # accepts EQ, REF_EQ, LE, GE, BETWEEN
    #                 values: ["string"],
    #               },
    #             },
    #           ],
    #         },
    #         sphere: "string", # required
    #         marker: "string",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] query
    #   The query that defines the objects to be returned. The `Query`
    #   object can contain a maximum of ten selectors. The conditions in the
    #   query are limited to top-level String fields in the object. These
    #   filters can be applied to components, instances, and attempts.
    #   @return [Types::Query]
    #
    # @!attribute [rw] sphere
    #   Indicates whether the query applies to components or instances. The
    #   possible values are: `COMPONENT`, `INSTANCE`, and `ATTEMPT`.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The starting point for the results to be returned. For the first
    #   call, this value should be empty. As long as there are more results,
    #   continue to call `QueryObjects` with the marker value from the
    #   previous call to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of object names that `QueryObjects` will return
    #   in a single call. The default value is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/QueryObjectsInput AWS API Documentation
    #
    class QueryObjectsInput < Struct.new(
      :pipeline_id,
      :query,
      :sphere,
      :marker,
      :limit)
      include Aws::Structure
    end

    # Contains the output of QueryObjects.
    #
    # @!attribute [rw] ids
    #   The identifiers that match the query selectors.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   The starting point for the next page of results. To view the next
    #   page of results, call `QueryObjects` again with this marker value.
    #   If the value is null, there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] has_more_results
    #   Indicates whether there are more results that can be obtained by a
    #   subsequent call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/QueryObjectsOutput AWS API Documentation
    #
    class QueryObjectsOutput < Struct.new(
      :ids,
      :marker,
      :has_more_results)
      include Aws::Structure
    end

    # Contains the parameters for RemoveTags.
    #
    # @note When making an API call, you may pass RemoveTagsInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #         tag_keys: ["string"], # required
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/RemoveTagsInput AWS API Documentation
    #
    class RemoveTagsInput < Struct.new(
      :pipeline_id,
      :tag_keys)
      include Aws::Structure
    end

    # Contains the output of RemoveTags.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/RemoveTagsOutput AWS API Documentation
    #
    class RemoveTagsOutput < Aws::EmptyStructure; end

    # Contains the parameters for ReportTaskProgress.
    #
    # @note When making an API call, you may pass ReportTaskProgressInput
    #   data as a hash:
    #
    #       {
    #         task_id: "taskId", # required
    #         fields: [
    #           {
    #             key: "fieldNameString", # required
    #             string_value: "fieldStringValue",
    #             ref_value: "fieldNameString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] task_id
    #   The ID of the task assigned to the task runner. This value is
    #   provided in the response for PollForTask.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   Key-value pairs that define the properties of the
    #   ReportTaskProgressInput object.
    #   @return [Array<Types::Field>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ReportTaskProgressInput AWS API Documentation
    #
    class ReportTaskProgressInput < Struct.new(
      :task_id,
      :fields)
      include Aws::Structure
    end

    # Contains the output of ReportTaskProgress.
    #
    # @!attribute [rw] canceled
    #   If true, the calling task runner should cancel processing of the
    #   task. The task runner does not need to call SetTaskStatus for
    #   canceled tasks.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ReportTaskProgressOutput AWS API Documentation
    #
    class ReportTaskProgressOutput < Struct.new(
      :canceled)
      include Aws::Structure
    end

    # Contains the parameters for ReportTaskRunnerHeartbeat.
    #
    # @note When making an API call, you may pass ReportTaskRunnerHeartbeatInput
    #   data as a hash:
    #
    #       {
    #         taskrunner_id: "id", # required
    #         worker_group: "string",
    #         hostname: "id",
    #       }
    #
    # @!attribute [rw] taskrunner_id
    #   The ID of the task runner. This value should be unique across your
    #   AWS account. In the case of AWS Data Pipeline Task Runner launched
    #   on a resource managed by AWS Data Pipeline, the web service provides
    #   a unique identifier when it launches the application. If you have
    #   written a custom task runner, you should assign a unique identifier
    #   for the task runner.
    #   @return [String]
    #
    # @!attribute [rw] worker_group
    #   The type of task the task runner is configured to accept and
    #   process. The worker group is set as a field on objects in the
    #   pipeline when they are created. You can only specify a single value
    #   for `workerGroup`. There are no wildcard values permitted in
    #   `workerGroup`; the string must be an exact, case-sensitive, match.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   The public DNS name of the task runner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ReportTaskRunnerHeartbeatInput AWS API Documentation
    #
    class ReportTaskRunnerHeartbeatInput < Struct.new(
      :taskrunner_id,
      :worker_group,
      :hostname)
      include Aws::Structure
    end

    # Contains the output of ReportTaskRunnerHeartbeat.
    #
    # @!attribute [rw] terminate
    #   Indicates whether the calling task runner should terminate.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ReportTaskRunnerHeartbeatOutput AWS API Documentation
    #
    class ReportTaskRunnerHeartbeatOutput < Struct.new(
      :terminate)
      include Aws::Structure
    end

    # A comparision that is used to determine whether a query should return
    # this object.
    #
    # @note When making an API call, you may pass Selector
    #   data as a hash:
    #
    #       {
    #         field_name: "string",
    #         operator: {
    #           type: "EQ", # accepts EQ, REF_EQ, LE, GE, BETWEEN
    #           values: ["string"],
    #         },
    #       }
    #
    # @!attribute [rw] field_name
    #   The name of the field that the operator will be applied to. The
    #   field name is the "key" portion of the field definition in the
    #   pipeline definition syntax that is used by the AWS Data Pipeline
    #   API. If the field is not set on the object, the condition fails.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   Contains a logical operation for comparing the value of a field with
    #   a specified value.
    #   @return [Types::Operator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/Selector AWS API Documentation
    #
    class Selector < Struct.new(
      :field_name,
      :operator)
      include Aws::Structure
    end

    # Contains the parameters for SetStatus.
    #
    # @note When making an API call, you may pass SetStatusInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #         object_ids: ["id"], # required
    #         status: "string", # required
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline that contains the objects.
    #   @return [String]
    #
    # @!attribute [rw] object_ids
    #   The IDs of the objects. The corresponding objects can be either
    #   physical or components, but not a mix of both types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status to be set on all the objects specified in `objectIds`.
    #   For components, use `PAUSE` or `RESUME`. For instances, use
    #   `TRY_CANCEL`, `RERUN`, or `MARK_FINISHED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/SetStatusInput AWS API Documentation
    #
    class SetStatusInput < Struct.new(
      :pipeline_id,
      :object_ids,
      :status)
      include Aws::Structure
    end

    # Contains the parameters for SetTaskStatus.
    #
    # @note When making an API call, you may pass SetTaskStatusInput
    #   data as a hash:
    #
    #       {
    #         task_id: "taskId", # required
    #         task_status: "FINISHED", # required, accepts FINISHED, FAILED, FALSE
    #         error_id: "string",
    #         error_message: "errorMessage",
    #         error_stack_trace: "string",
    #       }
    #
    # @!attribute [rw] task_id
    #   The ID of the task assigned to the task runner. This value is
    #   provided in the response for PollForTask.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   If `FINISHED`, the task successfully completed. If `FAILED`, the
    #   task ended unsuccessfully. Preconditions use false.
    #   @return [String]
    #
    # @!attribute [rw] error_id
    #   If an error occurred during the task, this value specifies the error
    #   code. This value is set on the physical attempt object. It is used
    #   to display error information to the user. It should not start with
    #   string "Service\_" which is reserved by the system.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   If an error occurred during the task, this value specifies a text
    #   description of the error. This value is set on the physical attempt
    #   object. It is used to display error information to the user. The web
    #   service does not parse this value.
    #   @return [String]
    #
    # @!attribute [rw] error_stack_trace
    #   If an error occurred during the task, this value specifies the stack
    #   trace associated with the error. This value is set on the physical
    #   attempt object. It is used to display error information to the user.
    #   The web service does not parse this value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/SetTaskStatusInput AWS API Documentation
    #
    class SetTaskStatusInput < Struct.new(
      :task_id,
      :task_status,
      :error_id,
      :error_message,
      :error_stack_trace)
      include Aws::Structure
    end

    # Contains the output of SetTaskStatus.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/SetTaskStatusOutput AWS API Documentation
    #
    class SetTaskStatusOutput < Aws::EmptyStructure; end

    # Tags are key/value pairs defined by a user and associated with a
    # pipeline to control access. AWS Data Pipeline allows you to associate
    # ten tags per pipeline. For more information, see [Controlling User
    # Access to Pipelines][1] in the *AWS Data Pipeline Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key name of a tag defined by a user. For more information, see
    #   [Controlling User Access to Pipelines][1] in the *AWS Data Pipeline
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional value portion of a tag defined by a user. For more
    #   information, see [Controlling User Access to Pipelines][1] in the
    #   *AWS Data Pipeline Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Contains information about a pipeline task that is assigned to a task
    # runner.
    #
    # @!attribute [rw] task_id
    #   An internal identifier for the task. This ID is passed to the
    #   SetTaskStatus and ReportTaskProgress actions.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline that provided the task.
    #   @return [String]
    #
    # @!attribute [rw] attempt_id
    #   The ID of the pipeline task attempt object. AWS Data Pipeline uses
    #   this value to track how many times a task is attempted.
    #   @return [String]
    #
    # @!attribute [rw] objects
    #   Connection information for the location where the task runner will
    #   publish the output of the task.
    #   @return [Hash<String,Types::PipelineObject>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/TaskObject AWS API Documentation
    #
    class TaskObject < Struct.new(
      :task_id,
      :pipeline_id,
      :attempt_id,
      :objects)
      include Aws::Structure
    end

    # Contains the parameters for ValidatePipelineDefinition.
    #
    # @note When making an API call, you may pass ValidatePipelineDefinitionInput
    #   data as a hash:
    #
    #       {
    #         pipeline_id: "id", # required
    #         pipeline_objects: [ # required
    #           {
    #             id: "id", # required
    #             name: "id", # required
    #             fields: [ # required
    #               {
    #                 key: "fieldNameString", # required
    #                 string_value: "fieldStringValue",
    #                 ref_value: "fieldNameString",
    #               },
    #             ],
    #           },
    #         ],
    #         parameter_objects: [
    #           {
    #             id: "fieldNameString", # required
    #             attributes: [ # required
    #               {
    #                 key: "attributeNameString", # required
    #                 string_value: "attributeValueString", # required
    #               },
    #             ],
    #           },
    #         ],
    #         parameter_values: [
    #           {
    #             id: "fieldNameString", # required
    #             string_value: "fieldStringValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] pipeline_id
    #   The ID of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_objects
    #   The objects that define the pipeline changes to validate against the
    #   pipeline.
    #   @return [Array<Types::PipelineObject>]
    #
    # @!attribute [rw] parameter_objects
    #   The parameter objects used with the pipeline.
    #   @return [Array<Types::ParameterObject>]
    #
    # @!attribute [rw] parameter_values
    #   The parameter values used with the pipeline.
    #   @return [Array<Types::ParameterValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ValidatePipelineDefinitionInput AWS API Documentation
    #
    class ValidatePipelineDefinitionInput < Struct.new(
      :pipeline_id,
      :pipeline_objects,
      :parameter_objects,
      :parameter_values)
      include Aws::Structure
    end

    # Contains the output of ValidatePipelineDefinition.
    #
    # @!attribute [rw] validation_errors
    #   Any validation errors that were found.
    #   @return [Array<Types::ValidationError>]
    #
    # @!attribute [rw] validation_warnings
    #   Any validation warnings that were found.
    #   @return [Array<Types::ValidationWarning>]
    #
    # @!attribute [rw] errored
    #   Indicates whether there were validation errors.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ValidatePipelineDefinitionOutput AWS API Documentation
    #
    class ValidatePipelineDefinitionOutput < Struct.new(
      :validation_errors,
      :validation_warnings,
      :errored)
      include Aws::Structure
    end

    # Defines a validation error. Validation errors prevent pipeline
    # activation. The set of validation errors that can be returned are
    # defined by AWS Data Pipeline.
    #
    # @!attribute [rw] id
    #   The identifier of the object that contains the validation error.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   A description of the validation error.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ValidationError AWS API Documentation
    #
    class ValidationError < Struct.new(
      :id,
      :errors)
      include Aws::Structure
    end

    # Defines a validation warning. Validation warnings do not prevent
    # pipeline activation. The set of validation warnings that can be
    # returned are defined by AWS Data Pipeline.
    #
    # @!attribute [rw] id
    #   The identifier of the object that contains the validation warning.
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   A description of the validation warning.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ValidationWarning AWS API Documentation
    #
    class ValidationWarning < Struct.new(
      :id,
      :warnings)
      include Aws::Structure
    end

  end
end
