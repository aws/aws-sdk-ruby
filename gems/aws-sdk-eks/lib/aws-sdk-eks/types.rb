# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EKS
  module Types

    # You don't have permissions to perform the requested operation. The
    # user or role that is making the request must have at least one IAM
    # permissions policy attached that grants the required permissions. For
    # more information, see [Access Management][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon EKS add-on. For more information, see [Amazon EKS
    # add-ons][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] addon_version
    #   The version of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] health
    #   An object that represents the health of the add-on.
    #   @return [Types::AddonHealth]
    #
    # @!attribute [rw] addon_arn
    #   The Amazon Resource Name (ARN) of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the add-on was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the add-on was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] service_account_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that's bound to the
    #   Kubernetes service account that the add-on uses.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the add-on to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value. You define both. Add-on tags do not propagate to any
    #   other resources associated with the cluster.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] publisher
    #   The publisher of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_information
    #   Information about an Amazon EKS add-on from the Amazon Web Services
    #   Marketplace.
    #   @return [Types::MarketplaceInformation]
    #
    # @!attribute [rw] configuration_values
    #   The configuration values that you provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Addon AWS API Documentation
    #
    class Addon < Struct.new(
      :addon_name,
      :cluster_name,
      :status,
      :addon_version,
      :health,
      :addon_arn,
      :created_at,
      :modified_at,
      :service_account_role_arn,
      :tags,
      :publisher,
      :owner,
      :marketplace_information,
      :configuration_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The health of the add-on.
    #
    # @!attribute [rw] issues
    #   An object representing the health issues for an add-on.
    #   @return [Array<Types::AddonIssue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonHealth AWS API Documentation
    #
    class AddonHealth < Struct.new(
      :issues)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an add-on.
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] addon_versions
    #   An object representing information about available add-on versions
    #   and compatible Kubernetes versions.
    #   @return [Array<Types::AddonVersionInfo>]
    #
    # @!attribute [rw] publisher
    #   The publisher of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_information
    #   Information about the add-on from the Amazon Web Services
    #   Marketplace.
    #   @return [Types::MarketplaceInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonInfo AWS API Documentation
    #
    class AddonInfo < Struct.new(
      :addon_name,
      :type,
      :addon_versions,
      :publisher,
      :owner,
      :marketplace_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # An issue related to an add-on.
    #
    # @!attribute [rw] code
    #   A code that describes the type of issue.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that provides details about the issue and what might cause
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   The resource IDs of the issue.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonIssue AWS API Documentation
    #
    class AddonIssue < Struct.new(
      :code,
      :message,
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an add-on version.
    #
    # @!attribute [rw] addon_version
    #   The version of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architectures that the version supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compatibilities
    #   An object representing the compatibilities of a version.
    #   @return [Array<Types::Compatibility>]
    #
    # @!attribute [rw] requires_configuration
    #   Whether the add-on requires configuration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonVersionInfo AWS API Documentation
    #
    class AddonVersionInfo < Struct.new(
      :addon_version,
      :architecture,
      :compatibilities,
      :requires_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster that you are associating with encryption
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] encryption_config
    #   The configuration you are using for encryption.
    #   @return [Array<Types::EncryptionConfig>]
    #
    # @!attribute [rw] client_request_token
    #   The client request token you are using with the encryption
    #   configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AssociateEncryptionConfigRequest AWS API Documentation
    #
    class AssociateEncryptionConfigRequest < Struct.new(
      :cluster_name,
      :encryption_config,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AssociateEncryptionConfigResponse AWS API Documentation
    #
    class AssociateEncryptionConfigResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster to associate the configuration to.
    #   @return [String]
    #
    # @!attribute [rw] oidc
    #   An object representing an OpenID Connect (OIDC) identity provider
    #   configuration.
    #   @return [Types::OidcIdentityProviderConfigRequest]
    #
    # @!attribute [rw] tags
    #   The metadata to apply to the configuration to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value. You define both.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AssociateIdentityProviderConfigRequest AWS API Documentation
    #
    class AssociateIdentityProviderConfigRequest < Struct.new(
      :cluster_name,
      :oidc,
      :tags,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AssociateIdentityProviderConfigResponse AWS API Documentation
    #
    class AssociateIdentityProviderConfigResponse < Struct.new(
      :update,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Auto Scaling group that is associated with an Amazon EKS managed
    # node group.
    #
    # @!attribute [rw] name
    #   The name of the Auto Scaling group associated with an Amazon EKS
    #   managed node group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AutoScalingGroup AWS API Documentation
    #
    class AutoScalingGroup < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown if the request contains a semantic error. The
    # precise meaning will depend on the API, and will be documented in the
    # error message.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the `certificate-authority-data` for your
    # cluster.
    #
    # @!attribute [rw] data
    #   The Base64-encoded certificate data required to communicate with
    #   your cluster. Add this to the `certificate-authority-data` section
    #   of the `kubeconfig` file for your cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a client action. Actions can
    # include using an action or resource on behalf of a user that doesn't
    # have permissions to use the action or resource or specifying an
    # identifier that is not valid.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ClientException AWS API Documentation
    #
    class ClientException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Amazon EKS cluster.
    #
    # @!attribute [rw] name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the cluster was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The Kubernetes server version for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint for your Kubernetes API server.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the Kubernetes control plane to make calls to Amazon
    #   Web Services API operations on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] resources_vpc_config
    #   The VPC configuration used by the cluster control plane. Amazon EKS
    #   VPC resources have specific requirements to work properly with
    #   Kubernetes. For more information, see [Cluster VPC
    #   Considerations][1] and [Cluster Security Group Considerations][2] in
    #   the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #   @return [Types::VpcConfigResponse]
    #
    # @!attribute [rw] kubernetes_network_config
    #   The Kubernetes network configuration for the cluster.
    #   @return [Types::KubernetesNetworkConfigResponse]
    #
    # @!attribute [rw] logging
    #   The logging configuration for your cluster.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] identity
    #   The identity provider information for the cluster.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] status
    #   The current status of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority
    #   The `certificate-authority-data` for your cluster.
    #   @return [Types::Certificate]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version of your Amazon EKS cluster. For more
    #   information, see [Platform Versions][1] in the <i> <i>Amazon EKS
    #   User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the cluster to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value. You define both. Cluster tags do not propagate to
    #   any other resources associated with the cluster.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] encryption_config
    #   The encryption configuration for the cluster.
    #   @return [Array<Types::EncryptionConfig>]
    #
    # @!attribute [rw] connector_config
    #   The configuration used to connect to a cluster for registration.
    #   @return [Types::ConnectorConfigResponse]
    #
    # @!attribute [rw] id
    #   The ID of your local Amazon EKS cluster on an Amazon Web Services
    #   Outpost. This property isn't available for an Amazon EKS cluster on
    #   the Amazon Web Services cloud.
    #   @return [String]
    #
    # @!attribute [rw] health
    #   An object representing the health of your local Amazon EKS cluster
    #   on an Amazon Web Services Outpost. This object isn't available for
    #   clusters on the Amazon Web Services cloud.
    #   @return [Types::ClusterHealth]
    #
    # @!attribute [rw] outpost_config
    #   An object representing the configuration of your local Amazon EKS
    #   cluster on an Amazon Web Services Outpost. This object isn't
    #   available for clusters on the Amazon Web Services cloud.
    #   @return [Types::OutpostConfigResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :name,
      :arn,
      :created_at,
      :version,
      :endpoint,
      :role_arn,
      :resources_vpc_config,
      :kubernetes_network_config,
      :logging,
      :identity,
      :status,
      :certificate_authority,
      :client_request_token,
      :platform_version,
      :tags,
      :encryption_config,
      :connector_config,
      :id,
      :health,
      :outpost_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the health of your local Amazon EKS cluster on
    # an Amazon Web Services Outpost. You can't use this API with an Amazon
    # EKS cluster on the Amazon Web Services cloud.
    #
    # @!attribute [rw] issues
    #   An object representing the health issues of your local Amazon EKS
    #   cluster on an Amazon Web Services Outpost.
    #   @return [Array<Types::ClusterIssue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ClusterHealth AWS API Documentation
    #
    class ClusterHealth < Struct.new(
      :issues)
      SENSITIVE = []
      include Aws::Structure
    end

    # An issue with your local Amazon EKS cluster on an Amazon Web Services
    # Outpost. You can't use this API with an Amazon EKS cluster on the
    # Amazon Web Services cloud.
    #
    # @!attribute [rw] code
    #   The error code of the issue.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the issue.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   The resource IDs that the issue relates to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ClusterIssue AWS API Documentation
    #
    class ClusterIssue < Struct.new(
      :code,
      :message,
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compatibility information.
    #
    # @!attribute [rw] cluster_version
    #   The supported Kubernetes version of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] platform_versions
    #   The supported compute platform.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_version
    #   The supported default version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Compatibility AWS API Documentation
    #
    class Compatibility < Struct.new(
      :cluster_version,
      :platform_versions,
      :default_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration sent to a cluster for configuration.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that is authorized to
    #   request the connector configuration.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The cloud provider for the target cluster to connect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ConnectorConfigRequest AWS API Documentation
    #
    class ConnectorConfigRequest < Struct.new(
      :role_arn,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # The full description of your connected cluster.
    #
    # @!attribute [rw] activation_id
    #   A unique ID associated with the cluster for registration purposes.
    #   @return [String]
    #
    # @!attribute [rw] activation_code
    #   A unique code associated with the cluster for registration purposes.
    #   @return [String]
    #
    # @!attribute [rw] activation_expiry
    #   The expiration time of the connected cluster. The cluster's YAML
    #   file must be applied through the native provider.
    #   @return [Time]
    #
    # @!attribute [rw] provider
    #   The cluster's cloud service provider.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role to communicate with
    #   services from the connected Kubernetes cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ConnectorConfigResponse AWS API Documentation
    #
    class ConnectorConfigResponse < Struct.new(
      :activation_id,
      :activation_code,
      :activation_expiry,
      :provider,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The placement configuration for all the control plane instances of
    # your local Amazon EKS cluster on an Amazon Web Services Outpost. For
    # more information, see [Capacity considerations][1] in the *Amazon EKS
    # User Guide*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html
    #
    # @!attribute [rw] group_name
    #   The name of the placement group for the Kubernetes control plane
    #   instances. This setting can't be changed after cluster creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ControlPlanePlacementRequest AWS API Documentation
    #
    class ControlPlanePlacementRequest < Struct.new(
      :group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The placement configuration for all the control plane instances of
    # your local Amazon EKS cluster on an Amazon Web Services Outpost. For
    # more information, see [Capacity considerations][1] in the *Amazon EKS
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html
    #
    # @!attribute [rw] group_name
    #   The name of the placement group for the Kubernetes control plane
    #   instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ControlPlanePlacementResponse AWS API Documentation
    #
    class ControlPlanePlacementResponse < Struct.new(
      :group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster to create the add-on for.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names that [
    #   `DescribeAddonVersions` ][1] returns.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html
    #   @return [String]
    #
    # @!attribute [rw] addon_version
    #   The version of the add-on. The version must match one of the
    #   versions returned by [ `DescribeAddonVersions` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html
    #   @return [String]
    #
    # @!attribute [rw] service_account_role_arn
    #   The Amazon Resource Name (ARN) of an existing IAM role to bind to
    #   the add-on's service account. The role must be assigned the IAM
    #   permissions required by the add-on. If you don't specify an
    #   existing IAM role, then the add-on uses the permissions assigned to
    #   the node IAM role. For more information, see [Amazon EKS node IAM
    #   role][1] in the *Amazon EKS User Guide*.
    #
    #   <note markdown="1"> To specify an existing IAM role, you must have an IAM OpenID Connect
    #   (OIDC) provider created for your cluster. For more information, see
    #   [Enabling IAM roles for service accounts on your cluster][2] in the
    #   *Amazon EKS User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html
    #   @return [String]
    #
    # @!attribute [rw] resolve_conflicts
    #   How to resolve field value conflicts for an Amazon EKS add-on.
    #   Conflicts are handled based on the value you choose:
    #
    #   * **None** – If the self-managed version of the add-on is installed
    #     on your cluster, Amazon EKS doesn't change the value. Creation of
    #     the add-on might fail.
    #
    #   * **Overwrite** – If the self-managed version of the add-on is
    #     installed on your cluster and the Amazon EKS default value is
    #     different than the existing value, Amazon EKS changes the value to
    #     the Amazon EKS default value.
    #
    #   * **Preserve** – Not supported. You can set this value when updating
    #     an add-on though. For more information, see [UpdateAddon][1].
    #
    #   If you don't currently have the self-managed version of the add-on
    #   installed on your cluster, the Amazon EKS add-on is installed.
    #   Amazon EKS sets all values to default values, regardless of the
    #   option that you specify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata to apply to the cluster to assist with categorization
    #   and organization. Each tag consists of a key and an optional value.
    #   You define both.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] configuration_values
    #   The set of configuration values for the add-on that's created. The
    #   values that you provide are validated against the schema in [
    #   `DescribeAddonConfiguration` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonConfiguration.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateAddonRequest AWS API Documentation
    #
    class CreateAddonRequest < Struct.new(
      :cluster_name,
      :addon_name,
      :addon_version,
      :service_account_role_arn,
      :resolve_conflicts,
      :client_request_token,
      :tags,
      :configuration_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon
    #   An Amazon EKS add-on. For more information, see [Amazon EKS
    #   add-ons][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html
    #   @return [Types::Addon]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateAddonResponse AWS API Documentation
    #
    class CreateAddonResponse < Struct.new(
      :addon)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique name to give to your cluster.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The desired Kubernetes version for your cluster. If you don't
    #   specify a value here, the default version available in Amazon EKS is
    #   used.
    #
    #   <note markdown="1"> The default version might not be the latest version available.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the Kubernetes control plane to make calls to Amazon
    #   Web Services API operations on your behalf. For more information,
    #   see [Amazon EKS Service IAM Role][1] in the <i> <i>Amazon EKS User
    #   Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] resources_vpc_config
    #   The VPC configuration that's used by the cluster control plane.
    #   Amazon EKS VPC resources have specific requirements to work properly
    #   with Kubernetes. For more information, see [Cluster VPC
    #   Considerations][1] and [Cluster Security Group Considerations][2] in
    #   the *Amazon EKS User Guide*. You must specify at least two subnets.
    #   You can specify up to five security groups. However, we recommend
    #   that you use a dedicated security group for your cluster control
    #   plane.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #   @return [Types::VpcConfigRequest]
    #
    # @!attribute [rw] kubernetes_network_config
    #   The Kubernetes network configuration for the cluster.
    #   @return [Types::KubernetesNetworkConfigRequest]
    #
    # @!attribute [rw] logging
    #   Enable or disable exporting the Kubernetes control plane logs for
    #   your cluster to CloudWatch Logs. By default, cluster control plane
    #   logs aren't exported to CloudWatch Logs. For more information, see
    #   [Amazon EKS Cluster control plane logs][1] in the <i> <i>Amazon EKS
    #   User Guide</i> </i>.
    #
    #   <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    #   apply to exported control plane logs. For more information, see
    #   [CloudWatch Pricing][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    #   [2]: http://aws.amazon.com/cloudwatch/pricing/
    #   @return [Types::Logging]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata to apply to the cluster to assist with categorization
    #   and organization. Each tag consists of a key and an optional value.
    #   You define both.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] encryption_config
    #   The encryption configuration for the cluster.
    #   @return [Array<Types::EncryptionConfig>]
    #
    # @!attribute [rw] outpost_config
    #   An object representing the configuration of your local Amazon EKS
    #   cluster on an Amazon Web Services Outpost. Before creating a local
    #   cluster on an Outpost, review [Local clusters for Amazon EKS on
    #   Amazon Web Services Outposts][1] in the *Amazon EKS User Guide*.
    #   This object isn't available for creating Amazon EKS clusters on the
    #   Amazon Web Services cloud.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-local-cluster-overview.html
    #   @return [Types::OutpostConfigRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :name,
      :version,
      :role_arn,
      :resources_vpc_config,
      :kubernetes_network_config,
      :logging,
      :client_request_token,
      :tags,
      :encryption_config,
      :outpost_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of your new cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateClusterResponse AWS API Documentation
    #
    class CreateClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fargate_profile_name
    #   The name of the Fargate profile.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster to apply the Fargate profile to.
    #   @return [String]
    #
    # @!attribute [rw] pod_execution_role_arn
    #   The Amazon Resource Name (ARN) of the pod execution role to use for
    #   pods that match the selectors in the Fargate profile. The pod
    #   execution role allows Fargate infrastructure to register with your
    #   cluster as a node, and it provides read access to Amazon ECR image
    #   repositories. For more information, see [Pod Execution Role][1] in
    #   the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The IDs of subnets to launch your pods into. At this time, pods
    #   running on Fargate are not assigned public IP addresses, so only
    #   private subnets (with no direct route to an Internet Gateway) are
    #   accepted for this parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selectors
    #   The selectors to match for pods to use this Fargate profile. Each
    #   selector must have an associated namespace. Optionally, you can also
    #   specify labels for a namespace. You may specify up to five selectors
    #   in a Fargate profile.
    #   @return [Array<Types::FargateProfileSelector>]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata to apply to the Fargate profile to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value. You define both. Fargate profile tags do not
    #   propagate to any other resources associated with the Fargate
    #   profile, such as the pods that are scheduled with it.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateFargateProfileRequest AWS API Documentation
    #
    class CreateFargateProfileRequest < Struct.new(
      :fargate_profile_name,
      :cluster_name,
      :pod_execution_role_arn,
      :subnets,
      :selectors,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fargate_profile
    #   The full description of your new Fargate profile.
    #   @return [Types::FargateProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateFargateProfileResponse AWS API Documentation
    #
    class CreateFargateProfileResponse < Struct.new(
      :fargate_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster to create the node group in.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The unique name to give your node group.
    #   @return [String]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration details for the Auto Scaling group that is
    #   created for your node group.
    #   @return [Types::NodegroupScalingConfig]
    #
    # @!attribute [rw] disk_size
    #   The root device disk size (in GiB) for your node group instances.
    #   The default disk size is 20 GiB for Linux and Bottlerocket. The
    #   default disk size is 50 GiB for Windows. If you specify
    #   `launchTemplate`, then don't specify `diskSize`, or the node group
    #   deployment will fail. For more information about using launch
    #   templates with Amazon EKS, see [Launch template support][1] in the
    #   *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [Integer]
    #
    # @!attribute [rw] subnets
    #   The subnets to use for the Auto Scaling group that is created for
    #   your node group. If you specify `launchTemplate`, then don't
    #   specify [ `SubnetId` ][1] in your launch template, or the node group
    #   deployment will fail. For more information about using launch
    #   templates with Amazon EKS, see [Launch template support][2] in the
    #   *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_types
    #   Specify the instance types for a node group. If you specify a GPU
    #   instance type, make sure to also specify an applicable GPU AMI type
    #   with the `amiType` parameter. If you specify `launchTemplate`, then
    #   you can specify zero or one instance type in your launch template
    #   *or* you can specify 0-20 instance types for `instanceTypes`. If
    #   however, you specify an instance type in your launch template *and*
    #   specify any `instanceTypes`, the node group deployment will fail. If
    #   you don't specify an instance type in a launch template or for
    #   `instanceTypes`, then `t3.medium` is used, by default. If you
    #   specify `Spot` for `capacityType`, then we recommend specifying
    #   multiple values for `instanceTypes`. For more information, see
    #   [Managed node group capacity types][1] and [Launch template
    #   support][2] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html#managed-node-group-capacity-types
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] ami_type
    #   The AMI type for your node group. If you specify `launchTemplate`,
    #   and your launch template uses a custom AMI, then don't specify
    #   `amiType`, or the node group deployment will fail. If your launch
    #   template uses a Windows custom AMI, then add
    #   `eks:kube-proxy-windows` to your Windows nodes `rolearn` in the
    #   `aws-auth` `ConfigMap`. For more information about using launch
    #   templates with Amazon EKS, see [Launch template support][1] in the
    #   *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @!attribute [rw] remote_access
    #   The remote access configuration to use with your node group. For
    #   Linux, the protocol is SSH. For Windows, the protocol is RDP. If you
    #   specify `launchTemplate`, then don't specify `remoteAccess`, or the
    #   node group deployment will fail. For more information about using
    #   launch templates with Amazon EKS, see [Launch template support][1]
    #   in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [Types::RemoteAccessConfig]
    #
    # @!attribute [rw] node_role
    #   The Amazon Resource Name (ARN) of the IAM role to associate with
    #   your node group. The Amazon EKS worker node `kubelet` daemon makes
    #   calls to Amazon Web Services APIs on your behalf. Nodes receive
    #   permissions for these API calls through an IAM instance profile and
    #   associated policies. Before you can launch nodes and register them
    #   into a cluster, you must create an IAM role for those nodes to use
    #   when they are launched. For more information, see [Amazon EKS node
    #   IAM role][1] in the <i> <i>Amazon EKS User Guide</i> </i>. If you
    #   specify `launchTemplate`, then don't specify [ `IamInstanceProfile`
    #   ][2] in your launch template, or the node group deployment will
    #   fail. For more information about using launch templates with Amazon
    #   EKS, see [Launch template support][3] in the *Amazon EKS User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html
    #   [3]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   The Kubernetes labels to be applied to the nodes in the node group
    #   when they are created.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] taints
    #   The Kubernetes taints to be applied to the nodes in the node group.
    #   For more information, see [Node taints on managed node groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html
    #   @return [Array<Types::Taint>]
    #
    # @!attribute [rw] tags
    #   The metadata to apply to the node group to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value. You define both. Node group tags do not propagate to
    #   any other resources associated with the node group, such as the
    #   Amazon EC2 instances or subnets.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   An object representing a node group's launch template
    #   specification. If specified, then do not specify `instanceTypes`,
    #   `diskSize`, or `remoteAccess` and make sure that the launch template
    #   meets the requirements in `launchTemplateSpecification`.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] update_config
    #   The node group update configuration.
    #   @return [Types::NodegroupUpdateConfig]
    #
    # @!attribute [rw] capacity_type
    #   The capacity type for your node group.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The Kubernetes version to use for your managed nodes. By default,
    #   the Kubernetes version of the cluster is used, and this is the only
    #   accepted specified value. If you specify `launchTemplate`, and your
    #   launch template uses a custom AMI, then don't specify `version`, or
    #   the node group deployment will fail. For more information about
    #   using launch templates with Amazon EKS, see [Launch template
    #   support][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @!attribute [rw] release_version
    #   The AMI version of the Amazon EKS optimized AMI to use with your
    #   node group. By default, the latest available AMI version for the
    #   node group's current Kubernetes version is used. For information
    #   about Linux versions, see [Amazon EKS optimized Amazon Linux AMI
    #   versions][1] in the *Amazon EKS User Guide*. Amazon EKS managed node
    #   groups support the November 2022 and later releases of the Windows
    #   AMIs. For information about Windows versions, see [Amazon EKS
    #   optimized Windows AMI versions][2] in the *Amazon EKS User Guide*.
    #
    #   If you specify `launchTemplate`, and your launch template uses a
    #   custom AMI, then don't specify `releaseVersion`, or the node group
    #   deployment will fail. For more information about using launch
    #   templates with Amazon EKS, see [Launch template support][3] in the
    #   *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html
    #   [3]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateNodegroupRequest AWS API Documentation
    #
    class CreateNodegroupRequest < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :scaling_config,
      :disk_size,
      :subnets,
      :instance_types,
      :ami_type,
      :remote_access,
      :node_role,
      :labels,
      :taints,
      :tags,
      :client_request_token,
      :launch_template,
      :update_config,
      :capacity_type,
      :version,
      :release_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodegroup
    #   The full description of your new node group.
    #   @return [Types::Nodegroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateNodegroupResponse AWS API Documentation
    #
    class CreateNodegroupResponse < Struct.new(
      :nodegroup)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster to delete the add-on from.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #   @return [String]
    #
    # @!attribute [rw] preserve
    #   Specifying this option preserves the add-on software on your cluster
    #   but Amazon EKS stops managing any settings for the add-on. If an IAM
    #   account is associated with the add-on, it isn't removed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteAddonRequest AWS API Documentation
    #
    class DeleteAddonRequest < Struct.new(
      :cluster_name,
      :addon_name,
      :preserve)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon
    #   An Amazon EKS add-on. For more information, see [Amazon EKS
    #   add-ons][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html
    #   @return [Types::Addon]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteAddonResponse AWS API Documentation
    #
    class DeleteAddonResponse < Struct.new(
      :addon)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the cluster to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteClusterRequest AWS API Documentation
    #
    class DeleteClusterRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of the cluster to delete.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteClusterResponse AWS API Documentation
    #
    class DeleteClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster associated with the Fargate
    #   profile to delete.
    #   @return [String]
    #
    # @!attribute [rw] fargate_profile_name
    #   The name of the Fargate profile to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteFargateProfileRequest AWS API Documentation
    #
    class DeleteFargateProfileRequest < Struct.new(
      :cluster_name,
      :fargate_profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fargate_profile
    #   The deleted Fargate profile.
    #   @return [Types::FargateProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteFargateProfileResponse AWS API Documentation
    #
    class DeleteFargateProfileResponse < Struct.new(
      :fargate_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that is associated with your node
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the node group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteNodegroupRequest AWS API Documentation
    #
    class DeleteNodegroupRequest < Struct.new(
      :cluster_name,
      :nodegroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodegroup
    #   The full description of your deleted node group.
    #   @return [Types::Nodegroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteNodegroupResponse AWS API Documentation
    #
    class DeleteNodegroupResponse < Struct.new(
      :nodegroup)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the connected cluster to deregister.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeregisterClusterRequest AWS API Documentation
    #
    class DeregisterClusterRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   An object representing an Amazon EKS cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeregisterClusterResponse AWS API Documentation
    #
    class DeregisterClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names that [
    #   `DescribeAddonVersions` ][1] returns.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html
    #   @return [String]
    #
    # @!attribute [rw] addon_version
    #   The version of the add-on. The version must match one of the
    #   versions returned by [ `DescribeAddonVersions` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonConfigurationRequest AWS API Documentation
    #
    class DescribeAddonConfigurationRequest < Struct.new(
      :addon_name,
      :addon_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_name
    #   The name of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] addon_version
    #   The version of the add-on. The version must match one of the
    #   versions returned by [ `DescribeAddonVersions` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html
    #   @return [String]
    #
    # @!attribute [rw] configuration_schema
    #   A JSON schema that's used to validate the configuration values that
    #   you provide when an addon is created or updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonConfigurationResponse AWS API Documentation
    #
    class DescribeAddonConfigurationResponse < Struct.new(
      :addon_name,
      :addon_version,
      :configuration_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonRequest AWS API Documentation
    #
    class DescribeAddonRequest < Struct.new(
      :cluster_name,
      :addon_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon
    #   An Amazon EKS add-on. For more information, see [Amazon EKS
    #   add-ons][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html
    #   @return [Types::Addon]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonResponse AWS API Documentation
    #
    class DescribeAddonResponse < Struct.new(
      :addon)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kubernetes_version
    #   The Kubernetes versions that you can use the add-on with.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeAddonVersionsRequest` where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #   @return [String]
    #
    # @!attribute [rw] types
    #   The type of the add-on. For valid `types`, don't specify a value
    #   for this property.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publishers
    #   The publisher of the add-on. For valid `publishers`, don't specify
    #   a value for this property.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owners
    #   The owner of the add-on. For valid `owners`, don't specify a value
    #   for this property.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonVersionsRequest AWS API Documentation
    #
    class DescribeAddonVersionsRequest < Struct.new(
      :kubernetes_version,
      :max_results,
      :next_token,
      :addon_name,
      :types,
      :publishers,
      :owners)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addons
    #   The list of available versions with Kubernetes version compatibility
    #   and other properties.
    #   @return [Array<Types::AddonInfo>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeAddonVersionsResponse` where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonVersionsResponse AWS API Documentation
    #
    class DescribeAddonVersionsResponse < Struct.new(
      :addons,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the cluster to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeClusterRequest AWS API Documentation
    #
    class DescribeClusterRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of your specified cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeClusterResponse AWS API Documentation
    #
    class DescribeClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster associated with the Fargate
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] fargate_profile_name
    #   The name of the Fargate profile to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeFargateProfileRequest AWS API Documentation
    #
    class DescribeFargateProfileRequest < Struct.new(
      :cluster_name,
      :fargate_profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fargate_profile
    #   The full description of your Fargate profile.
    #   @return [Types::FargateProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeFargateProfileResponse AWS API Documentation
    #
    class DescribeFargateProfileResponse < Struct.new(
      :fargate_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The cluster name that the identity provider configuration is
    #   associated to.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_config
    #   An object representing an identity provider configuration.
    #   @return [Types::IdentityProviderConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeIdentityProviderConfigRequest AWS API Documentation
    #
    class DescribeIdentityProviderConfigRequest < Struct.new(
      :cluster_name,
      :identity_provider_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_config
    #   The object that represents an OpenID Connect (OIDC) identity
    #   provider configuration.
    #   @return [Types::IdentityProviderConfigResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeIdentityProviderConfigResponse AWS API Documentation
    #
    class DescribeIdentityProviderConfigResponse < Struct.new(
      :identity_provider_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster associated with the node group.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the node group to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeNodegroupRequest AWS API Documentation
    #
    class DescribeNodegroupRequest < Struct.new(
      :cluster_name,
      :nodegroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodegroup
    #   The full description of your node group.
    #   @return [Types::Nodegroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeNodegroupResponse AWS API Documentation
    #
    class DescribeNodegroupResponse < Struct.new(
      :nodegroup)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster associated with the update.
    #   @return [String]
    #
    # @!attribute [rw] update_id
    #   The ID of the update to describe.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the Amazon EKS node group associated with the update.
    #   This parameter is required if the update is a node group update.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by [ `ListAddons` ][1]. This parameter is required if the
    #   update is an add-on update.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeUpdateRequest AWS API Documentation
    #
    class DescribeUpdateRequest < Struct.new(
      :name,
      :update_id,
      :nodegroup_name,
      :addon_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   The full description of the specified update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeUpdateResponse AWS API Documentation
    #
    class DescribeUpdateResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster to disassociate an identity provider from.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_config
    #   An object representing an identity provider configuration.
    #   @return [Types::IdentityProviderConfig]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DisassociateIdentityProviderConfigRequest AWS API Documentation
    #
    class DisassociateIdentityProviderConfigRequest < Struct.new(
      :cluster_name,
      :identity_provider_config,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DisassociateIdentityProviderConfigResponse AWS API Documentation
    #
    class DisassociateIdentityProviderConfigResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption configuration for the cluster.
    #
    # @!attribute [rw] resources
    #   Specifies the resources to be encrypted. The only supported value is
    #   "secrets".
    #   @return [Array<String>]
    #
    # @!attribute [rw] provider
    #   Key Management Service (KMS) key. Either the ARN or the alias can be
    #   used.
    #   @return [Types::Provider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/EncryptionConfig AWS API Documentation
    #
    class EncryptionConfig < Struct.new(
      :resources,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an error when an asynchronous operation fails.
    #
    # @!attribute [rw] error_code
    #   A brief description of the error.
    #
    #   * **SubnetNotFound**: We couldn't find one of the subnets
    #     associated with the cluster.
    #
    #   * **SecurityGroupNotFound**: We couldn't find one of the security
    #     groups associated with the cluster.
    #
    #   * **EniLimitReached**: You have reached the elastic network
    #     interface limit for your account.
    #
    #   * **IpNotAvailable**: A subnet associated with the cluster doesn't
    #     have any free IP addresses.
    #
    #   * **AccessDenied**: You don't have permissions to perform the
    #     specified operation.
    #
    #   * **OperationNotPermitted**: The service role associated with the
    #     cluster doesn't have the required access permissions for Amazon
    #     EKS.
    #
    #   * **VpcIdNotFound**: We couldn't find the VPC associated with the
    #     cluster.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A more complete description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   An optional field that contains the resource IDs associated with the
    #   error.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message,
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Fargate profile.
    #
    # @!attribute [rw] fargate_profile_name
    #   The name of the Fargate profile.
    #   @return [String]
    #
    # @!attribute [rw] fargate_profile_arn
    #   The full Amazon Resource Name (ARN) of the Fargate profile.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that the Fargate profile belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the Fargate profile was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] pod_execution_role_arn
    #   The Amazon Resource Name (ARN) of the pod execution role to use for
    #   pods that match the selectors in the Fargate profile. For more
    #   information, see [Pod Execution Role][1] in the *Amazon EKS User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The IDs of subnets to launch pods into.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selectors
    #   The selectors to match for pods to use this Fargate profile.
    #   @return [Array<Types::FargateProfileSelector>]
    #
    # @!attribute [rw] status
    #   The current status of the Fargate profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata applied to the Fargate profile to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value. You define both. Fargate profile tags do not
    #   propagate to any other resources associated with the Fargate
    #   profile, such as the pods that are scheduled with it.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/FargateProfile AWS API Documentation
    #
    class FargateProfile < Struct.new(
      :fargate_profile_name,
      :fargate_profile_arn,
      :cluster_name,
      :created_at,
      :pod_execution_role_arn,
      :subnets,
      :selectors,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Fargate profile selector.
    #
    # @!attribute [rw] namespace
    #   The Kubernetes namespace that the selector should match.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   The Kubernetes labels that the selector should match. A pod must
    #   contain all of the labels that are specified in the selector for it
    #   to be considered a match.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/FargateProfileSelector AWS API Documentation
    #
    class FargateProfileSelector < Struct.new(
      :namespace,
      :labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an identity provider.
    #
    # @!attribute [rw] oidc
    #   An object representing the [OpenID Connect][1] identity provider
    #   information.
    #
    #
    #
    #   [1]: https://openid.net/connect/
    #   @return [Types::OIDC]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Identity AWS API Documentation
    #
    class Identity < Struct.new(
      :oidc)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an identity provider configuration.
    #
    # @!attribute [rw] type
    #   The type of the identity provider configuration. The only type
    #   available is `oidc`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the identity provider configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/IdentityProviderConfig AWS API Documentation
    #
    class IdentityProviderConfig < Struct.new(
      :type,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The full description of your identity configuration.
    #
    # @!attribute [rw] oidc
    #   An object representing an OpenID Connect (OIDC) identity provider
    #   configuration.
    #   @return [Types::OidcIdentityProviderConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/IdentityProviderConfigResponse AWS API Documentation
    #
    class IdentityProviderConfigResponse < Struct.new(
      :oidc)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified parameter is invalid. Review the available parameters
    # for the API request.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] fargate_profile_name
    #   The Fargate profile associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :fargate_profile_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is invalid given the state of the cluster. Check the state
    # of the cluster and the associated operations.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an issue with an Amazon EKS resource.
    #
    # @!attribute [rw] code
    #   A brief description of the error.
    #
    #   * **AccessDenied**: Amazon EKS or one or more of your managed nodes
    #     is failing to authenticate or authorize with your Kubernetes
    #     cluster API server.
    #
    #   * **AsgInstanceLaunchFailures**: Your Auto Scaling group is
    #     experiencing failures while attempting to launch instances.
    #
    #   * **AutoScalingGroupNotFound**: We couldn't find the Auto Scaling
    #     group associated with the managed node group. You may be able to
    #     recreate an Auto Scaling group with the same settings to recover.
    #
    #   * **ClusterUnreachable**: Amazon EKS or one or more of your managed
    #     nodes is unable to to communicate with your Kubernetes cluster API
    #     server. This can happen if there are network disruptions or if API
    #     servers are timing out processing requests.
    #
    #   * **Ec2LaunchTemplateNotFound**: We couldn't find the Amazon EC2
    #     launch template for your managed node group. You may be able to
    #     recreate a launch template with the same settings to recover.
    #
    #   * **Ec2LaunchTemplateVersionMismatch**: The Amazon EC2 launch
    #     template version for your managed node group does not match the
    #     version that Amazon EKS created. You may be able to revert to the
    #     version that Amazon EKS created to recover.
    #
    #   * **Ec2SecurityGroupDeletionFailure**: We could not delete the
    #     remote access security group for your managed node group. Remove
    #     any dependencies from the security group.
    #
    #   * **Ec2SecurityGroupNotFound**: We couldn't find the cluster
    #     security group for the cluster. You must recreate your cluster.
    #
    #   * **Ec2SubnetInvalidConfiguration**: One or more Amazon EC2 subnets
    #     specified for a node group do not automatically assign public IP
    #     addresses to instances launched into it. If you want your
    #     instances to be assigned a public IP address, then you need to
    #     enable the `auto-assign public IP address` setting for the subnet.
    #     See [Modifying the public IPv4 addressing attribute for your
    #     subnet][1] in the *Amazon VPC User Guide*.
    #
    #   * **IamInstanceProfileNotFound**: We couldn't find the IAM instance
    #     profile for your managed node group. You may be able to recreate
    #     an instance profile with the same settings to recover.
    #
    #   * **IamNodeRoleNotFound**: We couldn't find the IAM role for your
    #     managed node group. You may be able to recreate an IAM role with
    #     the same settings to recover.
    #
    #   * **InstanceLimitExceeded**: Your Amazon Web Services account is
    #     unable to launch any more instances of the specified instance
    #     type. You may be able to request an Amazon EC2 instance limit
    #     increase to recover.
    #
    #   * **InsufficientFreeAddresses**: One or more of the subnets
    #     associated with your managed node group does not have enough
    #     available IP addresses for new nodes.
    #
    #   * **InternalFailure**: These errors are usually caused by an Amazon
    #     EKS server-side issue.
    #
    #   * **NodeCreationFailure**: Your launched instances are unable to
    #     register with your Amazon EKS cluster. Common causes of this
    #     failure are insufficient [node IAM role][2] permissions or lack of
    #     outbound internet access for the nodes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html#subnet-public-ip
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message associated with the issue.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   The Amazon Web Services resources that are afflicted by this issue.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Issue AWS API Documentation
    #
    class Issue < Struct.new(
      :code,
      :message,
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Kubernetes network configuration for the cluster.
    #
    # @!attribute [rw] service_ipv_4_cidr
    #   Don't specify a value if you select `ipv6` for **ipFamily**. The
    #   CIDR block to assign Kubernetes service IP addresses from. If you
    #   don't specify a block, Kubernetes assigns addresses from either the
    #   `10.100.0.0/16` or `172.20.0.0/16` CIDR blocks. We recommend that
    #   you specify a block that does not overlap with resources in other
    #   networks that are peered or connected to your VPC. The block must
    #   meet the following requirements:
    #
    #   * Within one of the following private IP address blocks:
    #     `10.0.0.0/8`, `172.16.0.0/12`, or `192.168.0.0/16`.
    #
    #   * Doesn't overlap with any CIDR block assigned to the VPC that you
    #     selected for VPC.
    #
    #   * Between /24 and /12.
    #
    #   You can only specify a custom CIDR block when you create a cluster
    #   and can't change this value once the cluster is created.
    #   @return [String]
    #
    # @!attribute [rw] ip_family
    #   Specify which IP family is used to assign Kubernetes pod and service
    #   IP addresses. If you don't specify a value, `ipv4` is used by
    #   default. You can only specify an IP family when you create a cluster
    #   and can't change this value once the cluster is created. If you
    #   specify `ipv6`, the VPC and subnets that you specify for cluster
    #   creation must have both `IPv4` and `IPv6` CIDR blocks assigned to
    #   them. You can't specify `ipv6` for clusters in China Regions.
    #
    #   You can only specify `ipv6` for `1.21` and later clusters that use
    #   version `1.10.1` or later of the Amazon VPC CNI add-on. If you
    #   specify `ipv6`, then ensure that your VPC meets the requirements
    #   listed in the considerations listed in [Assigning IPv6 addresses to
    #   pods and services][1] in the Amazon EKS User Guide. Kubernetes
    #   assigns services `IPv6` addresses from the unique local address
    #   range `(fc00::/7)`. You can't specify a custom `IPv6` CIDR block.
    #   Pod addresses are assigned from the subnet's `IPv6` CIDR.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cni-ipv6.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/KubernetesNetworkConfigRequest AWS API Documentation
    #
    class KubernetesNetworkConfigRequest < Struct.new(
      :service_ipv_4_cidr,
      :ip_family)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Kubernetes network configuration for the cluster. The response
    # contains a value for **serviceIpv6Cidr** or **serviceIpv4Cidr**, but
    # not both.
    #
    # @!attribute [rw] service_ipv_4_cidr
    #   The CIDR block that Kubernetes pod and service IP addresses are
    #   assigned from. Kubernetes assigns addresses from an IPv4 CIDR block
    #   assigned to a subnet that the node is in. If you didn't specify a
    #   CIDR block when you created the cluster, then Kubernetes assigns
    #   addresses from either the `10.100.0.0/16` or `172.20.0.0/16` CIDR
    #   blocks. If this was specified, then it was specified when the
    #   cluster was created and it can't be changed.
    #   @return [String]
    #
    # @!attribute [rw] service_ipv_6_cidr
    #   The CIDR block that Kubernetes pod and service IP addresses are
    #   assigned from if you created a 1.21 or later cluster with version
    #   1.10.1 or later of the Amazon VPC CNI add-on and specified `ipv6`
    #   for **ipFamily** when you created the cluster. Kubernetes assigns
    #   service addresses from the unique local address range (`fc00::/7`)
    #   because you can't specify a custom IPv6 CIDR block when you create
    #   the cluster.
    #   @return [String]
    #
    # @!attribute [rw] ip_family
    #   The IP family used to assign Kubernetes pod and service IP
    #   addresses. The IP family is always `ipv4`, unless you have a `1.21`
    #   or later cluster running version 1.10.1 or later of the Amazon VPC
    #   CNI add-on and specified `ipv6` when you created the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/KubernetesNetworkConfigResponse AWS API Documentation
    #
    class KubernetesNetworkConfigResponse < Struct.new(
      :service_ipv_4_cidr,
      :service_ipv_6_cidr,
      :ip_family)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a node group launch template specification. The
    # launch template can't include [ `SubnetId` ][1], [
    # `IamInstanceProfile` ][2], [ `RequestSpotInstances` ][3], [
    # `HibernationOptions` ][4], or [ `TerminateInstances` ][5], or the node
    # group deployment or update will fail. For more information about
    # launch templates, see [ `CreateLaunchTemplate` ][6] in the Amazon EC2
    # API Reference. For more information about using launch templates with
    # Amazon EKS, see [Launch template support][7] in the *Amazon EKS User
    # Guide*.
    #
    # You must specify either the launch template ID or the launch template
    # name in the request, but not both.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html
    # [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html
    # [3]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html
    # [4]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html
    # [5]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html
    # [6]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html
    # [7]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @!attribute [rw] name
    #   The name of the launch template.
    #
    #   You must specify either the launch template name or the launch
    #   template ID in the request, but not both.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the launch template to use. If no version is
    #   specified, then the template's default version is used.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the launch template.
    #
    #   You must specify either the launch template ID or the launch
    #   template name in the request, but not both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/LaunchTemplateSpecification AWS API Documentation
    #
    class LaunchTemplateSpecification < Struct.new(
      :name,
      :version,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of add-on results returned by `ListAddonsRequest`
    #   in paginated output. When you use this parameter,
    #   `ListAddonsRequest` returns only `maxResults` results in a single
    #   page along with a `nextToken` response element. You can see the
    #   remaining results of the initial request by sending another
    #   `ListAddonsRequest` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If you don't use this
    #   parameter, `ListAddonsRequest` returns up to 100 results and a
    #   `nextToken` value, if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListAddonsRequest` where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAddonsRequest AWS API Documentation
    #
    class ListAddonsRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addons
    #   A list of available add-ons.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListAddonsResponse` where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAddonsResponse AWS API Documentation
    #
    class ListAddonsResponse < Struct.new(
      :addons,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of cluster results returned by `ListClusters` in
    #   paginated output. When you use this parameter, `ListClusters`
    #   returns only `maxResults` results in a single page along with a
    #   `nextToken` response element. You can see the remaining results of
    #   the initial request by sending another `ListClusters` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If you don't use this parameter, `ListClusters` returns up to 100
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListClusters` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] include
    #   Indicates whether external clusters are included in the returned
    #   list. Use '`all`' to return connected clusters, or blank to return
    #   only Amazon EKS clusters. '`all`' must be in lowercase otherwise
    #   an error occurs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListClustersRequest AWS API Documentation
    #
    class ListClustersRequest < Struct.new(
      :max_results,
      :next_token,
      :include)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] clusters
    #   A list of all of the clusters for your account in the specified
    #   Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListClusters` request.
    #   When the results of a `ListClusters` request exceed `maxResults`,
    #   you can use this value to retrieve the next page of results. This
    #   value is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListClustersResponse AWS API Documentation
    #
    class ListClustersResponse < Struct.new(
      :clusters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that you would like to list
    #   Fargate profiles in.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Fargate profile results returned by
    #   `ListFargateProfiles` in paginated output. When you use this
    #   parameter, `ListFargateProfiles` returns only `maxResults` results
    #   in a single page along with a `nextToken` response element. You can
    #   see the remaining results of the initial request by sending another
    #   `ListFargateProfiles` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If you don't use this
    #   parameter, `ListFargateProfiles` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListFargateProfiles` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListFargateProfilesRequest AWS API Documentation
    #
    class ListFargateProfilesRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fargate_profile_names
    #   A list of all of the Fargate profiles associated with the specified
    #   cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListFargateProfiles`
    #   request. When the results of a `ListFargateProfiles` request exceed
    #   `maxResults`, you can use this value to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListFargateProfilesResponse AWS API Documentation
    #
    class ListFargateProfilesResponse < Struct.new(
      :fargate_profile_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The cluster name that you want to list identity provider
    #   configurations for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of identity provider configurations returned by
    #   `ListIdentityProviderConfigs` in paginated output. When you use this
    #   parameter, `ListIdentityProviderConfigs` returns only `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   You can see the remaining results of the initial request by sending
    #   another `ListIdentityProviderConfigs` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If you
    #   don't use this parameter, `ListIdentityProviderConfigs` returns up
    #   to 100 results and a `nextToken` value, if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `IdentityProviderConfigsRequest` where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListIdentityProviderConfigsRequest AWS API Documentation
    #
    class ListIdentityProviderConfigsRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_configs
    #   The identity provider configurations for the cluster.
    #   @return [Array<Types::IdentityProviderConfig>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListIdentityProviderConfigsResponse` where `maxResults` was used
    #   and the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListIdentityProviderConfigsResponse AWS API Documentation
    #
    class ListIdentityProviderConfigsResponse < Struct.new(
      :identity_provider_configs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that you would like to list node
    #   groups in.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of node group results returned by
    #   `ListNodegroups` in paginated output. When you use this parameter,
    #   `ListNodegroups` returns only `maxResults` results in a single page
    #   along with a `nextToken` response element. You can see the remaining
    #   results of the initial request by sending another `ListNodegroups`
    #   request with the returned `nextToken` value. This value can be
    #   between 1 and 100. If you don't use this parameter,
    #   `ListNodegroups` returns up to 100 results and a `nextToken` value
    #   if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListNodegroups` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListNodegroupsRequest AWS API Documentation
    #
    class ListNodegroupsRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodegroups
    #   A list of all of the node groups associated with the specified
    #   cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListNodegroups`
    #   request. When the results of a `ListNodegroups` request exceed
    #   `maxResults`, you can use this value to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListNodegroupsResponse AWS API Documentation
    #
    class ListNodegroupsResponse < Struct.new(
      :nodegroups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags. Currently, the supported resources are
    #   Amazon EKS clusters and managed node groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster to list updates for.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the Amazon EKS managed node group to list updates for.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The names of the installed add-ons that have available updates.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListUpdates` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of update results returned by `ListUpdates` in
    #   paginated output. When you use this parameter, `ListUpdates` returns
    #   only `maxResults` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListUpdates` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If you
    #   don't use this parameter, `ListUpdates` returns up to 100 results
    #   and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListUpdatesRequest AWS API Documentation
    #
    class ListUpdatesRequest < Struct.new(
      :name,
      :nodegroup_name,
      :addon_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_ids
    #   A list of all the updates for the specified cluster and Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListUpdates` request.
    #   When the results of a `ListUpdates` request exceed `maxResults`, you
    #   can use this value to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListUpdatesResponse AWS API Documentation
    #
    class ListUpdatesResponse < Struct.new(
      :update_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the enabled or disabled Kubernetes control
    # plane logs for your cluster.
    #
    # @!attribute [rw] types
    #   The available cluster control plane log types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   If a log type is enabled, that log type exports its control plane
    #   logs to CloudWatch Logs. If a log type isn't enabled, that log type
    #   doesn't export its control plane logs. Each individual log type can
    #   be enabled or disabled independently.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/LogSetup AWS API Documentation
    #
    class LogSetup < Struct.new(
      :types,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the logging configuration for resources in your
    # cluster.
    #
    # @!attribute [rw] cluster_logging
    #   The cluster control plane logging configuration for your cluster.
    #   @return [Array<Types::LogSetup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Logging AWS API Documentation
    #
    class Logging < Struct.new(
      :cluster_logging)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon EKS add-on from the Amazon Web Services
    # Marketplace.
    #
    # @!attribute [rw] product_id
    #   The product ID from the Amazon Web Services Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] product_url
    #   The product URL from the Amazon Web Services Marketplace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/MarketplaceInformation AWS API Documentation
    #
    class MarketplaceInformation < Struct.new(
      :product_id,
      :product_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Amazon EKS managed node group.
    #
    # @!attribute [rw] nodegroup_name
    #   The name associated with an Amazon EKS managed node group.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_arn
    #   The Amazon Resource Name (ARN) associated with the managed node
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster that the managed node group resides in.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The Kubernetes version of the managed node group.
    #   @return [String]
    #
    # @!attribute [rw] release_version
    #   If the node group was deployed using a launch template with a custom
    #   AMI, then this is the AMI ID that was specified in the launch
    #   template. For node groups that weren't deployed using a launch
    #   template, this is the version of the Amazon EKS optimized AMI that
    #   the node group was deployed with.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the managed node group
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The Unix epoch timestamp in seconds for when the managed node group
    #   was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the managed node group.
    #   @return [String]
    #
    # @!attribute [rw] capacity_type
    #   The capacity type of your managed node group.
    #   @return [String]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration details for the Auto Scaling group that is
    #   associated with your node group.
    #   @return [Types::NodegroupScalingConfig]
    #
    # @!attribute [rw] instance_types
    #   If the node group wasn't deployed with a launch template, then this
    #   is the instance type that is associated with the node group. If the
    #   node group was deployed with a launch template, then this is `null`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnets
    #   The subnets that were specified for the Auto Scaling group that is
    #   associated with your node group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] remote_access
    #   If the node group wasn't deployed with a launch template, then this
    #   is the remote access configuration that is associated with the node
    #   group. If the node group was deployed with a launch template, then
    #   this is `null`.
    #   @return [Types::RemoteAccessConfig]
    #
    # @!attribute [rw] ami_type
    #   If the node group was deployed using a launch template with a custom
    #   AMI, then this is `CUSTOM`. For node groups that weren't deployed
    #   using a launch template, this is the AMI type that was specified in
    #   the node group configuration.
    #   @return [String]
    #
    # @!attribute [rw] node_role
    #   The IAM role associated with your node group. The Amazon EKS node
    #   `kubelet` daemon makes calls to Amazon Web Services APIs on your
    #   behalf. Nodes receive permissions for these API calls through an IAM
    #   instance profile and associated policies.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   The Kubernetes labels applied to the nodes in the node group.
    #
    #   <note markdown="1"> Only labels that are applied with the Amazon EKS API are shown here.
    #   There may be other Kubernetes labels applied to the nodes in this
    #   group.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] taints
    #   The Kubernetes taints to be applied to the nodes in the node group
    #   when they are created. Effect is one of `No_Schedule`,
    #   `Prefer_No_Schedule`, or `No_Execute`. Kubernetes taints can be used
    #   together with tolerations to control how workloads are scheduled to
    #   your nodes. For more information, see [Node taints on managed node
    #   groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html
    #   @return [Array<Types::Taint>]
    #
    # @!attribute [rw] resources
    #   The resources associated with the node group, such as Auto Scaling
    #   groups and security groups for remote access.
    #   @return [Types::NodegroupResources]
    #
    # @!attribute [rw] disk_size
    #   If the node group wasn't deployed with a launch template, then this
    #   is the disk size in the node group configuration. If the node group
    #   was deployed with a launch template, then this is `null`.
    #   @return [Integer]
    #
    # @!attribute [rw] health
    #   The health status of the node group. If there are issues with your
    #   node group's health, they are listed here.
    #   @return [Types::NodegroupHealth]
    #
    # @!attribute [rw] update_config
    #   The node group update configuration.
    #   @return [Types::NodegroupUpdateConfig]
    #
    # @!attribute [rw] launch_template
    #   If a launch template was used to create the node group, then this is
    #   the launch template that was used.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] tags
    #   The metadata applied to the node group to assist with categorization
    #   and organization. Each tag consists of a key and an optional value.
    #   You define both. Node group tags do not propagate to any other
    #   resources associated with the node group, such as the Amazon EC2
    #   instances or subnets.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Nodegroup AWS API Documentation
    #
    class Nodegroup < Struct.new(
      :nodegroup_name,
      :nodegroup_arn,
      :cluster_name,
      :version,
      :release_version,
      :created_at,
      :modified_at,
      :status,
      :capacity_type,
      :scaling_config,
      :instance_types,
      :subnets,
      :remote_access,
      :ami_type,
      :node_role,
      :labels,
      :taints,
      :resources,
      :disk_size,
      :health,
      :update_config,
      :launch_template,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the health status of the node group.
    #
    # @!attribute [rw] issues
    #   Any issues that are associated with the node group.
    #   @return [Array<Types::Issue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/NodegroupHealth AWS API Documentation
    #
    class NodegroupHealth < Struct.new(
      :issues)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the resources associated with the node group,
    # such as Auto Scaling groups and security groups for remote access.
    #
    # @!attribute [rw] auto_scaling_groups
    #   The Auto Scaling groups associated with the node group.
    #   @return [Array<Types::AutoScalingGroup>]
    #
    # @!attribute [rw] remote_access_security_group
    #   The remote access security group associated with the node group.
    #   This security group controls SSH access to the nodes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/NodegroupResources AWS API Documentation
    #
    class NodegroupResources < Struct.new(
      :auto_scaling_groups,
      :remote_access_security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the scaling configuration details for the Auto
    # Scaling group that is associated with your node group. When creating a
    # node group, you must specify all or none of the properties. When
    # updating a node group, you can specify any or none of the properties.
    #
    # @!attribute [rw] min_size
    #   The minimum number of nodes that the managed node group can scale in
    #   to.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum number of nodes that the managed node group can scale
    #   out to. For information about the maximum number that you can
    #   specify, see [Amazon EKS service quotas][1] in the *Amazon EKS User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/service-quotas.html
    #   @return [Integer]
    #
    # @!attribute [rw] desired_size
    #   The current number of nodes that the managed node group should
    #   maintain.
    #
    #   If you use Cluster Autoscaler, you shouldn't change the desiredSize
    #   value directly, as this can cause the Cluster Autoscaler to suddenly
    #   scale up or scale down.
    #
    #   Whenever this parameter changes, the number of worker nodes in the
    #   node group is updated to the specified size. If this parameter is
    #   given a value that is smaller than the current number of running
    #   worker nodes, the necessary number of worker nodes are terminated to
    #   match the given value. When using CloudFormation, no action occurs
    #   if you remove this parameter from your CFN template.
    #
    #   This parameter can be different from minSize in some cases, such as
    #   when starting with extra hosts for testing. This parameter can also
    #   be different when you want to start with an estimated number of
    #   needed hosts, but let Cluster Autoscaler reduce the number if there
    #   are too many. When Cluster Autoscaler is used, the desiredSize
    #   parameter is altered by Cluster Autoscaler (but can be out-of-date
    #   for short periods of time). Cluster Autoscaler doesn't scale a
    #   managed node group lower than minSize or higher than maxSize.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/NodegroupScalingConfig AWS API Documentation
    #
    class NodegroupScalingConfig < Struct.new(
      :min_size,
      :max_size,
      :desired_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The node group update configuration.
    #
    # @!attribute [rw] max_unavailable
    #   The maximum number of nodes unavailable at once during a version
    #   update. Nodes will be updated in parallel. This value or
    #   `maxUnavailablePercentage` is required to have a value.The maximum
    #   number is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] max_unavailable_percentage
    #   The maximum percentage of nodes unavailable during a version update.
    #   This percentage of nodes will be updated in parallel, up to 100
    #   nodes at once. This value or `maxUnavailable` is required to have a
    #   value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/NodegroupUpdateConfig AWS API Documentation
    #
    class NodegroupUpdateConfig < Struct.new(
      :max_unavailable,
      :max_unavailable_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service resource associated with the request could not be found.
    # Clients should not retry such requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the [OpenID Connect][1] (OIDC) identity
    # provider information for the cluster.
    #
    #
    #
    # [1]: https://openid.net/connect/
    #
    # @!attribute [rw] issuer
    #   The issuer URL for the OIDC identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/OIDC AWS API Documentation
    #
    class OIDC < Struct.new(
      :issuer)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the configuration for an OpenID Connect (OIDC)
    # identity provider.
    #
    # @!attribute [rw] identity_provider_config_name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_config_arn
    #   The ARN of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The cluster that the configuration is associated to.
    #   @return [String]
    #
    # @!attribute [rw] issuer_url
    #   The URL of the OIDC identity provider that allows the API server to
    #   discover public signing keys for verifying tokens.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   This is also known as *audience*. The ID of the client application
    #   that makes authentication requests to the OIDC identity provider.
    #   @return [String]
    #
    # @!attribute [rw] username_claim
    #   The JSON Web token (JWT) claim that is used as the username.
    #   @return [String]
    #
    # @!attribute [rw] username_prefix
    #   The prefix that is prepended to username claims to prevent clashes
    #   with existing names. The prefix can't contain `system:`
    #   @return [String]
    #
    # @!attribute [rw] groups_claim
    #   The JSON web token (JWT) claim that the provider uses to return your
    #   groups.
    #   @return [String]
    #
    # @!attribute [rw] groups_prefix
    #   The prefix that is prepended to group claims to prevent clashes with
    #   existing names (such as `system:` groups). For example, the value`
    #   oidc:` creates group names like `oidc:engineering` and `oidc:infra`.
    #   The prefix can't contain `system:`
    #   @return [String]
    #
    # @!attribute [rw] required_claims
    #   The key-value pairs that describe required claims in the identity
    #   token. If set, each claim is verified to be present in the token
    #   with a matching value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The metadata to apply to the provider configuration to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value. You define both.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the OIDC identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/OidcIdentityProviderConfig AWS API Documentation
    #
    class OidcIdentityProviderConfig < Struct.new(
      :identity_provider_config_name,
      :identity_provider_config_arn,
      :cluster_name,
      :issuer_url,
      :client_id,
      :username_claim,
      :username_prefix,
      :groups_claim,
      :groups_prefix,
      :required_claims,
      :tags,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an OpenID Connect (OIDC) configuration. Before
    # associating an OIDC identity provider to your cluster, review the
    # considerations in [Authenticating users for your cluster from an
    # OpenID Connect identity provider][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/authenticate-oidc-identity-provider.html
    #
    # @!attribute [rw] identity_provider_config_name
    #   The name of the OIDC provider configuration.
    #   @return [String]
    #
    # @!attribute [rw] issuer_url
    #   The URL of the OpenID identity provider that allows the API server
    #   to discover public signing keys for verifying tokens. The URL must
    #   begin with `https://` and should correspond to the `iss` claim in
    #   the provider's OIDC ID tokens. Per the OIDC standard, path
    #   components are allowed but query parameters are not. Typically the
    #   URL consists of only a hostname, like `https://server.example.org`
    #   or `https://example.com`. This URL should point to the level below
    #   `.well-known/openid-configuration` and must be publicly accessible
    #   over the internet.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   This is also known as *audience*. The ID for the client application
    #   that makes authentication requests to the OpenID identity provider.
    #   @return [String]
    #
    # @!attribute [rw] username_claim
    #   The JSON Web Token (JWT) claim to use as the username. The default
    #   is `sub`, which is expected to be a unique identifier of the end
    #   user. You can choose other claims, such as `email` or `name`,
    #   depending on the OpenID identity provider. Claims other than `email`
    #   are prefixed with the issuer URL to prevent naming clashes with
    #   other plug-ins.
    #   @return [String]
    #
    # @!attribute [rw] username_prefix
    #   The prefix that is prepended to username claims to prevent clashes
    #   with existing names. If you do not provide this field, and
    #   `username` is a value other than `email`, the prefix defaults to
    #   `issuerurl#`. You can use the value `-` to disable all prefixing.
    #   @return [String]
    #
    # @!attribute [rw] groups_claim
    #   The JWT claim that the provider uses to return your groups.
    #   @return [String]
    #
    # @!attribute [rw] groups_prefix
    #   The prefix that is prepended to group claims to prevent clashes with
    #   existing names (such as `system:` groups). For example, the value`
    #   oidc:` will create group names like `oidc:engineering` and
    #   `oidc:infra`.
    #   @return [String]
    #
    # @!attribute [rw] required_claims
    #   The key value pairs that describe required claims in the identity
    #   token. If set, each claim is verified to be present in the token
    #   with a matching value. For the maximum number of claims that you can
    #   require, see [Amazon EKS service quotas][1] in the *Amazon EKS User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/service-quotas.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/OidcIdentityProviderConfigRequest AWS API Documentation
    #
    class OidcIdentityProviderConfigRequest < Struct.new(
      :identity_provider_config_name,
      :issuer_url,
      :client_id,
      :username_claim,
      :username_prefix,
      :groups_claim,
      :groups_prefix,
      :required_claims)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of your local Amazon EKS cluster on an Amazon Web
    # Services Outpost. Before creating a cluster on an Outpost, review
    # [Creating a local cluster on an Outpost][1] in the *Amazon EKS User
    # Guide*. This API isn't available for Amazon EKS clusters on the
    # Amazon Web Services cloud.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-local-cluster-create.html
    #
    # @!attribute [rw] outpost_arns
    #   The ARN of the Outpost that you want to use for your local Amazon
    #   EKS cluster on Outposts. Only a single Outpost ARN is supported.
    #   @return [Array<String>]
    #
    # @!attribute [rw] control_plane_instance_type
    #   The Amazon EC2 instance type that you want to use for your local
    #   Amazon EKS cluster on Outposts. Choose an instance type based on the
    #   number of nodes that your cluster will have. For more information,
    #   see [Capacity considerations][1] in the *Amazon EKS User Guide*.
    #
    #   The instance type that you specify is used for all Kubernetes
    #   control plane instances. The instance type can't be changed after
    #   cluster creation. The control plane is not automatically scaled by
    #   Amazon EKS.
    #
    #
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html
    #   @return [String]
    #
    # @!attribute [rw] control_plane_placement
    #   An object representing the placement configuration for all the
    #   control plane instances of your local Amazon EKS cluster on an
    #   Amazon Web Services Outpost. For more information, see [Capacity
    #   considerations][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html
    #   @return [Types::ControlPlanePlacementRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/OutpostConfigRequest AWS API Documentation
    #
    class OutpostConfigRequest < Struct.new(
      :outpost_arns,
      :control_plane_instance_type,
      :control_plane_placement)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the configuration of your local Amazon EKS
    # cluster on an Amazon Web Services Outpost. This API isn't available
    # for Amazon EKS clusters on the Amazon Web Services cloud.
    #
    # @!attribute [rw] outpost_arns
    #   The ARN of the Outpost that you specified for use with your local
    #   Amazon EKS cluster on Outposts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] control_plane_instance_type
    #   The Amazon EC2 instance type used for the control plane. The
    #   instance type is the same for all control plane instances.
    #   @return [String]
    #
    # @!attribute [rw] control_plane_placement
    #   An object representing the placement configuration for all the
    #   control plane instances of your local Amazon EKS cluster on an
    #   Amazon Web Services Outpost. For more information, see [Capacity
    #   considerations][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html
    #   @return [Types::ControlPlanePlacementResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/OutpostConfigResponse AWS API Documentation
    #
    class OutpostConfigResponse < Struct.new(
      :outpost_arns,
      :control_plane_instance_type,
      :control_plane_placement)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the Key Management Service (KMS) key used to encrypt the
    # secrets.
    #
    # @!attribute [rw] key_arn
    #   Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must
    #   be symmetric, created in the same region as the cluster, and if the
    #   KMS key was created in a different account, the user must have
    #   access to the KMS key. For more information, see [Allowing Users in
    #   Other Accounts to Use a KMS key][1] in the *Key Management Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Provider AWS API Documentation
    #
    class Provider < Struct.new(
      :key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Define a unique name for this cluster for your Region.
    #   @return [String]
    #
    # @!attribute [rw] connector_config
    #   The configuration settings required to connect the Kubernetes
    #   cluster to the Amazon EKS control plane.
    #   @return [Types::ConnectorConfigRequest]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the cluster to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value, both of which you define. Cluster tags do not
    #   propagate to any other resources associated with the cluster.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/RegisterClusterRequest AWS API Documentation
    #
    class RegisterClusterRequest < Struct.new(
      :name,
      :connector_config,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   An object representing an Amazon EKS cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/RegisterClusterResponse AWS API Documentation
    #
    class RegisterClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the remote access configuration for the managed
    # node group.
    #
    # @!attribute [rw] ec2_ssh_key
    #   The Amazon EC2 SSH key name that provides access for SSH
    #   communication with the nodes in the managed node group. For more
    #   information, see [Amazon EC2 key pairs and Linux instances][1] in
    #   the *Amazon Elastic Compute Cloud User Guide for Linux Instances*.
    #   For Windows, an Amazon EC2 SSH key is used to obtain the RDP
    #   password. For more information, see [Amazon EC2 key pairs and
    #   Windows instances][2] in the *Amazon Elastic Compute Cloud User
    #   Guide for Windows Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-key-pairs.html
    #   @return [String]
    #
    # @!attribute [rw] source_security_groups
    #   The security group IDs that are allowed SSH access (port 22) to the
    #   nodes. For Windows, the port is 3389. If you specify an Amazon EC2
    #   SSH key but don't specify a source security group when you create a
    #   managed node group, then the port on the nodes is opened to the
    #   internet (`0.0.0.0/0`). For more information, see [Security Groups
    #   for Your VPC][1] in the *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/RemoteAccessConfig AWS API Documentation
    #
    class RemoteAccessConfig < Struct.new(
      :ec2_ssh_key,
      :source_security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is in use.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have encountered a service limit on the specified resource.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource could not be found. You can view your available
    # clusters with ListClusters. You can view your available managed node
    # groups with ListNodegroups. Amazon EKS clusters and node groups are
    # Region-specific.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] fargate_profile_name
    #   The Fargate profile associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :fargate_profile_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Required resources (such as service-linked roles) were created and are
    # still propagating. Retry later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourcePropagationDelayException AWS API Documentation
    #
    class ResourcePropagationDelayException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a server-side issue.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ServerException AWS API Documentation
    #
    class ServerException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is unavailable. Back off and retry the operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to add tags.
    #   Currently, the supported resources are Amazon EKS clusters and
    #   managed node groups.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. A tag is an array of key-value
    #   pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # A property that allows a node to repel a set of pods. For more
    # information, see [Node taints on managed node groups][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html
    #
    # @!attribute [rw] key
    #   The key of the taint.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the taint.
    #   @return [String]
    #
    # @!attribute [rw] effect
    #   The effect of the taint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Taint AWS API Documentation
    #
    class Taint < Struct.new(
      :key,
      :value,
      :effect)
      SENSITIVE = []
      include Aws::Structure
    end

    # At least one of your specified cluster subnets is in an Availability
    # Zone that does not support Amazon EKS. The exception output specifies
    # the supported Availability Zones for your account, from which you can
    # choose subnets for your cluster.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] valid_zones
    #   The supported Availability Zones for your account. Choose subnets in
    #   these Availability Zones for your cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UnsupportedAvailabilityZoneException AWS API Documentation
    #
    class UnsupportedAvailabilityZoneException < Struct.new(
      :message,
      :cluster_name,
      :nodegroup_name,
      :valid_zones)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to delete
    #   tags. Currently, the supported resources are Amazon EKS clusters and
    #   managed node groups.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # An object representing an asynchronous update.
    #
    # @!attribute [rw] id
    #   A UUID that is used to track the update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the update.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the update.
    #   @return [String]
    #
    # @!attribute [rw] params
    #   A key-value map that contains the parameters associated with the
    #   update.
    #   @return [Array<Types::UpdateParam>]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the update was created.
    #   @return [Time]
    #
    # @!attribute [rw] errors
    #   Any errors associated with a `Failed` update.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Update AWS API Documentation
    #
    class Update < Struct.new(
      :id,
      :status,
      :type,
      :params,
      :created_at,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #   @return [String]
    #
    # @!attribute [rw] addon_version
    #   The version of the add-on. The version must match one of the
    #   versions returned by [ `DescribeAddonVersions` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html
    #   @return [String]
    #
    # @!attribute [rw] service_account_role_arn
    #   The Amazon Resource Name (ARN) of an existing IAM role to bind to
    #   the add-on's service account. The role must be assigned the IAM
    #   permissions required by the add-on. If you don't specify an
    #   existing IAM role, then the add-on uses the permissions assigned to
    #   the node IAM role. For more information, see [Amazon EKS node IAM
    #   role][1] in the *Amazon EKS User Guide*.
    #
    #   <note markdown="1"> To specify an existing IAM role, you must have an IAM OpenID Connect
    #   (OIDC) provider created for your cluster. For more information, see
    #   [Enabling IAM roles for service accounts on your cluster][2] in the
    #   *Amazon EKS User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html
    #   @return [String]
    #
    # @!attribute [rw] resolve_conflicts
    #   How to resolve field value conflicts for an Amazon EKS add-on if
    #   you've changed a value from the Amazon EKS default value. Conflicts
    #   are handled based on the option you choose:
    #
    #   * **None** – Amazon EKS doesn't change the value. The update might
    #     fail.
    #
    #   * **Overwrite** – Amazon EKS overwrites the changed value back to
    #     the Amazon EKS default value.
    #
    #   * **Preserve** – Amazon EKS preserves the value. If you choose this
    #     option, we recommend that you test any field and value changes on
    #     a non-production cluster before updating the add-on on your
    #     production cluster.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] configuration_values
    #   The set of configuration values for the add-on that's created. The
    #   values that you provide are validated against the schema in
    #   [DescribeAddonConfiguration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonConfiguration.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateAddonRequest AWS API Documentation
    #
    class UpdateAddonRequest < Struct.new(
      :cluster_name,
      :addon_name,
      :addon_version,
      :service_account_role_arn,
      :resolve_conflicts,
      :client_request_token,
      :configuration_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateAddonResponse AWS API Documentation
    #
    class UpdateAddonResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster to update.
    #   @return [String]
    #
    # @!attribute [rw] resources_vpc_config
    #   An object representing the VPC configuration to use for an Amazon
    #   EKS cluster.
    #   @return [Types::VpcConfigRequest]
    #
    # @!attribute [rw] logging
    #   Enable or disable exporting the Kubernetes control plane logs for
    #   your cluster to CloudWatch Logs. By default, cluster control plane
    #   logs aren't exported to CloudWatch Logs. For more information, see
    #   [Amazon EKS cluster control plane logs][1] in the <i> <i>Amazon EKS
    #   User Guide</i> </i>.
    #
    #   <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    #   apply to exported control plane logs. For more information, see
    #   [CloudWatch Pricing][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    #   [2]: http://aws.amazon.com/cloudwatch/pricing/
    #   @return [Types::Logging]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterConfigRequest AWS API Documentation
    #
    class UpdateClusterConfigRequest < Struct.new(
      :name,
      :resources_vpc_config,
      :logging,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterConfigResponse AWS API Documentation
    #
    class UpdateClusterConfigResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster to update.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The desired Kubernetes version following a successful update.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterVersionRequest AWS API Documentation
    #
    class UpdateClusterVersionRequest < Struct.new(
      :name,
      :version,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   The full description of the specified update
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterVersionResponse AWS API Documentation
    #
    class UpdateClusterVersionResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a Kubernetes label change for a managed node
    # group.
    #
    # @!attribute [rw] add_or_update_labels
    #   Kubernetes labels to be added or updated.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] remove_labels
    #   Kubernetes labels to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateLabelsPayload AWS API Documentation
    #
    class UpdateLabelsPayload < Struct.new(
      :add_or_update_labels,
      :remove_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that the managed node group
    #   resides in.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the managed node group to update.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   The Kubernetes labels to be applied to the nodes in the node group
    #   after the update.
    #   @return [Types::UpdateLabelsPayload]
    #
    # @!attribute [rw] taints
    #   The Kubernetes taints to be applied to the nodes in the node group
    #   after the update. For more information, see [Node taints on managed
    #   node groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html
    #   @return [Types::UpdateTaintsPayload]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration details for the Auto Scaling group after
    #   the update.
    #   @return [Types::NodegroupScalingConfig]
    #
    # @!attribute [rw] update_config
    #   The node group update configuration.
    #   @return [Types::NodegroupUpdateConfig]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupConfigRequest AWS API Documentation
    #
    class UpdateNodegroupConfigRequest < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :labels,
      :taints,
      :scaling_config,
      :update_config,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupConfigResponse AWS API Documentation
    #
    class UpdateNodegroupConfigResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that is associated with the
    #   managed node group to update.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the managed node group to update.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The Kubernetes version to update to. If no version is specified,
    #   then the Kubernetes version of the node group does not change. You
    #   can specify the Kubernetes version of the cluster to update the node
    #   group to the latest AMI version of the cluster's Kubernetes
    #   version. If you specify `launchTemplate`, and your launch template
    #   uses a custom AMI, then don't specify `version`, or the node group
    #   update will fail. For more information about using launch templates
    #   with Amazon EKS, see [Launch template support][1] in the *Amazon EKS
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @!attribute [rw] release_version
    #   The AMI version of the Amazon EKS optimized AMI to use for the
    #   update. By default, the latest available AMI version for the node
    #   group's Kubernetes version is used. For information about Linux
    #   versions, see [Amazon EKS optimized Amazon Linux AMI versions][1] in
    #   the *Amazon EKS User Guide*. Amazon EKS managed node groups support
    #   the November 2022 and later releases of the Windows AMIs. For
    #   information about Windows versions, see [Amazon EKS optimized
    #   Windows AMI versions][2] in the *Amazon EKS User Guide*.
    #
    #   If you specify `launchTemplate`, and your launch template uses a
    #   custom AMI, then don't specify `releaseVersion`, or the node group
    #   update will fail. For more information about using launch templates
    #   with Amazon EKS, see [Launch template support][3] in the *Amazon EKS
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html
    #   [3]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   An object representing a node group's launch template
    #   specification. You can only update a node group using a launch
    #   template if the node group was originally deployed with a launch
    #   template.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] force
    #   Force the update if the existing node group's pods are unable to be
    #   drained due to a pod disruption budget issue. If an update fails
    #   because pods could not be drained, you can force the update after it
    #   fails to terminate the old node whether or not any pods are running
    #   on the node.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupVersionRequest AWS API Documentation
    #
    class UpdateNodegroupVersionRequest < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :version,
      :release_version,
      :launch_template,
      :force,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupVersionResponse AWS API Documentation
    #
    class UpdateNodegroupVersionResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the details of an update request.
    #
    # @!attribute [rw] type
    #   The keys associated with an update request.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the keys submitted as part of an update request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateParam AWS API Documentation
    #
    class UpdateParam < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the details of an update to a taints payload.
    # For more information, see [Node taints on managed node groups][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html
    #
    # @!attribute [rw] add_or_update_taints
    #   Kubernetes taints to be added or updated.
    #   @return [Array<Types::Taint>]
    #
    # @!attribute [rw] remove_taints
    #   Kubernetes taints to remove.
    #   @return [Array<Types::Taint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateTaintsPayload AWS API Documentation
    #
    class UpdateTaintsPayload < Struct.new(
      :add_or_update_taints,
      :remove_taints)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the VPC configuration to use for an Amazon EKS
    # cluster.
    #
    # @!attribute [rw] subnet_ids
    #   Specify subnets for your Amazon EKS nodes. Amazon EKS creates
    #   cross-account elastic network interfaces in these subnets to allow
    #   communication between your nodes and the Kubernetes control plane.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Specify one or more security groups for the cross-account elastic
    #   network interfaces that Amazon EKS creates to use that allow
    #   communication between your nodes and the Kubernetes control plane.
    #   If you don't specify any security groups, then familiarize yourself
    #   with the difference between Amazon EKS defaults for clusters
    #   deployed with Kubernetes. For more information, see [Amazon EKS
    #   security group considerations][1] in the <i> <i>Amazon EKS User
    #   Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] endpoint_public_access
    #   Set this value to `false` to disable public access to your
    #   cluster's Kubernetes API server endpoint. If you disable public
    #   access, your cluster's Kubernetes API server can only receive
    #   requests from within the cluster VPC. The default value for this
    #   parameter is `true`, which enables public access for your Kubernetes
    #   API server. For more information, see [Amazon EKS cluster endpoint
    #   access control][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint_private_access
    #   Set this value to `true` to enable private access for your
    #   cluster's Kubernetes API server endpoint. If you enable private
    #   access, Kubernetes API requests from within your cluster's VPC use
    #   the private VPC endpoint. The default value for this parameter is
    #   `false`, which disables private access for your Kubernetes API
    #   server. If you disable private access and you have nodes or Fargate
    #   pods in the cluster, then ensure that `publicAccessCidrs` includes
    #   the necessary CIDR blocks for communication with the nodes or
    #   Fargate pods. For more information, see [Amazon EKS cluster endpoint
    #   access control][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Boolean]
    #
    # @!attribute [rw] public_access_cidrs
    #   The CIDR blocks that are allowed access to your cluster's public
    #   Kubernetes API server endpoint. Communication to the endpoint from
    #   addresses outside of the CIDR blocks that you specify is denied. The
    #   default value is `0.0.0.0/0`. If you've disabled private endpoint
    #   access and you have nodes or Fargate pods in the cluster, then
    #   ensure that you specify the necessary CIDR blocks. For more
    #   information, see [Amazon EKS cluster endpoint access control][1] in
    #   the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/VpcConfigRequest AWS API Documentation
    #
    class VpcConfigRequest < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :endpoint_public_access,
      :endpoint_private_access,
      :public_access_cidrs)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Amazon EKS cluster VPC configuration
    # response.
    #
    # @!attribute [rw] subnet_ids
    #   The subnets associated with your cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups associated with the cross-account elastic
    #   network interfaces that are used to allow communication between your
    #   nodes and the Kubernetes control plane.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cluster_security_group_id
    #   The cluster security group that was created by Amazon EKS for the
    #   cluster. Managed node groups use this security group for
    #   control-plane-to-data-plane communication.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC associated with your cluster.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_public_access
    #   This parameter indicates whether the Amazon EKS public API server
    #   endpoint is enabled. If the Amazon EKS public API server endpoint is
    #   disabled, your cluster's Kubernetes API server can only receive
    #   requests that originate from within the cluster VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint_private_access
    #   This parameter indicates whether the Amazon EKS private API server
    #   endpoint is enabled. If the Amazon EKS private API server endpoint
    #   is enabled, Kubernetes API requests that originate from within your
    #   cluster's VPC use the private VPC endpoint instead of traversing
    #   the internet. If this value is disabled and you have nodes or
    #   Fargate pods in the cluster, then ensure that `publicAccessCidrs`
    #   includes the necessary CIDR blocks for communication with the nodes
    #   or Fargate pods. For more information, see [Amazon EKS cluster
    #   endpoint access control][1] in the <i> <i>Amazon EKS User Guide</i>
    #   </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Boolean]
    #
    # @!attribute [rw] public_access_cidrs
    #   The CIDR blocks that are allowed access to your cluster's public
    #   Kubernetes API server endpoint. Communication to the endpoint from
    #   addresses outside of the listed CIDR blocks is denied. The default
    #   value is `0.0.0.0/0`. If you've disabled private endpoint access
    #   and you have nodes or Fargate pods in the cluster, then ensure that
    #   the necessary CIDR blocks are listed. For more information, see
    #   [Amazon EKS cluster endpoint access control][1] in the <i> <i>Amazon
    #   EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/VpcConfigResponse AWS API Documentation
    #
    class VpcConfigResponse < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :cluster_security_group_id,
      :vpc_id,
      :endpoint_public_access,
      :endpoint_private_access,
      :public_access_cidrs)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
