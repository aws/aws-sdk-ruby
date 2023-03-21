# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Tnb
  module Types

    # Insufficient permissions to make request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ns_lcm_op_occ_id
    #   The identifier of the network operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/CancelSolNetworkOperationInput AWS API Documentation
    #
    class CancelSolNetworkOperationInput < Struct.new(
      :ns_lcm_op_occ_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/CreateSolFunctionPackageInput AWS API Documentation
    #
    class CreateSolFunctionPackageInput < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Function package ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   ID of the function package.
    #   @return [String]
    #
    # @!attribute [rw] onboarding_state
    #   Onboarding state of the function package.
    #   @return [String]
    #
    # @!attribute [rw] operational_state
    #   Operational state of the function package.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] usage_state
    #   Usage state of the function package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/CreateSolFunctionPackageOutput AWS API Documentation
    #
    class CreateSolFunctionPackageOutput < Struct.new(
      :arn,
      :id,
      :onboarding_state,
      :operational_state,
      :tags,
      :usage_state)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] ns_description
    #   Network instance description.
    #   @return [String]
    #
    # @!attribute [rw] ns_name
    #   Network instance name.
    #   @return [String]
    #
    # @!attribute [rw] nsd_info_id
    #   ID for network service descriptor.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/CreateSolNetworkInstanceInput AWS API Documentation
    #
    class CreateSolNetworkInstanceInput < Struct.new(
      :ns_description,
      :ns_name,
      :nsd_info_id,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Network instance ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Network instance ID.
    #   @return [String]
    #
    # @!attribute [rw] ns_instance_name
    #   Network instance name.
    #   @return [String]
    #
    # @!attribute [rw] nsd_info_id
    #   Network service descriptor ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/CreateSolNetworkInstanceOutput AWS API Documentation
    #
    class CreateSolNetworkInstanceOutput < Struct.new(
      :arn,
      :id,
      :ns_instance_name,
      :nsd_info_id,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/CreateSolNetworkPackageInput AWS API Documentation
    #
    class CreateSolNetworkPackageInput < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Network package ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   ID of the network package.
    #   @return [String]
    #
    # @!attribute [rw] nsd_onboarding_state
    #   Onboarding state of the network service descriptor in the network
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] nsd_operational_state
    #   Operational state of the network service descriptor in the network
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] nsd_usage_state
    #   Usage state of the network service descriptor in the network
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/CreateSolNetworkPackageOutput AWS API Documentation
    #
    class CreateSolNetworkPackageOutput < Struct.new(
      :arn,
      :id,
      :nsd_onboarding_state,
      :nsd_operational_state,
      :nsd_usage_state,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] vnf_pkg_id
    #   ID of the function package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/DeleteSolFunctionPackageInput AWS API Documentation
    #
    class DeleteSolFunctionPackageInput < Struct.new(
      :vnf_pkg_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ns_instance_id
    #   Network instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/DeleteSolNetworkInstanceInput AWS API Documentation
    #
    class DeleteSolNetworkInstanceInput < Struct.new(
      :ns_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nsd_info_id
    #   ID of the network service descriptor in the network package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/DeleteSolNetworkPackageInput AWS API Documentation
    #
    class DeleteSolNetworkPackageInput < Struct.new(
      :nsd_info_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides error information.
    #
    # @!attribute [rw] cause
    #   Error cause.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Error details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ErrorInfo AWS API Documentation
    #
    class ErrorInfo < Struct.new(
      :cause,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for function package artifacts.
    #
    # Artifacts are the contents of the package descriptor file and the
    # state of the package.
    #
    # @!attribute [rw] overrides
    #   Lists of function package overrides.
    #   @return [Array<Types::ToscaOverride>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/FunctionArtifactMeta AWS API Documentation
    #
    class FunctionArtifactMeta < Struct.new(
      :overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vnf_instance_id
    #   ID of the network function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionInstanceInput AWS API Documentation
    #
    class GetSolFunctionInstanceInput < Struct.new(
      :vnf_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of a network function instance.
    #
    # A network function instance is a function in a function package .
    #
    # @!attribute [rw] created_at
    #   The date that the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date that the resource was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionInstanceMetadata AWS API Documentation
    #
    class GetSolFunctionInstanceMetadata < Struct.new(
      :created_at,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Network function instance ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Network function instance ID.
    #   @return [String]
    #
    # @!attribute [rw] instantiated_vnf_info
    #   Information about the network function.
    #
    #   A network function instance is a function in a function package .
    #   @return [Types::GetSolVnfInfo]
    #
    # @!attribute [rw] instantiation_state
    #   Network function instantiation state.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of a network function instance.
    #
    #   A network function instance is a function in a function package .
    #   @return [Types::GetSolFunctionInstanceMetadata]
    #
    # @!attribute [rw] ns_instance_id
    #   Network instance ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vnf_pkg_id
    #   Function package ID.
    #   @return [String]
    #
    # @!attribute [rw] vnf_product_name
    #   Network function product name.
    #   @return [String]
    #
    # @!attribute [rw] vnf_provider
    #   Network function provider.
    #   @return [String]
    #
    # @!attribute [rw] vnfd_id
    #   Function package descriptor ID.
    #   @return [String]
    #
    # @!attribute [rw] vnfd_version
    #   Function package descriptor version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionInstanceOutput AWS API Documentation
    #
    class GetSolFunctionInstanceOutput < Struct.new(
      :arn,
      :id,
      :instantiated_vnf_info,
      :instantiation_state,
      :metadata,
      :ns_instance_id,
      :tags,
      :vnf_pkg_id,
      :vnf_product_name,
      :vnf_provider,
      :vnfd_id,
      :vnfd_version)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] accept
    #   The format of the package that you want to download from the
    #   function packages.
    #   @return [String]
    #
    # @!attribute [rw] vnf_pkg_id
    #   ID of the function package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionPackageContentInput AWS API Documentation
    #
    class GetSolFunctionPackageContentInput < Struct.new(
      :accept,
      :vnf_pkg_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   Indicates the media type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] package_content
    #   Contents of the function package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionPackageContentOutput AWS API Documentation
    #
    class GetSolFunctionPackageContentOutput < Struct.new(
      :content_type,
      :package_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accept
    #   Indicates which content types, expressed as MIME types, the client
    #   is able to understand.
    #   @return [String]
    #
    # @!attribute [rw] vnf_pkg_id
    #   ID of the function package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionPackageDescriptorInput AWS API Documentation
    #
    class GetSolFunctionPackageDescriptorInput < Struct.new(
      :accept,
      :vnf_pkg_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   Indicates the media type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] vnfd
    #   Contents of the function package descriptor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionPackageDescriptorOutput AWS API Documentation
    #
    class GetSolFunctionPackageDescriptorOutput < Struct.new(
      :content_type,
      :vnfd)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vnf_pkg_id
    #   ID of the function package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionPackageInput AWS API Documentation
    #
    class GetSolFunctionPackageInput < Struct.new(
      :vnf_pkg_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata related to the function package.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    # @!attribute [rw] created_at
    #   The date that the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date that the resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] vnfd
    #   Metadata related to the function package descriptor of the function
    #   package.
    #   @return [Types::FunctionArtifactMeta]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionPackageMetadata AWS API Documentation
    #
    class GetSolFunctionPackageMetadata < Struct.new(
      :created_at,
      :last_modified,
      :vnfd)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Function package ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Function package ID.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata related to the function package.
    #
    #   A function package is a .zip file in CSAR (Cloud Service Archive)
    #   format that contains a network function (an ETSI standard
    #   telecommunication application) and function package descriptor that
    #   uses the TOSCA standard to describe how the network functions should
    #   run on your network.
    #   @return [Types::GetSolFunctionPackageMetadata]
    #
    # @!attribute [rw] onboarding_state
    #   Function package onboarding state.
    #   @return [String]
    #
    # @!attribute [rw] operational_state
    #   Function package operational state.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] usage_state
    #   Function package usage state.
    #   @return [String]
    #
    # @!attribute [rw] vnf_product_name
    #   Network function product name.
    #   @return [String]
    #
    # @!attribute [rw] vnf_provider
    #   Network function provider.
    #   @return [String]
    #
    # @!attribute [rw] vnfd_id
    #   Function package descriptor ID.
    #   @return [String]
    #
    # @!attribute [rw] vnfd_version
    #   Function package descriptor version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolFunctionPackageOutput AWS API Documentation
    #
    class GetSolFunctionPackageOutput < Struct.new(
      :arn,
      :id,
      :metadata,
      :onboarding_state,
      :operational_state,
      :tags,
      :usage_state,
      :vnf_product_name,
      :vnf_provider,
      :vnfd_id,
      :vnfd_version)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Information about a network function.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # @!attribute [rw] vnf_state
    #   State of the network function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolInstantiatedVnfInfo AWS API Documentation
    #
    class GetSolInstantiatedVnfInfo < Struct.new(
      :vnf_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ns_instance_id
    #   ID of the network instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkInstanceInput AWS API Documentation
    #
    class GetSolNetworkInstanceInput < Struct.new(
      :ns_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of a network instance.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # @!attribute [rw] created_at
    #   The date that the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date that the resource was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkInstanceMetadata AWS API Documentation
    #
    class GetSolNetworkInstanceMetadata < Struct.new(
      :created_at,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Network instance ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Network instance ID.
    #   @return [String]
    #
    # @!attribute [rw] lcm_op_info
    #   Lifecycle management operation details on the network instance.
    #
    #   Lifecycle management operations are deploy, update, or delete
    #   operations.
    #   @return [Types::LcmOperationInfo]
    #
    # @!attribute [rw] metadata
    #   The metadata of a network instance.
    #
    #   A network instance is a single network created in Amazon Web
    #   Services TNB that can be deployed and on which life-cycle operations
    #   (like terminate, update, and delete) can be performed.
    #   @return [Types::GetSolNetworkInstanceMetadata]
    #
    # @!attribute [rw] ns_instance_description
    #   Network instance description.
    #   @return [String]
    #
    # @!attribute [rw] ns_instance_name
    #   Network instance name.
    #   @return [String]
    #
    # @!attribute [rw] ns_state
    #   Network instance state.
    #   @return [String]
    #
    # @!attribute [rw] nsd_id
    #   Network service descriptor ID.
    #   @return [String]
    #
    # @!attribute [rw] nsd_info_id
    #   Network service descriptor info ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkInstanceOutput AWS API Documentation
    #
    class GetSolNetworkInstanceOutput < Struct.new(
      :arn,
      :id,
      :lcm_op_info,
      :metadata,
      :ns_instance_description,
      :ns_instance_name,
      :ns_state,
      :nsd_id,
      :nsd_info_id,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] ns_lcm_op_occ_id
    #   The identifier of the network operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkOperationInput AWS API Documentation
    #
    class GetSolNetworkOperationInput < Struct.new(
      :ns_lcm_op_occ_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata related to a network operation occurrence.
    #
    # A network operation is any operation that is done to your network,
    # such as network instance instantiation or termination.
    #
    # @!attribute [rw] created_at
    #   The date that the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date that the resource was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkOperationMetadata AWS API Documentation
    #
    class GetSolNetworkOperationMetadata < Struct.new(
      :created_at,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Network operation ARN.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Error related to this specific network operation occurrence.
    #   @return [Types::ProblemDetails]
    #
    # @!attribute [rw] id
    #   ID of this network operation occurrence.
    #   @return [String]
    #
    # @!attribute [rw] lcm_operation_type
    #   Type of the operation represented by this occurrence.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata of this network operation occurrence.
    #   @return [Types::GetSolNetworkOperationMetadata]
    #
    # @!attribute [rw] ns_instance_id
    #   ID of the network operation instance.
    #   @return [String]
    #
    # @!attribute [rw] operation_state
    #   The state of the network operation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tasks
    #   All tasks associated with this operation occurrence.
    #   @return [Array<Types::GetSolNetworkOperationTaskDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkOperationOutput AWS API Documentation
    #
    class GetSolNetworkOperationOutput < Struct.new(
      :arn,
      :error,
      :id,
      :lcm_operation_type,
      :metadata,
      :ns_instance_id,
      :operation_state,
      :tags,
      :tasks)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Gets the details of a network operation.
    #
    # A network operation is any operation that is done to your network,
    # such as network instance instantiation or termination.
    #
    # @!attribute [rw] task_context
    #   Context for the network operation task.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] task_end_time
    #   Task end time.
    #   @return [Time]
    #
    # @!attribute [rw] task_error_details
    #   Task error details.
    #   @return [Types::ErrorInfo]
    #
    # @!attribute [rw] task_name
    #   Task name.
    #   @return [String]
    #
    # @!attribute [rw] task_start_time
    #   Task start time.
    #   @return [Time]
    #
    # @!attribute [rw] task_status
    #   Task status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkOperationTaskDetails AWS API Documentation
    #
    class GetSolNetworkOperationTaskDetails < Struct.new(
      :task_context,
      :task_end_time,
      :task_error_details,
      :task_name,
      :task_start_time,
      :task_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accept
    #   The format of the package you want to download from the network
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] nsd_info_id
    #   ID of the network service descriptor in the network package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkPackageContentInput AWS API Documentation
    #
    class GetSolNetworkPackageContentInput < Struct.new(
      :accept,
      :nsd_info_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   Indicates the media type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] nsd_content
    #   Content of the network service descriptor in the network package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkPackageContentOutput AWS API Documentation
    #
    class GetSolNetworkPackageContentOutput < Struct.new(
      :content_type,
      :nsd_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nsd_info_id
    #   ID of the network service descriptor in the network package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkPackageDescriptorInput AWS API Documentation
    #
    class GetSolNetworkPackageDescriptorInput < Struct.new(
      :nsd_info_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   Indicates the media type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] nsd
    #   Contents of the network service descriptor in the network package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkPackageDescriptorOutput AWS API Documentation
    #
    class GetSolNetworkPackageDescriptorOutput < Struct.new(
      :content_type,
      :nsd)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nsd_info_id
    #   ID of the network service descriptor in the network package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkPackageInput AWS API Documentation
    #
    class GetSolNetworkPackageInput < Struct.new(
      :nsd_info_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata associated with a network package.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    # @!attribute [rw] created_at
    #   The date that the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date that the resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] nsd
    #   Metadata related to the onboarded network service descriptor in the
    #   network package.
    #   @return [Types::NetworkArtifactMeta]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkPackageMetadata AWS API Documentation
    #
    class GetSolNetworkPackageMetadata < Struct.new(
      :created_at,
      :last_modified,
      :nsd)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Network package ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Network package ID.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata associated with a network package.
    #
    #   A network package is a .zip file in CSAR (Cloud Service Archive)
    #   format defines the function packages you want to deploy and the
    #   Amazon Web Services infrastructure you want to deploy them on.
    #   @return [Types::GetSolNetworkPackageMetadata]
    #
    # @!attribute [rw] nsd_id
    #   Network service descriptor ID.
    #   @return [String]
    #
    # @!attribute [rw] nsd_name
    #   Network service descriptor name.
    #   @return [String]
    #
    # @!attribute [rw] nsd_onboarding_state
    #   Network service descriptor onboarding state.
    #   @return [String]
    #
    # @!attribute [rw] nsd_operational_state
    #   Network service descriptor operational state.
    #   @return [String]
    #
    # @!attribute [rw] nsd_usage_state
    #   Network service descriptor usage state.
    #   @return [String]
    #
    # @!attribute [rw] nsd_version
    #   Network service descriptor version.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vnf_pkg_ids
    #   Identifies the function package for the function package descriptor
    #   referenced by the onboarded network package.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolNetworkPackageOutput AWS API Documentation
    #
    class GetSolNetworkPackageOutput < Struct.new(
      :arn,
      :id,
      :metadata,
      :nsd_id,
      :nsd_name,
      :nsd_onboarding_state,
      :nsd_operational_state,
      :nsd_usage_state,
      :nsd_version,
      :tags,
      :vnf_pkg_ids)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Information about the network function.
    #
    # A network function instance is a function in a function package .
    #
    # @!attribute [rw] vnf_state
    #   State of the network function instance.
    #   @return [String]
    #
    # @!attribute [rw] vnfc_resource_info
    #   Compute info used by the network function instance.
    #   @return [Array<Types::GetSolVnfcResourceInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolVnfInfo AWS API Documentation
    #
    class GetSolVnfInfo < Struct.new(
      :vnf_state,
      :vnfc_resource_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of resource associated with a network function.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # @!attribute [rw] metadata
    #   The metadata of the network function compute.
    #   @return [Types::GetSolVnfcResourceInfoMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolVnfcResourceInfo AWS API Documentation
    #
    class GetSolVnfcResourceInfo < Struct.new(
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of a network function.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # @!attribute [rw] cluster
    #   Information about the cluster.
    #   @return [String]
    #
    # @!attribute [rw] helm_chart
    #   Information about the helm chart.
    #   @return [String]
    #
    # @!attribute [rw] node_group
    #   Information about the node group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/GetSolVnfcResourceInfoMetadata AWS API Documentation
    #
    class GetSolVnfcResourceInfoMetadata < Struct.new(
      :cluster,
      :helm_chart,
      :node_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_params_for_ns
    #   Provides values for the configurable properties.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] dry_run
    #   A check for whether you have the required permissions for the action
    #   without actually making the request and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] ns_instance_id
    #   ID of the network instance.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. When you use this
    #   API, the tags are transferred to the network operation that is
    #   created. Use tags to search and filter your resources or track your
    #   Amazon Web Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/InstantiateSolNetworkInstanceInput AWS API Documentation
    #
    class InstantiateSolNetworkInstanceInput < Struct.new(
      :additional_params_for_ns,
      :dry_run,
      :ns_instance_id,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] ns_lcm_op_occ_id
    #   The identifier of the network operation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. When you use this
    #   API, the tags are transferred to the network operation that is
    #   created. Use tags to search and filter your resources or track your
    #   Amazon Web Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/InstantiateSolNetworkInstanceOutput AWS API Documentation
    #
    class InstantiateSolNetworkInstanceOutput < Struct.new(
      :ns_lcm_op_occ_id,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Unexpected error occurred. Problem on the server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle management operation details on the network instance.
    #
    # Lifecycle management operations are deploy, update, or delete
    # operations.
    #
    # @!attribute [rw] ns_lcm_op_occ_id
    #   The identifier of the network operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/LcmOperationInfo AWS API Documentation
    #
    class LcmOperationInfo < Struct.new(
      :ns_lcm_op_occ_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists information about a network function instance.
    #
    # A network function instance is a function in a function package .
    #
    # @!attribute [rw] arn
    #   Network function instance ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Network function instance ID.
    #   @return [String]
    #
    # @!attribute [rw] instantiated_vnf_info
    #   Information about a network function.
    #
    #   A network instance is a single network created in Amazon Web
    #   Services TNB that can be deployed and on which life-cycle operations
    #   (like terminate, update, and delete) can be performed.
    #   @return [Types::GetSolInstantiatedVnfInfo]
    #
    # @!attribute [rw] instantiation_state
    #   Network function instance instantiation state.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Network function instance metadata.
    #   @return [Types::ListSolFunctionInstanceMetadata]
    #
    # @!attribute [rw] ns_instance_id
    #   Network instance ID.
    #   @return [String]
    #
    # @!attribute [rw] vnf_pkg_id
    #   Function package ID.
    #   @return [String]
    #
    # @!attribute [rw] vnf_pkg_name
    #   Function package name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolFunctionInstanceInfo AWS API Documentation
    #
    class ListSolFunctionInstanceInfo < Struct.new(
      :arn,
      :id,
      :instantiated_vnf_info,
      :instantiation_state,
      :metadata,
      :ns_instance_id,
      :vnf_pkg_id,
      :vnf_pkg_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists network function instance metadata.
    #
    # A network function instance is a function in a function package .
    #
    # @!attribute [rw] created_at
    #   When the network function instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   When the network function instance was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolFunctionInstanceMetadata AWS API Documentation
    #
    class ListSolFunctionInstanceMetadata < Struct.new(
      :created_at,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolFunctionInstancesInput AWS API Documentation
    #
    class ListSolFunctionInstancesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_instances
    #   Network function instances.
    #   @return [Array<Types::ListSolFunctionInstanceInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolFunctionInstancesOutput AWS API Documentation
    #
    class ListSolFunctionInstancesOutput < Struct.new(
      :function_instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a function package.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    # @!attribute [rw] arn
    #   Function package ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   ID of the function package.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the function package.
    #   @return [Types::ListSolFunctionPackageMetadata]
    #
    # @!attribute [rw] onboarding_state
    #   Onboarding state of the function package.
    #   @return [String]
    #
    # @!attribute [rw] operational_state
    #   Operational state of the function package.
    #   @return [String]
    #
    # @!attribute [rw] usage_state
    #   Usage state of the function package.
    #   @return [String]
    #
    # @!attribute [rw] vnf_product_name
    #   The product name for the network function.
    #   @return [String]
    #
    # @!attribute [rw] vnf_provider
    #   Provider of the function package and the function package
    #   descriptor.
    #   @return [String]
    #
    # @!attribute [rw] vnfd_id
    #   Identifies the function package and the function package descriptor.
    #   @return [String]
    #
    # @!attribute [rw] vnfd_version
    #   Identifies the version of the function package descriptor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolFunctionPackageInfo AWS API Documentation
    #
    class ListSolFunctionPackageInfo < Struct.new(
      :arn,
      :id,
      :metadata,
      :onboarding_state,
      :operational_state,
      :usage_state,
      :vnf_product_name,
      :vnf_provider,
      :vnfd_id,
      :vnfd_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for the function package metadata.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    # @!attribute [rw] created_at
    #   The date that the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date that the resource was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolFunctionPackageMetadata AWS API Documentation
    #
    class ListSolFunctionPackageMetadata < Struct.new(
      :created_at,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolFunctionPackagesInput AWS API Documentation
    #
    class ListSolFunctionPackagesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_packages
    #   Function packages. A function package is a .zip file in CSAR (Cloud
    #   Service Archive) format that contains a network function (an ETSI
    #   standard telecommunication application) and function package
    #   descriptor that uses the TOSCA standard to describe how the network
    #   functions should run on your network.
    #   @return [Array<Types::ListSolFunctionPackageInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolFunctionPackagesOutput AWS API Documentation
    #
    class ListSolFunctionPackagesOutput < Struct.new(
      :function_packages,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Info about the specific network instance.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # @!attribute [rw] arn
    #   Network instance ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   ID of the network instance.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the network instance.
    #   @return [Types::ListSolNetworkInstanceMetadata]
    #
    # @!attribute [rw] ns_instance_description
    #   Human-readable description of the network instance.
    #   @return [String]
    #
    # @!attribute [rw] ns_instance_name
    #   Human-readable name of the network instance.
    #   @return [String]
    #
    # @!attribute [rw] ns_state
    #   The state of the network instance.
    #   @return [String]
    #
    # @!attribute [rw] nsd_id
    #   ID of the network service descriptor in the network package.
    #   @return [String]
    #
    # @!attribute [rw] nsd_info_id
    #   ID of the network service descriptor in the network package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkInstanceInfo AWS API Documentation
    #
    class ListSolNetworkInstanceInfo < Struct.new(
      :arn,
      :id,
      :metadata,
      :ns_instance_description,
      :ns_instance_name,
      :ns_state,
      :nsd_id,
      :nsd_info_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata details for a network instance.
    #
    # A network instance is a single network created in Amazon Web Services
    # TNB that can be deployed and on which life-cycle operations (like
    # terminate, update, and delete) can be performed.
    #
    # @!attribute [rw] created_at
    #   The date that the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date that the resource was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkInstanceMetadata AWS API Documentation
    #
    class ListSolNetworkInstanceMetadata < Struct.new(
      :created_at,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkInstancesInput AWS API Documentation
    #
    class ListSolNetworkInstancesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_instances
    #   Lists network instances.
    #   @return [Array<Types::ListSolNetworkInstanceInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkInstancesOutput AWS API Documentation
    #
    class ListSolNetworkInstancesOutput < Struct.new(
      :network_instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information parameters for a network operation.
    #
    # @!attribute [rw] arn
    #   Network operation ARN.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Error related to this specific network operation.
    #   @return [Types::ProblemDetails]
    #
    # @!attribute [rw] id
    #   ID of this network operation.
    #   @return [String]
    #
    # @!attribute [rw] lcm_operation_type
    #   Type of lifecycle management network operation.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata related to this network operation.
    #   @return [Types::ListSolNetworkOperationsMetadata]
    #
    # @!attribute [rw] ns_instance_id
    #   ID of the network instance related to this operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_state
    #   The state of the network operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkOperationsInfo AWS API Documentation
    #
    class ListSolNetworkOperationsInfo < Struct.new(
      :arn,
      :error,
      :id,
      :lcm_operation_type,
      :metadata,
      :ns_instance_id,
      :operation_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkOperationsInput AWS API Documentation
    #
    class ListSolNetworkOperationsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata related to a network operation.
    #
    # A network operation is any operation that is done to your network,
    # such as network instance instantiation or termination.
    #
    # @!attribute [rw] created_at
    #   The date that the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date that the resource was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkOperationsMetadata AWS API Documentation
    #
    class ListSolNetworkOperationsMetadata < Struct.new(
      :created_at,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_operations
    #   Lists network operation occurrences. Lifecycle management operations
    #   are deploy, update, or delete operations.
    #   @return [Array<Types::ListSolNetworkOperationsInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkOperationsOutput AWS API Documentation
    #
    class ListSolNetworkOperationsOutput < Struct.new(
      :network_operations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of a network package.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    # @!attribute [rw] arn
    #   Network package ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   ID of the individual network package.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the network package.
    #   @return [Types::ListSolNetworkPackageMetadata]
    #
    # @!attribute [rw] nsd_designer
    #   Designer of the onboarded network service descriptor in the network
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] nsd_id
    #   ID of the network service descriptor on which the network package is
    #   based.
    #   @return [String]
    #
    # @!attribute [rw] nsd_invariant_id
    #   Identifies a network service descriptor in a version independent
    #   manner.
    #   @return [String]
    #
    # @!attribute [rw] nsd_name
    #   Name of the onboarded network service descriptor in the network
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] nsd_onboarding_state
    #   Onboarding state of the network service descriptor in the network
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] nsd_operational_state
    #   Operational state of the network service descriptor in the network
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] nsd_usage_state
    #   Usage state of the network service descriptor in the network
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] nsd_version
    #   Version of the onboarded network service descriptor in the network
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] vnf_pkg_ids
    #   Identifies the function package for the function package descriptor
    #   referenced by the onboarded network package.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkPackageInfo AWS API Documentation
    #
    class ListSolNetworkPackageInfo < Struct.new(
      :arn,
      :id,
      :metadata,
      :nsd_designer,
      :nsd_id,
      :nsd_invariant_id,
      :nsd_name,
      :nsd_onboarding_state,
      :nsd_operational_state,
      :nsd_usage_state,
      :nsd_version,
      :vnf_pkg_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata related to a network package.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    # @!attribute [rw] created_at
    #   The date that the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date that the resource was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkPackageMetadata AWS API Documentation
    #
    class ListSolNetworkPackageMetadata < Struct.new(
      :created_at,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkPackagesInput AWS API Documentation
    #
    class ListSolNetworkPackagesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_packages
    #   Network packages. A network package is a .zip file in CSAR (Cloud
    #   Service Archive) format defines the function packages you want to
    #   deploy and the Amazon Web Services infrastructure you want to deploy
    #   them on.
    #   @return [Array<Types::ListSolNetworkPackageInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListSolNetworkPackagesOutput AWS API Documentation
    #
    class ListSolNetworkPackagesOutput < Struct.new(
      :network_packages,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Resource ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Metadata for network package artifacts.
    #
    # Artifacts are the contents of the package descriptor file and the
    # state of the package.
    #
    # @!attribute [rw] overrides
    #   Lists network package overrides.
    #   @return [Array<Types::ToscaOverride>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/NetworkArtifactMeta AWS API Documentation
    #
    class NetworkArtifactMeta < Struct.new(
      :overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details related to problems with AWS TNB resources.
    #
    # @!attribute [rw] detail
    #   A human-readable explanation specific to this occurrence of the
    #   problem.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A human-readable title of the problem type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ProblemDetails AWS API Documentation
    #
    class ProblemDetails < Struct.new(
      :detail,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   Function package content type.
    #   @return [String]
    #
    # @!attribute [rw] file
    #   Function package file.
    #   @return [String]
    #
    # @!attribute [rw] vnf_pkg_id
    #   Function package ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/PutSolFunctionPackageContentInput AWS API Documentation
    #
    class PutSolFunctionPackageContentInput < Struct.new(
      :content_type,
      :file,
      :vnf_pkg_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update metadata in a function package.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    # @!attribute [rw] vnfd
    #   Metadata for function package artifacts.
    #
    #   Artifacts are the contents of the package descriptor file and the
    #   state of the package.
    #   @return [Types::FunctionArtifactMeta]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/PutSolFunctionPackageContentMetadata AWS API Documentation
    #
    class PutSolFunctionPackageContentMetadata < Struct.new(
      :vnfd)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Function package ID.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Function package metadata.
    #   @return [Types::PutSolFunctionPackageContentMetadata]
    #
    # @!attribute [rw] vnf_product_name
    #   Function product name.
    #   @return [String]
    #
    # @!attribute [rw] vnf_provider
    #   Function provider.
    #   @return [String]
    #
    # @!attribute [rw] vnfd_id
    #   Function package descriptor ID.
    #   @return [String]
    #
    # @!attribute [rw] vnfd_version
    #   Function package descriptor version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/PutSolFunctionPackageContentOutput AWS API Documentation
    #
    class PutSolFunctionPackageContentOutput < Struct.new(
      :id,
      :metadata,
      :vnf_product_name,
      :vnf_provider,
      :vnfd_id,
      :vnfd_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   Network package content type.
    #   @return [String]
    #
    # @!attribute [rw] file
    #   Network package file.
    #   @return [String]
    #
    # @!attribute [rw] nsd_info_id
    #   Network service descriptor info ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/PutSolNetworkPackageContentInput AWS API Documentation
    #
    class PutSolNetworkPackageContentInput < Struct.new(
      :content_type,
      :file,
      :nsd_info_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update metadata in a network package.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    # @!attribute [rw] nsd
    #   Metadata for network package artifacts.
    #
    #   Artifacts are the contents of the package descriptor file and the
    #   state of the package.
    #   @return [Types::NetworkArtifactMeta]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/PutSolNetworkPackageContentMetadata AWS API Documentation
    #
    class PutSolNetworkPackageContentMetadata < Struct.new(
      :nsd)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Network package ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Network package ID.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Network package metadata.
    #   @return [Types::PutSolNetworkPackageContentMetadata]
    #
    # @!attribute [rw] nsd_id
    #   Network service descriptor ID.
    #   @return [String]
    #
    # @!attribute [rw] nsd_name
    #   Network service descriptor name.
    #   @return [String]
    #
    # @!attribute [rw] nsd_version
    #   Network service descriptor version.
    #   @return [String]
    #
    # @!attribute [rw] vnf_pkg_ids
    #   Function package IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/PutSolNetworkPackageContentOutput AWS API Documentation
    #
    class PutSolNetworkPackageContentOutput < Struct.new(
      :arn,
      :id,
      :metadata,
      :nsd_id,
      :nsd_name,
      :nsd_version,
      :vnf_pkg_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request references a resource that doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Service quotas have been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. You can use tags
    #   to search and filter your resources or track your Amazon Web
    #   Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] ns_instance_id
    #   ID of the network instance.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. When you use this
    #   API, the tags are transferred to the network operation that is
    #   created. Use tags to search and filter your resources or track your
    #   Amazon Web Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/TerminateSolNetworkInstanceInput AWS API Documentation
    #
    class TerminateSolNetworkInstanceInput < Struct.new(
      :ns_instance_id,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] ns_lcm_op_occ_id
    #   The identifier of the network operation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. When you use this
    #   API, the tags are transferred to the network operation that is
    #   created. Use tags to search and filter your resources or track your
    #   Amazon Web Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/TerminateSolNetworkInstanceOutput AWS API Documentation
    #
    class TerminateSolNetworkInstanceOutput < Struct.new(
      :ns_lcm_op_occ_id,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Exception caused by throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Overrides of the TOSCA node.
    #
    # @!attribute [rw] default_value
    #   Default value for the override.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the TOSCA override.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ToscaOverride AWS API Documentation
    #
    class ToscaOverride < Struct.new(
      :default_value,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] operational_state
    #   Operational state of the function package.
    #   @return [String]
    #
    # @!attribute [rw] vnf_pkg_id
    #   ID of the function package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UpdateSolFunctionPackageInput AWS API Documentation
    #
    class UpdateSolFunctionPackageInput < Struct.new(
      :operational_state,
      :vnf_pkg_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operational_state
    #   Operational state of the function package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UpdateSolFunctionPackageOutput AWS API Documentation
    #
    class UpdateSolFunctionPackageOutput < Struct.new(
      :operational_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] modify_vnf_info_data
    #   Identifies the network function information parameters and/or the
    #   configurable properties of the network function to be modified.
    #   @return [Types::UpdateSolNetworkModify]
    #
    # @!attribute [rw] ns_instance_id
    #   ID of the network instance.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. When you use this
    #   API, the tags are transferred to the network operation that is
    #   created. Use tags to search and filter your resources or track your
    #   Amazon Web Services costs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_type
    #   The type of update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UpdateSolNetworkInstanceInput AWS API Documentation
    #
    class UpdateSolNetworkInstanceInput < Struct.new(
      :modify_vnf_info_data,
      :ns_instance_id,
      :tags,
      :update_type)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] ns_lcm_op_occ_id
    #   The identifier of the network operation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value. When you use this
    #   API, the tags are transferred to the network operation that is
    #   created. Use tags to search and filter your resources or track your
    #   Amazon Web Services costs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UpdateSolNetworkInstanceOutput AWS API Documentation
    #
    class UpdateSolNetworkInstanceOutput < Struct.new(
      :ns_lcm_op_occ_id,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Information parameters and/or the configurable properties for a
    # network function.
    #
    # A network function instance is a function in a function package .
    #
    # @!attribute [rw] vnf_configurable_properties
    #   Provides values for the configurable properties declared in the
    #   function package descriptor.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] vnf_instance_id
    #   ID of the network function instance.
    #
    #   A network function instance is a function in a function package .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UpdateSolNetworkModify AWS API Documentation
    #
    class UpdateSolNetworkModify < Struct.new(
      :vnf_configurable_properties,
      :vnf_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nsd_info_id
    #   ID of the network service descriptor in the network package.
    #   @return [String]
    #
    # @!attribute [rw] nsd_operational_state
    #   Operational state of the network service descriptor in the network
    #   package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UpdateSolNetworkPackageInput AWS API Documentation
    #
    class UpdateSolNetworkPackageInput < Struct.new(
      :nsd_info_id,
      :nsd_operational_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nsd_operational_state
    #   Operational state of the network service descriptor in the network
    #   package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/UpdateSolNetworkPackageOutput AWS API Documentation
    #
    class UpdateSolNetworkPackageOutput < Struct.new(
      :nsd_operational_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   Function package content type.
    #   @return [String]
    #
    # @!attribute [rw] file
    #   Function package file.
    #   @return [String]
    #
    # @!attribute [rw] vnf_pkg_id
    #   Function package ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ValidateSolFunctionPackageContentInput AWS API Documentation
    #
    class ValidateSolFunctionPackageContentInput < Struct.new(
      :content_type,
      :file,
      :vnf_pkg_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validates function package content metadata.
    #
    # A function package is a .zip file in CSAR (Cloud Service Archive)
    # format that contains a network function (an ETSI standard
    # telecommunication application) and function package descriptor that
    # uses the TOSCA standard to describe how the network functions should
    # run on your network.
    #
    # @!attribute [rw] vnfd
    #   Metadata for function package artifacts.
    #
    #   Artifacts are the contents of the package descriptor file and the
    #   state of the package.
    #   @return [Types::FunctionArtifactMeta]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ValidateSolFunctionPackageContentMetadata AWS API Documentation
    #
    class ValidateSolFunctionPackageContentMetadata < Struct.new(
      :vnfd)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Function package ID.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Function package metadata.
    #   @return [Types::ValidateSolFunctionPackageContentMetadata]
    #
    # @!attribute [rw] vnf_product_name
    #   Network function product name.
    #   @return [String]
    #
    # @!attribute [rw] vnf_provider
    #   Network function provider.
    #   @return [String]
    #
    # @!attribute [rw] vnfd_id
    #   Function package descriptor ID.
    #   @return [String]
    #
    # @!attribute [rw] vnfd_version
    #   Function package descriptor version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ValidateSolFunctionPackageContentOutput AWS API Documentation
    #
    class ValidateSolFunctionPackageContentOutput < Struct.new(
      :id,
      :metadata,
      :vnf_product_name,
      :vnf_provider,
      :vnfd_id,
      :vnfd_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   Network package content type.
    #   @return [String]
    #
    # @!attribute [rw] file
    #   Network package file.
    #   @return [String]
    #
    # @!attribute [rw] nsd_info_id
    #   Network service descriptor file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ValidateSolNetworkPackageContentInput AWS API Documentation
    #
    class ValidateSolNetworkPackageContentInput < Struct.new(
      :content_type,
      :file,
      :nsd_info_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validates network package content metadata.
    #
    # A network package is a .zip file in CSAR (Cloud Service Archive)
    # format defines the function packages you want to deploy and the Amazon
    # Web Services infrastructure you want to deploy them on.
    #
    # @!attribute [rw] nsd
    #   Metadata for network package artifacts.
    #
    #   Artifacts are the contents of the package descriptor file and the
    #   state of the package.
    #   @return [Types::NetworkArtifactMeta]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ValidateSolNetworkPackageContentMetadata AWS API Documentation
    #
    class ValidateSolNetworkPackageContentMetadata < Struct.new(
      :nsd)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Network package ARN.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Network package ID.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Network package metadata.
    #   @return [Types::ValidateSolNetworkPackageContentMetadata]
    #
    # @!attribute [rw] nsd_id
    #   Network service descriptor ID.
    #   @return [String]
    #
    # @!attribute [rw] nsd_name
    #   Network service descriptor name.
    #   @return [String]
    #
    # @!attribute [rw] nsd_version
    #   Network service descriptor version.
    #   @return [String]
    #
    # @!attribute [rw] vnf_pkg_ids
    #   Function package IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ValidateSolNetworkPackageContentOutput AWS API Documentation
    #
    class ValidateSolNetworkPackageContentOutput < Struct.new(
      :arn,
      :id,
      :metadata,
      :nsd_id,
      :nsd_name,
      :nsd_version,
      :vnf_pkg_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to process the request because the client provided input failed
    # to satisfy request constraints.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/tnb-2008-10-21/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
