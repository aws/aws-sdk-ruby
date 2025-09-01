# frozen_string_literal: true

# This is generated code!

module Aws::Tnb
  # This module contains the types returned by client operations.
  module Types

    # <p>Insufficient permissions to make request.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ns_lcm_op_occ_id
    #   <p>The identifier of the network operation.</p>
    #   @return [String]
    class CancelSolNetworkOperationInput < Struct.new(
      :ns_lcm_op_occ_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class CreateSolFunctionPackageInput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>ID of the function package.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Function package ARN.</p>
    #   @return [String]
    # @!attribute onboarding_state
    #   <p>Onboarding state of the function package.</p>
    #   @return [String]
    # @!attribute operational_state
    #   <p>Operational state of the function package.</p>
    #   @return [String]
    # @!attribute usage_state
    #   <p>Usage state of the function package.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class CreateSolFunctionPackageOutput < Struct.new(
      :id,
      :arn,
      :onboarding_state,
      :operational_state,
      :usage_state,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nsd_info_id
    #   <p>ID for network service descriptor.</p>
    #   @return [String]
    # @!attribute ns_name
    #   <p>Network instance name.</p>
    #   @return [String]
    # @!attribute ns_description
    #   <p>Network instance description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class CreateSolNetworkInstanceInput < Struct.new(
      :nsd_info_id,
      :ns_name,
      :ns_description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Network instance ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network instance ARN.</p>
    #   @return [String]
    # @!attribute nsd_info_id
    #   <p>Network service descriptor ID.</p>
    #   @return [String]
    # @!attribute ns_instance_name
    #   <p>Network instance name.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class CreateSolNetworkInstanceOutput < Struct.new(
      :id,
      :arn,
      :nsd_info_id,
      :ns_instance_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class CreateSolNetworkPackageInput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>ID of the network package.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network package ARN.</p>
    #   @return [String]
    # @!attribute nsd_onboarding_state
    #   <p>Onboarding state of the network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute nsd_operational_state
    #   <p>Operational state of the network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute nsd_usage_state
    #   <p>Usage state of the network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class CreateSolNetworkPackageOutput < Struct.new(
      :id,
      :arn,
      :nsd_onboarding_state,
      :nsd_operational_state,
      :nsd_usage_state,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vnf_pkg_id
    #   <p>ID of the function package.</p>
    #   @return [String]
    class DeleteSolFunctionPackageInput < Struct.new(
      :vnf_pkg_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ns_instance_id
    #   <p>Network instance ID.</p>
    #   @return [String]
    class DeleteSolNetworkInstanceInput < Struct.new(
      :ns_instance_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nsd_info_id
    #   <p>ID of the network service descriptor in the network package.</p>
    #   @return [String]
    class DeleteSolNetworkPackageInput < Struct.new(
      :nsd_info_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DescriptorContentType
      TEXT_PLAIN = 'text/plain'
    end

    # <p>Provides error information.</p>
    # @!attribute cause
    #   <p>Error cause.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Error details.</p>
    #   @return [String]
    class ErrorInfo < Struct.new(
      :cause,
      :details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata for function package artifacts.</p>
    #          <p>Artifacts are the contents of the package descriptor file and the state of the package.</p>
    # @!attribute overrides
    #   <p>Lists of function package overrides.</p>
    #   @return [Array<Types::ToscaOverride>]
    class FunctionArtifactMeta < Struct.new(
      :overrides,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vnf_instance_id
    #   <p>ID of the network function.</p>
    #   @return [String]
    class GetSolFunctionInstanceInput < Struct.new(
      :vnf_instance_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The metadata of a network function instance.</p>
    #          <p>A network function instance is a function in a function package .</p>
    # @!attribute created_at
    #   <p>The date that the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date that the resource was last modified.</p>
    #   @return [Time]
    class GetSolFunctionInstanceMetadata < Struct.new(
      :created_at,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Network function instance ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network function instance ARN.</p>
    #   @return [String]
    # @!attribute ns_instance_id
    #   <p>Network instance ID.</p>
    #   @return [String]
    # @!attribute vnf_pkg_id
    #   <p>Function package ID.</p>
    #   @return [String]
    # @!attribute vnfd_id
    #   <p>Function package descriptor ID.</p>
    #   @return [String]
    # @!attribute vnf_provider
    #   <p>Network function provider.</p>
    #   @return [String]
    # @!attribute vnf_product_name
    #   <p>Network function product name.</p>
    #   @return [String]
    # @!attribute vnfd_version
    #   <p>Function package descriptor version.</p>
    #   @return [String]
    # @!attribute instantiation_state
    #   <p>Network function instantiation state.</p>
    #   @return [String]
    # @!attribute instantiated_vnf_info
    #   <p>Information about the network function.</p>
    #            <p>A network function instance is a function in a function package .</p>
    #   @return [Types::GetSolVnfInfo]
    # @!attribute metadata
    #   <p>The metadata of a network function instance.</p>
    #            <p>A network function instance is a function in a function package .</p>
    #   @return [Types::GetSolFunctionInstanceMetadata]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class GetSolFunctionInstanceOutput < Struct.new(
      :id,
      :arn,
      :ns_instance_id,
      :vnf_pkg_id,
      :vnfd_id,
      :vnf_provider,
      :vnf_product_name,
      :vnfd_version,
      :instantiation_state,
      :instantiated_vnf_info,
      :metadata,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vnf_pkg_id
    #   <p>ID of the function package.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>The format of the package that you want to download from the function packages.</p>
    #   @return [String]
    class GetSolFunctionPackageContentInput < Struct.new(
      :vnf_pkg_id,
      :accept,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>Indicates the media type of the resource.</p>
    #   @return [String]
    # @!attribute package_content
    #   <p>Contents of the function package.</p>
    #   @return [String]
    class GetSolFunctionPackageContentOutput < Struct.new(
      :content_type,
      :package_content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vnf_pkg_id
    #   <p>ID of the function package.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>Indicates which content types, expressed as MIME types, the client is able to
    #            understand.</p>
    #   @return [String]
    class GetSolFunctionPackageDescriptorInput < Struct.new(
      :vnf_pkg_id,
      :accept,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>Indicates the media type of the resource.</p>
    #   @return [String]
    # @!attribute vnfd
    #   <p>Contents of the function package descriptor.</p>
    #   @return [String]
    class GetSolFunctionPackageDescriptorOutput < Struct.new(
      :content_type,
      :vnfd,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vnf_pkg_id
    #   <p>ID of the function package.</p>
    #   @return [String]
    class GetSolFunctionPackageInput < Struct.new(
      :vnf_pkg_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata related to the function package.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    # @!attribute vnfd
    #   <p>Metadata related to the function package descriptor of the function package.</p>
    #   @return [Types::FunctionArtifactMeta]
    # @!attribute created_at
    #   <p>The date that the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date that the resource was last modified.</p>
    #   @return [Time]
    class GetSolFunctionPackageMetadata < Struct.new(
      :vnfd,
      :created_at,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Function package ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Function package ARN.</p>
    #   @return [String]
    # @!attribute onboarding_state
    #   <p>Function package onboarding state.</p>
    #   @return [String]
    # @!attribute operational_state
    #   <p>Function package operational state.</p>
    #   @return [String]
    # @!attribute usage_state
    #   <p>Function package usage state.</p>
    #   @return [String]
    # @!attribute vnfd_id
    #   <p>Function package descriptor ID.</p>
    #   @return [String]
    # @!attribute vnf_provider
    #   <p>Network function provider.</p>
    #   @return [String]
    # @!attribute vnf_product_name
    #   <p>Network function product name.</p>
    #   @return [String]
    # @!attribute vnfd_version
    #   <p>Function package descriptor version.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Metadata related to the function package.</p>
    #            <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    #   @return [Types::GetSolFunctionPackageMetadata]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class GetSolFunctionPackageOutput < Struct.new(
      :id,
      :arn,
      :onboarding_state,
      :operational_state,
      :usage_state,
      :vnfd_id,
      :vnf_provider,
      :vnf_product_name,
      :vnfd_version,
      :metadata,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a network function.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    # @!attribute vnf_state
    #   <p>State of the network function.</p>
    #   @return [String]
    class GetSolInstantiatedVnfInfo < Struct.new(
      :vnf_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ns_instance_id
    #   <p>ID of the network instance.</p>
    #   @return [String]
    class GetSolNetworkInstanceInput < Struct.new(
      :ns_instance_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The metadata of a network instance.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    # @!attribute created_at
    #   <p>The date that the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date that the resource was last modified.</p>
    #   @return [Time]
    class GetSolNetworkInstanceMetadata < Struct.new(
      :created_at,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Network instance ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network instance ARN.</p>
    #   @return [String]
    # @!attribute ns_instance_name
    #   <p>Network instance name.</p>
    #   @return [String]
    # @!attribute ns_instance_description
    #   <p>Network instance description.</p>
    #   @return [String]
    # @!attribute nsd_id
    #   <p>Network service descriptor ID.</p>
    #   @return [String]
    # @!attribute nsd_info_id
    #   <p>Network service descriptor info ID.</p>
    #   @return [String]
    # @!attribute ns_state
    #   <p>Network instance state.</p>
    #   @return [String]
    # @!attribute lcm_op_info
    #   <p>Lifecycle management operation details on the network instance.</p>
    #            <p>Lifecycle management operations are deploy, update, or delete operations.</p>
    #   @return [Types::LcmOperationInfo]
    # @!attribute metadata
    #   <p>The metadata of a network instance.</p>
    #            <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    #   @return [Types::GetSolNetworkInstanceMetadata]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class GetSolNetworkInstanceOutput < Struct.new(
      :id,
      :arn,
      :ns_instance_name,
      :ns_instance_description,
      :nsd_id,
      :nsd_info_id,
      :ns_state,
      :lcm_op_info,
      :metadata,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ns_lcm_op_occ_id
    #   <p>The identifier of the network operation.</p>
    #   @return [String]
    class GetSolNetworkOperationInput < Struct.new(
      :ns_lcm_op_occ_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata related to a network operation occurrence.</p>
    #          <p>A network operation is any operation that is done to your network, such as network instance instantiation or termination.</p>
    # @!attribute update_ns_metadata
    #   <p>Metadata related to the network operation occurrence for network instance updates.
    #            This is populated only if the lcmOperationType is <code>UPDATE</code> and the
    #            updateType is <code>UPDATE_NS</code>.</p>
    #   @return [Types::UpdateNsMetadata]
    # @!attribute modify_vnf_info_metadata
    #   <p>Metadata related to the network operation occurrence for network function updates in a network instance.
    #            This is populated only if the lcmOperationType is <code>UPDATE</code> and the
    #            updateType is <code>MODIFY_VNF_INFORMATION</code>.</p>
    #   @return [Types::ModifyVnfInfoMetadata]
    # @!attribute instantiate_metadata
    #   <p>Metadata related to the network operation occurrence for network instantiation.
    #            This is populated only if the lcmOperationType is <code>INSTANTIATE</code>.</p>
    #   @return [Types::InstantiateMetadata]
    # @!attribute created_at
    #   <p>The date that the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date that the resource was last modified.</p>
    #   @return [Time]
    class GetSolNetworkOperationMetadata < Struct.new(
      :update_ns_metadata,
      :modify_vnf_info_metadata,
      :instantiate_metadata,
      :created_at,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>ID of this network operation occurrence.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network operation ARN.</p>
    #   @return [String]
    # @!attribute operation_state
    #   <p>The state of the network operation.</p>
    #   @return [String]
    # @!attribute ns_instance_id
    #   <p>ID of the network operation instance.</p>
    #   @return [String]
    # @!attribute lcm_operation_type
    #   <p>Type of the operation represented by this occurrence.</p>
    #   @return [String]
    # @!attribute update_type
    #   <p>Type of the update. Only present if the network operation
    #            lcmOperationType is <code>UPDATE</code>.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Error related to this specific network operation occurrence.</p>
    #   @return [Types::ProblemDetails]
    # @!attribute metadata
    #   <p>Metadata of this network operation occurrence.</p>
    #   @return [Types::GetSolNetworkOperationMetadata]
    # @!attribute tasks
    #   <p>All tasks associated with this operation occurrence.</p>
    #   @return [Array<Types::GetSolNetworkOperationTaskDetails>]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class GetSolNetworkOperationOutput < Struct.new(
      :id,
      :arn,
      :operation_state,
      :ns_instance_id,
      :lcm_operation_type,
      :update_type,
      :error,
      :metadata,
      :tasks,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Gets the details of a network operation.</p>
    #          <p>A network operation is any operation that is done to your network, such as network instance instantiation or termination.</p>
    # @!attribute task_name
    #   <p>Task name.</p>
    #   @return [String]
    # @!attribute task_context
    #   <p>Context for the network operation task.</p>
    #   @return [Hash<String, String>]
    # @!attribute task_error_details
    #   <p>Task error details.</p>
    #   @return [Types::ErrorInfo]
    # @!attribute task_status
    #   <p>Task status.</p>
    #   @return [String]
    # @!attribute task_start_time
    #   <p>Task start time.</p>
    #   @return [Time]
    # @!attribute task_end_time
    #   <p>Task end time.</p>
    #   @return [Time]
    class GetSolNetworkOperationTaskDetails < Struct.new(
      :task_name,
      :task_context,
      :task_error_details,
      :task_status,
      :task_start_time,
      :task_end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nsd_info_id
    #   <p>ID of the network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>The format of the package you want to download from the network package.</p>
    #   @return [String]
    class GetSolNetworkPackageContentInput < Struct.new(
      :nsd_info_id,
      :accept,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>Indicates the media type of the resource.</p>
    #   @return [String]
    # @!attribute nsd_content
    #   <p>Content of the network service descriptor in the network package.</p>
    #   @return [String]
    class GetSolNetworkPackageContentOutput < Struct.new(
      :content_type,
      :nsd_content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nsd_info_id
    #   <p>ID of the network service descriptor in the network package.</p>
    #   @return [String]
    class GetSolNetworkPackageDescriptorInput < Struct.new(
      :nsd_info_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>Indicates the media type of the resource.</p>
    #   @return [String]
    # @!attribute nsd
    #   <p>Contents of the network service descriptor in the network package.</p>
    #   @return [String]
    class GetSolNetworkPackageDescriptorOutput < Struct.new(
      :content_type,
      :nsd,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nsd_info_id
    #   <p>ID of the network service descriptor in the network package.</p>
    #   @return [String]
    class GetSolNetworkPackageInput < Struct.new(
      :nsd_info_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata associated with a network package.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    # @!attribute nsd
    #   <p>Metadata related to the onboarded network service descriptor in the network
    #            package.</p>
    #   @return [Types::NetworkArtifactMeta]
    # @!attribute created_at
    #   <p>The date that the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date that the resource was last modified.</p>
    #   @return [Time]
    class GetSolNetworkPackageMetadata < Struct.new(
      :nsd,
      :created_at,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Network package ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network package ARN.</p>
    #   @return [String]
    # @!attribute nsd_onboarding_state
    #   <p>Network service descriptor onboarding state.</p>
    #   @return [String]
    # @!attribute nsd_operational_state
    #   <p>Network service descriptor operational state.</p>
    #   @return [String]
    # @!attribute nsd_usage_state
    #   <p>Network service descriptor usage state.</p>
    #   @return [String]
    # @!attribute nsd_id
    #   <p>Network service descriptor ID.</p>
    #   @return [String]
    # @!attribute nsd_name
    #   <p>Network service descriptor name.</p>
    #   @return [String]
    # @!attribute nsd_version
    #   <p>Network service descriptor version.</p>
    #   @return [String]
    # @!attribute vnf_pkg_ids
    #   <p>Identifies the function package for the function package descriptor referenced by the
    #            onboarded network package.</p>
    #   @return [Array<String>]
    # @!attribute metadata
    #   <p>Metadata associated with a network package.</p>
    #            <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    #   @return [Types::GetSolNetworkPackageMetadata]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class GetSolNetworkPackageOutput < Struct.new(
      :id,
      :arn,
      :nsd_onboarding_state,
      :nsd_operational_state,
      :nsd_usage_state,
      :nsd_id,
      :nsd_name,
      :nsd_version,
      :vnf_pkg_ids,
      :metadata,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the network function.</p>
    #          <p>A network function instance is a function in a function package .</p>
    # @!attribute vnf_state
    #   <p>State of the network function instance.</p>
    #   @return [String]
    # @!attribute vnfc_resource_info
    #   <p>Compute info used by the network function instance.</p>
    #   @return [Array<Types::GetSolVnfcResourceInfo>]
    class GetSolVnfInfo < Struct.new(
      :vnf_state,
      :vnfc_resource_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details of resource associated with a network function.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    # @!attribute metadata
    #   <p>The metadata of the network function compute.</p>
    #   @return [Types::GetSolVnfcResourceInfoMetadata]
    class GetSolVnfcResourceInfo < Struct.new(
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The metadata of a network function.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    # @!attribute node_group
    #   <p>Information about the node group.</p>
    #   @return [String]
    # @!attribute cluster
    #   <p>Information about the cluster.</p>
    #   @return [String]
    # @!attribute helm_chart
    #   <p>Information about the helm chart.</p>
    #   @return [String]
    class GetSolVnfcResourceInfoMetadata < Struct.new(
      :node_group,
      :cluster,
      :helm_chart,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata related to the configuration properties used during instantiation of the network instance.</p>
    # @!attribute nsd_info_id
    #   <p>The network service descriptor used for instantiating the network instance.</p>
    #   @return [String]
    # @!attribute additional_params_for_ns
    #   <p>The configurable properties used during instantiation.</p>
    #   @return [JSON]
    class InstantiateMetadata < Struct.new(
      :nsd_info_id,
      :additional_params_for_ns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ns_instance_id
    #   <p>ID of the network instance.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>A check for whether you have the required permissions for the action without actually making the request 
    #      and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>. 
    #      Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    #   @return [Boolean]
    # @!attribute additional_params_for_ns
    #   <p>Provides values for the configurable properties.</p>
    #   @return [JSON]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. When you use this API, the tags are only applied to the network operation that is created. These tags are not applied to the network instance. Use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class InstantiateSolNetworkInstanceInput < Struct.new(
      :ns_instance_id,
      :dry_run,
      :additional_params_for_ns,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ns_lcm_op_occ_id
    #   <p>The identifier of the network operation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. When you use this API, the tags are only applied to the network operation that is created. These tags are not applied to the network instance. Use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class InstantiateSolNetworkInstanceOutput < Struct.new(
      :ns_lcm_op_occ_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Unexpected error occurred. Problem on the server.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lifecycle management operation details on the network instance.</p>
    #          <p>Lifecycle management operations are deploy, update, or delete operations.</p>
    # @!attribute ns_lcm_op_occ_id
    #   <p>The identifier of the network operation.</p>
    #   @return [String]
    class LcmOperationInfo < Struct.new(
      :ns_lcm_op_occ_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LcmOperationType
      INSTANTIATE = 'INSTANTIATE'
      UPDATE = 'UPDATE'
      TERMINATE = 'TERMINATE'
    end

    # <p>Lists information about a network function instance.</p>
    #          <p>A network function instance is a function in a function package .</p>
    # @!attribute id
    #   <p>Network function instance ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network function instance ARN.</p>
    #   @return [String]
    # @!attribute ns_instance_id
    #   <p>Network instance ID.</p>
    #   @return [String]
    # @!attribute vnf_pkg_id
    #   <p>Function package ID.</p>
    #   @return [String]
    # @!attribute vnf_pkg_name
    #   <p>Function package name.</p>
    #   @return [String]
    # @!attribute instantiation_state
    #   <p>Network function instance instantiation state.</p>
    #   @return [String]
    # @!attribute instantiated_vnf_info
    #   <p>Information about a network function.</p>
    #            <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    #   @return [Types::GetSolInstantiatedVnfInfo]
    # @!attribute metadata
    #   <p>Network function instance metadata.</p>
    #   @return [Types::ListSolFunctionInstanceMetadata]
    class ListSolFunctionInstanceInfo < Struct.new(
      :id,
      :arn,
      :ns_instance_id,
      :vnf_pkg_id,
      :vnf_pkg_name,
      :instantiation_state,
      :instantiated_vnf_info,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lists network function instance metadata.</p>
    #          <p>A network function instance is a function in a function package .</p>
    # @!attribute created_at
    #   <p>When the network function instance was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>When the network function instance was last modified.</p>
    #   @return [Time]
    class ListSolFunctionInstanceMetadata < Struct.new(
      :created_at,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListSolFunctionInstancesInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    # @!attribute function_instances
    #   <p>Network function instances.</p>
    #   @return [Array<Types::ListSolFunctionInstanceInfo>]
    class ListSolFunctionInstancesOutput < Struct.new(
      :next_token,
      :function_instances,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a function package.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    # @!attribute id
    #   <p>ID of the function package.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Function package ARN.</p>
    #   @return [String]
    # @!attribute onboarding_state
    #   <p>Onboarding state of the function package.</p>
    #   @return [String]
    # @!attribute operational_state
    #   <p>Operational state of the function package.</p>
    #   @return [String]
    # @!attribute usage_state
    #   <p>Usage state of the function package.</p>
    #   @return [String]
    # @!attribute vnfd_id
    #   <p>Identifies the function package and the function package descriptor.</p>
    #   @return [String]
    # @!attribute vnf_provider
    #   <p>Provider of the function package and the function package descriptor.</p>
    #   @return [String]
    # @!attribute vnf_product_name
    #   <p>The product name for the network function.</p>
    #   @return [String]
    # @!attribute vnfd_version
    #   <p>Identifies the version of the function package descriptor.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the function package.</p>
    #   @return [Types::ListSolFunctionPackageMetadata]
    class ListSolFunctionPackageInfo < Struct.new(
      :id,
      :arn,
      :onboarding_state,
      :operational_state,
      :usage_state,
      :vnfd_id,
      :vnf_provider,
      :vnf_product_name,
      :vnfd_version,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details for the function package metadata.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    # @!attribute created_at
    #   <p>The date that the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date that the resource was last modified.</p>
    #   @return [Time]
    class ListSolFunctionPackageMetadata < Struct.new(
      :created_at,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListSolFunctionPackagesInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    # @!attribute function_packages
    #   <p>Function packages. A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    #   @return [Array<Types::ListSolFunctionPackageInfo>]
    class ListSolFunctionPackagesOutput < Struct.new(
      :next_token,
      :function_packages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Info about the specific network instance.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    # @!attribute id
    #   <p>ID of the network instance.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network instance ARN.</p>
    #   @return [String]
    # @!attribute ns_instance_name
    #   <p>Human-readable name of the network instance.</p>
    #   @return [String]
    # @!attribute ns_instance_description
    #   <p>Human-readable description of the network instance.</p>
    #   @return [String]
    # @!attribute nsd_id
    #   <p>ID of the network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute nsd_info_id
    #   <p>ID of the network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute ns_state
    #   <p>The state of the network instance.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the network instance.</p>
    #   @return [Types::ListSolNetworkInstanceMetadata]
    class ListSolNetworkInstanceInfo < Struct.new(
      :id,
      :arn,
      :ns_instance_name,
      :ns_instance_description,
      :nsd_id,
      :nsd_info_id,
      :ns_state,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata details for a network instance.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    # @!attribute created_at
    #   <p>The date that the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date that the resource was last modified.</p>
    #   @return [Time]
    class ListSolNetworkInstanceMetadata < Struct.new(
      :created_at,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListSolNetworkInstancesInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    # @!attribute network_instances
    #   <p>Lists network instances.</p>
    #   @return [Array<Types::ListSolNetworkInstanceInfo>]
    class ListSolNetworkInstancesOutput < Struct.new(
      :next_token,
      :network_instances,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information parameters for a network operation.</p>
    # @!attribute id
    #   <p>ID of this network operation.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network operation ARN.</p>
    #   @return [String]
    # @!attribute operation_state
    #   <p>The state of the network operation.</p>
    #   @return [String]
    # @!attribute ns_instance_id
    #   <p>ID of the network instance related to this operation.</p>
    #   @return [String]
    # @!attribute lcm_operation_type
    #   <p>Type of lifecycle management network operation.</p>
    #   @return [String]
    # @!attribute update_type
    #   <p>Type of the update. Only present if the network operation lcmOperationType is <code>UPDATE</code>.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Error related to this specific network operation.</p>
    #   @return [Types::ProblemDetails]
    # @!attribute metadata
    #   <p>Metadata related to this network operation.</p>
    #   @return [Types::ListSolNetworkOperationsMetadata]
    class ListSolNetworkOperationsInfo < Struct.new(
      :id,
      :arn,
      :operation_state,
      :ns_instance_id,
      :lcm_operation_type,
      :update_type,
      :error,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ns_instance_id
    #   <p>Network instance id filter, to retrieve network operations associated to a network instance.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListSolNetworkOperationsInput < Struct.new(
      :ns_instance_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata related to a network operation.</p>
    #          <p>A network operation is any operation that is done to your network, such as network instance instantiation or termination.</p>
    # @!attribute nsd_info_id
    #   <p>The network service descriptor id used for the operation.</p>
    #            <p>Only present if the updateType is <code>UPDATE_NS</code>.</p>
    #   @return [String]
    # @!attribute vnf_instance_id
    #   <p>The network function id used for the operation.</p>
    #            <p>Only present if the updateType is <code>MODIFY_VNF_INFO</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date that the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date that the resource was last modified.</p>
    #   @return [Time]
    class ListSolNetworkOperationsMetadata < Struct.new(
      :nsd_info_id,
      :vnf_instance_id,
      :created_at,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    # @!attribute network_operations
    #   <p>Lists network operation occurrences. Lifecycle management operations are deploy, update, or delete operations.</p>
    #   @return [Array<Types::ListSolNetworkOperationsInfo>]
    class ListSolNetworkOperationsOutput < Struct.new(
      :next_token,
      :network_operations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details of a network package.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    # @!attribute id
    #   <p>ID of the individual network package.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network package ARN.</p>
    #   @return [String]
    # @!attribute nsd_onboarding_state
    #   <p>Onboarding state of the network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute nsd_operational_state
    #   <p>Operational state of the network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute nsd_usage_state
    #   <p>Usage state of the network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute nsd_id
    #   <p>ID of the network service descriptor on which the network package is based.</p>
    #   @return [String]
    # @!attribute nsd_name
    #   <p>Name of the onboarded network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute nsd_version
    #   <p>Version of the onboarded network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute nsd_designer
    #   <p>Designer of the onboarded network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute nsd_invariant_id
    #   <p>Identifies a network service descriptor in a version independent manner.</p>
    #   @return [String]
    # @!attribute vnf_pkg_ids
    #   <p>Identifies the function package for the function package descriptor referenced by the
    #            onboarded network package.</p>
    #   @return [Array<String>]
    # @!attribute metadata
    #   <p>The metadata of the network package.</p>
    #   @return [Types::ListSolNetworkPackageMetadata]
    class ListSolNetworkPackageInfo < Struct.new(
      :id,
      :arn,
      :nsd_onboarding_state,
      :nsd_operational_state,
      :nsd_usage_state,
      :nsd_id,
      :nsd_name,
      :nsd_version,
      :nsd_designer,
      :nsd_invariant_id,
      :vnf_pkg_ids,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata related to a network package.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    # @!attribute created_at
    #   <p>The date that the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date that the resource was last modified.</p>
    #   @return [Time]
    class ListSolNetworkPackageMetadata < Struct.new(
      :created_at,
      :last_modified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListSolNetworkPackagesInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    # @!attribute network_packages
    #   <p>Network packages. A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    #   @return [Array<Types::ListSolNetworkPackageInfo>]
    class ListSolNetworkPackagesOutput < Struct.new(
      :next_token,
      :network_packages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Resource ARN.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata related to the configuration properties used during update of a specific
    #          network function in a network instance.</p>
    # @!attribute vnf_instance_id
    #   <p>The network function instance that was updated in the network instance.</p>
    #   @return [String]
    # @!attribute vnf_configurable_properties
    #   <p>The configurable properties used during update of the network function instance.</p>
    #   @return [JSON]
    class ModifyVnfInfoMetadata < Struct.new(
      :vnf_instance_id,
      :vnf_configurable_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata for network package artifacts.</p>
    #          <p>Artifacts are the contents of the package descriptor file and the state of the package.</p>
    # @!attribute overrides
    #   <p>Lists network package overrides.</p>
    #   @return [Array<Types::ToscaOverride>]
    class NetworkArtifactMeta < Struct.new(
      :overrides,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NsLcmOperationState
      PROCESSING = 'PROCESSING'
      COMPLETED = 'COMPLETED'
      FAILED = 'FAILED'
      CANCELLING = 'CANCELLING'
      CANCELLED = 'CANCELLED'
    end

    module NsState
      INSTANTIATED = 'INSTANTIATED'
      NOT_INSTANTIATED = 'NOT_INSTANTIATED'
      UPDATED = 'UPDATED'
      IMPAIRED = 'IMPAIRED'
      UPDATE_FAILED = 'UPDATE_FAILED'
      STOPPED = 'STOPPED'
      DELETED = 'DELETED'
      INSTANTIATE_IN_PROGRESS = 'INSTANTIATE_IN_PROGRESS'
      INTENT_TO_UPDATE_IN_PROGRESS = 'INTENT_TO_UPDATE_IN_PROGRESS'
      UPDATE_IN_PROGRESS = 'UPDATE_IN_PROGRESS'
      TERMINATE_IN_PROGRESS = 'TERMINATE_IN_PROGRESS'
    end

    module NsdOnboardingState
      CREATED = 'CREATED'
      ONBOARDED = 'ONBOARDED'
      ERROR = 'ERROR'
    end

    module NsdOperationalState
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module NsdUsageState
      IN_USE = 'IN_USE'
      NOT_IN_USE = 'NOT_IN_USE'
    end

    module OnboardingState
      CREATED = 'CREATED'
      ONBOARDED = 'ONBOARDED'
      ERROR = 'ERROR'
    end

    module OperationalState
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module PackageContentType
      APPLICATION_ZIP = 'application/zip'
    end

    # <p>Details related to problems with AWS TNB resources.</p>
    # @!attribute detail
    #   <p>A human-readable explanation specific to this occurrence of the problem.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A human-readable title of the problem type.</p>
    #   @return [String]
    class ProblemDetails < Struct.new(
      :detail,
      :title,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vnf_pkg_id
    #   <p>Function package ID.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Function package content type.</p>
    #   @return [String]
    # @!attribute file
    #   <p>Function package file.</p>
    #   @return [String]
    class PutSolFunctionPackageContentInput < Struct.new(
      :vnf_pkg_id,
      :content_type,
      :file,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Update metadata in a function package.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    # @!attribute vnfd
    #   <p>Metadata for function package artifacts.</p>
    #            <p>Artifacts are the contents of the package descriptor file and the state of the package.</p>
    #   @return [Types::FunctionArtifactMeta]
    class PutSolFunctionPackageContentMetadata < Struct.new(
      :vnfd,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Function package ID.</p>
    #   @return [String]
    # @!attribute vnfd_id
    #   <p>Function package descriptor ID.</p>
    #   @return [String]
    # @!attribute vnf_product_name
    #   <p>Function product name.</p>
    #   @return [String]
    # @!attribute vnf_provider
    #   <p>Function provider.</p>
    #   @return [String]
    # @!attribute vnfd_version
    #   <p>Function package descriptor version.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Function package metadata.</p>
    #   @return [Types::PutSolFunctionPackageContentMetadata]
    class PutSolFunctionPackageContentOutput < Struct.new(
      :id,
      :vnfd_id,
      :vnf_product_name,
      :vnf_provider,
      :vnfd_version,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nsd_info_id
    #   <p>Network service descriptor info ID.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Network package content type.</p>
    #   @return [String]
    # @!attribute file
    #   <p>Network package file.</p>
    #   @return [String]
    class PutSolNetworkPackageContentInput < Struct.new(
      :nsd_info_id,
      :content_type,
      :file,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Update metadata in a network package.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    # @!attribute nsd
    #   <p>Metadata for network package artifacts.</p>
    #            <p>Artifacts are the contents of the package descriptor file and the state of the package.</p>
    #   @return [Types::NetworkArtifactMeta]
    class PutSolNetworkPackageContentMetadata < Struct.new(
      :nsd,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Network package ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network package ARN.</p>
    #   @return [String]
    # @!attribute nsd_id
    #   <p>Network service descriptor ID.</p>
    #   @return [String]
    # @!attribute nsd_name
    #   <p>Network service descriptor name.</p>
    #   @return [String]
    # @!attribute nsd_version
    #   <p>Network service descriptor version.</p>
    #   @return [String]
    # @!attribute vnf_pkg_ids
    #   <p>Function package IDs.</p>
    #   @return [Array<String>]
    # @!attribute metadata
    #   <p>Network package metadata.</p>
    #   @return [Types::PutSolNetworkPackageContentMetadata]
    class PutSolNetworkPackageContentOutput < Struct.new(
      :id,
      :arn,
      :nsd_id,
      :nsd_name,
      :nsd_version,
      :vnf_pkg_ids,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Request references a resource that doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Service quotas have been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Resource ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TaskStatus
      SCHEDULED = 'SCHEDULED'
      STARTED = 'STARTED'
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETED = 'COMPLETED'
      ERROR = 'ERROR'
      SKIPPED = 'SKIPPED'
      CANCELLED = 'CANCELLED'
    end

    # @!attribute ns_instance_id
    #   <p>ID of the network instance.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. When you use this API, the tags are only applied to the network operation that is created. These tags are not applied to the network instance. Use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class TerminateSolNetworkInstanceInput < Struct.new(
      :ns_instance_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ns_lcm_op_occ_id
    #   <p>The identifier of the network operation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. When you use this API, the tags are only applied to the network operation that is created. These tags are not applied to the network instance. Use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class TerminateSolNetworkInstanceOutput < Struct.new(
      :ns_lcm_op_occ_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Exception caused by throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Overrides of the TOSCA node.</p>
    # @!attribute name
    #   <p>Name of the TOSCA override.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>Default value for the override.</p>
    #   @return [String]
    class ToscaOverride < Struct.new(
      :name,
      :default_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Resource ARN.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Tag keys.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata related to the configuration properties used during update of a network instance.</p>
    # @!attribute nsd_info_id
    #   <p>The network service descriptor used for updating the network instance.</p>
    #   @return [String]
    # @!attribute additional_params_for_ns
    #   <p>The configurable properties used during update.</p>
    #   @return [JSON]
    class UpdateNsMetadata < Struct.new(
      :nsd_info_id,
      :additional_params_for_ns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vnf_pkg_id
    #   <p>ID of the function package.</p>
    #   @return [String]
    # @!attribute operational_state
    #   <p>Operational state of the function package.</p>
    #   @return [String]
    class UpdateSolFunctionPackageInput < Struct.new(
      :vnf_pkg_id,
      :operational_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute operational_state
    #   <p>Operational state of the function package.</p>
    #   @return [String]
    class UpdateSolFunctionPackageOutput < Struct.new(
      :operational_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ns_instance_id
    #   <p>ID of the network instance.</p>
    #   @return [String]
    # @!attribute update_type
    #   <p>The type of update.</p>
    #            <ul>
    #               <li>
    #                  <p>Use the <code>MODIFY_VNF_INFORMATION</code> update type, to update a specific network function
    #                  configuration, in the network instance.</p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>UPDATE_NS</code> update type, to update the network instance to a
    #                  new network service descriptor.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute modify_vnf_info_data
    #   <p>Identifies the network function information parameters and/or the configurable
    #            properties of the network function to be modified.</p>
    #            <p>Include this property only if the update type is <code>MODIFY_VNF_INFORMATION</code>.</p>
    #   @return [Types::UpdateSolNetworkModify]
    # @!attribute update_ns
    #   <p>Identifies the network service descriptor and the configurable
    #            properties of the descriptor, to be used for the update.</p>
    #            <p>Include this property only if the update type is <code>UPDATE_NS</code>.</p>
    #   @return [Types::UpdateSolNetworkServiceData]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. When you use this API, the tags are only applied to the network operation that is created. These tags are not applied to the network instance. Use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class UpdateSolNetworkInstanceInput < Struct.new(
      :ns_instance_id,
      :update_type,
      :modify_vnf_info_data,
      :update_ns,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ns_lcm_op_occ_id
    #   <p>The identifier of the network operation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. When you use this API, the tags are only applied to the network operation that is created. These tags are not applied to the network instance. Use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    #   @return [Hash<String, String>]
    class UpdateSolNetworkInstanceOutput < Struct.new(
      :ns_lcm_op_occ_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information parameters and/or the configurable properties for a network function.</p>
    #          <p>A network function instance is a function in a function package .</p>
    # @!attribute vnf_instance_id
    #   <p>ID of the network function instance.</p>
    #            <p>A network function instance is a function in a function package .</p>
    #   @return [String]
    # @!attribute vnf_configurable_properties
    #   <p>Provides values for the configurable properties declared in the function package
    #            descriptor.</p>
    #   @return [JSON]
    class UpdateSolNetworkModify < Struct.new(
      :vnf_instance_id,
      :vnf_configurable_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nsd_info_id
    #   <p>ID of the network service descriptor in the network package.</p>
    #   @return [String]
    # @!attribute nsd_operational_state
    #   <p>Operational state of the network service descriptor in the network package.</p>
    #   @return [String]
    class UpdateSolNetworkPackageInput < Struct.new(
      :nsd_info_id,
      :nsd_operational_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nsd_operational_state
    #   <p>Operational state of the network service descriptor in the network package.</p>
    #   @return [String]
    class UpdateSolNetworkPackageOutput < Struct.new(
      :nsd_operational_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information parameters and/or the configurable properties for a network descriptor used for update.</p>
    # @!attribute nsd_info_id
    #   <p>ID of the network service descriptor.</p>
    #   @return [String]
    # @!attribute additional_params_for_ns
    #   <p>Values for the configurable properties declared in the network service descriptor.</p>
    #   @return [JSON]
    class UpdateSolNetworkServiceData < Struct.new(
      :nsd_info_id,
      :additional_params_for_ns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module UpdateSolNetworkType
      MODIFY_VNF_INFORMATION = 'MODIFY_VNF_INFORMATION'
      UPDATE_NS = 'UPDATE_NS'
    end

    module UsageState
      IN_USE = 'IN_USE'
      NOT_IN_USE = 'NOT_IN_USE'
    end

    # @!attribute vnf_pkg_id
    #   <p>Function package ID.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Function package content type.</p>
    #   @return [String]
    # @!attribute file
    #   <p>Function package file.</p>
    #   @return [String]
    class ValidateSolFunctionPackageContentInput < Struct.new(
      :vnf_pkg_id,
      :content_type,
      :file,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Validates function package content metadata.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    # @!attribute vnfd
    #   <p>Metadata for function package artifacts.</p>
    #            <p>Artifacts are the contents of the package descriptor file and the state of the package.</p>
    #   @return [Types::FunctionArtifactMeta]
    class ValidateSolFunctionPackageContentMetadata < Struct.new(
      :vnfd,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Function package ID.</p>
    #   @return [String]
    # @!attribute vnfd_id
    #   <p>Function package descriptor ID.</p>
    #   @return [String]
    # @!attribute vnf_product_name
    #   <p>Network function product name.</p>
    #   @return [String]
    # @!attribute vnf_provider
    #   <p>Network function provider.</p>
    #   @return [String]
    # @!attribute vnfd_version
    #   <p>Function package descriptor version.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Function package metadata.</p>
    #   @return [Types::ValidateSolFunctionPackageContentMetadata]
    class ValidateSolFunctionPackageContentOutput < Struct.new(
      :id,
      :vnfd_id,
      :vnf_product_name,
      :vnf_provider,
      :vnfd_version,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nsd_info_id
    #   <p>Network service descriptor file.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Network package content type.</p>
    #   @return [String]
    # @!attribute file
    #   <p>Network package file.</p>
    #   @return [String]
    class ValidateSolNetworkPackageContentInput < Struct.new(
      :nsd_info_id,
      :content_type,
      :file,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Validates network package content metadata.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    # @!attribute nsd
    #   <p>Metadata for network package artifacts.</p>
    #            <p>Artifacts are the contents of the package descriptor file and the state of the package.</p>
    #   @return [Types::NetworkArtifactMeta]
    class ValidateSolNetworkPackageContentMetadata < Struct.new(
      :nsd,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Network package ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Network package ARN.</p>
    #   @return [String]
    # @!attribute nsd_id
    #   <p>Network service descriptor ID.</p>
    #   @return [String]
    # @!attribute nsd_name
    #   <p>Network service descriptor name.</p>
    #   @return [String]
    # @!attribute nsd_version
    #   <p>Network service descriptor version.</p>
    #   @return [String]
    # @!attribute vnf_pkg_ids
    #   <p>Function package IDs.</p>
    #   @return [Array<String>]
    # @!attribute metadata
    #   <p>Network package metadata.</p>
    #   @return [Types::ValidateSolNetworkPackageContentMetadata]
    class ValidateSolNetworkPackageContentOutput < Struct.new(
      :id,
      :arn,
      :nsd_id,
      :nsd_name,
      :nsd_version,
      :vnf_pkg_ids,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Unable to process the request because the client provided input failed to satisfy
    #          request constraints.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module VnfInstantiationState
      INSTANTIATED = 'INSTANTIATED'
      NOT_INSTANTIATED = 'NOT_INSTANTIATED'
    end

    module VnfOperationalState
      STARTED = 'STARTED'
      STOPPED = 'STOPPED'
    end

  end
end
