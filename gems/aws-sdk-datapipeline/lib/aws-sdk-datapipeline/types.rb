# frozen_string_literal: true

# This is generated code!

module Aws::DataPipeline
  # This module contains the types returned by client operations.
  module Types

    # <p>Contains the parameters for ActivatePipeline.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline.</p>
    #   @return [String]
    # @!attribute parameter_values
    #   <p>A list of parameter values to pass to the pipeline at activation.</p>
    #   @return [Array<Types::ParameterValue>]
    # @!attribute start_timestamp
    #   <p>The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.</p>
    #   @return [Time]
    class ActivatePipelineInput < Struct.new(
      :pipeline_id,
      :parameter_values,
      :start_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of ActivatePipeline.</p>
    class ActivatePipelineOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for AddTags.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add, as key/value pairs.</p>
    #   @return [Array<Types::Tag>]
    class AddTagsInput < Struct.new(
      :pipeline_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of AddTags.</p>
    class AddTagsOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for CreatePipeline.</p>
    # @!attribute name
    #   <p>The name for the pipeline. You can use the same name for multiple pipelines associated with your AWS account, 
    #               because AWS Data Pipeline assigns each pipeline a unique pipeline identifier.</p>
    #   @return [String]
    # @!attribute unique_id
    #   <p>A unique identifier. This identifier is not the same as the pipeline identifier assigned by AWS Data Pipeline. 
    #               You are responsible for defining the format and ensuring the uniqueness of this identifier. You use this 
    #               parameter to ensure idempotency during repeated calls to <code>CreatePipeline</code>. For example, if the 
    #               first call to <code>CreatePipeline</code> does not succeed, you can pass in the same unique identifier and 
    #               pipeline name combination on a subsequent call to <code>CreatePipeline</code>. <code>CreatePipeline</code> 
    #               ensures that if a pipeline already exists with the same name and unique identifier, a new pipeline is not 
    #               created. Instead, you'll receive the pipeline identifier from the previous attempt. The uniqueness of the 
    #               name and unique identifier combination is scoped to the AWS account or IAM user credentials.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the pipeline.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to associate with the pipeline at creation. Tags let you control access to pipelines. 
    #               For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> 
    #               in the <i>AWS Data Pipeline Developer Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreatePipelineInput < Struct.new(
      :name,
      :unique_id,
      :description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of CreatePipeline.</p>
    # @!attribute pipeline_id
    #   <p>The ID that AWS Data Pipeline assigns the newly created pipeline. For example, <code>df-06372391ZG65EXAMPLE</code>.</p>
    #   @return [String]
    class CreatePipelineOutput < Struct.new(
      :pipeline_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DeactivatePipeline.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline.</p>
    #   @return [String]
    # @!attribute cancel_active
    #   <p>Indicates whether to cancel any running objects. The default is true, 
    #             which sets the state of any running objects to <code>CANCELED</code>.
    #             If this value is false, the pipeline is deactivated after all 
    #             running objects finish.</p>
    #   @return [Boolean]
    class DeactivatePipelineInput < Struct.new(
      :pipeline_id,
      :cancel_active,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of DeactivatePipeline.</p>
    class DeactivatePipelineOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DeletePipeline.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline.</p>
    #   @return [String]
    class DeletePipelineInput < Struct.new(
      :pipeline_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DescribeObjects.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline that contains the object definitions.</p>
    #   @return [String]
    # @!attribute object_ids
    #   <p>The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to <code>DescribeObjects</code>.</p>
    #   @return [Array<String>]
    # @!attribute evaluate_expressions
    #   <p>Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>The starting point for the results to be returned. For the first call, this value should be empty. 
    #              As long as there are more results, continue to call <code>DescribeObjects</code> with
    #              the marker value from the previous call to retrieve the next set of results.</p>
    #   @return [String]
    class DescribeObjectsInput < Struct.new(
      :pipeline_id,
      :object_ids,
      :evaluate_expressions,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of DescribeObjects.</p>
    # @!attribute pipeline_objects
    #   <p>An array of object definitions.</p>
    #   @return [Array<Types::PipelineObject>]
    # @!attribute marker
    #   <p>The starting point for the next page of results. To view the next page of results, call <code>DescribeObjects</code> 
    #              again with this marker value. If the value is null, there are no more results.</p>
    #   @return [String]
    # @!attribute has_more_results
    #   <p>Indicates whether there are more results to return.</p>
    #   @return [Boolean]
    class DescribeObjectsOutput < Struct.new(
      :pipeline_objects,
      :marker,
      :has_more_results,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:has_more_results] = false unless options.key?(:has_more_results)
        super
      end
    end

    # <p>Contains the parameters for DescribePipelines.</p>
    # @!attribute pipeline_ids
    #   <p>The IDs of the pipelines to describe. You can pass as many as 25 identifiers in a single call. 
    #               To obtain pipeline IDs, call <a>ListPipelines</a>.</p>
    #   @return [Array<String>]
    class DescribePipelinesInput < Struct.new(
      :pipeline_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of DescribePipelines.</p>
    # @!attribute pipeline_description_list
    #   <p>An array of descriptions for the specified pipelines.</p>
    #   @return [Array<Types::PipelineDescription>]
    class DescribePipelinesOutput < Struct.new(
      :pipeline_description_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for EvaluateExpression.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline.</p>
    #   @return [String]
    # @!attribute object_id
    #   <p>The ID of the object.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The expression to evaluate.</p>
    #   @return [String]
    class EvaluateExpressionInput < Struct.new(
      :pipeline_id,
      :object_id,
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of EvaluateExpression.</p>
    # @!attribute evaluated_expression
    #   <p>The evaluated expression.</p>
    #   @return [String]
    class EvaluateExpressionOutput < Struct.new(
      :evaluated_expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A key-value pair that describes a property of a pipeline object. The value is specified as either a string value (<code>StringValue</code>) or a reference to another object (<code>RefValue</code>) but not as both.</p>
    # @!attribute key
    #   <p>The field identifier.</p>
    #   @return [String]
    # @!attribute string_value
    #   <p>The field value, expressed as a String.</p>
    #   @return [String]
    # @!attribute ref_value
    #   <p>The field value, expressed as the identifier of another object.</p>
    #   @return [String]
    class Field < Struct.new(
      :key,
      :string_value,
      :ref_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for GetPipelineDefinition.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the pipeline definition to retrieve. Set this parameter to <code>latest</code> (default) 
    #               to use the last definition saved to the pipeline or <code>active</code> to use the last definition  
    #               that was activated.</p>
    #   @return [String]
    class GetPipelineDefinitionInput < Struct.new(
      :pipeline_id,
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of GetPipelineDefinition.</p>
    # @!attribute pipeline_objects
    #   <p>The objects defined in the pipeline.</p>
    #   @return [Array<Types::PipelineObject>]
    # @!attribute parameter_objects
    #   <p>The parameter objects used in the pipeline definition.</p>
    #   @return [Array<Types::ParameterObject>]
    # @!attribute parameter_values
    #   <p>The parameter values used in the pipeline definition.</p>
    #   @return [Array<Types::ParameterValue>]
    class GetPipelineDefinitionOutput < Struct.new(
      :pipeline_objects,
      :parameter_objects,
      :parameter_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p><p>Identity information for the EC2 instance that is hosting the task runner. You can get this value by calling a metadata URI from the EC2 instance. 
    #             For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> 
    #             Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p></p>
    # @!attribute document
    #   <p>A description of an EC2 instance that is generated when the instance is launched and exposed to the instance via the instance metadata service in the form of a JSON representation of an object.</p>
    #   @return [String]
    # @!attribute signature
    #   <p>A signature which can be used to verify the accuracy and authenticity of the information provided in the instance identity document.</p>
    #   @return [String]
    class InstanceIdentity < Struct.new(
      :document,
      :signature,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An internal service error occurred.</p>
    # @!attribute message
    #   <p>Description of the error message.</p>
    #   @return [String]
    class InternalServiceError < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>
    # @!attribute message
    #   <p>Description of the error message.</p>
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for ListPipelines.</p>
    # @!attribute marker
    #   <p>The starting point for the results to be returned. For the first call, this value should be empty. 
    #              As long as there are more results, continue to call <code>ListPipelines</code> with
    #              the marker value from the previous call to retrieve the next set of results.</p>
    #   @return [String]
    class ListPipelinesInput < Struct.new(
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of ListPipelines.</p>
    # @!attribute pipeline_id_list
    #   <p>The pipeline identifiers. If you require additional information about the pipelines, you can use these identifiers to call 
    #               <a>DescribePipelines</a> and <a>GetPipelineDefinition</a>.</p>
    #   @return [Array<Types::PipelineIdName>]
    # @!attribute marker
    #   <p>The starting point for the next page of results. To view the next page of results, call <code>ListPipelinesOutput</code> 
    #              again with this marker value. If the value is null, there are no more results.</p>
    #   @return [String]
    # @!attribute has_more_results
    #   <p>Indicates whether there are more results that can be obtained by a subsequent call.</p>
    #   @return [Boolean]
    class ListPipelinesOutput < Struct.new(
      :pipeline_id_list,
      :marker,
      :has_more_results,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:has_more_results] = false unless options.key?(:has_more_results)
        super
      end
    end

    # <p>Contains a logical operation for comparing the value of a field with a specified value.</p>
    # @!attribute type
    #   <p>
    #               The logical operation to be performed: equal (<code>EQ</code>), equal reference (<code>REF_EQ</code>), less than or equal (<code>LE</code>), greater than or equal (<code>GE</code>), or between (<code>BETWEEN</code>). Equal reference (<code>REF_EQ</code>) can be used only with reference fields. The other comparison types can be used only with String fields. The comparison types you can use apply only to certain object fields, as detailed below.  
    #           </p>
    #           <p>
    #             The comparison operators EQ and REF_EQ act on the following fields:
    #           </p>
    #           <ul>
    #               <li>name</li>
    #               <li>@sphere</li>
    #               <li>parent</li>
    #               <li>@componentParent</li>
    #               <li>@instanceParent</li>
    #               <li>@status</li>
    #               <li>@scheduledStartTime</li>
    #               <li>@scheduledEndTime</li>
    #               <li>@actualStartTime</li>
    #               <li>@actualEndTime</li>
    #           </ul>
    #           
    #           <p>
    #               The comparison operators <code>GE</code>, <code>LE</code>, and <code>BETWEEN</code> act on the following fields:
    #           </p>
    #           <ul>
    #               <li>@scheduledStartTime</li>
    #               <li>@scheduledEndTime</li>
    #               <li>@actualStartTime</li>
    #               <li>@actualEndTime</li>
    #           </ul>
    #           <p>Note that fields beginning with the at sign (@) are read-only and set by the web service. When you name fields, you should choose names containing only alpha-numeric values, as symbols may be reserved by AWS Data Pipeline. User-defined fields that you add to a pipeline should prefix their name with the string "my".</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value that the actual field value will be compared with.</p>
    #   @return [Array<String>]
    class Operator < Struct.new(
      :type,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OperatorType
      Equal = 'EQ'
      ReferenceEqual = 'REF_EQ'
      LessThanOrEqual = 'LE'
      GreaterThanOrEqual = 'GE'
      Between = 'BETWEEN'
    end

    # <p>The attributes allowed or specified with a parameter object.</p>
    # @!attribute key
    #   <p>The field identifier.</p>
    #   @return [String]
    # @!attribute string_value
    #   <p>The field value, expressed as a String.</p>
    #   @return [String]
    class ParameterAttribute < Struct.new(
      :key,
      :string_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a parameter object.</p>
    # @!attribute id
    #   <p>The ID of the parameter object. </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The attributes of the parameter object.</p>
    #   @return [Array<Types::ParameterAttribute>]
    class ParameterObject < Struct.new(
      :id,
      :attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A value or list of parameter values. </p>
    # @!attribute id
    #   <p>The ID of the parameter value.</p>
    #   @return [String]
    # @!attribute string_value
    #   <p>The field value, expressed as a String.</p>
    #   @return [String]
    class ParameterValue < Struct.new(
      :id,
      :string_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified pipeline has been deleted.</p>
    # @!attribute message
    #   <p>Description of the error message.</p>
    #   @return [String]
    class PipelineDeletedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains pipeline metadata.</p>
    # @!attribute pipeline_id
    #   <p>The pipeline identifier that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A list of read-only fields that contain metadata about the pipeline: @userId, @accountId, and @pipelineState.</p>
    #   @return [Array<Types::Field>]
    # @!attribute description
    #   <p>Description of the pipeline.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to associated with a pipeline. Tags let you control access to pipelines. 
    #               For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class PipelineDescription < Struct.new(
      :pipeline_id,
      :name,
      :fields,
      :description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the name and identifier of a pipeline.</p>
    # @!attribute id
    #   <p>The ID of the pipeline that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    class PipelineIdName < Struct.new(
      :id,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>
    # @!attribute message
    #   <p>Description of the error message.</p>
    #   @return [String]
    class PipelineNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a pipeline object. This can be a logical, physical, or physical attempt pipeline object. The complete set of components of a pipeline defines the pipeline.</p>
    # @!attribute id
    #   <p>The ID of the object.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the object.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>Key-value pairs that define the properties of the object.</p>
    #   @return [Array<Types::Field>]
    class PipelineObject < Struct.new(
      :id,
      :name,
      :fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for PollForTask.</p>
    # @!attribute worker_group
    #   <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. 
    #               You can only specify a single value for <code>workerGroup</code> in the call to <code>PollForTask</code>. There are no wildcard values permitted in 
    #               <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The public DNS name of the calling task runner.</p>
    #   @return [String]
    # @!attribute instance_identity
    #   <p>Identity information for the EC2 instance that is hosting the task runner. You can get this value from the instance using <code>http://169.254.169.254/latest/meta-data/instance-id</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p>
    #   @return [Types::InstanceIdentity]
    class PollForTaskInput < Struct.new(
      :worker_group,
      :hostname,
      :instance_identity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of PollForTask.</p>
    # @!attribute task_object
    #   <p>The information needed to complete the task that is being assigned to the task runner. One of the fields returned in this object is <code>taskId</code>, 
    #               which contains an identifier for the task being assigned. The calling task runner uses <code>taskId</code> in subsequent calls to <a>ReportTaskProgress</a> 
    #               and <a>SetTaskStatus</a>.</p>
    #   @return [Types::TaskObject]
    class PollForTaskOutput < Struct.new(
      :task_object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for PutPipelineDefinition.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_objects
    #   <p>The objects that define the pipeline. These objects overwrite the existing pipeline definition.</p>
    #   @return [Array<Types::PipelineObject>]
    # @!attribute parameter_objects
    #   <p>The parameter objects used with the pipeline.</p>
    #   @return [Array<Types::ParameterObject>]
    # @!attribute parameter_values
    #   <p>The parameter values used with the pipeline.</p>
    #   @return [Array<Types::ParameterValue>]
    class PutPipelineDefinitionInput < Struct.new(
      :pipeline_id,
      :pipeline_objects,
      :parameter_objects,
      :parameter_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of PutPipelineDefinition.</p>
    # @!attribute validation_errors
    #   <p>The validation errors that are associated with the objects defined in <code>pipelineObjects</code>.</p>
    #   @return [Array<Types::ValidationError>]
    # @!attribute validation_warnings
    #   <p>The validation warnings that are associated with the objects defined in <code>pipelineObjects</code>.</p>
    #   @return [Array<Types::ValidationWarning>]
    # @!attribute errored
    #   <p>Indicates whether there were validation errors, and the pipeline definition is stored but cannot be 
    #               activated until you correct the pipeline and call <code>PutPipelineDefinition</code> to commit the corrected pipeline.</p>
    #   @return [Boolean]
    class PutPipelineDefinitionOutput < Struct.new(
      :validation_errors,
      :validation_warnings,
      :errored,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:errored] = false unless options.key?(:errored)
        super
      end
    end

    # <p>Defines the query to run against an object.</p>
    # @!attribute selectors
    #   <p>List of selectors that define the query. An object must satisfy all of the selectors to match the query.</p>
    #   @return [Array<Types::Selector>]
    class Query < Struct.new(
      :selectors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for QueryObjects.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline.</p>
    #   @return [String]
    # @!attribute query
    #   <p>The query that defines the objects to be returned. The <code>Query</code> object can contain a maximum of ten selectors. 
    #               The conditions in the query are limited to top-level String fields in the object. 
    #               These filters can be applied to components, instances, and attempts.</p>
    #   @return [Types::Query]
    # @!attribute sphere
    #   <p>Indicates whether the query applies to components or instances. The possible values are:	
    #               <code>COMPONENT</code>, <code>INSTANCE</code>, and <code>ATTEMPT</code>.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The starting point for the results to be returned. For the first call, this value should be empty. 
    #              As long as there are more results, continue to call <code>QueryObjects</code> with
    #              the marker value from the previous call to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of object names that <code>QueryObjects</code> will return in a single call. The default value is 100. </p>
    #   @return [Integer]
    class QueryObjectsInput < Struct.new(
      :pipeline_id,
      :query,
      :sphere,
      :marker,
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of QueryObjects.</p>
    # @!attribute ids
    #   <p>The identifiers that match the query selectors.</p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>The starting point for the next page of results. To view the next page of results, call <code>QueryObjects</code> 
    #              again with this marker value. If the value is null, there are no more results.</p>
    #   @return [String]
    # @!attribute has_more_results
    #   <p>Indicates whether there are more results that can be obtained by a subsequent call.</p>
    #   @return [Boolean]
    class QueryObjectsOutput < Struct.new(
      :ids,
      :marker,
      :has_more_results,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:has_more_results] = false unless options.key?(:has_more_results)
        super
      end
    end

    # <p>Contains the parameters for RemoveTags.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove.</p>
    #   @return [Array<String>]
    class RemoveTagsInput < Struct.new(
      :pipeline_id,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of RemoveTags.</p>
    class RemoveTagsOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for ReportTaskProgress.</p>
    # @!attribute task_id
    #   <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>Key-value pairs that define the properties of the ReportTaskProgressInput object.</p>
    #   @return [Array<Types::Field>]
    class ReportTaskProgressInput < Struct.new(
      :task_id,
      :fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of ReportTaskProgress.</p>
    # @!attribute canceled
    #   <p>If true, the calling task runner should cancel processing of the task. The task runner does not need to call <a>SetTaskStatus</a> for canceled tasks.</p>
    #   @return [Boolean]
    class ReportTaskProgressOutput < Struct.new(
      :canceled,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:canceled] = false unless options.key?(:canceled)
        super
      end
    end

    # <p>Contains the parameters for ReportTaskRunnerHeartbeat.</p>
    # @!attribute taskrunner_id
    #   <p>The ID of the task runner. This value should be unique across your AWS account. In the case of AWS Data Pipeline Task Runner 
    #               launched on a resource managed by AWS Data Pipeline, the web service provides a unique identifier when it launches the application. 
    #               If you have written a custom task runner, you should assign a unique identifier for the task runner.</p>
    #   @return [String]
    # @!attribute worker_group
    #   <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. 
    #               You can only specify a single value for <code>workerGroup</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string 
    #               must be an exact, case-sensitive, match.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The public DNS name of the task runner.</p>
    #   @return [String]
    class ReportTaskRunnerHeartbeatInput < Struct.new(
      :taskrunner_id,
      :worker_group,
      :hostname,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of ReportTaskRunnerHeartbeat.</p>
    # @!attribute terminate
    #   <p>Indicates whether the calling task runner should terminate.</p>
    #   @return [Boolean]
    class ReportTaskRunnerHeartbeatOutput < Struct.new(
      :terminate,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:terminate] = false unless options.key?(:terminate)
        super
      end
    end

    # <p>A comparision that is used to determine whether a query should return this object.</p>
    # @!attribute field_name
    #   <p>The name of the field that the operator will be applied to. The field name is the "key" portion of the field definition in the pipeline definition syntax that is used by the AWS Data Pipeline API. If the field is not set on the object, the condition fails.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>Contains a logical operation for comparing the value of a field with a specified value.</p>
    #   @return [Types::Operator]
    class Selector < Struct.new(
      :field_name,
      :operator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for SetStatus.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline that contains the objects.</p>
    #   @return [String]
    # @!attribute object_ids
    #   <p>The IDs of the objects. The corresponding objects can be either physical or components, but not a mix of both types.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status to be set on all the objects specified in <code>objectIds</code>. For components, use <code>PAUSE</code> or <code>RESUME</code>. 
    #               For instances, use <code>TRY_CANCEL</code>, <code>RERUN</code>, or <code>MARK_FINISHED</code>.</p>
    #   @return [String]
    class SetStatusInput < Struct.new(
      :pipeline_id,
      :object_ids,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the parameters for SetTaskStatus.</p>
    # @!attribute task_id
    #   <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
    #   @return [String]
    # @!attribute task_status
    #   <p>If <code>FINISHED</code>, the task successfully completed. If <code>FAILED</code>, the task ended unsuccessfully. Preconditions use false.</p>
    #   @return [String]
    # @!attribute error_id
    #   <p>If an error occurred during the task, this value specifies the error code. This value is set on the physical attempt object. 
    #               It is used to display error information to the user. It should not start with string "Service_" which is reserved by the system.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>If an error occurred during the task, this value specifies a text description of the error. This value is set on the physical attempt object. 
    #               It is used to display error information to the user. The web service does not parse this value.</p>
    #   @return [String]
    # @!attribute error_stack_trace
    #   <p>If an error occurred during the task, this value specifies the stack trace associated with the error. This value is set on the physical attempt object. 
    #               It is used to display error information to the user. The web service does not parse this value.</p>
    #   @return [String]
    class SetTaskStatusInput < Struct.new(
      :task_id,
      :task_status,
      :error_id,
      :error_message,
      :error_stack_trace,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of SetTaskStatus.</p>
    class SetTaskStatusOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Tags are key/value pairs defined by a user and associated with a pipeline to control access. AWS Data Pipeline allows you to associate ten tags per pipeline.  
    #             For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
    # @!attribute key
    #   <p>The key name of a tag defined by a user.  
    #               For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The optional value portion of a tag defined by a user.    
    #               For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified task was not found. </p>
    # @!attribute message
    #   <p>Description of the error message.</p>
    #   @return [String]
    class TaskNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a pipeline task that is assigned to a task runner.</p>
    # @!attribute task_id
    #   <p>An internal identifier for the task. This ID is passed to the <a>SetTaskStatus</a> and <a>ReportTaskProgress</a> actions.</p>
    #   @return [String]
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline that provided the task.</p>
    #   @return [String]
    # @!attribute attempt_id
    #   <p>The ID of the pipeline task attempt object. AWS Data Pipeline uses this value to track how many times a task is attempted.</p>
    #   @return [String]
    # @!attribute objects
    #   <p>Connection information for the location where the task runner will publish the output of the task.</p>
    #   @return [Hash<String, Types::PipelineObject>]
    class TaskObject < Struct.new(
      :task_id,
      :pipeline_id,
      :attempt_id,
      :objects,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TaskStatus
      FINISHED = 'FINISHED'
      FAILED = 'FAILED'
      FALSE = 'FALSE'
    end

    # <p>Contains the parameters for ValidatePipelineDefinition.</p>
    # @!attribute pipeline_id
    #   <p>The ID of the pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_objects
    #   <p>The objects that define the pipeline changes to validate against the pipeline.</p>
    #   @return [Array<Types::PipelineObject>]
    # @!attribute parameter_objects
    #   <p>The parameter objects used with the pipeline.</p>
    #   @return [Array<Types::ParameterObject>]
    # @!attribute parameter_values
    #   <p>The parameter values used with the pipeline.</p>
    #   @return [Array<Types::ParameterValue>]
    class ValidatePipelineDefinitionInput < Struct.new(
      :pipeline_id,
      :pipeline_objects,
      :parameter_objects,
      :parameter_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the output of ValidatePipelineDefinition.</p>
    # @!attribute validation_errors
    #   <p>Any validation errors that were found.</p>
    #   @return [Array<Types::ValidationError>]
    # @!attribute validation_warnings
    #   <p>Any validation warnings that were found.</p>
    #   @return [Array<Types::ValidationWarning>]
    # @!attribute errored
    #   <p>Indicates whether there were validation errors.</p>
    #   @return [Boolean]
    class ValidatePipelineDefinitionOutput < Struct.new(
      :validation_errors,
      :validation_warnings,
      :errored,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:errored] = false unless options.key?(:errored)
        super
      end
    end

    # <p>Defines a validation error. Validation errors prevent pipeline activation. The set of validation errors that can be returned are defined by AWS Data Pipeline.</p>
    # @!attribute id
    #   <p>The identifier of the object that contains the validation error.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>A description of the validation error.</p>
    #   @return [Array<String>]
    class ValidationError < Struct.new(
      :id,
      :errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a validation warning. Validation warnings do not prevent pipeline activation. The set of validation warnings that can be returned are defined by AWS Data Pipeline.</p>
    # @!attribute id
    #   <p>The identifier of the object that contains the validation warning.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>A description of the validation warning.</p>
    #   @return [Array<String>]
    class ValidationWarning < Struct.new(
      :id,
      :warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
