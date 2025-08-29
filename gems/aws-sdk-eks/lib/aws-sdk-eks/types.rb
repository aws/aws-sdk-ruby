# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EKS
  module Types

    # The access configuration for the cluster.
    #
    # @!attribute [rw] bootstrap_cluster_creator_admin_permissions
    #   Specifies whether or not the cluster creator IAM principal was set
    #   as a cluster admin access entry during cluster creation time.
    #   @return [Boolean]
    #
    # @!attribute [rw] authentication_mode
    #   The current authentication mode of the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AccessConfigResponse AWS API Documentation
    #
    class AccessConfigResponse < Struct.new(
      :bootstrap_cluster_creator_admin_permissions,
      :authentication_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # You don't have permissions to perform the requested operation. The
    # [IAM principal][1] making the request must have at least one IAM
    # permissions policy attached that grants the required permissions. For
    # more information, see [Access management][2] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html
    #
    # @!attribute [rw] message
    #   You do not have sufficient access to perform this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An access entry allows an IAM principal (user or role) to access your
    # cluster. Access entries can replace the need to maintain the
    # `aws-auth` `ConfigMap` for authentication. For more information about
    # access entries, see [Access entries][1] in the *Amazon EKS User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html
    #
    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the IAM principal for the access entry. If you ever
    #   delete the IAM principal with this ARN, the access entry isn't
    #   automatically deleted. We recommend that you delete the access entry
    #   with an ARN for an IAM principal that you delete. If you don't
    #   delete the access entry and ever recreate the IAM principal, even if
    #   it has the same ARN, the access entry won't work. This is because
    #   even though the ARN is the same for the recreated IAM principal, the
    #   `roleID` or `userID` (you can see this with the Security Token
    #   Service `GetCallerIdentity` API) is different for the recreated IAM
    #   principal than it was for the original IAM principal. Even though
    #   you don't see the IAM principal's `roleID` or `userID` for an
    #   access entry, Amazon EKS stores it with the access entry.
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_groups
    #   A `name` that you've specified in a Kubernetes `RoleBinding` or
    #   `ClusterRoleBinding` object so that Kubernetes authorizes the
    #   `principalARN` access to cluster objects.
    #   @return [Array<String>]
    #
    # @!attribute [rw] access_entry_arn
    #   The ARN of the access entry.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp at object creation.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The Unix epoch timestamp for the last modification to the object.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] username
    #   The `name` of a user that can authenticate to your cluster.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the access entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AccessEntry AWS API Documentation
    #
    class AccessEntry < Struct.new(
      :cluster_name,
      :principal_arn,
      :kubernetes_groups,
      :access_entry_arn,
      :created_at,
      :modified_at,
      :tags,
      :username,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An access policy includes permissions that allow Amazon EKS to
    # authorize an IAM principal to work with Kubernetes objects on your
    # cluster. The policies are managed by Amazon EKS, but they're not IAM
    # policies. You can't view the permissions in the policies using the
    # API. The permissions for many of the policies are similar to the
    # Kubernetes `cluster-admin`, `admin`, `edit`, and `view` cluster roles.
    # For more information about these cluster roles, see [User-facing
    # roles][1] in the Kubernetes documentation. To view the contents of the
    # policies, see [Access policy permissions][2] in the *Amazon EKS User
    # Guide*.
    #
    #
    #
    # [1]: https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
    # [2]: https://docs.aws.amazon.com/eks/latest/userguide/access-policies.html#access-policy-permissions
    #
    # @!attribute [rw] name
    #   The name of the access policy.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the access policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AccessPolicy AWS API Documentation
    #
    class AccessPolicy < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scope of an `AccessPolicy` that's associated to an `AccessEntry`.
    #
    # @!attribute [rw] type
    #   The scope type of an access policy.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   A Kubernetes `namespace` that an access policy is scoped to. A value
    #   is required if you specified `namespace` for `Type`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AccessScope AWS API Documentation
    #
    class AccessScope < Struct.new(
      :type,
      :namespaces)
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
    #   The name of your cluster.
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
    #   The Unix epoch timestamp at object creation.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The Unix epoch timestamp for the last modification to the object.
    #   @return [Time]
    #
    # @!attribute [rw] service_account_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that's bound to the
    #   Kubernetes `ServiceAccount` object that the add-on uses.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
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
    # @!attribute [rw] pod_identity_associations
    #   An array of EKS Pod Identity associations owned by the add-on. Each
    #   association maps a role to a service account in a namespace in the
    #   cluster.
    #
    #   For more information, see [Attach an IAM Role to an Amazon EKS
    #   add-on using EKS Pod Identity][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_config
    #   The namespace configuration for the addon. This specifies the
    #   Kubernetes namespace where the addon is installed.
    #   @return [Types::AddonNamespaceConfigResponse]
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
      :configuration_values,
      :pod_identity_associations,
      :namespace_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary information about the Amazon EKS add-on compatibility for
    # the next Kubernetes version for an insight check in the
    # `UPGRADE_READINESS` category.
    #
    # @!attribute [rw] name
    #   The name of the Amazon EKS add-on.
    #   @return [String]
    #
    # @!attribute [rw] compatible_versions
    #   The list of compatible Amazon EKS add-on versions for the next
    #   Kubernetes version.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonCompatibilityDetail AWS API Documentation
    #
    class AddonCompatibilityDetail < Struct.new(
      :name,
      :compatible_versions)
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
    # @!attribute [rw] default_namespace
    #   The default Kubernetes namespace where this addon is typically
    #   installed if no custom namespace is specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonInfo AWS API Documentation
    #
    class AddonInfo < Struct.new(
      :addon_name,
      :type,
      :addon_versions,
      :publisher,
      :owner,
      :marketplace_information,
      :default_namespace)
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

    # The namespace configuration request object for specifying a custom
    # namespace when creating an addon.
    #
    # @!attribute [rw] namespace
    #   The name of the Kubernetes namespace to install the addon in. Must
    #   be a valid RFC 1123 DNS label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonNamespaceConfigRequest AWS API Documentation
    #
    class AddonNamespaceConfigRequest < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # The namespace configuration response object containing information
    # about the namespace where an addon is installed.
    #
    # @!attribute [rw] namespace
    #   The name of the Kubernetes namespace where the addon is installed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonNamespaceConfigResponse AWS API Documentation
    #
    class AddonNamespaceConfigResponse < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of EKS Pod Identity association owned by an Amazon EKS add-on.
    #
    # Each association maps a role to a service account in a namespace in
    # the cluster.
    #
    # For more information, see [Attach an IAM Role to an Amazon EKS add-on
    # using EKS Pod Identity][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html
    #
    # @!attribute [rw] service_account
    #   The name of a Kubernetes Service Account.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM Role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonPodIdentityAssociations AWS API Documentation
    #
    class AddonPodIdentityAssociations < Struct.new(
      :service_account,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about how to configure IAM for an add-on.
    #
    # @!attribute [rw] service_account
    #   The Kubernetes Service Account name used by the add-on.
    #   @return [String]
    #
    # @!attribute [rw] recommended_managed_policies
    #   A suggested IAM Policy for the add-on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonPodIdentityConfiguration AWS API Documentation
    #
    class AddonPodIdentityConfiguration < Struct.new(
      :service_account,
      :recommended_managed_policies)
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
    # @!attribute [rw] compute_types
    #   Indicates the compute type of the add-on version.
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
    # @!attribute [rw] requires_iam_permissions
    #   Indicates if the add-on requires IAM Permissions to operate, such as
    #   networking permissions.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonVersionInfo AWS API Documentation
    #
    class AddonVersionInfo < Struct.new(
      :addon_version,
      :architecture,
      :compute_types,
      :compatibilities,
      :requires_configuration,
      :requires_iam_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The Amazon Resource Name (ARN) of the IAM user or role for the
    #   `AccessEntry` that you're associating the access policy to.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN of the `AccessPolicy` that you're associating. For a list
    #   of ARNs, use `ListAccessPolicies`.
    #   @return [String]
    #
    # @!attribute [rw] access_scope
    #   The scope for the `AccessPolicy`. You can scope access policies to
    #   an entire cluster or to specific Kubernetes namespaces.
    #   @return [Types::AccessScope]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AssociateAccessPolicyRequest AWS API Documentation
    #
    class AssociateAccessPolicyRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      :policy_arn,
      :access_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #   @return [String]
    #
    # @!attribute [rw] associated_access_policy
    #   The `AccessPolicy` and scope associated to the `AccessEntry`.
    #   @return [Types::AssociatedAccessPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AssociateAccessPolicyResponse AWS API Documentation
    #
    class AssociateAccessPolicyResponse < Struct.new(
      :cluster_name,
      :principal_arn,
      :associated_access_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] encryption_config
    #   The configuration you are using for encryption.
    #   @return [Array<Types::EncryptionConfig>]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
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
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] oidc
    #   An object representing an OpenID Connect (OIDC) identity provider
    #   configuration.
    #   @return [Types::OidcIdentityProviderConfigRequest]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
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

    # An access policy association.
    #
    # @!attribute [rw] policy_arn
    #   The ARN of the `AccessPolicy`.
    #   @return [String]
    #
    # @!attribute [rw] access_scope
    #   The scope of the access policy.
    #   @return [Types::AccessScope]
    #
    # @!attribute [rw] associated_at
    #   The date and time the `AccessPolicy` was associated with an
    #   `AccessEntry`.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The Unix epoch timestamp for the last modification to the object.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AssociatedAccessPolicy AWS API Documentation
    #
    class AssociatedAccessPolicy < Struct.new(
      :policy_arn,
      :access_scope,
      :associated_at,
      :modified_at)
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
    #   This exception is thrown if the request contains a semantic error.
    #   The precise meaning will depend on the API, and will be documented
    #   in the error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the current configuration of the block storage capability on
    # your EKS Auto Mode cluster. For example, if the capability is enabled
    # or disabled. If the block storage capability is enabled, EKS Auto Mode
    # will create and delete EBS volumes in your Amazon Web Services
    # account. For more information, see EKS Auto Mode block storage
    # capability in the *Amazon EKS User Guide*.
    #
    # @!attribute [rw] enabled
    #   Indicates if the block storage capability is enabled on your EKS
    #   Auto Mode cluster. If the block storage capability is enabled, EKS
    #   Auto Mode will create and delete EBS volumes in your Amazon Web
    #   Services account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/BlockStorage AWS API Documentation
    #
    class BlockStorage < Struct.new(
      :enabled)
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
    # include using an action or resource on behalf of an [IAM principal][1]
    # that doesn't have permissions to use the action or resource or
    # specifying an identifier that is not valid.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html
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
    #   The Amazon EKS add-on name associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The Amazon EKS subscription ID with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   These errors are usually caused by a client action. Actions can
    #   include using an action or resource on behalf of an [IAM
    #   principal][1] that doesn't have permissions to use the action or
    #   resource or specifying an identifier that is not valid.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ClientException AWS API Documentation
    #
    class ClientException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :subscription_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about clients using the deprecated resources.
    #
    # @!attribute [rw] user_agent
    #   The user agent of the Kubernetes client using the deprecated
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] number_of_requests_last_30_days
    #   The number of requests from the Kubernetes client seen over the last
    #   30 days.
    #   @return [Integer]
    #
    # @!attribute [rw] last_request_time
    #   The timestamp of the last request seen from the Kubernetes client.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ClientStat AWS API Documentation
    #
    class ClientStat < Struct.new(
      :user_agent,
      :number_of_requests_last_30_days,
      :last_request_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Amazon EKS cluster.
    #
    # @!attribute [rw] name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp at object creation.
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
    #   considerations][1] and [Cluster security group considerations][2] in
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
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version of your Amazon EKS cluster. For more
    #   information about clusters deployed on the Amazon Web Services
    #   Cloud, see [Platform versions][1] in the <i> <i>Amazon EKS User
    #   Guide</i> </i>. For more information about local clusters deployed
    #   on an Outpost, see [Amazon EKS local cluster platform versions][2]
    #   in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-platform-versions.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
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
    #   An object representing the health of your Amazon EKS cluster.
    #   @return [Types::ClusterHealth]
    #
    # @!attribute [rw] outpost_config
    #   An object representing the configuration of your local Amazon EKS
    #   cluster on an Amazon Web Services Outpost. This object isn't
    #   available for clusters on the Amazon Web Services cloud.
    #   @return [Types::OutpostConfigResponse]
    #
    # @!attribute [rw] access_config
    #   The access configuration for the cluster.
    #   @return [Types::AccessConfigResponse]
    #
    # @!attribute [rw] upgrade_policy
    #   This value indicates if extended support is enabled or disabled for
    #   the cluster.
    #
    #   [Learn more about EKS Extended Support in the *Amazon EKS User
    #   Guide*.][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/extended-support-control.html
    #   @return [Types::UpgradePolicyResponse]
    #
    # @!attribute [rw] zonal_shift_config
    #   The configuration for zonal shift for the cluster.
    #   @return [Types::ZonalShiftConfigResponse]
    #
    # @!attribute [rw] remote_network_config
    #   The configuration in the cluster for EKS Hybrid Nodes. You can add,
    #   change, or remove this configuration after the cluster is created.
    #   @return [Types::RemoteNetworkConfigResponse]
    #
    # @!attribute [rw] compute_config
    #   Indicates the current configuration of the compute capability on
    #   your EKS Auto Mode cluster. For example, if the capability is
    #   enabled or disabled. If the compute capability is enabled, EKS Auto
    #   Mode will create and delete EC2 Managed Instances in your Amazon Web
    #   Services account. For more information, see EKS Auto Mode compute
    #   capability in the *Amazon EKS User Guide*.
    #   @return [Types::ComputeConfigResponse]
    #
    # @!attribute [rw] storage_config
    #   Indicates the current configuration of the block storage capability
    #   on your EKS Auto Mode cluster. For example, if the capability is
    #   enabled or disabled. If the block storage capability is enabled, EKS
    #   Auto Mode will create and delete EBS volumes in your Amazon Web
    #   Services account. For more information, see EKS Auto Mode block
    #   storage capability in the *Amazon EKS User Guide*.
    #   @return [Types::StorageConfigResponse]
    #
    # @!attribute [rw] deletion_protection
    #   The current deletion protection setting for the cluster. When
    #   `true`, deletion protection is enabled and the cluster cannot be
    #   deleted until protection is disabled. When `false`, the cluster can
    #   be deleted normally. This setting only applies to clusters in an
    #   active state.
    #   @return [Boolean]
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
      :outpost_config,
      :access_config,
      :upgrade_policy,
      :zonal_shift_config,
      :remote_network_config,
      :compute_config,
      :storage_config,
      :deletion_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the health of your Amazon EKS cluster.
    #
    # @!attribute [rw] issues
    #   An object representing the health issues of your Amazon EKS cluster.
    #   @return [Array<Types::ClusterIssue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ClusterHealth AWS API Documentation
    #
    class ClusterHealth < Struct.new(
      :issues)
      SENSITIVE = []
      include Aws::Structure
    end

    # An issue with your Amazon EKS cluster.
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

    # Contains details about a specific EKS cluster version.
    #
    # @!attribute [rw] cluster_version
    #   The Kubernetes version for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   The type of cluster this version is for.
    #   @return [String]
    #
    # @!attribute [rw] default_platform_version
    #   Default platform version for this Kubernetes version.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   Indicates if this is a default version.
    #   @return [Boolean]
    #
    # @!attribute [rw] release_date
    #   The release date of this cluster version.
    #   @return [Time]
    #
    # @!attribute [rw] end_of_standard_support_date
    #   Date when standard support ends for this version.
    #   @return [Time]
    #
    # @!attribute [rw] end_of_extended_support_date
    #   Date when extended support ends for this version.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   This field is deprecated. Use `versionStatus` instead, as that field
    #   matches for input and output of this action.
    #
    #   Current status of this cluster version.
    #   @return [String]
    #
    # @!attribute [rw] version_status
    #   Current status of this cluster version.
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_patch_version
    #   The patch version of Kubernetes for this cluster version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ClusterVersionInformation AWS API Documentation
    #
    class ClusterVersionInformation < Struct.new(
      :cluster_version,
      :cluster_type,
      :default_platform_version,
      :default_version,
      :release_date,
      :end_of_standard_support_date,
      :end_of_extended_support_date,
      :status,
      :version_status,
      :kubernetes_patch_version)
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

    # Request to update the configuration of the compute capability of your
    # EKS Auto Mode cluster. For example, enable the capability. For more
    # information, see EKS Auto Mode compute capability in the *Amazon EKS
    # User Guide*.
    #
    # @!attribute [rw] enabled
    #   Request to enable or disable the compute capability on your EKS Auto
    #   Mode cluster. If the compute capability is enabled, EKS Auto Mode
    #   will create and delete EC2 Managed Instances in your Amazon Web
    #   Services account.
    #   @return [Boolean]
    #
    # @!attribute [rw] node_pools
    #   Configuration for node pools that defines the compute resources for
    #   your EKS Auto Mode cluster. For more information, see EKS Auto Mode
    #   Node Pools in the *Amazon EKS User Guide*.
    #   @return [Array<String>]
    #
    # @!attribute [rw] node_role_arn
    #   The ARN of the IAM Role EKS will assign to EC2 Managed Instances in
    #   your EKS Auto Mode cluster. This value cannot be changed after the
    #   compute capability of EKS Auto Mode is enabled. For more
    #   information, see the IAM Reference in the *Amazon EKS User Guide*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ComputeConfigRequest AWS API Documentation
    #
    class ComputeConfigRequest < Struct.new(
      :enabled,
      :node_pools,
      :node_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the status of the request to update the compute capability
    # of your EKS Auto Mode cluster.
    #
    # @!attribute [rw] enabled
    #   Indicates if the compute capability is enabled on your EKS Auto Mode
    #   cluster. If the compute capability is enabled, EKS Auto Mode will
    #   create and delete EC2 Managed Instances in your Amazon Web Services
    #   account.
    #   @return [Boolean]
    #
    # @!attribute [rw] node_pools
    #   Indicates the current configuration of node pools in your EKS Auto
    #   Mode cluster. For more information, see EKS Auto Mode Node Pools in
    #   the *Amazon EKS User Guide*.
    #   @return [Array<String>]
    #
    # @!attribute [rw] node_role_arn
    #   The ARN of the IAM Role EKS will assign to EC2 Managed Instances in
    #   your EKS Auto Mode cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ComputeConfigResponse AWS API Documentation
    #
    class ComputeConfigResponse < Struct.new(
      :enabled,
      :node_pools,
      :node_role_arn)
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
    # User Guide*.
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

    # The access configuration information for the cluster.
    #
    # @!attribute [rw] bootstrap_cluster_creator_admin_permissions
    #   Specifies whether or not the cluster creator IAM principal was set
    #   as a cluster admin access entry during cluster creation time. The
    #   default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] authentication_mode
    #   The desired authentication mode for the cluster. If you create a
    #   cluster by using the EKS API, Amazon Web Services SDKs, or
    #   CloudFormation, the default is `CONFIG_MAP`. If you create the
    #   cluster by using the Amazon Web Services Management Console, the
    #   default value is `API_AND_CONFIG_MAP`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateAccessConfigRequest AWS API Documentation
    #
    class CreateAccessConfigRequest < Struct.new(
      :bootstrap_cluster_creator_admin_permissions,
      :authentication_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`. You can specify
    #   one ARN for each access entry. You can't specify the same ARN in
    #   more than one access entry. This value can't be changed after
    #   access entry creation.
    #
    #   The valid principals differ depending on the type of the access
    #   entry in the `type` field. For `STANDARD` access entries, you can
    #   use every IAM principal type. For nodes (`EC2` (for EKS Auto Mode),
    #   `EC2_LINUX`, `EC2_WINDOWS`, `FARGATE_LINUX`, and `HYBRID_LINUX`),
    #   the only valid ARN is IAM roles. You can't use the STS session
    #   principal type with access entries because this is a temporary
    #   principal for each session and not a permanent identity that can be
    #   assigned permissions.
    #
    #   [IAM best practices][1] recommend using IAM roles with temporary
    #   credentials, rather than IAM users with long-term credentials.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#bp-users-federation-idp
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_groups
    #   The value for `name` that you've specified for `kind: Group` as a
    #   `subject` in a Kubernetes `RoleBinding` or `ClusterRoleBinding`
    #   object. Amazon EKS doesn't confirm that the value for `name` exists
    #   in any bindings on your cluster. You can specify one or more names.
    #
    #   Kubernetes authorizes the `principalArn` of the access entry to
    #   access any cluster objects that you've specified in a Kubernetes
    #   `Role` or `ClusterRole` object that is also specified in a
    #   binding's `roleRef`. For more information about creating Kubernetes
    #   `RoleBinding`, `ClusterRoleBinding`, `Role`, or `ClusterRole`
    #   objects, see [Using RBAC Authorization in the Kubernetes
    #   documentation][1].
    #
    #   If you want Amazon EKS to authorize the `principalArn` (instead of,
    #   or in addition to Kubernetes authorizing the `principalArn`), you
    #   can associate one or more access policies to the access entry using
    #   `AssociateAccessPolicy`. If you associate any access policies, the
    #   `principalARN` has all permissions assigned in the associated access
    #   policies and all permissions in any Kubernetes `Role` or
    #   `ClusterRole` objects that the group names are bound to.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/reference/access-authn-authz/rbac/
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username to authenticate to Kubernetes with. We recommend not
    #   specifying a username and letting Amazon EKS specify it for you. For
    #   more information about the value Amazon EKS specifies for you, or
    #   constraints before specifying your own username, see [Creating
    #   access entries][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html#creating-access-entries
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the new access entry. Valid values are `STANDARD`,
    #   `FARGATE_LINUX`, `EC2_LINUX`, `EC2_WINDOWS`, `EC2` (for EKS Auto
    #   Mode), `HYBRID_LINUX`, and `HYPERPOD_LINUX`.
    #
    #   If the `principalArn` is for an IAM role that's used for
    #   self-managed Amazon EC2 nodes, specify `EC2_LINUX` or `EC2_WINDOWS`.
    #   Amazon EKS grants the necessary permissions to the node for you. If
    #   the `principalArn` is for any other purpose, specify `STANDARD`. If
    #   you don't specify a value, Amazon EKS sets the value to `STANDARD`.
    #   If you have the access mode of the cluster set to
    #   `API_AND_CONFIG_MAP`, it's unnecessary to create access entries for
    #   IAM roles used with Fargate profiles or managed Amazon EC2 nodes,
    #   because Amazon EKS creates entries in the `aws-auth` `ConfigMap` for
    #   the roles. You can't change this value once you've created the
    #   access entry.
    #
    #   If you set the value to `EC2_LINUX` or `EC2_WINDOWS`, you can't
    #   specify values for `kubernetesGroups`, or associate an
    #   `AccessPolicy` to the access entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateAccessEntryRequest AWS API Documentation
    #
    class CreateAccessEntryRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      :kubernetes_groups,
      :tags,
      :client_request_token,
      :username,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_entry
    #   An access entry allows an IAM principal (user or role) to access
    #   your cluster. Access entries can replace the need to maintain the
    #   `aws-auth` `ConfigMap` for authentication. For more information
    #   about access entries, see [Access entries][1] in the *Amazon EKS
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html
    #   @return [Types::AccessEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateAccessEntryResponse AWS API Documentation
    #
    class CreateAccessEntryResponse < Struct.new(
      :access_entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by `DescribeAddonVersions`.
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
    #   * **Preserve** – This is similar to the NONE option. If the
    #     self-managed version of the add-on is installed on your cluster
    #     Amazon EKS doesn't change the add-on resource properties.
    #     Creation of the add-on might fail if conflicts are detected. This
    #     option works differently during the update operation. For more
    #     information, see [ `UpdateAddon` ][1].
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
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] configuration_values
    #   The set of configuration values for the add-on that's created. The
    #   values that you provide are validated against the schema returned by
    #   `DescribeAddonConfiguration`.
    #   @return [String]
    #
    # @!attribute [rw] pod_identity_associations
    #   An array of EKS Pod Identity associations to be created. Each
    #   association maps a Kubernetes service account to an IAM role.
    #
    #   For more information, see [Attach an IAM Role to an Amazon EKS
    #   add-on using EKS Pod Identity][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html
    #   @return [Array<Types::AddonPodIdentityAssociations>]
    #
    # @!attribute [rw] namespace_config
    #   The namespace configuration for the addon. If specified, this will
    #   override the default namespace for the addon.
    #   @return [Types::AddonNamespaceConfigRequest]
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
      :configuration_values,
      :pod_identity_associations,
      :namespace_config)
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
    #   The unique name to give to your cluster. The name can contain only
    #   alphanumeric characters (case-sensitive), hyphens, and underscores.
    #   It must start with an alphanumeric character and can't be longer
    #   than 100 characters. The name must be unique within the Amazon Web
    #   Services Region and Amazon Web Services account that you're
    #   creating the cluster in.
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
    #   your cluster to CloudWatch Logs . By default, cluster control plane
    #   logs aren't exported to CloudWatch Logs . For more information, see
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
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
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
    # @!attribute [rw] access_config
    #   The access configuration for the cluster.
    #   @return [Types::CreateAccessConfigRequest]
    #
    # @!attribute [rw] bootstrap_self_managed_addons
    #   If you set this value to `False` when creating a cluster, the
    #   default networking add-ons will not be installed.
    #
    #   The default networking add-ons include `vpc-cni`, `coredns`, and
    #   `kube-proxy`.
    #
    #   Use this option when you plan to install third-party alternative
    #   add-ons or self-manage the default networking add-ons.
    #   @return [Boolean]
    #
    # @!attribute [rw] upgrade_policy
    #   New clusters, by default, have extended support enabled. You can
    #   disable extended support when creating a cluster by setting this
    #   value to `STANDARD`.
    #   @return [Types::UpgradePolicyRequest]
    #
    # @!attribute [rw] zonal_shift_config
    #   Enable or disable ARC zonal shift for the cluster. If zonal shift is
    #   enabled, Amazon Web Services configures zonal autoshift for the
    #   cluster.
    #
    #   Zonal shift is a feature of Amazon Application Recovery Controller
    #   (ARC). ARC zonal shift is designed to be a temporary measure that
    #   allows you to move traffic for a resource away from an impaired AZ
    #   until the zonal shift expires or you cancel it. You can extend the
    #   zonal shift if necessary.
    #
    #   You can start a zonal shift for an Amazon EKS cluster, or you can
    #   allow Amazon Web Services to do it for you by enabling *zonal
    #   autoshift*. This shift updates the flow of east-to-west network
    #   traffic in your cluster to only consider network endpoints for Pods
    #   running on worker nodes in healthy AZs. Additionally, any ALB or NLB
    #   handling ingress traffic for applications in your Amazon EKS cluster
    #   will automatically route traffic to targets in the healthy AZs. For
    #   more information about zonal shift in EKS, see [Learn about Amazon
    #   Application Recovery Controller (ARC) Zonal Shift in Amazon EKS][1]
    #   in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/zone-shift.html
    #   @return [Types::ZonalShiftConfigRequest]
    #
    # @!attribute [rw] remote_network_config
    #   The configuration in the cluster for EKS Hybrid Nodes. You can add,
    #   change, or remove this configuration after the cluster is created.
    #   @return [Types::RemoteNetworkConfigRequest]
    #
    # @!attribute [rw] compute_config
    #   Enable or disable the compute capability of EKS Auto Mode when
    #   creating your EKS Auto Mode cluster. If the compute capability is
    #   enabled, EKS Auto Mode will create and delete EC2 Managed Instances
    #   in your Amazon Web Services account
    #   @return [Types::ComputeConfigRequest]
    #
    # @!attribute [rw] storage_config
    #   Enable or disable the block storage capability of EKS Auto Mode when
    #   creating your EKS Auto Mode cluster. If the block storage capability
    #   is enabled, EKS Auto Mode will create and delete EBS volumes in your
    #   Amazon Web Services account.
    #   @return [Types::StorageConfigRequest]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether to enable deletion protection for the cluster.
    #   When enabled, the cluster cannot be deleted unless deletion
    #   protection is first disabled. This helps prevent accidental cluster
    #   deletion. Default value is `false`.
    #   @return [Boolean]
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
      :outpost_config,
      :access_config,
      :bootstrap_self_managed_addons,
      :upgrade_policy,
      :zonal_shift_config,
      :remote_network_config,
      :compute_config,
      :storage_config,
      :deletion_protection)
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

    # @!attribute [rw] name
    #   The unique name for your subscription. It must be unique in your
    #   Amazon Web Services account in the Amazon Web Services Region
    #   you're creating the subscription in. The name can contain only
    #   alphanumeric characters (case-sensitive), hyphens, and underscores.
    #   It must start with an alphabetic character and can't be longer than
    #   100 characters.
    #   @return [String]
    #
    # @!attribute [rw] term
    #   An object representing the term duration and term unit type of your
    #   subscription. This determines the term length of your subscription.
    #   Valid values are MONTHS for term unit and 12 or 36 for term
    #   duration, indicating a 12 month or 36 month subscription. This value
    #   cannot be changed after creating the subscription.
    #   @return [Types::EksAnywhereSubscriptionTerm]
    #
    # @!attribute [rw] license_quantity
    #   The number of licenses to purchase with the subscription. Valid
    #   values are between 1 and 100. This value can't be changed after
    #   creating the subscription.
    #   @return [Integer]
    #
    # @!attribute [rw] license_type
    #   The license type for all licenses in the subscription. Valid value
    #   is CLUSTER. With the CLUSTER license type, each license covers
    #   support for a single EKS Anywhere cluster.
    #   @return [String]
    #
    # @!attribute [rw] auto_renew
    #   A boolean indicating whether the subscription auto renews at the end
    #   of the term.
    #   @return [Boolean]
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
    #   The metadata for a subscription to assist with categorization and
    #   organization. Each tag consists of a key and an optional value.
    #   Subscription tags don't propagate to any other resources associated
    #   with the subscription.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateEksAnywhereSubscriptionRequest AWS API Documentation
    #
    class CreateEksAnywhereSubscriptionRequest < Struct.new(
      :name,
      :term,
      :license_quantity,
      :license_type,
      :auto_renew,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The full description of the subscription.
    #   @return [Types::EksAnywhereSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateEksAnywhereSubscriptionResponse AWS API Documentation
    #
    class CreateEksAnywhereSubscriptionResponse < Struct.new(
      :subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fargate_profile_name
    #   The name of the Fargate profile.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] pod_execution_role_arn
    #   The Amazon Resource Name (ARN) of the `Pod` execution role to use
    #   for a `Pod` that matches the selectors in the Fargate profile. The
    #   `Pod` execution role allows Fargate infrastructure to register with
    #   your cluster as a node, and it provides read access to Amazon ECR
    #   image repositories. For more information, see [ `Pod` execution
    #   role][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The IDs of subnets to launch a `Pod` into. A `Pod` running on
    #   Fargate isn't assigned a public IP address, so only private subnets
    #   (with no direct route to an Internet Gateway) are accepted for this
    #   parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selectors
    #   The selectors to match for a `Pod` to use this Fargate profile. Each
    #   selector must have an associated Kubernetes `namespace`. Optionally,
    #   you can also specify `labels` for a `namespace`. You may specify up
    #   to five selectors in a Fargate profile.
    #   @return [Array<Types::FargateProfileSelector>]
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
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
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
    #   The name of your cluster.
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
    #   templates with Amazon EKS, see [Customizing managed nodes with
    #   launch templates][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [Integer]
    #
    # @!attribute [rw] subnets
    #   The subnets to use for the Auto Scaling group that is created for
    #   your node group. If you specify `launchTemplate`, then don't
    #   specify ` SubnetId ` in your launch template, or the node group
    #   deployment will fail. For more information about using launch
    #   templates with Amazon EKS, see [Customizing managed nodes with
    #   launch templates][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
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
    #   [Managed node group capacity types][1] and [Customizing managed
    #   nodes with launch templates][2] in the *Amazon EKS User Guide*.
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
    #   templates with Amazon EKS, see [Customizing managed nodes with
    #   launch templates][1] in the *Amazon EKS User Guide*.
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
    #   launch templates with Amazon EKS, see [Customizing managed nodes
    #   with launch templates][1] in the *Amazon EKS User Guide*.
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
    #   specify `launchTemplate`, then don't specify ` IamInstanceProfile `
    #   in your launch template, or the node group deployment will fail. For
    #   more information about using launch templates with Amazon EKS, see
    #   [Customizing managed nodes with launch templates][2] in the *Amazon
    #   EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   The Kubernetes `labels` to apply to the nodes in the node group when
    #   they are created.
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
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   An object representing a node group's launch template
    #   specification. When using this object, don't directly specify
    #   `instanceTypes`, `diskSize`, or `remoteAccess`. You cannot later
    #   specify a different launch template ID or name than what was used to
    #   create the node group.
    #
    #   Make sure that the launch template meets the requirements in
    #   `launchTemplateSpecification`. Also refer to [Customizing managed
    #   nodes with launch templates][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] update_config
    #   The node group update configuration.
    #   @return [Types::NodegroupUpdateConfig]
    #
    # @!attribute [rw] node_repair_config
    #   The node auto repair configuration for the node group.
    #   @return [Types::NodeRepairConfig]
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
    #   using launch templates with Amazon EKS, see [Customizing managed
    #   nodes with launch templates][1] in the *Amazon EKS User Guide*.
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
    #   templates with Amazon EKS, see [Customizing managed nodes with
    #   launch templates][3] in the *Amazon EKS User Guide*.
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
      :node_repair_config,
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
    #   The name of the cluster to create the EKS Pod Identity association
    #   in.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the Kubernetes namespace inside the cluster to create
    #   the EKS Pod Identity association in. The service account and the
    #   Pods that use the service account must be in this namespace.
    #   @return [String]
    #
    # @!attribute [rw] service_account
    #   The name of the Kubernetes service account inside the cluster to
    #   associate the IAM credentials with.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to associate with the
    #   service account. The EKS Pod Identity agent manages credentials to
    #   assume this role for applications in the containers in the Pods that
    #   use this service account.
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
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource – 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length – 128 Unicode characters in UTF-8
    #
    #   * Maximum value length – 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] disable_session_tags
    #   Disable the automatic sessions tags that are appended by EKS Pod
    #   Identity.
    #
    #   EKS Pod Identity adds a pre-defined set of session tags when it
    #   assumes the role. You can use these tags to author a single role
    #   that can work across resources by allowing access to Amazon Web
    #   Services resources based on matching tags. By default, EKS Pod
    #   Identity attaches six tags, including tags for cluster name,
    #   namespace, and service account name. For the list of tags added by
    #   EKS Pod Identity, see [List of session tags added by EKS Pod
    #   Identity][1] in the *Amazon EKS User Guide*.
    #
    #   Amazon Web Services compresses inline session policies, managed
    #   policy ARNs, and session tags into a packed binary format that has a
    #   separate limit. If you receive a `PackedPolicyTooLarge` error
    #   indicating the packed binary format has exceeded the size limit, you
    #   can attempt to reduce the size by disabling the session tags added
    #   by EKS Pod Identity.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/pod-id-abac.html#pod-id-abac-tags
    #   @return [Boolean]
    #
    # @!attribute [rw] target_role_arn
    #   The Amazon Resource Name (ARN) of the target IAM role to associate
    #   with the service account. This role is assumed by using the EKS Pod
    #   Identity association role, then the credentials for this role are
    #   injected into the Pod.
    #
    #   When you run applications on Amazon EKS, your application might need
    #   to access Amazon Web Services resources from a different role that
    #   exists in the same or different Amazon Web Services account. For
    #   example, your application running in “Account A” might need to
    #   access resources, such as Amazon S3 buckets in “Account B” or within
    #   “Account A” itself. You can create a association to access Amazon
    #   Web Services resources in “Account B” by creating two IAM roles: a
    #   role in “Account A” and a role in “Account B” (which can be the same
    #   or different account), each with the necessary trust and permission
    #   policies. After you provide these roles in the *IAM role* and
    #   *Target IAM role* fields, EKS will perform role chaining to ensure
    #   your application gets the required permissions. This means Role A
    #   will assume Role B, allowing your Pods to securely access resources
    #   like S3 buckets in the target account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreatePodIdentityAssociationRequest AWS API Documentation
    #
    class CreatePodIdentityAssociationRequest < Struct.new(
      :cluster_name,
      :namespace,
      :service_account,
      :role_arn,
      :client_request_token,
      :tags,
      :disable_session_tags,
      :target_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association
    #   The full description of your new association.
    #
    #   The description includes an ID for the association. Use the ID of
    #   the association in further actions to manage the association.
    #   @return [Types::PodIdentityAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreatePodIdentityAssociationResponse AWS API Documentation
    #
    class CreatePodIdentityAssociationResponse < Struct.new(
      :association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteAccessEntryRequest AWS API Documentation
    #
    class DeleteAccessEntryRequest < Struct.new(
      :cluster_name,
      :principal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteAccessEntryResponse AWS API Documentation
    #
    class DeleteAccessEntryResponse < Aws::EmptyStructure; end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
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

    # @!attribute [rw] id
    #   The ID of the subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteEksAnywhereSubscriptionRequest AWS API Documentation
    #
    class DeleteEksAnywhereSubscriptionRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The full description of the subscription to be deleted.
    #   @return [Types::EksAnywhereSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteEksAnywhereSubscriptionResponse AWS API Documentation
    #
    class DeleteEksAnywhereSubscriptionResponse < Struct.new(
      :subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
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
    #   The name of your cluster.
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

    # @!attribute [rw] cluster_name
    #   The cluster name that
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID of the association to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeletePodIdentityAssociationRequest AWS API Documentation
    #
    class DeletePodIdentityAssociationRequest < Struct.new(
      :cluster_name,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association
    #   The full description of the EKS Pod Identity association that was
    #   deleted.
    #   @return [Types::PodIdentityAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeletePodIdentityAssociationResponse AWS API Documentation
    #
    class DeletePodIdentityAssociationResponse < Struct.new(
      :association)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary information about deprecated resource usage for an insight
    # check in the `UPGRADE_READINESS` category.
    #
    # @!attribute [rw] usage
    #   The deprecated version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] replaced_with
    #   The newer version of the resource to migrate to if applicable.
    #   @return [String]
    #
    # @!attribute [rw] stop_serving_version
    #   The version of the software where the deprecated resource version
    #   will stop being served.
    #   @return [String]
    #
    # @!attribute [rw] start_serving_replacement_version
    #   The version of the software where the newer resource version became
    #   available to migrate to if applicable.
    #   @return [String]
    #
    # @!attribute [rw] client_stats
    #   Details about Kubernetes clients using the deprecated resources.
    #   @return [Array<Types::ClientStat>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeprecationDetail AWS API Documentation
    #
    class DeprecationDetail < Struct.new(
      :usage,
      :replaced_with,
      :stop_serving_version,
      :start_serving_replacement_version,
      :client_stats)
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

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAccessEntryRequest AWS API Documentation
    #
    class DescribeAccessEntryRequest < Struct.new(
      :cluster_name,
      :principal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_entry
    #   Information about the access entry.
    #   @return [Types::AccessEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAccessEntryResponse AWS API Documentation
    #
    class DescribeAccessEntryResponse < Struct.new(
      :access_entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by `DescribeAddonVersions`.
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
    #   A JSON schema that's used to validate the configuration values you
    #   provide when an add-on is created or updated.
    #   @return [String]
    #
    # @!attribute [rw] pod_identity_configuration
    #   The Kubernetes service account name used by the add-on, and any
    #   suggested IAM policies. Use this information to create an IAM Role
    #   for the add-on.
    #   @return [Array<Types::AddonPodIdentityConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonConfigurationResponse AWS API Documentation
    #
    class DescribeAddonConfigurationResponse < Struct.new(
      :addon_name,
      :addon_version,
      :configuration_schema,
      :pod_identity_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
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
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
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
    #   The `nextToken` value to include in a future `DescribeAddonVersions`
    #   request. When the results of a `DescribeAddonVersions` request
    #   exceed `maxResults`, you can use this value to retrieve the next
    #   page of results. This value is `null` when there are no more results
    #   to return.
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
    #   The name of your cluster.
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

    # @!attribute [rw] cluster_type
    #   The type of cluster to filter versions by.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] default_only
    #   Filter to show only default versions.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_all
    #   Include all available versions in the response.
    #   @return [Boolean]
    #
    # @!attribute [rw] cluster_versions
    #   List of specific cluster versions to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   This field is deprecated. Use `versionStatus` instead, as that field
    #   matches for input and output of this action.
    #
    #   Filter versions by their current status.
    #   @return [String]
    #
    # @!attribute [rw] version_status
    #   Filter versions by their current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeClusterVersionsRequest AWS API Documentation
    #
    class DescribeClusterVersionsRequest < Struct.new(
      :cluster_type,
      :max_results,
      :next_token,
      :default_only,
      :include_all,
      :cluster_versions,
      :status,
      :version_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] cluster_versions
    #   List of cluster version information objects.
    #   @return [Array<Types::ClusterVersionInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeClusterVersionsResponse AWS API Documentation
    #
    class DescribeClusterVersionsResponse < Struct.new(
      :next_token,
      :cluster_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeEksAnywhereSubscriptionRequest AWS API Documentation
    #
    class DescribeEksAnywhereSubscriptionRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The full description of the subscription.
    #   @return [Types::EksAnywhereSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeEksAnywhereSubscriptionResponse AWS API Documentation
    #
    class DescribeEksAnywhereSubscriptionResponse < Struct.new(
      :subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
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
    #   The name of your cluster.
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
    #   The name of the cluster to describe the insight for.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identity of the insight to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeInsightRequest AWS API Documentation
    #
    class DescribeInsightRequest < Struct.new(
      :cluster_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insight
    #   The full description of the insight.
    #   @return [Types::Insight]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeInsightResponse AWS API Documentation
    #
    class DescribeInsightResponse < Struct.new(
      :insight)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster associated with the insights refresh
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeInsightsRefreshRequest AWS API Documentation
    #
    class DescribeInsightsRefreshRequest < Struct.new(
      :cluster_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The message associated with the insights refresh operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the insights refresh operation.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time when the insights refresh operation started.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time when the insights refresh operation ended.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeInsightsRefreshResponse AWS API Documentation
    #
    class DescribeInsightsRefreshResponse < Struct.new(
      :message,
      :status,
      :started_at,
      :ended_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
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

    # @!attribute [rw] cluster_name
    #   The name of the cluster that the association is in.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID of the association that you want the description of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribePodIdentityAssociationRequest AWS API Documentation
    #
    class DescribePodIdentityAssociationRequest < Struct.new(
      :cluster_name,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association
    #   The full description of the EKS Pod Identity association.
    #   @return [Types::PodIdentityAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribePodIdentityAssociationResponse AWS API Documentation
    #
    class DescribePodIdentityAssociationResponse < Struct.new(
      :association)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update request.
    #
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
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN of the policy to disassociate from the access entry. For a
    #   list of associated policies ARNs, use
    #   `ListAssociatedAccessPolicies`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DisassociateAccessPolicyRequest AWS API Documentation
    #
    class DisassociateAccessPolicyRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DisassociateAccessPolicyResponse AWS API Documentation
    #
    class DisassociateAccessPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
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

    # An EKS Anywhere subscription authorizing the customer to support for
    # licensed clusters and access to EKS Anywhere Curated Packages.
    #
    # @!attribute [rw] id
    #   UUID identifying a subscription.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the subscription.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp in seconds for when the subscription was created.
    #   @return [Time]
    #
    # @!attribute [rw] effective_date
    #   The Unix timestamp in seconds for when the subscription is
    #   effective.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The Unix timestamp in seconds for when the subscription will expire
    #   or auto renew, depending on the auto renew configuration of the
    #   subscription object.
    #   @return [Time]
    #
    # @!attribute [rw] license_quantity
    #   The number of licenses included in a subscription. Valid values are
    #   between 1 and 100.
    #   @return [Integer]
    #
    # @!attribute [rw] license_type
    #   The type of licenses included in the subscription. Valid value is
    #   CLUSTER. With the CLUSTER license type, each license covers support
    #   for a single EKS Anywhere cluster.
    #   @return [String]
    #
    # @!attribute [rw] term
    #   An EksAnywhereSubscriptionTerm object.
    #   @return [Types::EksAnywhereSubscriptionTerm]
    #
    # @!attribute [rw] status
    #   The status of a subscription.
    #   @return [String]
    #
    # @!attribute [rw] auto_renew
    #   A boolean indicating whether or not a subscription will auto renew
    #   when it expires.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_arns
    #   Amazon Web Services License Manager ARN associated with the
    #   subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] licenses
    #   Includes all of the claims in the license token necessary to
    #   validate the license for extended support.
    #   @return [Array<Types::License>]
    #
    # @!attribute [rw] tags
    #   The metadata for a subscription to assist with categorization and
    #   organization. Each tag consists of a key and an optional value.
    #   Subscription tags do not propagate to any other resources associated
    #   with the subscription.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/EksAnywhereSubscription AWS API Documentation
    #
    class EksAnywhereSubscription < Struct.new(
      :id,
      :arn,
      :created_at,
      :effective_date,
      :expiration_date,
      :license_quantity,
      :license_type,
      :term,
      :status,
      :auto_renew,
      :license_arns,
      :licenses,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the term duration and term unit type of your
    # subscription. This determines the term length of your subscription.
    # Valid values are MONTHS for term unit and 12 or 36 for term duration,
    # indicating a 12 month or 36 month subscription.
    #
    # @!attribute [rw] duration
    #   The duration of the subscription term. Valid values are 12 and 36,
    #   indicating a 12 month or 36 month subscription.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The term unit of the subscription. Valid value is `MONTHS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/EksAnywhereSubscriptionTerm AWS API Documentation
    #
    class EksAnywhereSubscriptionTerm < Struct.new(
      :duration,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the current configuration of the load balancing capability
    # on your EKS Auto Mode cluster. For example, if the capability is
    # enabled or disabled. For more information, see EKS Auto Mode load
    # balancing capability in the *Amazon EKS User Guide*.
    #
    # @!attribute [rw] enabled
    #   Indicates if the load balancing capability is enabled on your EKS
    #   Auto Mode cluster. If the load balancing capability is enabled, EKS
    #   Auto Mode will create and delete load balancers in your Amazon Web
    #   Services account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ElasticLoadBalancing AWS API Documentation
    #
    class ElasticLoadBalancing < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption configuration for the cluster.
    #
    # @!attribute [rw] resources
    #   Specifies the resources to be encrypted. The only supported value is
    #   `secrets`.
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
    #     have any available IP addresses.
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
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp at object creation.
    #   @return [Time]
    #
    # @!attribute [rw] pod_execution_role_arn
    #   The Amazon Resource Name (ARN) of the `Pod` execution role to use
    #   for any `Pod` that matches the selectors in the Fargate profile. For
    #   more information, see [ `Pod` execution role][1] in the *Amazon EKS
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The IDs of subnets to launch a `Pod` into.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selectors
    #   The selectors to match for a `Pod` to use this Fargate profile.
    #   @return [Array<Types::FargateProfileSelector>]
    #
    # @!attribute [rw] status
    #   The current status of the Fargate profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] health
    #   The health status of the Fargate profile. If there are issues with
    #   your Fargate profile's health, they are listed here.
    #   @return [Types::FargateProfileHealth]
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
      :tags,
      :health)
      SENSITIVE = []
      include Aws::Structure
    end

    # The health status of the Fargate profile. If there are issues with
    # your Fargate profile's health, they are listed here.
    #
    # @!attribute [rw] issues
    #   Any issues that are associated with the Fargate profile.
    #   @return [Array<Types::FargateProfileIssue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/FargateProfileHealth AWS API Documentation
    #
    class FargateProfileHealth < Struct.new(
      :issues)
      SENSITIVE = []
      include Aws::Structure
    end

    # An issue that is associated with the Fargate profile.
    #
    # @!attribute [rw] code
    #   A brief description of the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message associated with the issue.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   The Amazon Web Services resources that are affected by this issue.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/FargateProfileIssue AWS API Documentation
    #
    class FargateProfileIssue < Struct.new(
      :code,
      :message,
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Fargate profile selector.
    #
    # @!attribute [rw] namespace
    #   The Kubernetes `namespace` that the selector should match.
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

    # A check that provides recommendations to remedy potential
    # upgrade-impacting issues.
    #
    # @!attribute [rw] id
    #   The ID of the insight.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the insight.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the insight.
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_version
    #   The Kubernetes minor version associated with an insight if
    #   applicable.
    #   @return [String]
    #
    # @!attribute [rw] last_refresh_time
    #   The time Amazon EKS last successfully completed a refresh of this
    #   insight check on the cluster.
    #   @return [Time]
    #
    # @!attribute [rw] last_transition_time
    #   The time the status of the insight last changed.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the insight which includes alert criteria,
    #   remediation recommendation, and additional resources (contains
    #   Markdown).
    #   @return [String]
    #
    # @!attribute [rw] insight_status
    #   An object containing more detail on the status of the insight
    #   resource.
    #   @return [Types::InsightStatus]
    #
    # @!attribute [rw] recommendation
    #   A summary of how to remediate the finding of this insight if
    #   applicable.
    #   @return [String]
    #
    # @!attribute [rw] additional_info
    #   Links to sources that provide additional context on the insight.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resources
    #   The details about each resource listed in the insight check result.
    #   @return [Array<Types::InsightResourceDetail>]
    #
    # @!attribute [rw] category_specific_summary
    #   Summary information that relates to the category of the insight.
    #   Currently only returned with certain insights having category
    #   `UPGRADE_READINESS`.
    #   @return [Types::InsightCategorySpecificSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Insight AWS API Documentation
    #
    class Insight < Struct.new(
      :id,
      :name,
      :category,
      :kubernetes_version,
      :last_refresh_time,
      :last_transition_time,
      :description,
      :insight_status,
      :recommendation,
      :additional_info,
      :resources,
      :category_specific_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information that relates to the category of the insight.
    # Currently only returned with certain insights having category
    # `UPGRADE_READINESS`.
    #
    # @!attribute [rw] deprecation_details
    #   The summary information about deprecated resource usage for an
    #   insight check in the `UPGRADE_READINESS` category.
    #   @return [Array<Types::DeprecationDetail>]
    #
    # @!attribute [rw] addon_compatibility_details
    #   A list of `AddonCompatibilityDetail` objects for Amazon EKS add-ons.
    #   @return [Array<Types::AddonCompatibilityDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InsightCategorySpecificSummary AWS API Documentation
    #
    class InsightCategorySpecificSummary < Struct.new(
      :deprecation_details,
      :addon_compatibility_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the resource being evaluated.
    #
    # @!attribute [rw] insight_status
    #   An object containing more detail on the status of the insight
    #   resource.
    #   @return [Types::InsightStatus]
    #
    # @!attribute [rw] kubernetes_resource_uri
    #   The Kubernetes resource URI if applicable.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InsightResourceDetail AWS API Documentation
    #
    class InsightResourceDetail < Struct.new(
      :insight_status,
      :kubernetes_resource_uri,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the insight.
    #
    # @!attribute [rw] status
    #   The status of the resource.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Explanation on the reasoning for the status of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InsightStatus AWS API Documentation
    #
    class InsightStatus < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summarized description of the insight.
    #
    # @!attribute [rw] id
    #   The ID of the insight.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the insight.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the insight.
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_version
    #   The Kubernetes minor version associated with an insight if
    #   applicable.
    #   @return [String]
    #
    # @!attribute [rw] last_refresh_time
    #   The time Amazon EKS last successfully completed a refresh of this
    #   insight check on the cluster.
    #   @return [Time]
    #
    # @!attribute [rw] last_transition_time
    #   The time the status of the insight last changed.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the insight which includes alert criteria,
    #   remediation recommendation, and additional resources (contains
    #   Markdown).
    #   @return [String]
    #
    # @!attribute [rw] insight_status
    #   An object containing more detail on the status of the insight.
    #   @return [Types::InsightStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InsightSummary AWS API Documentation
    #
    class InsightSummary < Struct.new(
      :id,
      :name,
      :category,
      :kubernetes_version,
      :last_refresh_time,
      :last_transition_time,
      :description,
      :insight_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria to use for the insights.
    #
    # @!attribute [rw] categories
    #   The categories to use to filter insights. The following lists the
    #   available categories:
    #
    #   * `UPGRADE_READINESS`: Amazon EKS identifies issues that could
    #     impact your ability to upgrade to new versions of Kubernetes.
    #     These are called upgrade insights.
    #
    #   * `MISCONFIGURATION`: Amazon EKS identifies misconfiguration in your
    #     EKS Hybrid Nodes setup that could impair functionality of your
    #     cluster or workloads. These are called configuration insights.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kubernetes_versions
    #   The Kubernetes versions to use to filter the insights.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statuses
    #   The statuses to use to filter the insights.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InsightsFilter AWS API Documentation
    #
    class InsightsFilter < Struct.new(
      :categories,
      :kubernetes_versions,
      :statuses)
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
    #   The specified parameter for the add-on name is invalid. Review the
    #   available parameters for the API request
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The Amazon EKS subscription ID with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The specified parameter is invalid. Review the available parameters
    #   for the API request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :fargate_profile_name,
      :addon_name,
      :subscription_id,
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
    #   The request is invalid given the state of the add-on name. Check the
    #   state of the cluster and the associated operations.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The Amazon EKS subscription ID with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The Amazon EKS add-on name associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :subscription_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon EKS detected upgrade readiness issues. Call the [
    # `ListInsights` ][1] API to view detected upgrade blocking issues. Pass
    # the [ `force` ][2] flag when updating to override upgrade readiness
    # errors.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListInsights.html
    # [2]: https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateClusterVersion.html#API_UpdateClusterVersion_RequestBody
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Struct.new(
      :cluster_name,
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
    #   * **Ec2InstanceTypeDoesNotExist**: One or more of the supplied
    #     Amazon EC2 instance types do not exist. Amazon EKS checked for the
    #     instance types that you provided in this Amazon Web Services
    #     Region, and one or more aren't available.
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
    #     See [Modifying the public `IPv4` addressing attribute for your
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
    #   * Between `/24` and `/12`.
    #
    #   You can only specify a custom CIDR block when you create a cluster.
    #   You can't change this value after the cluster is created.
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
    #   pods and services][1] in the *Amazon EKS User Guide*. Kubernetes
    #   assigns services `IPv6` addresses from the unique local address
    #   range `(fc00::/7)`. You can't specify a custom `IPv6` CIDR block.
    #   Pod addresses are assigned from the subnet's `IPv6` CIDR.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cni-ipv6.html
    #   @return [String]
    #
    # @!attribute [rw] elastic_load_balancing
    #   Request to enable or disable the load balancing capability on your
    #   EKS Auto Mode cluster. For more information, see EKS Auto Mode load
    #   balancing capability in the *Amazon EKS User Guide*.
    #   @return [Types::ElasticLoadBalancing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/KubernetesNetworkConfigRequest AWS API Documentation
    #
    class KubernetesNetworkConfigRequest < Struct.new(
      :service_ipv_4_cidr,
      :ip_family,
      :elastic_load_balancing)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Kubernetes network configuration for the cluster. The response
    # contains a value for **serviceIpv6Cidr** or **serviceIpv4Cidr**, but
    # not both.
    #
    # @!attribute [rw] service_ipv_4_cidr
    #   The CIDR block that Kubernetes `Pod` and `Service` object IP
    #   addresses are assigned from. Kubernetes assigns addresses from an
    #   `IPv4` CIDR block assigned to a subnet that the node is in. If you
    #   didn't specify a CIDR block when you created the cluster, then
    #   Kubernetes assigns addresses from either the `10.100.0.0/16` or
    #   `172.20.0.0/16` CIDR blocks. If this was specified, then it was
    #   specified when the cluster was created and it can't be changed.
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
    #   The IP family used to assign Kubernetes `Pod` and `Service` objects
    #   IP addresses. The IP family is always `ipv4`, unless you have a
    #   `1.21` or later cluster running version `1.10.1` or later of the
    #   Amazon VPC CNI plugin for Kubernetes and specified `ipv6` when you
    #   created the cluster.
    #   @return [String]
    #
    # @!attribute [rw] elastic_load_balancing
    #   Indicates the current configuration of the load balancing capability
    #   on your EKS Auto Mode cluster. For example, if the capability is
    #   enabled or disabled.
    #   @return [Types::ElasticLoadBalancing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/KubernetesNetworkConfigResponse AWS API Documentation
    #
    class KubernetesNetworkConfigResponse < Struct.new(
      :service_ipv_4_cidr,
      :service_ipv_6_cidr,
      :ip_family,
      :elastic_load_balancing)
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
    # Amazon EKS, see [Customizing managed nodes with launch templates][7]
    # in the *Amazon EKS User Guide*.
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
    #   template ID in the request, but not both. After node group creation,
    #   you cannot use a different name.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the launch template to use. If no version is
    #   specified, then the template's default version is used. You can use
    #   a different version for node group updates.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the launch template.
    #
    #   You must specify either the launch template ID or the launch
    #   template name in the request, but not both. After node group
    #   creation, you cannot use a different ID.
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

    # An EKS Anywhere license associated with a subscription.
    #
    # @!attribute [rw] id
    #   An id associated with an EKS Anywhere subscription license.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   An optional license token that can be used for extended support
    #   verification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/License AWS API Documentation
    #
    class License < Struct.new(
      :id,
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] associated_policy_arn
    #   The ARN of an `AccessPolicy`. When you specify an access policy ARN,
    #   only the access entries associated to that access policy are
    #   returned. For a list of available policy ARNs, use
    #   `ListAccessPolicies`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAccessEntriesRequest AWS API Documentation
    #
    class ListAccessEntriesRequest < Struct.new(
      :cluster_name,
      :associated_policy_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_entries
    #   The list of access entries that exist for the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAccessEntriesResponse AWS API Documentation
    #
    class ListAccessEntriesResponse < Struct.new(
      :access_entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAccessPoliciesRequest AWS API Documentation
    #
    class ListAccessPoliciesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_policies
    #   The list of available access policies. You can't view the contents
    #   of an access policy using the API. To view the contents, see [Access
    #   policy permissions][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/access-policies.html#access-policy-permissions
    #   @return [Array<Types::AccessPolicy>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAccessPoliciesResponse AWS API Documentation
    #
    class ListAccessPoliciesResponse < Struct.new(
      :access_policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
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
    #   A list of installed add-ons.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListAddons` request.
    #   When the results of a `ListAddons` request exceed `maxResults`, you
    #   can use this value to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
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

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAssociatedAccessPoliciesRequest AWS API Documentation
    #
    class ListAssociatedAccessPoliciesRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] associated_access_policies
    #   The list of access policies associated with the access entry.
    #   @return [Array<Types::AssociatedAccessPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAssociatedAccessPoliciesResponse AWS API Documentation
    #
    class ListAssociatedAccessPoliciesResponse < Struct.new(
      :cluster_name,
      :principal_arn,
      :next_token,
      :associated_access_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
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
    #   list. Use '`all`' to return
    #   [https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html][1]connected
    #   clusters, or blank to return only Amazon EKS clusters. '`all`'
    #   must be in lowercase otherwise an error occurs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html
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
    #   Amazon Web Services Region .
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
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

    # @!attribute [rw] max_results
    #   The maximum number of cluster results returned by
    #   ListEksAnywhereSubscriptions in paginated output. When you use this
    #   parameter, ListEksAnywhereSubscriptions returns only maxResults
    #   results in a single page along with a nextToken response element.
    #   You can see the remaining results of the initial request by sending
    #   another ListEksAnywhereSubscriptions request with the returned
    #   nextToken value. This value can be between 1 and 100. If you don't
    #   use this parameter, ListEksAnywhereSubscriptions returns up to 10
    #   results and a nextToken value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListEksAnywhereSubscriptions` request where `maxResults` was used
    #   and the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value.
    #   @return [String]
    #
    # @!attribute [rw] include_status
    #   An array of subscription statuses to filter on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListEksAnywhereSubscriptionsRequest AWS API Documentation
    #
    class ListEksAnywhereSubscriptionsRequest < Struct.new(
      :max_results,
      :next_token,
      :include_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriptions
    #   A list of all subscription objects in the region, filtered by
    #   includeStatus and paginated by nextToken and maxResults.
    #   @return [Array<Types::EksAnywhereSubscription>]
    #
    # @!attribute [rw] next_token
    #   The nextToken value to include in a future
    #   ListEksAnywhereSubscriptions request. When the results of a
    #   ListEksAnywhereSubscriptions request exceed maxResults, you can use
    #   this value to retrieve the next page of results. This value is null
    #   when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListEksAnywhereSubscriptionsResponse AWS API Documentation
    #
    class ListEksAnywhereSubscriptionsResponse < Struct.new(
      :subscriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
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
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
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
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
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
    #   The `nextToken` value to include in a future
    #   `ListIdentityProviderConfigsResponse` request. When the results of a
    #   `ListIdentityProviderConfigsResponse` request exceed `maxResults`,
    #   you can use this value to retrieve the next page of results. This
    #   value is `null` when there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
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
    #   The name of the Amazon EKS cluster associated with the insights.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   The criteria to filter your list of insights for your cluster. You
    #   can filter which insights are returned by category, associated
    #   Kubernetes version, and status.
    #   @return [Types::InsightsFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of identity provider configurations returned by
    #   `ListInsights` in paginated output. When you use this parameter,
    #   `ListInsights` returns only `maxResults` results in a single page
    #   along with a `nextToken` response element. You can see the remaining
    #   results of the initial request by sending another `ListInsights`
    #   request with the returned `nextToken` value. This value can be
    #   between 1 and 100. If you don't use this parameter, `ListInsights`
    #   returns up to 100 results and a `nextToken` value, if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListInsights` request. When the results of a `ListInsights` request
    #   exceed `maxResults`, you can use this value to retrieve the next
    #   page of results. This value is `null` when there are no more results
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListInsightsRequest AWS API Documentation
    #
    class ListInsightsRequest < Struct.new(
      :cluster_name,
      :filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insights
    #   The returned list of insights.
    #   @return [Array<Types::InsightSummary>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListInsights` request.
    #   When the results of a `ListInsights` request exceed `maxResults`,
    #   you can use this value to retrieve the next page of results. This
    #   value is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListInsightsResponse AWS API Documentation
    #
    class ListInsightsResponse < Struct.new(
      :insights,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
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
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
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

    # @!attribute [rw] cluster_name
    #   The name of the cluster that the associations are in.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the Kubernetes namespace inside the cluster that the
    #   associations are in.
    #   @return [String]
    #
    # @!attribute [rw] service_account
    #   The name of the Kubernetes service account that the associations
    #   use.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of EKS Pod Identity association results returned
    #   by `ListPodIdentityAssociations` in paginated output. When you use
    #   this parameter, `ListPodIdentityAssociations` returns only
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListPodIdentityAssociations` request
    #   with the returned `nextToken` value. This value can be between 1 and
    #   100. If you don't use this parameter, `ListPodIdentityAssociations`
    #   returns up to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListUpdates` request where `maxResults` was used and the results
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListPodIdentityAssociationsRequest AWS API Documentation
    #
    class ListPodIdentityAssociationsRequest < Struct.new(
      :cluster_name,
      :namespace,
      :service_account,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associations
    #   The list of summarized descriptions of the associations that are in
    #   the cluster and match any filters that you provided.
    #
    #   Each summary is simplified by removing these fields compared to the
    #   full [ `PodIdentityAssociation` ][1]:
    #
    #   * The IAM role: `roleArn`
    #
    #   * The timestamp that the association was created at: `createdAt`
    #
    #   * The most recent timestamp that the association was modified at:.
    #     `modifiedAt`
    #
    #   * The tags on the association: `tags`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_PodIdentityAssociation.html
    #   @return [Array<Types::PodIdentityAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `ListPodIdentityAssociations` request. When the results of a
    #   `ListPodIdentityAssociations` request exceed `maxResults`, you can
    #   use this value to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListPodIdentityAssociationsResponse AWS API Documentation
    #
    class ListPodIdentityAssociationsResponse < Struct.new(
      :associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   tags for.
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
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results, returned in paginated output. You
    #   receive `maxResults` in a single page, along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, 100 results and a `nextToken` value, if applicable, are
    #   returned.
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
    #   The `nextToken` value returned from a previous paginated request,
    #   where `maxResults` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is null when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
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
    #   logs to CloudWatch Logs . If a log type isn't enabled, that log
    #   type doesn't export its control plane logs. Each individual log
    #   type can be enabled or disabled independently.
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

    # The node auto repair configuration for the node group.
    #
    # @!attribute [rw] enabled
    #   Specifies whether to enable node auto repair for the node group.
    #   Node auto repair is disabled by default.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/NodeRepairConfig AWS API Documentation
    #
    class NodeRepairConfig < Struct.new(
      :enabled)
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
    #   The name of your cluster.
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
    #   The Unix epoch timestamp at object creation.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The Unix epoch timestamp for the last modification to the object.
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
    #   The Kubernetes `labels` applied to the nodes in the node group.
    #
    #   <note markdown="1"> Only `labels` that are applied with the Amazon EKS API are shown
    #   here. There may be other Kubernetes `labels` applied to the nodes in
    #   this group.
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
    # @!attribute [rw] node_repair_config
    #   The node auto repair configuration for the node group.
    #   @return [Types::NodeRepairConfig]
    #
    # @!attribute [rw] launch_template
    #   If a launch template was used to create the node group, then this is
    #   the launch template that was used.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
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
      :node_repair_config,
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
    #   If you use the Kubernetes [Cluster Autoscaler][1], you shouldn't
    #   change the `desiredSize` value directly, as this can cause the
    #   Cluster Autoscaler to suddenly scale up or scale down.
    #
    #   Whenever this parameter changes, the number of worker nodes in the
    #   node group is updated to the specified size. If this parameter is
    #   given a value that is smaller than the current number of running
    #   worker nodes, the necessary number of worker nodes are terminated to
    #   match the given value. When using CloudFormation, no action occurs
    #   if you remove this parameter from your CFN template.
    #
    #   This parameter can be different from `minSize` in some cases, such
    #   as when starting with extra hosts for testing. This parameter can
    #   also be different when you want to start with an estimated number of
    #   needed hosts, but let the Cluster Autoscaler reduce the number if
    #   there are too many. When the Cluster Autoscaler is used, the
    #   `desiredSize` parameter is altered by the Cluster Autoscaler (but
    #   can be out-of-date for short periods of time). the Cluster
    #   Autoscaler doesn't scale a managed node group lower than `minSize`
    #   or higher than `maxSize`.
    #
    #
    #
    #   [1]: https://github.com/kubernetes/autoscaler#kubernetes-autoscaler
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

    # The node group update configuration. An Amazon EKS managed node group
    # updates by replacing nodes with new nodes of newer AMI versions in
    # parallel. You choose the *maximum unavailable* and the *update
    # strategy*.
    #
    # @!attribute [rw] max_unavailable
    #   The maximum number of nodes unavailable at once during a version
    #   update. Nodes are updated in parallel. This value or
    #   `maxUnavailablePercentage` is required to have a value.The maximum
    #   number is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] max_unavailable_percentage
    #   The maximum percentage of nodes unavailable during a version update.
    #   This percentage of nodes are updated in parallel, up to 100 nodes at
    #   once. This value or `maxUnavailable` is required to have a value.
    #   @return [Integer]
    #
    # @!attribute [rw] update_strategy
    #   The configuration for the behavior to follow during a node group
    #   version update of this managed node group. You choose between two
    #   possible strategies for replacing nodes during an [
    #   `UpdateNodegroupVersion` ][1] action.
    #
    #   An Amazon EKS managed node group updates by replacing nodes with new
    #   nodes of newer AMI versions in parallel. The *update strategy*
    #   changes the managed node update behavior of the managed node group
    #   for each quantity. The *default* strategy has guardrails to protect
    #   you from misconfiguration and launches the new instances first,
    #   before terminating the old instances. The *minimal* strategy removes
    #   the guardrails and terminates the old instances before launching the
    #   new instances. This minimal strategy is useful in scenarios where
    #   you are constrained to resources or costs (for example, with
    #   hardware accelerators such as GPUs).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateNodegroupVersion.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/NodegroupUpdateConfig AWS API Documentation
    #
    class NodegroupUpdateConfig < Struct.new(
      :max_unavailable,
      :max_unavailable_percentage,
      :update_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service resource associated with the request could not be found.
    # Clients should not retry such requests.
    #
    # @!attribute [rw] message
    #   A service resource associated with the request could not be found.
    #   Clients should not retry such requests.
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
    #   The name of your cluster.
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
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
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
    # considerations in [Authenticating users for your cluster from an OIDC
    # identity provider][1] in the *Amazon EKS User Guide*.
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
    #   The URL of the OIDC identity provider that allows the API server to
    #   discover public signing keys for verifying tokens. The URL must
    #   begin with `https://` and should correspond to the `iss` claim in
    #   the provider's OIDC ID tokens. Based on the OIDC standard, path
    #   components are allowed but query parameters are not. Typically the
    #   URL consists of only a hostname, like `https://server.example.org`
    #   or `https://example.com`. This URL should point to the level below
    #   `.well-known/openid-configuration` and must be publicly accessible
    #   over the internet.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   This is also known as *audience*. The ID for the client application
    #   that makes authentication requests to the OIDC identity provider.
    #   @return [String]
    #
    # @!attribute [rw] username_claim
    #   The JSON Web Token (JWT) claim to use as the username. The default
    #   is `sub`, which is expected to be a unique identifier of the end
    #   user. You can choose other claims, such as `email` or `name`,
    #   depending on the OIDC identity provider. Claims other than `email`
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

    # Amazon EKS Pod Identity associations provide the ability to manage
    # credentials for your applications, similar to the way that Amazon EC2
    # instance profiles provide credentials to Amazon EC2 instances.
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster that the association is in.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the Kubernetes namespace inside the cluster to create
    #   the association in. The service account and the Pods that use the
    #   service account must be in this namespace.
    #   @return [String]
    #
    # @!attribute [rw] service_account
    #   The name of the Kubernetes service account inside the cluster to
    #   associate the IAM credentials with.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to associate with the
    #   service account. The EKS Pod Identity agent manages credentials to
    #   assume this role for applications in the containers in the Pods that
    #   use this service account.
    #   @return [String]
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource – 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length – 128 Unicode characters in UTF-8
    #
    #   * Maximum value length – 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp that the association was created at.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The most recent timestamp that the association was modified at.
    #   @return [Time]
    #
    # @!attribute [rw] owner_arn
    #   If defined, the EKS Pod Identity association is owned by an Amazon
    #   EKS add-on.
    #   @return [String]
    #
    # @!attribute [rw] disable_session_tags
    #   The state of the automatic sessions tags. The value of *true*
    #   disables these tags.
    #
    #   EKS Pod Identity adds a pre-defined set of session tags when it
    #   assumes the role. You can use these tags to author a single role
    #   that can work across resources by allowing access to Amazon Web
    #   Services resources based on matching tags. By default, EKS Pod
    #   Identity attaches six tags, including tags for cluster name,
    #   namespace, and service account name. For the list of tags added by
    #   EKS Pod Identity, see [List of session tags added by EKS Pod
    #   Identity][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/pod-id-abac.html#pod-id-abac-tags
    #   @return [Boolean]
    #
    # @!attribute [rw] target_role_arn
    #   The Amazon Resource Name (ARN) of the target IAM role to associate
    #   with the service account. This role is assumed by using the EKS Pod
    #   Identity association role, then the credentials for this role are
    #   injected into the Pod.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The unique identifier for this EKS Pod Identity association for a
    #   target IAM role. You put this value in the trust policy of the
    #   target role, in a `Condition` to match the `sts.ExternalId`. This
    #   ensures that the target role can only be assumed by this
    #   association. This prevents the *confused deputy problem*. For more
    #   information about the confused deputy problem, see [The confused
    #   deputy problem][1] in the *IAM User Guide*.
    #
    #   If you want to use the same target role with multiple associations
    #   or other roles, use independent statements in the trust policy to
    #   allow `sts:AssumeRole` access from each role.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/PodIdentityAssociation AWS API Documentation
    #
    class PodIdentityAssociation < Struct.new(
      :cluster_name,
      :namespace,
      :service_account,
      :role_arn,
      :association_arn,
      :association_id,
      :tags,
      :created_at,
      :modified_at,
      :owner_arn,
      :disable_session_tags,
      :target_role_arn,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summarized description of the association.
    #
    # Each summary is simplified by removing these fields compared to the
    # full [ `PodIdentityAssociation` ][1]:
    #
    # * The IAM role: `roleArn`
    #
    # * The timestamp that the association was created at: `createdAt`
    #
    # * The most recent timestamp that the association was modified at:.
    #   `modifiedAt`
    #
    # * The tags on the association: `tags`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_PodIdentityAssociation.html
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster that the association is in.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the Kubernetes namespace inside the cluster to create
    #   the association in. The service account and the Pods that use the
    #   service account must be in this namespace.
    #   @return [String]
    #
    # @!attribute [rw] service_account
    #   The name of the Kubernetes service account inside the cluster to
    #   associate the IAM credentials with.
    #   @return [String]
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) of the association.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] owner_arn
    #   If defined, the association is owned by an Amazon EKS add-on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/PodIdentityAssociationSummary AWS API Documentation
    #
    class PodIdentityAssociationSummary < Struct.new(
      :cluster_name,
      :namespace,
      :service_account,
      :association_arn,
      :association_id,
      :owner_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the Key Management Service (KMS) key used to encrypt the
    # secrets.
    #
    # @!attribute [rw] key_arn
    #   Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must
    #   be symmetric and created in the same Amazon Web Services Region as
    #   the cluster. If the KMS key was created in a different account, the
    #   [IAM principal][1] must have access to the KMS key. For more
    #   information, see [Allowing users in other accounts to use a KMS
    #   key][2] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html
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
    #   A unique name for this cluster in your Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] connector_config
    #   The configuration settings required to connect the Kubernetes
    #   cluster to the Amazon EKS control plane.
    #   @return [Types::ConnectorConfigRequest]
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
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
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

    # The configuration in the cluster for EKS Hybrid Nodes. You can add,
    # change, or remove this configuration after the cluster is created.
    #
    # @!attribute [rw] remote_node_networks
    #   The list of network CIDRs that can contain hybrid nodes.
    #
    #   These CIDR blocks define the expected IP address range of the hybrid
    #   nodes that join the cluster. These blocks are typically determined
    #   by your network administrator.
    #
    #   Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation
    #   (for example, ` 10.2.0.0/16`).
    #
    #   It must satisfy the following requirements:
    #
    #   * Each block must be within an `IPv4` RFC-1918 network range.
    #     Minimum allowed size is /32, maximum allowed size is /8.
    #     Publicly-routable addresses aren't supported.
    #
    #   * Each block cannot overlap with the range of the VPC CIDR blocks
    #     for your EKS resources, or the block of the Kubernetes service IP
    #     range.
    #
    #   * Each block must have a route to the VPC that uses the VPC CIDR
    #     blocks, not public IPs or Elastic IPs. There are many options
    #     including Transit Gateway, Site-to-Site VPN, or Direct Connect.
    #
    #   * Each host must allow outbound connection to the EKS cluster
    #     control plane on TCP ports `443` and `10250`.
    #
    #   * Each host must allow inbound connection from the EKS cluster
    #     control plane on TCP port 10250 for logs, exec and port-forward
    #     operations.
    #
    #   * Each host must allow TCP and UDP network connectivity to and from
    #     other hosts that are running `CoreDNS` on UDP port `53` for
    #     service and pod DNS names.
    #   @return [Array<Types::RemoteNodeNetwork>]
    #
    # @!attribute [rw] remote_pod_networks
    #   The list of network CIDRs that can contain pods that run Kubernetes
    #   webhooks on hybrid nodes.
    #
    #   These CIDR blocks are determined by configuring your Container
    #   Network Interface (CNI) plugin. We recommend the Calico CNI or
    #   Cilium CNI. Note that the Amazon VPC CNI plugin for Kubernetes
    #   isn't available for on-premises and edge locations.
    #
    #   Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation
    #   (for example, ` 10.2.0.0/16`).
    #
    #   It must satisfy the following requirements:
    #
    #   * Each block must be within an `IPv4` RFC-1918 network range.
    #     Minimum allowed size is /32, maximum allowed size is /8.
    #     Publicly-routable addresses aren't supported.
    #
    #   * Each block cannot overlap with the range of the VPC CIDR blocks
    #     for your EKS resources, or the block of the Kubernetes service IP
    #     range.
    #   @return [Array<Types::RemotePodNetwork>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/RemoteNetworkConfigRequest AWS API Documentation
    #
    class RemoteNetworkConfigRequest < Struct.new(
      :remote_node_networks,
      :remote_pod_networks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration in the cluster for EKS Hybrid Nodes. You can add,
    # change, or remove this configuration after the cluster is created.
    #
    # @!attribute [rw] remote_node_networks
    #   The list of network CIDRs that can contain hybrid nodes.
    #   @return [Array<Types::RemoteNodeNetwork>]
    #
    # @!attribute [rw] remote_pod_networks
    #   The list of network CIDRs that can contain pods that run Kubernetes
    #   webhooks on hybrid nodes.
    #   @return [Array<Types::RemotePodNetwork>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/RemoteNetworkConfigResponse AWS API Documentation
    #
    class RemoteNetworkConfigResponse < Struct.new(
      :remote_node_networks,
      :remote_pod_networks)
      SENSITIVE = []
      include Aws::Structure
    end

    # A network CIDR that can contain hybrid nodes.
    #
    # These CIDR blocks define the expected IP address range of the hybrid
    # nodes that join the cluster. These blocks are typically determined by
    # your network administrator.
    #
    # Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation
    # (for example, ` 10.2.0.0/16`).
    #
    # It must satisfy the following requirements:
    #
    # * Each block must be within an `IPv4` RFC-1918 network range. Minimum
    #   allowed size is /32, maximum allowed size is /8. Publicly-routable
    #   addresses aren't supported.
    #
    # * Each block cannot overlap with the range of the VPC CIDR blocks for
    #   your EKS resources, or the block of the Kubernetes service IP range.
    #
    # * Each block must have a route to the VPC that uses the VPC CIDR
    #   blocks, not public IPs or Elastic IPs. There are many options
    #   including Transit Gateway, Site-to-Site VPN, or Direct Connect.
    #
    # * Each host must allow outbound connection to the EKS cluster control
    #   plane on TCP ports `443` and `10250`.
    #
    # * Each host must allow inbound connection from the EKS cluster control
    #   plane on TCP port 10250 for logs, exec and port-forward operations.
    #
    # * Each host must allow TCP and UDP network connectivity to and from
    #   other hosts that are running `CoreDNS` on UDP port `53` for service
    #   and pod DNS names.
    #
    # @!attribute [rw] cidrs
    #   A network CIDR that can contain hybrid nodes.
    #
    #   These CIDR blocks define the expected IP address range of the hybrid
    #   nodes that join the cluster. These blocks are typically determined
    #   by your network administrator.
    #
    #   Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation
    #   (for example, ` 10.2.0.0/16`).
    #
    #   It must satisfy the following requirements:
    #
    #   * Each block must be within an `IPv4` RFC-1918 network range.
    #     Minimum allowed size is /32, maximum allowed size is /8.
    #     Publicly-routable addresses aren't supported.
    #
    #   * Each block cannot overlap with the range of the VPC CIDR blocks
    #     for your EKS resources, or the block of the Kubernetes service IP
    #     range.
    #
    #   * Each block must have a route to the VPC that uses the VPC CIDR
    #     blocks, not public IPs or Elastic IPs. There are many options
    #     including Transit Gateway, Site-to-Site VPN, or Direct Connect.
    #
    #   * Each host must allow outbound connection to the EKS cluster
    #     control plane on TCP ports `443` and `10250`.
    #
    #   * Each host must allow inbound connection from the EKS cluster
    #     control plane on TCP port 10250 for logs, exec and port-forward
    #     operations.
    #
    #   * Each host must allow TCP and UDP network connectivity to and from
    #     other hosts that are running `CoreDNS` on UDP port `53` for
    #     service and pod DNS names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/RemoteNodeNetwork AWS API Documentation
    #
    class RemoteNodeNetwork < Struct.new(
      :cidrs)
      SENSITIVE = []
      include Aws::Structure
    end

    # A network CIDR that can contain pods that run Kubernetes webhooks on
    # hybrid nodes.
    #
    # These CIDR blocks are determined by configuring your Container Network
    # Interface (CNI) plugin. We recommend the Calico CNI or Cilium CNI.
    # Note that the Amazon VPC CNI plugin for Kubernetes isn't available
    # for on-premises and edge locations.
    #
    # Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation
    # (for example, ` 10.2.0.0/16`).
    #
    # It must satisfy the following requirements:
    #
    # * Each block must be within an `IPv4` RFC-1918 network range. Minimum
    #   allowed size is /32, maximum allowed size is /8. Publicly-routable
    #   addresses aren't supported.
    #
    # * Each block cannot overlap with the range of the VPC CIDR blocks for
    #   your EKS resources, or the block of the Kubernetes service IP range.
    #
    # @!attribute [rw] cidrs
    #   A network CIDR that can contain pods that run Kubernetes webhooks on
    #   hybrid nodes.
    #
    #   These CIDR blocks are determined by configuring your Container
    #   Network Interface (CNI) plugin. We recommend the Calico CNI or
    #   Cilium CNI. Note that the Amazon VPC CNI plugin for Kubernetes
    #   isn't available for on-premises and edge locations.
    #
    #   Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation
    #   (for example, ` 10.2.0.0/16`).
    #
    #   It must satisfy the following requirements:
    #
    #   * Each block must be within an `IPv4` RFC-1918 network range.
    #     Minimum allowed size is /32, maximum allowed size is /8.
    #     Publicly-routable addresses aren't supported.
    #
    #   * Each block cannot overlap with the range of the VPC CIDR blocks
    #     for your EKS resources, or the block of the Kubernetes service IP
    #     range.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/RemotePodNetwork AWS API Documentation
    #
    class RemotePodNetwork < Struct.new(
      :cidrs)
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
    #   The specified add-on name is in use.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The Amazon EKS message associated with the exception.
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
    # @!attribute [rw] subscription_id
    #   The Amazon EKS subscription ID with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The Amazon EKS message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :subscription_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource could not be found. You can view your available
    # clusters with `ListClusters`. You can view your available managed node
    # groups with `ListNodegroups`. Amazon EKS clusters and node groups are
    # Amazon Web Services Region specific.
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
    #   The Amazon EKS add-on name associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The Amazon EKS subscription ID with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The Amazon EKS message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :fargate_profile_name,
      :addon_name,
      :subscription_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Required resources (such as service-linked roles) were created and are
    # still propagating. Retry later.
    #
    # @!attribute [rw] message
    #   Required resources (such as service-linked roles) were created and
    #   are still propagating. Retry later.
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
    #   The Amazon EKS add-on name associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The Amazon EKS subscription ID with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   These errors are usually caused by a server-side issue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ServerException AWS API Documentation
    #
    class ServerException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :subscription_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is unavailable. Back off and retry the operation.
    #
    # @!attribute [rw] message
    #   The request has failed due to a temporary failure of the server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster for the refresh insights operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/StartInsightsRefreshRequest AWS API Documentation
    #
    class StartInsightsRefreshRequest < Struct.new(
      :cluster_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The message associated with the insights refresh operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the insights refresh operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/StartInsightsRefreshResponse AWS API Documentation
    #
    class StartInsightsRefreshResponse < Struct.new(
      :message,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to update the configuration of the storage capability of your
    # EKS Auto Mode cluster. For example, enable the capability. For more
    # information, see EKS Auto Mode block storage capability in the *Amazon
    # EKS User Guide*.
    #
    # @!attribute [rw] block_storage
    #   Request to configure EBS Block Storage settings for your EKS Auto
    #   Mode cluster.
    #   @return [Types::BlockStorage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/StorageConfigRequest AWS API Documentation
    #
    class StorageConfigRequest < Struct.new(
      :block_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the status of the request to update the block storage
    # capability of your EKS Auto Mode cluster.
    #
    # @!attribute [rw] block_storage
    #   Indicates the current configuration of the block storage capability
    #   on your EKS Auto Mode cluster. For example, if the capability is
    #   enabled or disabled.
    #   @return [Types::BlockStorage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/StorageConfigResponse AWS API Documentation
    #
    class StorageConfigResponse < Struct.new(
      :block_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
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

    # A property that allows a node to repel a `Pod`. For more information,
    # see [Node taints on managed node groups][1] in the *Amazon EKS User
    # Guide*.
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

    # The request or operation couldn't be performed because a service is
    # throttling requests.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :cluster_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # At least one of your specified cluster subnets is in an Availability
    # Zone that does not support Amazon EKS. The exception output specifies
    # the supported Availability Zones for your account, from which you can
    # choose subnets for your cluster.
    #
    # @!attribute [rw] message
    #   At least one of your specified cluster subnets is in an Availability
    #   Zone that does not support Amazon EKS. The exception output
    #   specifies the supported Availability Zones for your account, from
    #   which you can choose subnets for your cluster.
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
    #   The Amazon Resource Name (ARN) of the resource to delete tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove.
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
    #   The Unix epoch timestamp at object creation.
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

    # The access configuration information for the cluster.
    #
    # @!attribute [rw] authentication_mode
    #   The desired authentication mode for the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateAccessConfigRequest AWS API Documentation
    #
    class UpdateAccessConfigRequest < Struct.new(
      :authentication_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the IAM principal for the `AccessEntry`.
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_groups
    #   The value for `name` that you've specified for `kind: Group` as a
    #   `subject` in a Kubernetes `RoleBinding` or `ClusterRoleBinding`
    #   object. Amazon EKS doesn't confirm that the value for `name` exists
    #   in any bindings on your cluster. You can specify one or more names.
    #
    #   Kubernetes authorizes the `principalArn` of the access entry to
    #   access any cluster objects that you've specified in a Kubernetes
    #   `Role` or `ClusterRole` object that is also specified in a
    #   binding's `roleRef`. For more information about creating Kubernetes
    #   `RoleBinding`, `ClusterRoleBinding`, `Role`, or `ClusterRole`
    #   objects, see [Using RBAC Authorization in the Kubernetes
    #   documentation][1].
    #
    #   If you want Amazon EKS to authorize the `principalArn` (instead of,
    #   or in addition to Kubernetes authorizing the `principalArn`), you
    #   can associate one or more access policies to the access entry using
    #   `AssociateAccessPolicy`. If you associate any access policies, the
    #   `principalARN` has all permissions assigned in the associated access
    #   policies and all permissions in any Kubernetes `Role` or
    #   `ClusterRole` objects that the group names are bound to.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/reference/access-authn-authz/rbac/
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username to authenticate to Kubernetes with. We recommend not
    #   specifying a username and letting Amazon EKS specify it for you. For
    #   more information about the value Amazon EKS specifies for you, or
    #   constraints before specifying your own username, see [Creating
    #   access entries][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html#creating-access-entries
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateAccessEntryRequest AWS API Documentation
    #
    class UpdateAccessEntryRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      :kubernetes_groups,
      :client_request_token,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_entry
    #   The ARN of the IAM principal for the `AccessEntry`.
    #   @return [Types::AccessEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateAccessEntryResponse AWS API Documentation
    #
    class UpdateAccessEntryResponse < Struct.new(
      :access_entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster.
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
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] configuration_values
    #   The set of configuration values for the add-on that's created. The
    #   values that you provide are validated against the schema returned by
    #   `DescribeAddonConfiguration`.
    #   @return [String]
    #
    # @!attribute [rw] pod_identity_associations
    #   An array of EKS Pod Identity associations to be updated. Each
    #   association maps a Kubernetes service account to an IAM role. If
    #   this value is left blank, no change. If an empty array is provided,
    #   existing associations owned by the add-on are deleted.
    #
    #   For more information, see [Attach an IAM Role to an Amazon EKS
    #   add-on using EKS Pod Identity][1] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html
    #   @return [Array<Types::AddonPodIdentityAssociations>]
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
      :configuration_values,
      :pod_identity_associations)
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
    #   your cluster to CloudWatch Logs . By default, cluster control plane
    #   logs aren't exported to CloudWatch Logs . For more information, see
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
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] access_config
    #   The access configuration for the cluster.
    #   @return [Types::UpdateAccessConfigRequest]
    #
    # @!attribute [rw] upgrade_policy
    #   You can enable or disable extended support for clusters currently on
    #   standard support. You cannot disable extended support once it
    #   starts. You must enable extended support before your cluster exits
    #   standard support.
    #   @return [Types::UpgradePolicyRequest]
    #
    # @!attribute [rw] zonal_shift_config
    #   Enable or disable ARC zonal shift for the cluster. If zonal shift is
    #   enabled, Amazon Web Services configures zonal autoshift for the
    #   cluster.
    #
    #   Zonal shift is a feature of Amazon Application Recovery Controller
    #   (ARC). ARC zonal shift is designed to be a temporary measure that
    #   allows you to move traffic for a resource away from an impaired AZ
    #   until the zonal shift expires or you cancel it. You can extend the
    #   zonal shift if necessary.
    #
    #   You can start a zonal shift for an EKS cluster, or you can allow
    #   Amazon Web Services to do it for you by enabling *zonal autoshift*.
    #   This shift updates the flow of east-to-west network traffic in your
    #   cluster to only consider network endpoints for Pods running on
    #   worker nodes in healthy AZs. Additionally, any ALB or NLB handling
    #   ingress traffic for applications in your EKS cluster will
    #   automatically route traffic to targets in the healthy AZs. For more
    #   information about zonal shift in EKS, see [Learn about Amazon
    #   Application Recovery Controller (ARC) Zonal Shift in Amazon EKS][1]
    #   in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/zone-shift.html
    #   @return [Types::ZonalShiftConfigRequest]
    #
    # @!attribute [rw] compute_config
    #   Update the configuration of the compute capability of your EKS Auto
    #   Mode cluster. For example, enable the capability.
    #   @return [Types::ComputeConfigRequest]
    #
    # @!attribute [rw] kubernetes_network_config
    #   The Kubernetes network configuration for the cluster.
    #   @return [Types::KubernetesNetworkConfigRequest]
    #
    # @!attribute [rw] storage_config
    #   Update the configuration of the block storage capability of your EKS
    #   Auto Mode cluster. For example, enable the capability.
    #   @return [Types::StorageConfigRequest]
    #
    # @!attribute [rw] remote_network_config
    #   The configuration in the cluster for EKS Hybrid Nodes. You can add,
    #   change, or remove this configuration after the cluster is created.
    #   @return [Types::RemoteNetworkConfigRequest]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether to enable or disable deletion protection for the
    #   cluster. When enabled (`true`), the cluster cannot be deleted until
    #   deletion protection is explicitly disabled. When disabled (`false`),
    #   the cluster can be deleted normally.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterConfigRequest AWS API Documentation
    #
    class UpdateClusterConfigRequest < Struct.new(
      :name,
      :resources_vpc_config,
      :logging,
      :client_request_token,
      :access_config,
      :upgrade_policy,
      :zonal_shift_config,
      :compute_config,
      :kubernetes_network_config,
      :storage_config,
      :remote_network_config,
      :deletion_protection)
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
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Set this value to `true` to override upgrade-blocking readiness
    #   checks when updating a cluster.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterVersionRequest AWS API Documentation
    #
    class UpdateClusterVersionRequest < Struct.new(
      :name,
      :version,
      :client_request_token,
      :force)
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

    # @!attribute [rw] id
    #   The ID of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] auto_renew
    #   A boolean indicating whether or not to automatically renew the
    #   subscription.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier to ensure the idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateEksAnywhereSubscriptionRequest AWS API Documentation
    #
    class UpdateEksAnywhereSubscriptionRequest < Struct.new(
      :id,
      :auto_renew,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The full description of the updated subscription.
    #   @return [Types::EksAnywhereSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateEksAnywhereSubscriptionResponse AWS API Documentation
    #
    class UpdateEksAnywhereSubscriptionResponse < Struct.new(
      :subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a Kubernetes `label` change for a managed node
    # group.
    #
    # @!attribute [rw] add_or_update_labels
    #   The Kubernetes `labels` to add or update.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] remove_labels
    #   The Kubernetes `labels` to remove.
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
    #   The name of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the managed node group to update.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   The Kubernetes `labels` to apply to the nodes in the node group
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
    # @!attribute [rw] node_repair_config
    #   The node auto repair configuration for the node group.
    #   @return [Types::NodeRepairConfig]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
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
      :node_repair_config,
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
    #   The name of your cluster.
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
    #   with Amazon EKS, see [Customizing managed nodes with launch
    #   templates][1] in the *Amazon EKS User Guide*.
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
    #   with Amazon EKS, see [Customizing managed nodes with launch
    #   templates][3] in the *Amazon EKS User Guide*.
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
    #   template. When updating, you must specify the same launch template
    #   ID or name that was used to create the node group.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] force
    #   Force the update if any `Pod` on the existing node group can't be
    #   drained due to a `Pod` disruption budget issue. If an update fails
    #   because all Pods can't be drained, you can force the update after
    #   it fails to terminate the old node whether or not any `Pod` is
    #   running on the node.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
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

    # @!attribute [rw] cluster_name
    #   The name of the cluster that you want to update the association in.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID of the association to be updated.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The new IAM role to change in the association.
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
    # @!attribute [rw] disable_session_tags
    #   Disable the automatic sessions tags that are appended by EKS Pod
    #   Identity.
    #
    #   EKS Pod Identity adds a pre-defined set of session tags when it
    #   assumes the role. You can use these tags to author a single role
    #   that can work across resources by allowing access to Amazon Web
    #   Services resources based on matching tags. By default, EKS Pod
    #   Identity attaches six tags, including tags for cluster name,
    #   namespace, and service account name. For the list of tags added by
    #   EKS Pod Identity, see [List of session tags added by EKS Pod
    #   Identity][1] in the *Amazon EKS User Guide*.
    #
    #   Amazon Web Services compresses inline session policies, managed
    #   policy ARNs, and session tags into a packed binary format that has a
    #   separate limit. If you receive a `PackedPolicyTooLarge` error
    #   indicating the packed binary format has exceeded the size limit, you
    #   can attempt to reduce the size by disabling the session tags added
    #   by EKS Pod Identity.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/pod-id-abac.html#pod-id-abac-tags
    #   @return [Boolean]
    #
    # @!attribute [rw] target_role_arn
    #   The Amazon Resource Name (ARN) of the target IAM role to associate
    #   with the service account. This role is assumed by using the EKS Pod
    #   Identity association role, then the credentials for this role are
    #   injected into the Pod.
    #
    #   When you run applications on Amazon EKS, your application might need
    #   to access Amazon Web Services resources from a different role that
    #   exists in the same or different Amazon Web Services account. For
    #   example, your application running in “Account A” might need to
    #   access resources, such as buckets in “Account B” or within “Account
    #   A” itself. You can create a association to access Amazon Web
    #   Services resources in “Account B” by creating two IAM roles: a role
    #   in “Account A” and a role in “Account B” (which can be the same or
    #   different account), each with the necessary trust and permission
    #   policies. After you provide these roles in the *IAM role* and
    #   *Target IAM role* fields, EKS will perform role chaining to ensure
    #   your application gets the required permissions. This means Role A
    #   will assume Role B, allowing your Pods to securely access resources
    #   like S3 buckets in the target account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdatePodIdentityAssociationRequest AWS API Documentation
    #
    class UpdatePodIdentityAssociationRequest < Struct.new(
      :cluster_name,
      :association_id,
      :role_arn,
      :client_request_token,
      :disable_session_tags,
      :target_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association
    #   The full description of the association that was updated.
    #   @return [Types::PodIdentityAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdatePodIdentityAssociationResponse AWS API Documentation
    #
    class UpdatePodIdentityAssociationResponse < Struct.new(
      :association)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the details of an update to a taints payload.
    # For more information, see [Node taints on managed node groups][1] in
    # the *Amazon EKS User Guide*.
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

    # The support policy to use for the cluster. Extended support allows you
    # to remain on specific Kubernetes versions for longer. Clusters in
    # extended support have higher costs. The default value is `EXTENDED`.
    # Use `STANDARD` to disable extended support.
    #
    # [Learn more about EKS Extended Support in the *Amazon EKS User
    # Guide*.][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/extended-support-control.html
    #
    # @!attribute [rw] support_type
    #   If the cluster is set to `EXTENDED`, it will enter extended support
    #   at the end of standard support. If the cluster is set to `STANDARD`,
    #   it will be automatically upgraded at the end of standard support.
    #
    #   [Learn more about EKS Extended Support in the *Amazon EKS User
    #   Guide*.][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/extended-support-control.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpgradePolicyRequest AWS API Documentation
    #
    class UpgradePolicyRequest < Struct.new(
      :support_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This value indicates if extended support is enabled or disabled for
    # the cluster.
    #
    # [Learn more about EKS Extended Support in the *Amazon EKS User
    # Guide*.][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eks/latest/userguide/extended-support-control.html
    #
    # @!attribute [rw] support_type
    #   If the cluster is set to `EXTENDED`, it will enter extended support
    #   at the end of standard support. If the cluster is set to `STANDARD`,
    #   it will be automatically upgraded at the end of standard support.
    #
    #   [Learn more about EKS Extended Support in the *Amazon EKS User
    #   Guide*.][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/extended-support-control.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpgradePolicyResponse AWS API Documentation
    #
    class UpgradePolicyResponse < Struct.new(
      :support_type)
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
    #   API server. The endpoint domain name and IP address family depends
    #   on the value of the `ipFamily` for the cluster. For more
    #   information, see [Cluster API server endpoint][1] in the <i>
    #   <i>Amazon EKS User Guide</i> </i>.
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
    #   Fargate pods. For more information, see [Cluster API server
    #   endpoint][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
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
    #   default value is `0.0.0.0/0` and additionally `::/0` for dual-stack
    #   `IPv6` clusters. If you've disabled private endpoint access, make
    #   sure that you specify the necessary CIDR blocks for every node and
    #   Fargate `Pod` in the cluster. For more information, see [Cluster API
    #   server endpoint][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #   Note that the public endpoints are dual-stack for only `IPv6`
    #   clusters that are made after October 2024. You can't add `IPv6`
    #   CIDR blocks to `IPv4` clusters or `IPv6` clusters that were made
    #   before October 2024.
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
    #   Whether the public API server endpoint is enabled.
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
    #   or Fargate pods. For more information, see [Cluster API server
    #   endpoint][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
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
    #   default value is `0.0.0.0/0` and additionally `::/0` for dual-stack
    #   `IPv6` clusters. If you've disabled private endpoint access, make
    #   sure that you specify the necessary CIDR blocks for every node and
    #   Fargate `Pod` in the cluster. For more information, see [Cluster API
    #   server endpoint][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #   Note that the public endpoints are dual-stack for only `IPv6`
    #   clusters that are made after October 2024. You can't add `IPv6`
    #   CIDR blocks to `IPv4` clusters or `IPv6` clusters that were made
    #   before October 2024.
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

    # The configuration for zonal shift for the cluster.
    #
    # @!attribute [rw] enabled
    #   If zonal shift is enabled, Amazon Web Services configures zonal
    #   autoshift for the cluster.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ZonalShiftConfigRequest AWS API Documentation
    #
    class ZonalShiftConfigRequest < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of zonal shift configuration for the cluster
    #
    # @!attribute [rw] enabled
    #   Whether the zonal shift is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ZonalShiftConfigResponse AWS API Documentation
    #
    class ZonalShiftConfigResponse < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

