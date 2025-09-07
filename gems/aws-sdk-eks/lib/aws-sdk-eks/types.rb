# frozen_string_literal: true

# This is generated code!

module Aws::EKS
  # This module contains the types returned by client operations.
  module Types

    # <p>The access configuration for the cluster.</p>
    # @!attribute bootstrap_cluster_creator_admin_permissions
    #   <p>Specifies whether or not the cluster creator IAM principal was set as a cluster
    #               admin access entry during cluster creation time.</p>
    #   @return [Boolean]
    # @!attribute authentication_mode
    #   <p>The current authentication mode of the cluster.</p>
    #   @return [String]
    class AccessConfigResponse < Struct.new(
      :bootstrap_cluster_creator_admin_permissions,
      :authentication_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You don't have permissions to perform the requested operation. The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html">IAM principal</a>
    #             making the request must have at least one IAM permissions policy attached that grants
    #             the required permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access
    #                 management</a> in the <i>IAM User Guide</i>. </p>
    # @!attribute message
    #   <p>You do not have sufficient access to perform this action.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An access entry allows an IAM principal (user or role) to access your cluster.
    #             Access entries can replace the need to maintain the <code>aws-auth</code>
    #             <code>ConfigMap</code> for authentication. For more information about access entries,
    #             see <a href="https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html">Access
    #                 entries</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The ARN of the IAM principal for the access entry. If you ever delete the IAM
    #               principal with this ARN, the access entry isn't automatically deleted. We recommend
    #               that you delete the access entry with an ARN for an IAM principal that you delete.
    #               If you don't delete the access entry and ever recreate the IAM principal, even if it
    #               has the same ARN, the access entry won't work. This is because even though the ARN
    #               is the same for the recreated IAM principal, the <code>roleID</code> or
    #                   <code>userID</code> (you can see this with the Security Token Service
    #                   <code>GetCallerIdentity</code> API) is different for the recreated IAM principal
    #               than it was for the original IAM principal. Even though you don't see the IAM
    #               principal's <code>roleID</code> or <code>userID</code> for an access entry, Amazon EKS stores
    #               it with the access entry.</p>
    #   @return [String]
    # @!attribute kubernetes_groups
    #   <p>A <code>name</code> that you've specified in a Kubernetes <code>RoleBinding</code> or
    #                   <code>ClusterRoleBinding</code> object so that Kubernetes authorizes the
    #                   <code>principalARN</code> access to cluster objects.</p>
    #   @return [Array<String>]
    # @!attribute access_entry_arn
    #   <p>The ARN of the access entry.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp at object creation.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The Unix epoch timestamp for the last modification to the object.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute username
    #   <p>The <code>name</code> of a user that can authenticate to your cluster.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the access entry.</p>
    #   @return [String]
    class AccessEntry < Struct.new(
      :cluster_name,
      :principal_arn,
      :kubernetes_groups,
      :access_entry_arn,
      :created_at,
      :modified_at,
      :tags,
      :username,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An access policy includes permissions that allow Amazon EKS to authorize an
    #             IAM principal to work with Kubernetes objects on your cluster. The policies are
    #             managed by Amazon EKS, but they're not IAM policies. You can't view the permissions in the
    #             policies using the API. The permissions for many of the policies are similar to the
    #             Kubernetes <code>cluster-admin</code>, <code>admin</code>, <code>edit</code>, and
    #                 <code>view</code> cluster roles. For more information about these cluster roles, see
    #                 <a href="https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles">User-facing roles</a> in the Kubernetes documentation. To view the contents of the
    #             policies, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/access-policies.html#access-policy-permissions">Access
    #                 policy permissions</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @!attribute name
    #   <p>The name of the access policy.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the access policy.</p>
    #   @return [String]
    class AccessPolicy < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The scope of an <code>AccessPolicy</code> that's associated to an
    #                 <code>AccessEntry</code>.</p>
    # @!attribute type
    #   <p>The scope type of an access policy.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>A Kubernetes <code>namespace</code> that an access policy is scoped to. A value is required
    #               if you specified <code>namespace</code> for <code>Type</code>.</p>
    #   @return [Array<String>]
    class AccessScope < Struct.new(
      :type,
      :namespaces,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon EKS add-on. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html">Amazon EKS add-ons</a> in the
    #             <i>Amazon EKS User Guide</i>.</p>
    # @!attribute addon_name
    #   <p>The name of the add-on.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the add-on.</p>
    #   @return [String]
    # @!attribute addon_version
    #   <p>The version of the add-on.</p>
    #   @return [String]
    # @!attribute health
    #   <p>An object that represents the health of the add-on.</p>
    #   @return [Types::AddonHealth]
    # @!attribute addon_arn
    #   <p>The Amazon Resource Name (ARN) of the add-on.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp at object creation.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The Unix epoch timestamp for the last modification to the object.</p>
    #   @return [Time]
    # @!attribute service_account_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that's bound to the Kubernetes <code>ServiceAccount</code>
    #               object that the add-on uses.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute publisher
    #   <p>The publisher of the add-on.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the add-on.</p>
    #   @return [String]
    # @!attribute marketplace_information
    #   <p>Information about an Amazon EKS add-on from the Amazon Web Services Marketplace.</p>
    #   @return [Types::MarketplaceInformation]
    # @!attribute configuration_values
    #   <p>The configuration values that you provided.</p>
    #   @return [String]
    # @!attribute pod_identity_associations
    #   <p>An array of EKS Pod Identity associations owned by the add-on. Each association maps a role to a service
    #               account in a namespace in the cluster.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html">Attach an IAM Role to an Amazon EKS add-on
    #                   using EKS Pod Identity</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute namespace_config
    #   <p>The namespace configuration for the addon. This specifies the Kubernetes namespace where the addon is installed.</p>
    #   @return [Types::AddonNamespaceConfigResponse]
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
      :namespace_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary information about the Amazon EKS add-on compatibility for the next Kubernetes
    #             version for an insight check in the <code>UPGRADE_READINESS</code> category.</p>
    # @!attribute name
    #   <p>The name of the Amazon EKS add-on.</p>
    #   @return [String]
    # @!attribute compatible_versions
    #   <p>The list of compatible Amazon EKS add-on versions for the next Kubernetes version.</p>
    #   @return [Array<String>]
    class AddonCompatibilityDetail < Struct.new(
      :name,
      :compatible_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The health of the add-on.</p>
    # @!attribute issues
    #   <p>An object representing the health issues for an add-on.</p>
    #   @return [Array<Types::AddonIssue>]
    class AddonHealth < Struct.new(
      :issues,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an add-on.</p>
    # @!attribute addon_name
    #   <p>The name of the add-on.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the add-on.</p>
    #   @return [String]
    # @!attribute addon_versions
    #   <p>An object representing information about available add-on versions and compatible
    #               Kubernetes versions.</p>
    #   @return [Array<Types::AddonVersionInfo>]
    # @!attribute publisher
    #   <p>The publisher of the add-on.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the add-on.</p>
    #   @return [String]
    # @!attribute marketplace_information
    #   <p>Information about the add-on from the Amazon Web Services Marketplace.</p>
    #   @return [Types::MarketplaceInformation]
    # @!attribute default_namespace
    #   <p>The default Kubernetes namespace where this addon is typically installed if no custom namespace is specified.</p>
    #   @return [String]
    class AddonInfo < Struct.new(
      :addon_name,
      :type,
      :addon_versions,
      :publisher,
      :owner,
      :marketplace_information,
      :default_namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An issue related to an add-on.</p>
    # @!attribute code
    #   <p>A code that describes the type of issue.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message that provides details about the issue and what might cause it.</p>
    #   @return [String]
    # @!attribute resource_ids
    #   <p>The resource IDs of the issue.</p>
    #   @return [Array<String>]
    class AddonIssue < Struct.new(
      :code,
      :message,
      :resource_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The namespace configuration request object for specifying a custom namespace when creating an addon.</p>
    # @!attribute namespace
    #   <p>The name of the Kubernetes namespace to install the addon in. Must be a valid RFC 1123 DNS label.</p>
    #   @return [String]
    class AddonNamespaceConfigRequest < Struct.new(
      :namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The namespace configuration response object containing information about the namespace where an addon is installed.</p>
    # @!attribute namespace
    #   <p>The name of the Kubernetes namespace where the addon is installed.</p>
    #   @return [String]
    class AddonNamespaceConfigResponse < Struct.new(
      :namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A type of EKS Pod Identity association owned by an Amazon EKS add-on.</p>
    #          <p>Each association maps a role to a service account in a namespace in
    #             the cluster.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html">Attach an IAM Role to an Amazon EKS add-on
    #                 using EKS Pod Identity</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @!attribute service_account
    #   <p>The name of a Kubernetes Service Account.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of an IAM Role.</p>
    #   @return [String]
    class AddonPodIdentityAssociations < Struct.new(
      :service_account,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how to configure IAM for an add-on.</p>
    # @!attribute service_account
    #   <p>The Kubernetes Service Account name used by the add-on.</p>
    #   @return [String]
    # @!attribute recommended_managed_policies
    #   <p>A suggested IAM Policy for the add-on.</p>
    #   @return [Array<String>]
    class AddonPodIdentityConfiguration < Struct.new(
      :service_account,
      :recommended_managed_policies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an add-on version.</p>
    # @!attribute addon_version
    #   <p>The version of the add-on.</p>
    #   @return [String]
    # @!attribute architecture
    #   <p>The architectures that the version supports.</p>
    #   @return [Array<String>]
    # @!attribute compute_types
    #   <p>Indicates the compute type of the add-on version.</p>
    #   @return [Array<String>]
    # @!attribute compatibilities
    #   <p>An object representing the compatibilities of a version.</p>
    #   @return [Array<Types::Compatibility>]
    # @!attribute requires_configuration
    #   <p>Whether the add-on requires configuration.</p>
    #   @return [Boolean]
    # @!attribute requires_iam_permissions
    #   <p>Indicates if the add-on requires IAM Permissions to operate, such as networking
    #               permissions.</p>
    #   @return [Boolean]
    class AddonVersionInfo < Struct.new(
      :addon_version,
      :architecture,
      :compute_types,
      :compatibilities,
      :requires_configuration,
      :requires_iam_permissions,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:requires_configuration] = false unless options.key?(:requires_configuration)
        options[:requires_iam_permissions] = false unless options.key?(:requires_iam_permissions)
        super
      end
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM user or role for the <code>AccessEntry</code> that you're
    #               associating the access policy to. </p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The ARN of the <code>AccessPolicy</code> that you're associating. For a list of
    #               ARNs, use <code>ListAccessPolicies</code>.</p>
    #   @return [String]
    # @!attribute access_scope
    #   <p>The scope for the <code>AccessPolicy</code>. You can scope access policies to an
    #               entire cluster or to specific Kubernetes namespaces.</p>
    #   @return [Types::AccessScope]
    class AssociateAccessPolicyRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      :policy_arn,
      :access_scope,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    #   @return [String]
    # @!attribute associated_access_policy
    #   <p>The <code>AccessPolicy</code> and scope associated to the
    #               <code>AccessEntry</code>.</p>
    #   @return [Types::AssociatedAccessPolicy]
    class AssociateAccessPolicyResponse < Struct.new(
      :cluster_name,
      :principal_arn,
      :associated_access_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute encryption_config
    #   <p>The configuration you are using for encryption.</p>
    #   @return [Array<Types::EncryptionConfig>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    class AssociateEncryptionConfigRequest < Struct.new(
      :cluster_name,
      :encryption_config,
      :client_request_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #   @return [Types::Update]
    class AssociateEncryptionConfigResponse < Struct.new(
      :update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute oidc
    #   <p>An object representing an OpenID Connect (OIDC) identity provider configuration.</p>
    #   @return [Types::OidcIdentityProviderConfigRequest]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    class AssociateIdentityProviderConfigRequest < Struct.new(
      :cluster_name,
      :oidc,
      :tags,
      :client_request_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #   @return [Types::Update]
    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Hash<String, String>]
    class AssociateIdentityProviderConfigResponse < Struct.new(
      :update,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An access policy association.</p>
    # @!attribute policy_arn
    #   <p>The ARN of the <code>AccessPolicy</code>.</p>
    #   @return [String]
    # @!attribute access_scope
    #   <p>The scope of the access policy.</p>
    #   @return [Types::AccessScope]
    # @!attribute associated_at
    #   <p>The date and time the <code>AccessPolicy</code> was associated with an
    #                   <code>AccessEntry</code>.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The Unix epoch timestamp for the last modification to the object.</p>
    #   @return [Time]
    class AssociatedAccessPolicy < Struct.new(
      :policy_arn,
      :access_scope,
      :associated_at,
      :modified_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An Auto Scaling group that is associated with an Amazon EKS managed node group.</p>
    # @!attribute name
    #   <p>The name of the Auto Scaling group associated with an Amazon EKS managed node group.</p>
    #   @return [String]
    class AutoScalingGroup < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown if the request contains a semantic error. The precise meaning
    #             will depend on the API, and will be documented in the error message.</p>
    # @!attribute message
    #   <p>This exception is thrown if the request contains a semantic error. The precise meaning
    #               will depend on the API, and will be documented in the error message.</p>
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the current configuration of the block storage capability on your EKS Auto
    #             Mode cluster. For example, if the capability is enabled or disabled. If the block
    #             storage capability is enabled, EKS Auto Mode will create and delete EBS volumes in your
    #             Amazon Web Services account. For more information, see EKS Auto Mode block storage capability in the
    #             <i>Amazon EKS User Guide</i>.</p>
    # @!attribute enabled
    #   <p>Indicates if the block storage capability is enabled on your EKS Auto Mode cluster. If
    #               the block storage capability is enabled, EKS Auto Mode will create and delete EBS
    #               volumes in your Amazon Web Services account.</p>
    #   @return [Boolean]
    class BlockStorage < Struct.new(
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the <code>certificate-authority-data</code> for your
    #             cluster.</p>
    # @!attribute data
    #   <p>The Base64-encoded certificate data required to communicate with your cluster. Add
    #               this to the <code>certificate-authority-data</code> section of the
    #                   <code>kubeconfig</code> file for your cluster.</p>
    #   @return [String]
    class Certificate < Struct.new(
      :data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>These errors are usually caused by a client action. Actions can include using an
    #             action or resource on behalf of an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html">IAM principal</a> that doesn't have permissions to use
    #             the action or resource or specifying an identifier that is not valid.</p>
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The Amazon EKS add-on name associated with the exception.</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The Amazon EKS subscription ID with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>These errors are usually caused by a client action. Actions can include using an
    #               action or resource on behalf of an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html">IAM principal</a> that doesn't have permissions to use
    #               the action or resource or specifying an identifier that is not valid.</p>
    #   @return [String]
    class ClientException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :subscription_id,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about clients using the deprecated resources.</p>
    # @!attribute user_agent
    #   <p>The user agent of the Kubernetes client using the deprecated resource.</p>
    #   @return [String]
    # @!attribute number_of_requests_last30_days
    #   <p>The number of requests from the Kubernetes client seen over the last 30 days.</p>
    #   @return [Integer]
    # @!attribute last_request_time
    #   <p>The timestamp of the last request seen from the Kubernetes client.</p>
    #   @return [Time]
    class ClientStat < Struct.new(
      :user_agent,
      :number_of_requests_last30_days,
      :last_request_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_requests_last30_days] = 0 unless options.key?(:number_of_requests_last30_days)
        super
      end
    end

    # <p>An object representing an Amazon EKS cluster.</p>
    # @!attribute name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp at object creation.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The Kubernetes server version for the cluster.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint for your Kubernetes API server.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane
    #               to make calls to Amazon Web Services API operations on your behalf.</p>
    #   @return [String]
    # @!attribute resources_vpc_config
    #   <p>The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have
    #               specific requirements to work properly with Kubernetes. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html">Cluster VPC
    #                   considerations</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html">Cluster security group considerations</a> in the
    #               <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::VpcConfigResponse]
    # @!attribute kubernetes_network_config
    #   <p>The Kubernetes network configuration for the cluster.</p>
    #   @return [Types::KubernetesNetworkConfigResponse]
    # @!attribute logging
    #   <p>The logging configuration for your cluster.</p>
    #   @return [Types::Logging]
    # @!attribute identity
    #   <p>The identity provider information for the cluster.</p>
    #   @return [Types::Identity]
    # @!attribute status
    #   <p>The current status of the cluster.</p>
    #   @return [String]
    # @!attribute certificate_authority
    #   <p>The <code>certificate-authority-data</code> for your cluster.</p>
    #   @return [Types::Certificate]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute platform_version
    #   <p>The platform version of your Amazon EKS cluster. For more information about clusters
    #               deployed on the Amazon Web Services Cloud, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html">Platform
    #                   versions</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>. For more information
    #               about local clusters deployed on an Outpost, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-platform-versions.html">Amazon EKS local cluster platform versions</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute encryption_config
    #   <p>The encryption configuration for the cluster.</p>
    #   @return [Array<Types::EncryptionConfig>]
    # @!attribute connector_config
    #   <p>The configuration used to connect to a cluster for registration.</p>
    #   @return [Types::ConnectorConfigResponse]
    # @!attribute id
    #   <p>The ID of your local Amazon EKS cluster on an Amazon Web Services Outpost. This property isn't available
    #               for an Amazon EKS cluster on the Amazon Web Services cloud.</p>
    #   @return [String]
    # @!attribute health
    #   <p>An object representing the health of your Amazon EKS cluster.</p>
    #   @return [Types::ClusterHealth]
    # @!attribute outpost_config
    #   <p>An object representing the configuration of your local Amazon EKS cluster on an Amazon Web Services
    #               Outpost. This object isn't available for clusters on the Amazon Web Services cloud.</p>
    #   @return [Types::OutpostConfigResponse]
    # @!attribute access_config
    #   <p>The access configuration for the cluster.</p>
    #   @return [Types::AccessConfigResponse]
    # @!attribute upgrade_policy
    #   <p>This value indicates if extended support is enabled or disabled for the
    #               cluster.</p>
    #            <p>
    #               <a href="https://docs.aws.amazon.com/eks/latest/userguide/extended-support-control.html">Learn more about EKS Extended Support in the <i>Amazon EKS User Guide</i>.</a>
    #            </p>
    #   @return [Types::UpgradePolicyResponse]
    # @!attribute zonal_shift_config
    #   <p>The configuration for zonal shift for the cluster.</p>
    #   @return [Types::ZonalShiftConfigResponse]
    # @!attribute remote_network_config
    #   <p>The configuration in the cluster for EKS Hybrid Nodes. You can add, change, or remove this
    #               configuration after the cluster is created.</p>
    #   @return [Types::RemoteNetworkConfigResponse]
    # @!attribute compute_config
    #   <p>Indicates the current configuration of the compute capability on your EKS Auto Mode
    #               cluster. For example, if the capability is enabled or disabled. If the compute
    #               capability is enabled, EKS Auto Mode will create and delete EC2 Managed Instances in
    #               your Amazon Web Services account. For more information, see EKS Auto Mode compute capability in the
    #               <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::ComputeConfigResponse]
    # @!attribute storage_config
    #   <p>Indicates the current configuration of the block storage capability on your EKS Auto
    #               Mode cluster. For example, if the capability is enabled or disabled. If the block
    #               storage capability is enabled, EKS Auto Mode will create and delete EBS volumes in your
    #               Amazon Web Services account. For more information, see EKS Auto Mode block storage capability in the
    #               <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::StorageConfigResponse]
    # @!attribute deletion_protection
    #   <p>The current deletion protection setting for the cluster. When <code>true</code>, 
    #               deletion protection is enabled and the cluster cannot be deleted until protection is 
    #               disabled. When <code>false</code>, the cluster can be deleted normally. This setting 
    #               only applies to clusters in an active state.</p>
    #   @return [Boolean]
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
      :deletion_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the health of your Amazon EKS cluster.</p>
    # @!attribute issues
    #   <p>An object representing the health issues of your Amazon EKS cluster.</p>
    #   @return [Array<Types::ClusterIssue>]
    class ClusterHealth < Struct.new(
      :issues,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An issue with your Amazon EKS cluster.</p>
    # @!attribute code
    #   <p>The error code of the issue.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the issue.</p>
    #   @return [String]
    # @!attribute resource_ids
    #   <p>The resource IDs that the issue relates to.</p>
    #   @return [Array<String>]
    class ClusterIssue < Struct.new(
      :code,
      :message,
      :resource_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a specific EKS cluster version.</p>
    # @!attribute cluster_version
    #   <p>The Kubernetes version for the cluster.</p>
    #   @return [String]
    # @!attribute cluster_type
    #   <p>The type of cluster this version is for.</p>
    #   @return [String]
    # @!attribute default_platform_version
    #   <p>Default platform version for this Kubernetes version.</p>
    #   @return [String]
    # @!attribute default_version
    #   <p>Indicates if this is a default version.</p>
    #   @return [Boolean]
    # @!attribute release_date
    #   <p>The release date of this cluster version.</p>
    #   @return [Time]
    # @!attribute end_of_standard_support_date
    #   <p>Date when standard support ends for this version.</p>
    #   @return [Time]
    # @!attribute end_of_extended_support_date
    #   <p>Date when extended support ends for this version.</p>
    #   @return [Time]
    # @!attribute status
    #   <important>
    #               <p>This field is deprecated. Use <code>versionStatus</code> instead, as that field
    #                   matches for input and output of this action.</p>
    #            </important>
    #            <p>Current status of this cluster version.</p>
    #   @return [String]
    # @!attribute version_status
    #   <p>Current status of this cluster version.</p>
    #   @return [String]
    # @!attribute kubernetes_patch_version
    #   <p>The patch version of Kubernetes for this cluster version.</p>
    #   @return [String]
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
      :kubernetes_patch_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:default_version] = false unless options.key?(:default_version)
        super
      end
    end

    # <p>Compatibility information.</p>
    # @!attribute cluster_version
    #   <p>The supported Kubernetes version of the cluster.</p>
    #   @return [String]
    # @!attribute platform_versions
    #   <p>The supported compute platform.</p>
    #   @return [Array<String>]
    # @!attribute default_version
    #   <p>The supported default version.</p>
    #   @return [Boolean]
    class Compatibility < Struct.new(
      :cluster_version,
      :platform_versions,
      :default_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:default_version] = false unless options.key?(:default_version)
        super
      end
    end

    # <p>Request to update the configuration of the compute capability of your EKS Auto Mode
    #             cluster. For example, enable the capability. For more information, see EKS Auto Mode
    #             compute capability in the <i>Amazon EKS User Guide</i>.</p>
    # @!attribute enabled
    #   <p>Request to enable or disable the compute capability on your EKS Auto Mode cluster. If
    #               the compute capability is enabled, EKS Auto Mode will create and delete EC2 Managed
    #               Instances in your Amazon Web Services account.</p>
    #   @return [Boolean]
    # @!attribute node_pools
    #   <p>Configuration for node pools that defines the compute resources for your EKS Auto Mode
    #               cluster. For more information, see EKS Auto Mode Node Pools in the
    #               <i>Amazon EKS User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute node_role_arn
    #   <p>The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto
    #               Mode cluster. This value cannot be changed after the compute capability of EKS Auto Mode
    #               is enabled. For more information, see the IAM Reference in the
    #               <i>Amazon EKS User Guide</i>.</p>
    #   @return [String]
    class ComputeConfigRequest < Struct.new(
      :enabled,
      :node_pools,
      :node_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the status of the request to update the compute capability of your EKS Auto
    #             Mode cluster.</p>
    # @!attribute enabled
    #   <p>Indicates if the compute capability is enabled on your EKS Auto Mode cluster. If the
    #               compute capability is enabled, EKS Auto Mode will create and delete EC2 Managed
    #               Instances in your Amazon Web Services account.</p>
    #   @return [Boolean]
    # @!attribute node_pools
    #   <p>Indicates the current configuration of node pools in your EKS Auto Mode cluster. For
    #               more information, see EKS Auto Mode Node Pools in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute node_role_arn
    #   <p>The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto
    #               Mode cluster.</p>
    #   @return [String]
    class ComputeConfigResponse < Struct.new(
      :enabled,
      :node_pools,
      :node_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration sent to a cluster for configuration.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that is authorized to request the connector
    #               configuration.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The cloud provider for the target cluster to connect.</p>
    #   @return [String]
    class ConnectorConfigRequest < Struct.new(
      :role_arn,
      :provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The full description of your connected cluster.</p>
    # @!attribute activation_id
    #   <p>A unique ID associated with the cluster for registration purposes.</p>
    #   @return [String]
    # @!attribute activation_code
    #   <p>A unique code associated with the cluster for registration purposes.</p>
    #   @return [String]
    # @!attribute activation_expiry
    #   <p>The expiration time of the connected cluster. The cluster's YAML file must be applied
    #               through the native provider.</p>
    #   @return [Time]
    # @!attribute provider
    #   <p>The cluster's cloud service provider.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to communicate with services from the connected Kubernetes
    #               cluster.</p>
    #   @return [String]
    class ConnectorConfigResponse < Struct.new(
      :activation_id,
      :activation_code,
      :activation_expiry,
      :provider,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The placement configuration for all the control plane instances of your local Amazon EKS
    #             cluster on an Amazon Web Services Outpost. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html">Capacity
    #                 considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @!attribute group_name
    #   <p>The name of the placement group for the Kubernetes control plane instances. This setting
    #               can't be changed after cluster creation. </p>
    #   @return [String]
    class ControlPlanePlacementRequest < Struct.new(
      :group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The placement configuration for all the control plane instances of your local Amazon EKS
    #             cluster on an Amazon Web Services Outpost. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html">Capacity considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @!attribute group_name
    #   <p>The name of the placement group for the Kubernetes control plane instances.</p>
    #   @return [String]
    class ControlPlanePlacementResponse < Struct.new(
      :group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The access configuration information for the cluster.</p>
    # @!attribute bootstrap_cluster_creator_admin_permissions
    #   <p>Specifies whether or not the cluster creator IAM principal was set as a cluster
    #               admin access entry during cluster creation time. The default value is
    #               <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute authentication_mode
    #   <p>The desired authentication mode for the cluster. If you create a cluster by using the
    #               EKS API, Amazon Web Services SDKs, or CloudFormation, the default is <code>CONFIG_MAP</code>. If you create
    #               the cluster by using the Amazon Web Services Management Console, the default value is
    #               <code>API_AND_CONFIG_MAP</code>.</p>
    #   @return [String]
    class CreateAccessConfigRequest < Struct.new(
      :bootstrap_cluster_creator_admin_permissions,
      :authentication_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>. You can specify one ARN for each access entry. You can't specify the
    #               same ARN in more than one access entry. This value can't be changed after access entry
    #               creation.</p>
    #            <p>The valid principals differ depending on the type of the access entry in the
    #                   <code>type</code> field. For <code>STANDARD</code> access entries, you can use every
    #               IAM principal type. For nodes (<code>EC2</code> (for EKS Auto Mode),
    #                   <code>EC2_LINUX</code>, <code>EC2_WINDOWS</code>, <code>FARGATE_LINUX</code>, and
    #                   <code>HYBRID_LINUX</code>), the only valid ARN is IAM roles.
    #               
    #               You can't use the STS session principal type with access entries because this is a
    #               temporary principal for each session and not a permanent identity that can be assigned
    #               permissions.</p>
    #            <p>
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#bp-users-federation-idp">IAM best
    #                   practices</a> recommend using IAM roles with temporary credentials, rather
    #               than IAM users with long-term credentials. </p>
    #   @return [String]
    # @!attribute kubernetes_groups
    #   <p>The value for <code>name</code> that you've specified for <code>kind: Group</code> as
    #               a <code>subject</code> in a Kubernetes <code>RoleBinding</code> or
    #                   <code>ClusterRoleBinding</code> object. Amazon EKS doesn't confirm that the value for
    #                   <code>name</code> exists in any bindings on your cluster. You can specify one or
    #               more names.</p>
    #            <p>Kubernetes authorizes the <code>principalArn</code> of the access entry to access any
    #               cluster objects that you've specified in a Kubernetes <code>Role</code> or
    #                   <code>ClusterRole</code> object that is also specified in a binding's
    #                   <code>roleRef</code>. For more information about creating Kubernetes
    #                   <code>RoleBinding</code>, <code>ClusterRoleBinding</code>, <code>Role</code>, or
    #                   <code>ClusterRole</code> objects, see <a href="https://kubernetes.io/docs/reference/access-authn-authz/rbac/">Using RBAC
    #                   Authorization in the Kubernetes documentation</a>.</p>
    #            <p>If you want Amazon EKS to authorize the <code>principalArn</code> (instead of, or in
    #               addition to Kubernetes authorizing the <code>principalArn</code>), you can associate one or
    #               more access policies to the access entry using <code>AssociateAccessPolicy</code>. If
    #               you associate any access policies, the <code>principalARN</code> has all permissions
    #               assigned in the associated access policies and all permissions in any Kubernetes
    #                   <code>Role</code> or <code>ClusterRole</code> objects that the group names are bound
    #               to.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username to authenticate to Kubernetes with. We recommend not specifying a username and
    #               letting Amazon EKS specify it for you. For more information about the value Amazon EKS specifies
    #               for you, or constraints before specifying your own username, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html#creating-access-entries">Creating
    #                   access entries</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the new access entry. Valid values are <code>STANDARD</code>,
    #                   <code>FARGATE_LINUX</code>, <code>EC2_LINUX</code>, <code>EC2_WINDOWS</code>,
    #                   <code>EC2</code> (for EKS Auto Mode), <code>HYBRID_LINUX</code>, and
    #                   <code>HYPERPOD_LINUX</code>. </p>
    #            <p>If the <code>principalArn</code> is for an IAM role that's used for self-managed
    #               Amazon EC2 nodes, specify <code>EC2_LINUX</code> or <code>EC2_WINDOWS</code>. Amazon EKS grants
    #               the necessary permissions to the node for you. If the <code>principalArn</code> is for
    #               any other purpose, specify <code>STANDARD</code>. If you don't specify a value, Amazon EKS
    #               sets the value to <code>STANDARD</code>. If you have the access mode of the cluster set
    #               to <code>API_AND_CONFIG_MAP</code>, it's unnecessary to create access entries for IAM
    #               roles used with Fargate profiles or managed Amazon EC2 nodes, because Amazon EKS creates entries
    #               in the <code>aws-auth</code>
    #               <code>ConfigMap</code> for the roles. You can't change this value once you've created
    #               the access entry.</p>
    #            <p>If you set the value to <code>EC2_LINUX</code> or <code>EC2_WINDOWS</code>, you can't
    #               specify values for <code>kubernetesGroups</code>, or associate an
    #                   <code>AccessPolicy</code> to the access entry.</p>
    #   @return [String]
    class CreateAccessEntryRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      :kubernetes_groups,
      :tags,
      :client_request_token,
      :username,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_entry
    #   <p>An access entry allows an IAM principal (user or role) to access your cluster.
    #               Access entries can replace the need to maintain the <code>aws-auth</code>
    #               <code>ConfigMap</code> for authentication. For more information about access entries,
    #               see <a href="https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html">Access
    #                   entries</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::AccessEntry]
    class CreateAccessEntryResponse < Struct.new(
      :access_entry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by
    #                   <code>DescribeAddonVersions</code>.</p>
    #   @return [String]
    # @!attribute addon_version
    #   <p>The version of the add-on. The version must match one of the versions returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    #   @return [String]
    # @!attribute service_account_role_arn
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the
    #        permissions assigned to the node IAM role. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon EKS node IAM role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <note>
    #               <p>To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for
    #                   your cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html">Enabling
    #                       IAM roles for service accounts on your cluster</a> in the
    #                   <i>Amazon EKS User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute resolve_conflicts
    #   <p>How to resolve field value conflicts for an Amazon EKS add-on. Conflicts are handled based
    #               on the value you choose:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>None</b> – If the self-managed version of
    #                       the add-on is installed on your cluster, Amazon EKS doesn't change the value.
    #                       Creation of the add-on might fail.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Overwrite</b> – If the self-managed
    #                       version of the add-on is installed on your cluster and the Amazon EKS default value
    #                       is different than the existing value, Amazon EKS changes the value to the Amazon EKS
    #                       default value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Preserve</b> – This is similar to the NONE
    #                       option. If the self-managed version of the add-on is installed on your cluster
    #                       Amazon EKS doesn't change the add-on resource properties. Creation of the add-on
    #                       might fail if conflicts are detected. This option works differently during the
    #                       update operation. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html">
    #                        <code>UpdateAddon</code>
    #                     </a>.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't currently have the self-managed version of the add-on installed on your
    #               cluster, the Amazon EKS add-on is installed. Amazon EKS sets all values to default values,
    #               regardless of the option that you specify.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute configuration_values
    #   <p>The set of configuration values for the add-on that's created. The values that you
    #               provide are validated against the schema returned by
    #                   <code>DescribeAddonConfiguration</code>.</p>
    #   @return [String]
    # @!attribute pod_identity_associations
    #   <p>An array of EKS Pod Identity associations to be created. Each association maps a Kubernetes service account to
    #               an IAM role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html">Attach an IAM Role to an Amazon EKS add-on
    #                   using EKS Pod Identity</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Array<Types::AddonPodIdentityAssociations>]
    # @!attribute namespace_config
    #   <p>The namespace configuration for the addon. If specified, this will override the default namespace for the addon.</p>
    #   @return [Types::AddonNamespaceConfigRequest]
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
      :namespace_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon
    #   <p>An Amazon EKS add-on. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html">Amazon EKS add-ons</a> in the
    #               <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::Addon]
    class CreateAddonResponse < Struct.new(
      :addon,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique name to give to your cluster. The name can contain only alphanumeric characters (case-sensitive),
    #   hyphens, and underscores. It must start with an alphanumeric character and can't be longer than
    #   100 characters. The name must be unique within the Amazon Web Services Region and Amazon Web Services account that you're 
    #   creating the cluster in.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The desired Kubernetes version for your cluster. If you don't specify a value here, the
    #               default version available in Amazon EKS is used.</p>
    #            <note>
    #               <p>The default version might not be the latest version available.</p>
    #            </note>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane
    #               to make calls to Amazon Web Services API operations on your behalf. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html">Amazon EKS Service
    #                   IAM Role</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #   @return [String]
    # @!attribute resources_vpc_config
    #   <p>The VPC configuration that's used by the cluster control plane. Amazon EKS VPC resources
    #               have specific requirements to work properly with Kubernetes. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html">Cluster VPC
    #                   Considerations</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html">Cluster Security Group Considerations</a> in the
    #               <i>Amazon EKS User Guide</i>. You must specify at least two subnets. You can specify up to five
    #               security groups. However, we recommend that you use a dedicated security group for your
    #               cluster control plane.</p>
    #   @return [Types::VpcConfigRequest]
    # @!attribute kubernetes_network_config
    #   <p>The Kubernetes network configuration for the cluster.</p>
    #   @return [Types::KubernetesNetworkConfigRequest]
    # @!attribute logging
    #   <p>Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs .
    #               By default, cluster control plane logs aren't exported to CloudWatch Logs . For more information,
    #               see <a href="https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html">Amazon EKS
    #                   Cluster control plane logs</a> in the
    #               <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #            <note>
    #               <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported
    #                   control plane logs. For more information, see <a href="http://aws.amazon.com/cloudwatch/pricing/">CloudWatch Pricing</a>.</p>
    #            </note>
    #   @return [Types::Logging]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute encryption_config
    #   <p>The encryption configuration for the cluster.</p>
    #   @return [Array<Types::EncryptionConfig>]
    # @!attribute outpost_config
    #   <p>An object representing the configuration of your local Amazon EKS cluster on an Amazon Web Services
    #               Outpost. Before creating a local cluster on an Outpost, review <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-local-cluster-overview.html">Local clusters
    #                   for Amazon EKS on Amazon Web Services Outposts</a> in the <i>Amazon EKS User Guide</i>. This object isn't
    #               available for creating Amazon EKS clusters on the Amazon Web Services cloud.</p>
    #   @return [Types::OutpostConfigRequest]
    # @!attribute access_config
    #   <p>The access configuration for the cluster.</p>
    #   @return [Types::CreateAccessConfigRequest]
    # @!attribute bootstrap_self_managed_addons
    #   <p>If you set this value to <code>False</code> when creating a cluster, the default
    #               networking add-ons will not be installed.</p>
    #            <p>The default networking add-ons include <code>vpc-cni</code>, <code>coredns</code>, and
    #                   <code>kube-proxy</code>.</p>
    #            <p>Use this option when you plan to install third-party alternative add-ons or
    #               self-manage the default networking add-ons.</p>
    #   @return [Boolean]
    # @!attribute upgrade_policy
    #   <p>New clusters, by default, have extended support enabled. You can disable extended
    #               support when creating a cluster by setting this value to <code>STANDARD</code>.</p>
    #   @return [Types::UpgradePolicyRequest]
    # @!attribute zonal_shift_config
    #   <p>Enable or disable ARC zonal shift for the cluster. If zonal shift is enabled, Amazon Web Services
    #               configures zonal autoshift for the cluster.</p>
    #            <p>Zonal shift is a feature of Amazon Application Recovery Controller (ARC). ARC zonal shift is designed to be a
    #               temporary measure that allows you to move traffic for a resource away from an impaired
    #               AZ until the zonal shift expires or you cancel it. You can extend the zonal shift if
    #               necessary.</p>
    #            <p>You can start a zonal shift for an Amazon EKS cluster, or you can allow Amazon Web Services to do it for
    #               you by enabling <i>zonal autoshift</i>. This shift updates the flow of
    #               east-to-west network traffic in your cluster to only consider network endpoints for Pods
    #               running on worker nodes in healthy AZs. Additionally, any ALB or NLB handling ingress
    #               traffic for applications in your Amazon EKS cluster will automatically route traffic to
    #               targets in the healthy AZs. For more information about zonal shift in EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/zone-shift.html">Learn about
    #                   Amazon Application Recovery Controller (ARC) Zonal Shift in Amazon EKS</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #   @return [Types::ZonalShiftConfigRequest]
    # @!attribute remote_network_config
    #   <p>The configuration in the cluster for EKS Hybrid Nodes. You can add, change, or remove this
    #               configuration after the cluster is created.</p>
    #   @return [Types::RemoteNetworkConfigRequest]
    # @!attribute compute_config
    #   <p>Enable or disable the compute capability of EKS Auto Mode when creating your EKS Auto
    #               Mode cluster. If the compute capability is enabled, EKS Auto Mode will create and delete
    #               EC2 Managed Instances in your Amazon Web Services account</p>
    #   @return [Types::ComputeConfigRequest]
    # @!attribute storage_config
    #   <p>Enable or disable the block storage capability of EKS Auto Mode when creating your EKS
    #               Auto Mode cluster. If the block storage capability is enabled, EKS Auto Mode will create
    #               and delete EBS volumes in your Amazon Web Services account.</p>
    #   @return [Types::StorageConfigRequest]
    # @!attribute deletion_protection
    #   <p>Indicates whether to enable deletion protection for the cluster. When enabled, the cluster 
    #               cannot be deleted unless deletion protection is first disabled. This helps prevent 
    #               accidental cluster deletion. Default value is <code>false</code>.</p>
    #   @return [Boolean]
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
      :deletion_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The full description of your new cluster.</p>
    #   @return [Types::Cluster]
    class CreateClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique name for your subscription. It must be unique in your Amazon Web Services account in the
    #               Amazon Web Services Region you're creating the subscription in. The name can contain only alphanumeric
    #               characters (case-sensitive), hyphens, and underscores. It must start with an alphabetic
    #               character and can't be longer than 100 characters.</p>
    #   @return [String]
    # @!attribute term
    #   <p>An object representing the term duration and term unit type of your subscription. This
    #               determines the term length of your subscription. Valid values are MONTHS for term unit
    #               and 12 or 36 for term duration, indicating a 12 month or 36 month subscription. This
    #               value cannot be changed after creating the subscription.</p>
    #   @return [Types::EksAnywhereSubscriptionTerm]
    # @!attribute license_quantity
    #   <p>The number of licenses to purchase with the subscription. Valid values are between 1
    #               and 100. This value can't be changed after creating the subscription.</p>
    #   @return [Integer]
    # @!attribute license_type
    #   <p>The license type for all licenses in the subscription. Valid value is CLUSTER. With
    #               the CLUSTER license type, each license covers support for a single EKS Anywhere
    #               cluster.</p>
    #   @return [String]
    # @!attribute auto_renew
    #   <p>A boolean indicating whether the subscription auto renews at the end of the
    #               term.</p>
    #   @return [Boolean]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The metadata for a subscription to assist with categorization and organization. Each
    #               tag consists of a key and an optional value. Subscription tags don't propagate to any
    #               other resources associated with the subscription.</p>
    #   @return [Hash<String, String>]
    class CreateEksAnywhereSubscriptionRequest < Struct.new(
      :name,
      :term,
      :license_quantity,
      :license_type,
      :auto_renew,
      :client_request_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The full description of the subscription.</p>
    #   @return [Types::EksAnywhereSubscription]
    class CreateEksAnywhereSubscriptionResponse < Struct.new(
      :subscription,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute fargate_profile_name
    #   <p>The name of the Fargate profile.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute pod_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>Pod</code> execution role to use for a <code>Pod</code>
    #               that matches the selectors in the Fargate profile. The <code>Pod</code> execution role
    #               allows Fargate infrastructure to register with your cluster as a node, and it provides
    #               read access to Amazon ECR image repositories. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html">
    #                  <code>Pod</code> execution role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>The IDs of subnets to launch a <code>Pod</code> into. A <code>Pod</code> running on
    #               Fargate isn't assigned a public IP address, so only private subnets (with no direct
    #               route to an Internet Gateway) are accepted for this parameter.</p>
    #   @return [Array<String>]
    # @!attribute selectors
    #   <p>The selectors to match for a <code>Pod</code> to use this Fargate profile. Each
    #               selector must have an associated Kubernetes <code>namespace</code>. Optionally, you can also
    #               specify <code>labels</code> for a <code>namespace</code>. You may specify up to five
    #               selectors in a Fargate profile.</p>
    #   @return [Array<Types::FargateProfileSelector>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    class CreateFargateProfileRequest < Struct.new(
      :fargate_profile_name,
      :cluster_name,
      :pod_execution_role_arn,
      :subnets,
      :selectors,
      :client_request_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute fargate_profile
    #   <p>The full description of your new Fargate profile.</p>
    #   @return [Types::FargateProfile]
    class CreateFargateProfileResponse < Struct.new(
      :fargate_profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The unique name to give your node group.</p>
    #   @return [String]
    # @!attribute scaling_config
    #   <p>The scaling configuration details for the Auto Scaling group that is created for your
    #               node group.</p>
    #   @return [Types::NodegroupScalingConfig]
    # @!attribute disk_size
    #   <p>The root device disk size (in GiB) for your node group instances. The default disk
    #               size is 20 GiB for Linux and Bottlerocket. The default disk size is 50 GiB for Windows.
    #               If you specify <code>launchTemplate</code>, then don't specify  <code>diskSize</code>, or the node group 
    #               deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute subnets
    #   <p>The subnets to use for the Auto Scaling group that is created for your node group.
    #               If you specify <code>launchTemplate</code>, then don't specify  <code>
    #                  <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html">SubnetId</a>
    #               </code> in your launch template, or the node group  deployment
    #               will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute instance_types
    #   <p>Specify the instance types for a node group. If you specify a GPU instance type, make
    #               sure to also specify an applicable GPU AMI type with the <code>amiType</code> parameter.
    #               If you specify <code>launchTemplate</code>, then you can specify zero or one instance
    #               type in your launch template <i>or</i> you can specify 0-20 instance types
    #               for <code>instanceTypes</code>. If however, you specify an instance type in your launch
    #               template <i>and</i> specify any <code>instanceTypes</code>, the node group
    #               deployment will fail. If you don't specify an instance type in a launch template or for
    #                   <code>instanceTypes</code>, then <code>t3.medium</code> is used, by default. If you
    #               specify <code>Spot</code> for <code>capacityType</code>, then we recommend specifying
    #               multiple values for <code>instanceTypes</code>. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html#managed-node-group-capacity-types">Managed node group capacity types</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with
    #                   launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute ami_type
    #   <p>The AMI type for your node group. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI,
    #                   then don't specify <code>amiType</code>, or the node group  deployment
    #               will fail. If your launch template uses a Windows custom AMI, then add
    #                   <code>eks:kube-proxy-windows</code> to your Windows nodes <code>rolearn</code> in
    #               the <code>aws-auth</code>
    #               <code>ConfigMap</code>. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [String]
    # @!attribute remote_access
    #   <p>The remote access configuration to use with your node group. For Linux, the protocol
    #               is SSH. For Windows, the protocol is RDP. If you specify <code>launchTemplate</code>, then don't specify 
    #                   <code>remoteAccess</code>, or the node group  deployment will fail.
    #               For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::RemoteAccessConfig]
    # @!attribute node_role
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with your node group. The Amazon EKS worker
    #               node <code>kubelet</code> daemon makes calls to Amazon Web Services APIs on your behalf. Nodes receive
    #               permissions for these API calls through an IAM instance profile and associated
    #               policies. Before you can launch nodes and register them into a cluster, you must create
    #               an IAM role for those nodes to use when they are launched. For more information, see
    #                   <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon EKS
    #                   node IAM role</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.
    #               If you specify <code>launchTemplate</code>, then don't specify  <code>
    #                  <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html">IamInstanceProfile</a>
    #               </code> in your launch template, or the node group 
    #               deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>The Kubernetes <code>labels</code> to apply to the nodes in the node group when they are
    #               created.</p>
    #   @return [Hash<String, String>]
    # @!attribute taints
    #   <p>The Kubernetes taints to be applied to the nodes in the node group. For more information,
    #               see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on
    #                   managed node groups</a>.</p>
    #   @return [Array<Types::Taint>]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute launch_template
    #   <p>An object representing a node group's launch template specification. When using this
    #               object, don't directly specify <code>instanceTypes</code>, <code>diskSize</code>, or
    #                   <code>remoteAccess</code>. You cannot later specify a different launch template ID
    #               or name than what was used to create the node group.</p>
    #            <p>Make sure that the launch template meets the requirements in
    #                   <code>launchTemplateSpecification</code>. Also refer to <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with
    #                   launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute update_config
    #   <p>The node group update configuration.</p>
    #   @return [Types::NodegroupUpdateConfig]
    # @!attribute node_repair_config
    #   <p>The node auto repair configuration for the node group.</p>
    #   @return [Types::NodeRepairConfig]
    # @!attribute capacity_type
    #   <p>The capacity type for your node group.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The Kubernetes version to use for your managed nodes. By default, the Kubernetes version of the
    #               cluster is used, and this is the only accepted specified value. If you specify <code>launchTemplate</code>,
    #               and your launch template uses a custom AMI, then don't specify  <code>version</code>, or the node group 
    #               deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [String]
    # @!attribute release_version
    #   <p>The AMI version of the Amazon EKS optimized AMI to use with your node group. By default,
    #               the latest available AMI version for the node group's current Kubernetes version is used. For
    #               information about Linux versions, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html">Amazon EKS
    #                   optimized Amazon Linux AMI versions</a> in the <i>Amazon EKS User Guide</i>. Amazon EKS managed node
    #               groups support the November 2022 and later releases of the Windows AMIs. For information
    #               about Windows versions, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html">Amazon EKS
    #                   optimized Windows AMI versions</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <p>If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify 
    #                   <code>releaseVersion</code>, or the node group  deployment will fail.
    #               For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [String]
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
      :release_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute nodegroup
    #   <p>The full description of your new node group.</p>
    #   @return [Types::Nodegroup]
    class CreateNodegroupResponse < Struct.new(
      :nodegroup,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to create the EKS Pod Identity association in.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the Kubernetes namespace inside the cluster to create the EKS Pod Identity association in. The
    #               service account and the Pods that use the service account must be in this
    #               namespace.</p>
    #   @return [String]
    # @!attribute service_account
    #   <p>The name of the Kubernetes service account inside the cluster to associate the IAM
    #               credentials with.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity
    #               agent manages credentials to assume this role for applications in the containers in the
    #               Pods that use this service account.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource – 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length – 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length – 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute disable_session_tags
    #   <p>Disable the automatic sessions tags that are appended by EKS Pod Identity.</p>
    #            <p>EKS Pod Identity adds a pre-defined set of session tags when it assumes the role. You
    #               can use these tags to author a single role that can work across resources by allowing
    #               access to Amazon Web Services resources based on matching tags. By default, EKS Pod Identity attaches
    #               six tags, including tags for cluster name, namespace, and service account name. For the
    #               list of tags added by EKS Pod Identity, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-id-abac.html#pod-id-abac-tags">List of session tags
    #                   added by EKS Pod Identity</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <p>Amazon Web Services compresses inline session policies, managed policy ARNs, and session tags into a
    #               packed binary format that has a separate limit. If you receive a
    #                   <code>PackedPolicyTooLarge</code> error indicating the packed binary format has
    #               exceeded the size limit, you can attempt to reduce the size by disabling the session
    #               tags added by EKS Pod Identity.</p>
    #   @return [Boolean]
    # @!attribute target_role_arn
    #   <p>The Amazon Resource Name (ARN) of the target IAM role to associate with the service account. This role
    #               is assumed by using the EKS Pod Identity association role, then the credentials for this
    #               role are injected into the Pod.</p>
    #            <p>When you run applications on Amazon EKS, your application might need to access Amazon Web Services
    #               resources from a different role that exists in the same or different Amazon Web Services account. For
    #               example, your application running in “Account A” might need to access resources, such as
    #               Amazon S3 buckets in “Account B” or within “Account A” itself. You can create a association
    #               to access Amazon Web Services resources in “Account B” by creating two IAM roles: a role in “Account
    #               A” and a role in “Account B” (which can be the same or different account), each with the
    #               necessary trust and permission policies. After you provide these roles in the
    #                   <i>IAM role</i> and <i>Target IAM role</i> fields, EKS
    #               will perform role chaining to ensure your application gets the required permissions.
    #               This means Role A will assume Role B, allowing your Pods to securely access resources
    #               like S3 buckets in the target account.</p>
    #   @return [String]
    class CreatePodIdentityAssociationRequest < Struct.new(
      :cluster_name,
      :namespace,
      :service_account,
      :role_arn,
      :client_request_token,
      :tags,
      :disable_session_tags,
      :target_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association
    #   <p>The full description of your new association.</p>
    #            <p>The description includes an ID for the association. Use the ID of the association in further
    #               actions to manage the association.</p>
    #   @return [Types::PodIdentityAssociation]
    class CreatePodIdentityAssociationResponse < Struct.new(
      :association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    #   @return [String]
    class DeleteAccessEntryRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAccessEntryResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #   @return [String]
    # @!attribute preserve
    #   <p>Specifying this option preserves the add-on software on your cluster but Amazon EKS stops
    #               managing any settings for the add-on. If an IAM account is associated with the add-on,
    #               it isn't removed.</p>
    #   @return [Boolean]
    class DeleteAddonRequest < Struct.new(
      :cluster_name,
      :addon_name,
      :preserve,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon
    #   <p>An Amazon EKS add-on. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html">Amazon EKS add-ons</a> in the
    #               <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::Addon]
    class DeleteAddonResponse < Struct.new(
      :addon,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the cluster to delete.</p>
    #   @return [String]
    class DeleteClusterRequest < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The full description of the cluster to delete.</p>
    #   @return [Types::Cluster]
    class DeleteClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the subscription.</p>
    #   @return [String]
    class DeleteEksAnywhereSubscriptionRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The full description of the subscription to be deleted.</p>
    #   @return [Types::EksAnywhereSubscription]
    class DeleteEksAnywhereSubscriptionResponse < Struct.new(
      :subscription,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute fargate_profile_name
    #   <p>The name of the Fargate profile to delete.</p>
    #   @return [String]
    class DeleteFargateProfileRequest < Struct.new(
      :cluster_name,
      :fargate_profile_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute fargate_profile
    #   <p>The deleted Fargate profile.</p>
    #   @return [Types::FargateProfile]
    class DeleteFargateProfileResponse < Struct.new(
      :fargate_profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The name of the node group to delete.</p>
    #   @return [String]
    class DeleteNodegroupRequest < Struct.new(
      :cluster_name,
      :nodegroup_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute nodegroup
    #   <p>The full description of your deleted node group.</p>
    #   @return [Types::Nodegroup]
    class DeleteNodegroupResponse < Struct.new(
      :nodegroup,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The cluster name that</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The ID of the association to be deleted.</p>
    #   @return [String]
    class DeletePodIdentityAssociationRequest < Struct.new(
      :cluster_name,
      :association_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association
    #   <p>The full description of the EKS Pod Identity association that was deleted.</p>
    #   @return [Types::PodIdentityAssociation]
    class DeletePodIdentityAssociationResponse < Struct.new(
      :association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary information about deprecated resource usage for an insight check in the
    #                 <code>UPGRADE_READINESS</code> category.</p>
    # @!attribute usage
    #   <p>The deprecated version of the resource.</p>
    #   @return [String]
    # @!attribute replaced_with
    #   <p>The newer version of the resource to migrate to if applicable. </p>
    #   @return [String]
    # @!attribute stop_serving_version
    #   <p>The version of the software where the deprecated resource version will stop being
    #               served.</p>
    #   @return [String]
    # @!attribute start_serving_replacement_version
    #   <p>The version of the software where the newer resource version became available to
    #               migrate to if applicable.</p>
    #   @return [String]
    # @!attribute client_stats
    #   <p>Details about Kubernetes clients using the deprecated resources.</p>
    #   @return [Array<Types::ClientStat>]
    class DeprecationDetail < Struct.new(
      :usage,
      :replaced_with,
      :stop_serving_version,
      :start_serving_replacement_version,
      :client_stats,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the connected cluster to deregister.</p>
    #   @return [String]
    class DeregisterClusterRequest < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>An object representing an Amazon EKS cluster.</p>
    #   @return [Types::Cluster]
    class DeregisterClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    #   @return [String]
    class DescribeAccessEntryRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_entry
    #   <p>Information about the access entry.</p>
    #   @return [Types::AccessEntry]
    class DescribeAccessEntryResponse < Struct.new(
      :access_entry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by
    #                   <code>DescribeAddonVersions</code>.</p>
    #   @return [String]
    # @!attribute addon_version
    #   <p>The version of the add-on. The version must match one of the versions returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    #   @return [String]
    class DescribeAddonConfigurationRequest < Struct.new(
      :addon_name,
      :addon_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_name
    #   <p>The name of the add-on.</p>
    #   @return [String]
    # @!attribute addon_version
    #   <p>The version of the add-on. The version must match one of the versions returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    #   @return [String]
    # @!attribute configuration_schema
    #   <p>A JSON schema that's used to validate the configuration values you provide when an
    #               add-on is created or updated.</p>
    #   @return [String]
    # @!attribute pod_identity_configuration
    #   <p>The Kubernetes service account name used by the add-on, and any suggested IAM policies.
    #               Use this information to create an IAM Role for the add-on.</p>
    #   @return [Array<Types::AddonPodIdentityConfiguration>]
    class DescribeAddonConfigurationResponse < Struct.new(
      :addon_name,
      :addon_version,
      :configuration_schema,
      :pod_identity_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #   @return [String]
    class DescribeAddonRequest < Struct.new(
      :cluster_name,
      :addon_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon
    #   <p>An Amazon EKS add-on. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html">Amazon EKS add-ons</a> in the
    #               <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::Addon]
    class DescribeAddonResponse < Struct.new(
      :addon,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute kubernetes_version
    #   <p>The Kubernetes versions that you can use the add-on with.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #   @return [String]
    # @!attribute types
    #   <p>The type of the add-on. For valid <code>types</code>, don't specify a value for this
    #               property.</p>
    #   @return [Array<String>]
    # @!attribute publishers
    #   <p>The publisher of the add-on. For valid <code>publishers</code>, don't specify a value
    #               for this property.</p>
    #   @return [Array<String>]
    # @!attribute owners
    #   <p>The owner of the add-on. For valid <code>owners</code>, don't specify a value for this
    #               property.</p>
    #   @return [Array<String>]
    class DescribeAddonVersionsRequest < Struct.new(
      :kubernetes_version,
      :max_results,
      :next_token,
      :addon_name,
      :types,
      :publishers,
      :owners,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addons
    #   <p>The list of available versions with Kubernetes version compatibility and other
    #               properties.</p>
    #   @return [Array<Types::AddonInfo>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #                   <code>DescribeAddonVersions</code> request. When the results of a
    #                   <code>DescribeAddonVersions</code> request exceed <code>maxResults</code>, you can
    #               use this value to retrieve the next page of results. This value is <code>null</code>
    #               when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class DescribeAddonVersionsResponse < Struct.new(
      :addons,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    class DescribeClusterRequest < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The full description of your specified cluster.</p>
    #   @return [Types::Cluster]
    class DescribeClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_type
    #   <p>The type of cluster to filter versions by.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token for the next set of results.</p>
    #   @return [String]
    # @!attribute default_only
    #   <p>Filter to show only default versions.</p>
    #   @return [Boolean]
    # @!attribute include_all
    #   <p>Include all available versions in the response.</p>
    #   @return [Boolean]
    # @!attribute cluster_versions
    #   <p>List of specific cluster versions to describe.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <important>
    #               <p>This field is deprecated. Use <code>versionStatus</code> instead, as that field
    #                   matches for input and output of this action.</p>
    #            </important>
    #            <p>Filter versions by their current status.</p>
    #   @deprecated
    #     status has been replaced by versionStatus
    #     Since: 2025-02-15
    #   @return [String]
    # @!attribute version_status
    #   <p>Filter versions by their current status.</p>
    #   @return [String]
    class DescribeClusterVersionsRequest < Struct.new(
      :cluster_type,
      :max_results,
      :next_token,
      :default_only,
      :include_all,
      :cluster_versions,
      :status,
      :version_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token for the next set of results.</p>
    #   @return [String]
    # @!attribute cluster_versions
    #   <p>List of cluster version information objects.</p>
    #   @return [Array<Types::ClusterVersionInformation>]
    class DescribeClusterVersionsResponse < Struct.new(
      :next_token,
      :cluster_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the subscription.</p>
    #   @return [String]
    class DescribeEksAnywhereSubscriptionRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The full description of the subscription.</p>
    #   @return [Types::EksAnywhereSubscription]
    class DescribeEksAnywhereSubscriptionResponse < Struct.new(
      :subscription,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute fargate_profile_name
    #   <p>The name of the Fargate profile to describe.</p>
    #   @return [String]
    class DescribeFargateProfileRequest < Struct.new(
      :cluster_name,
      :fargate_profile_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute fargate_profile
    #   <p>The full description of your Fargate profile.</p>
    #   @return [Types::FargateProfile]
    class DescribeFargateProfileResponse < Struct.new(
      :fargate_profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute identity_provider_config
    #   <p>An object representing an identity provider configuration.</p>
    #   @return [Types::IdentityProviderConfig]
    class DescribeIdentityProviderConfigRequest < Struct.new(
      :cluster_name,
      :identity_provider_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_config
    #   <p>The object that represents an OpenID Connect (OIDC) identity provider
    #               configuration.</p>
    #   @return [Types::IdentityProviderConfigResponse]
    class DescribeIdentityProviderConfigResponse < Struct.new(
      :identity_provider_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to describe the insight for.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identity of the insight to describe.</p>
    #   @return [String]
    class DescribeInsightRequest < Struct.new(
      :cluster_name,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute insight
    #   <p>The full description of the insight.</p>
    #   @return [Types::Insight]
    class DescribeInsightResponse < Struct.new(
      :insight,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster associated with the insights refresh operation.</p>
    #   @return [String]
    class DescribeInsightsRefreshRequest < Struct.new(
      :cluster_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>The message associated with the insights refresh operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the insights refresh operation.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time when the insights refresh operation started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time when the insights refresh operation ended.</p>
    #   @return [Time]
    class DescribeInsightsRefreshResponse < Struct.new(
      :message,
      :status,
      :started_at,
      :ended_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The name of the node group to describe.</p>
    #   @return [String]
    class DescribeNodegroupRequest < Struct.new(
      :cluster_name,
      :nodegroup_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute nodegroup
    #   <p>The full description of your node group.</p>
    #   @return [Types::Nodegroup]
    class DescribeNodegroupResponse < Struct.new(
      :nodegroup,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster that the association is in.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The ID of the association that you want the description of.</p>
    #   @return [String]
    class DescribePodIdentityAssociationRequest < Struct.new(
      :cluster_name,
      :association_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association
    #   <p>The full description of the EKS Pod Identity association.</p>
    #   @return [Types::PodIdentityAssociation]
    class DescribePodIdentityAssociationResponse < Struct.new(
      :association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an update request.</p>
    # @!attribute name
    #   <p>The name of the Amazon EKS cluster associated with the update.</p>
    #   @return [String]
    # @!attribute update_id
    #   <p>The ID of the update to describe.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The name of the Amazon EKS node group associated with the update. This parameter is
    #               required if the update is a node group update.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>. This parameter is required if the update is an add-on update.</p>
    #   @return [String]
    class DescribeUpdateRequest < Struct.new(
      :name,
      :update_id,
      :nodegroup_name,
      :addon_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update
    #   <p>The full description of the specified update.</p>
    #   @return [Types::Update]
    class DescribeUpdateResponse < Struct.new(
      :update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The ARN of the policy to disassociate from the access entry. For a list of
    #               associated policies ARNs, use <code>ListAssociatedAccessPolicies</code>.</p>
    #   @return [String]
    class DisassociateAccessPolicyRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      :policy_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateAccessPolicyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute identity_provider_config
    #   <p>An object representing an identity provider configuration.</p>
    #   @return [Types::IdentityProviderConfig]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    class DisassociateIdentityProviderConfigRequest < Struct.new(
      :cluster_name,
      :identity_provider_config,
      :client_request_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #   @return [Types::Update]
    class DisassociateIdentityProviderConfigResponse < Struct.new(
      :update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An EKS Anywhere subscription authorizing the customer to support for licensed clusters
    #             and access to EKS Anywhere Curated Packages.</p>
    # @!attribute id
    #   <p>UUID identifying a subscription.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the subscription.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp in seconds for when the subscription was created.</p>
    #   @return [Time]
    # @!attribute effective_date
    #   <p>The Unix timestamp in seconds for when the subscription is effective.</p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>The Unix timestamp in seconds for when the subscription will expire or auto renew,
    #               depending on the auto renew configuration of the subscription object.</p>
    #   @return [Time]
    # @!attribute license_quantity
    #   <p>The number of licenses included in a subscription. Valid values are between 1 and
    #               100.</p>
    #   @return [Integer]
    # @!attribute license_type
    #   <p>The type of licenses included in the subscription. Valid value is CLUSTER. With the
    #               CLUSTER license type, each license covers support for a single EKS Anywhere
    #               cluster.</p>
    #   @return [String]
    # @!attribute term
    #   <p>An EksAnywhereSubscriptionTerm object. </p>
    #   @return [Types::EksAnywhereSubscriptionTerm]
    # @!attribute status
    #   <p>The status of a subscription.</p>
    #   @return [String]
    # @!attribute auto_renew
    #   <p>A boolean indicating whether or not a subscription will auto renew when it
    #               expires.</p>
    #   @return [Boolean]
    # @!attribute license_arns
    #   <p>Amazon Web Services License Manager ARN associated with the subscription.</p>
    #   @return [Array<String>]
    # @!attribute licenses
    #   <p>Includes all of the claims in the license token necessary to validate the license for
    #               extended support.</p>
    #   @return [Array<Types::License>]
    # @!attribute tags
    #   <p>The metadata for a subscription to assist with categorization and organization. Each
    #               tag consists of a key and an optional value. Subscription tags do not propagate to any
    #               other resources associated with the subscription.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:license_quantity] = 0 unless options.key?(:license_quantity)
        options[:auto_renew] = false unless options.key?(:auto_renew)
        super
      end
    end

    # <p>An object representing the term duration and term unit type of your subscription. This
    #             determines the term length of your subscription. Valid values are MONTHS for term unit
    #             and 12 or 36 for term duration, indicating a 12 month or 36 month subscription.</p>
    # @!attribute duration
    #   <p>The duration of the subscription term. Valid values are 12 and 36, indicating a 12
    #               month or 36 month subscription.</p>
    #   @return [Integer]
    # @!attribute unit
    #   <p>The term unit of the subscription. Valid value is <code>MONTHS</code>.</p>
    #   @return [String]
    class EksAnywhereSubscriptionTerm < Struct.new(
      :duration,
      :unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Indicates the current configuration of the load balancing capability on your EKS Auto
    #             Mode cluster. For example, if the capability is enabled or disabled. For more
    #             information, see EKS Auto Mode load balancing capability in the <i>Amazon EKS User Guide</i>.</p>
    # @!attribute enabled
    #   <p>Indicates if the load balancing capability is enabled on your EKS Auto Mode cluster.
    #               If the load balancing capability is enabled, EKS Auto Mode will create and delete load
    #               balancers in your Amazon Web Services account.</p>
    #   @return [Boolean]
    class ElasticLoadBalancing < Struct.new(
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The encryption configuration for the cluster.</p>
    # @!attribute resources
    #   <p>Specifies the resources to be encrypted. The only supported value is
    #                   <code>secrets</code>.</p>
    #   @return [Array<String>]
    # @!attribute provider
    #   <p>Key Management Service (KMS) key. Either the ARN or the alias can be used.</p>
    #   @return [Types::Provider]
    class EncryptionConfig < Struct.new(
      :resources,
      :provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an error when an asynchronous operation fails.</p>
    # @!attribute error_code
    #   <p>A brief description of the error. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>SubnetNotFound</b>: We couldn't find one of the
    #                       subnets associated with the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SecurityGroupNotFound</b>: We couldn't find one
    #                       of the security groups associated with the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EniLimitReached</b>: You have reached the elastic
    #                       network interface limit for your account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IpNotAvailable</b>: A subnet associated with the
    #                       cluster doesn't have any available IP addresses.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AccessDenied</b>: You don't have permissions to
    #                       perform the specified operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>OperationNotPermitted</b>: The service role
    #                       associated with the cluster doesn't have the required access permissions for
    #                       Amazon EKS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>VpcIdNotFound</b>: We couldn't find the VPC
    #                       associated with the cluster.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_message
    #   <p>A more complete description of the error.</p>
    #   @return [String]
    # @!attribute resource_ids
    #   <p>An optional field that contains the resource IDs associated with the error.</p>
    #   @return [Array<String>]
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message,
      :resource_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an Fargate profile.</p>
    # @!attribute fargate_profile_name
    #   <p>The name of the Fargate profile.</p>
    #   @return [String]
    # @!attribute fargate_profile_arn
    #   <p>The full Amazon Resource Name (ARN) of the Fargate profile.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp at object creation.</p>
    #   @return [Time]
    # @!attribute pod_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>Pod</code> execution role to use for any <code>Pod</code>
    #               that matches the selectors in the Fargate profile. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html">
    #                  <code>Pod</code> execution role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>The IDs of subnets to launch a <code>Pod</code> into.</p>
    #   @return [Array<String>]
    # @!attribute selectors
    #   <p>The selectors to match for a <code>Pod</code> to use this Fargate profile.</p>
    #   @return [Array<Types::FargateProfileSelector>]
    # @!attribute status
    #   <p>The current status of the Fargate profile.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute health
    #   <p>The health status of the Fargate profile. If there are issues with your Fargate
    #               profile's health, they are listed here.</p>
    #   @return [Types::FargateProfileHealth]
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
      :health,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The health status of the Fargate profile. If there are issues with your Fargate
    #             profile's health, they are listed here.</p>
    # @!attribute issues
    #   <p>Any issues that are associated with the Fargate profile.</p>
    #   @return [Array<Types::FargateProfileIssue>]
    class FargateProfileHealth < Struct.new(
      :issues,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An issue that is associated with the Fargate profile.</p>
    # @!attribute code
    #   <p>A brief description of the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message associated with the issue.</p>
    #   @return [String]
    # @!attribute resource_ids
    #   <p>The Amazon Web Services resources that are affected by this issue.</p>
    #   @return [Array<String>]
    class FargateProfileIssue < Struct.new(
      :code,
      :message,
      :resource_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an Fargate profile selector.</p>
    # @!attribute namespace
    #   <p>The Kubernetes <code>namespace</code> that the selector should match.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>The Kubernetes labels that the selector should match. A pod must contain all of the labels
    #               that are specified in the selector for it to be considered a match.</p>
    #   @return [Hash<String, String>]
    class FargateProfileSelector < Struct.new(
      :namespace,
      :labels,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an identity provider.</p>
    # @!attribute oidc
    #   <p>An object representing the <a href="https://openid.net/connect/">OpenID Connect</a>
    #               identity provider information.</p>
    #   @return [Types::OIDC]
    class Identity < Struct.new(
      :oidc,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an identity provider configuration.</p>
    # @!attribute type
    #   <p>The type of the identity provider configuration. The only type available is
    #                   <code>oidc</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the identity provider configuration.</p>
    #   @return [String]
    class IdentityProviderConfig < Struct.new(
      :type,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The full description of your identity configuration.</p>
    # @!attribute oidc
    #   <p>An object representing an OpenID Connect (OIDC) identity provider configuration.</p>
    #   @return [Types::OidcIdentityProviderConfig]
    class IdentityProviderConfigResponse < Struct.new(
      :oidc,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A check that provides recommendations to remedy potential upgrade-impacting
    #             issues.</p>
    # @!attribute id
    #   <p>The ID of the insight.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the insight.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the insight.</p>
    #   @return [String]
    # @!attribute kubernetes_version
    #   <p>The Kubernetes minor version associated with an insight if applicable.</p>
    #   @return [String]
    # @!attribute last_refresh_time
    #   <p>The time Amazon EKS last successfully completed a refresh of this insight check on the
    #               cluster.</p>
    #   @return [Time]
    # @!attribute last_transition_time
    #   <p>The time the status of the insight last changed.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the insight which includes alert criteria, remediation
    #               recommendation, and additional resources (contains Markdown).</p>
    #   @return [String]
    # @!attribute insight_status
    #   <p>An object containing more detail on the status of the insight resource.</p>
    #   @return [Types::InsightStatus]
    # @!attribute recommendation
    #   <p>A summary of how to remediate the finding of this insight if applicable. </p>
    #   @return [String]
    # @!attribute additional_info
    #   <p>Links to sources that provide additional context on the insight.</p>
    #   @return [Hash<String, String>]
    # @!attribute resources
    #   <p>The details about each resource listed in the insight check result.</p>
    #   @return [Array<Types::InsightResourceDetail>]
    # @!attribute category_specific_summary
    #   <p>Summary information that relates to the category of the insight. Currently only
    #               returned with certain insights having category <code>UPGRADE_READINESS</code>.</p>
    #   @return [Types::InsightCategorySpecificSummary]
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
      :category_specific_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information that relates to the category of the insight. Currently only
    #             returned with certain insights having category <code>UPGRADE_READINESS</code>.</p>
    # @!attribute deprecation_details
    #   <p>The summary information about deprecated resource usage for an insight check in the
    #                   <code>UPGRADE_READINESS</code> category.</p>
    #   @return [Array<Types::DeprecationDetail>]
    # @!attribute addon_compatibility_details
    #   <p>A list of <code>AddonCompatibilityDetail</code> objects for Amazon EKS add-ons.</p>
    #   @return [Array<Types::AddonCompatibilityDetail>]
    class InsightCategorySpecificSummary < Struct.new(
      :deprecation_details,
      :addon_compatibility_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the resource being evaluated.</p>
    # @!attribute insight_status
    #   <p>An object containing more detail on the status of the insight resource.</p>
    #   @return [Types::InsightStatus]
    # @!attribute kubernetes_resource_uri
    #   <p>The Kubernetes resource URI if applicable.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) if applicable.</p>
    #   @return [String]
    class InsightResourceDetail < Struct.new(
      :insight_status,
      :kubernetes_resource_uri,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the insight.</p>
    # @!attribute status
    #   <p>The status of the resource.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Explanation on the reasoning for the status of the resource. </p>
    #   @return [String]
    class InsightStatus < Struct.new(
      :status,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summarized description of the insight.</p>
    # @!attribute id
    #   <p>The ID of the insight.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the insight.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the insight.</p>
    #   @return [String]
    # @!attribute kubernetes_version
    #   <p>The Kubernetes minor version associated with an insight if applicable. </p>
    #   @return [String]
    # @!attribute last_refresh_time
    #   <p>The time Amazon EKS last successfully completed a refresh of this insight check on the
    #               cluster.</p>
    #   @return [Time]
    # @!attribute last_transition_time
    #   <p>The time the status of the insight last changed.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the insight which includes alert criteria, remediation
    #               recommendation, and additional resources (contains Markdown).</p>
    #   @return [String]
    # @!attribute insight_status
    #   <p>An object containing more detail on the status of the insight.</p>
    #   @return [Types::InsightStatus]
    class InsightSummary < Struct.new(
      :id,
      :name,
      :category,
      :kubernetes_version,
      :last_refresh_time,
      :last_transition_time,
      :description,
      :insight_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria to use for the insights.</p>
    # @!attribute categories
    #   <p>The categories to use to filter insights. The following lists the available categories:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UPGRADE_READINESS</code>: Amazon EKS identifies issues that could impact your
    #                       ability to upgrade to new versions of Kubernetes. These are called upgrade insights.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISCONFIGURATION</code>: Amazon EKS identifies misconfiguration in your EKS
    #                       Hybrid Nodes setup that could impair functionality of your cluster or
    #                       workloads. These are called configuration insights.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute kubernetes_versions
    #   <p>The Kubernetes versions to use to filter the insights.</p>
    #   @return [Array<String>]
    # @!attribute statuses
    #   <p>The statuses to use to filter the insights. </p>
    #   @return [Array<String>]
    class InsightsFilter < Struct.new(
      :categories,
      :kubernetes_versions,
      :statuses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified parameter is invalid. Review the available parameters for the API
    #             request.</p>
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #   @return [String]
    # @!attribute fargate_profile_name
    #   <p>The Fargate profile associated with the exception.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The specified parameter for the add-on name is invalid. Review the available
    #               parameters for the API request</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The Amazon EKS subscription ID with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The specified parameter is invalid. Review the available parameters for the API
    #               request.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :fargate_profile_name,
      :addon_name,
      :subscription_id,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request is invalid given the state of the cluster. Check the state of the cluster
    #             and the associated operations.</p>
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The request is invalid given the state of the add-on name. Check the state of the
    #               cluster and the associated operations.</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The Amazon EKS subscription ID with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The Amazon EKS add-on name associated with the exception.</p>
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :subscription_id,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon EKS detected upgrade readiness issues. Call the <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListInsights.html">
    #                <code>ListInsights</code>
    #             </a> API to view detected upgrade blocking issues.
    #             Pass the <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateClusterVersion.html#API_UpdateClusterVersion_RequestBody">
    #                <code>force</code>
    #             </a> flag when updating to override upgrade readiness
    #             errors.</p>
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidStateException < Struct.new(
      :cluster_name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an issue with an Amazon EKS resource.</p>
    # @!attribute code
    #   <p>A brief description of the error.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>AccessDenied</b>: Amazon EKS or one or more of your
    #                       managed nodes is failing to authenticate or authorize with your Kubernetes cluster
    #                       API server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AsgInstanceLaunchFailures</b>: Your Auto Scaling group is
    #                       experiencing failures while attempting to launch instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AutoScalingGroupNotFound</b>: We couldn't find
    #                       the Auto Scaling group associated with the managed node group. You may be able to
    #                       recreate an Auto Scaling group with the same settings to recover.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ClusterUnreachable</b>: Amazon EKS or one or more of
    #                       your managed nodes is unable to to communicate with your Kubernetes cluster API
    #                       server. This can happen if there are network disruptions or if API servers are
    #                       timing out processing requests. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Ec2InstanceTypeDoesNotExist</b>: One or more of
    #                       the supplied Amazon EC2 instance types do not exist. Amazon EKS checked for the
    #                       instance types that you provided in this Amazon Web Services Region, and one or more aren't
    #                       available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Ec2LaunchTemplateNotFound</b>: We couldn't find
    #                       the Amazon EC2 launch template for your managed node group. You may be able to
    #                       recreate a launch template with the same settings to recover.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Ec2LaunchTemplateVersionMismatch</b>: The Amazon EC2
    #                       launch template version for your managed node group does not match the version
    #                       that Amazon EKS created. You may be able to revert to the version that Amazon EKS created
    #                       to recover.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Ec2SecurityGroupDeletionFailure</b>: We could not
    #                       delete the remote access security group for your managed node group. Remove any
    #                       dependencies from the security group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Ec2SecurityGroupNotFound</b>: We couldn't find
    #                       the cluster security group for the cluster. You must recreate your
    #                       cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Ec2SubnetInvalidConfiguration</b>: One or more
    #                       Amazon EC2 subnets specified for a node group do not automatically assign public IP
    #                       addresses to instances launched into it. If you want your instances to be
    #                       assigned a public IP address, then you need to enable the <code>auto-assign
    #                           public IP address</code> setting for the subnet. See <a href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html#subnet-public-ip">Modifying
    #                           the public <code>IPv4</code> addressing attribute for your subnet</a> in
    #                       the <i>Amazon VPC User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IamInstanceProfileNotFound</b>: We couldn't find
    #                       the IAM instance profile for your managed node group. You may be able to
    #                       recreate an instance profile with the same settings to recover.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IamNodeRoleNotFound</b>: We couldn't find the
    #                       IAM role for your managed node group. You may be able to recreate an IAM
    #                       role with the same settings to recover.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>InstanceLimitExceeded</b>: Your Amazon Web Services account is
    #                       unable to launch any more instances of the specified instance type. You may be
    #                       able to request an Amazon EC2 instance limit increase to recover.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>InsufficientFreeAddresses</b>: One or more of the
    #                       subnets associated with your managed node group does not have enough available
    #                       IP addresses for new nodes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>InternalFailure</b>: These errors are usually
    #                       caused by an Amazon EKS server-side issue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NodeCreationFailure</b>: Your launched instances
    #                       are unable to register with your Amazon EKS cluster. Common causes of this failure
    #                       are insufficient <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">node IAM role</a>
    #                       permissions or lack of outbound internet access for the nodes. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>The error message associated with the issue.</p>
    #   @return [String]
    # @!attribute resource_ids
    #   <p>The Amazon Web Services resources that are afflicted by this issue.</p>
    #   @return [Array<String>]
    class Issue < Struct.new(
      :code,
      :message,
      :resource_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Kubernetes network configuration for the cluster.</p>
    # @!attribute service_ipv4_cidr
    #   <p>Don't specify a value if you select <code>ipv6</code> for <b>ipFamily</b>. The CIDR block to assign Kubernetes service IP addresses from. If
    #               you don't specify a block, Kubernetes assigns addresses from either the
    #                   <code>10.100.0.0/16</code> or <code>172.20.0.0/16</code> CIDR blocks. We recommend
    #               that you specify a block that does not overlap with resources in other networks that are
    #               peered or connected to your VPC. The block must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Within one of the following private IP address blocks:
    #                       <code>10.0.0.0/8</code>, <code>172.16.0.0/12</code>, or
    #                           <code>192.168.0.0/16</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Doesn't overlap with any CIDR block assigned to the VPC that you selected for
    #                       VPC.</p>
    #               </li>
    #               <li>
    #                  <p>Between <code>/24</code> and <code>/12</code>.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>You can only specify a custom CIDR block when you create a cluster. You can't
    #                   change this value after the cluster is created.</p>
    #            </important>
    #   @return [String]
    # @!attribute ip_family
    #   <p>Specify which IP family is used to assign Kubernetes pod and service IP addresses. If you
    #               don't specify a value, <code>ipv4</code> is used by default. You can only specify an IP
    #               family when you create a cluster and can't change this value once the cluster is
    #               created. If you specify <code>ipv6</code>, the VPC and subnets that you specify for
    #               cluster creation must have both <code>IPv4</code> and <code>IPv6</code> CIDR blocks
    #               assigned to them. You can't specify <code>ipv6</code> for clusters in China
    #               Regions.</p>
    #            <p>You can only specify <code>ipv6</code> for <code>1.21</code> and later clusters that
    #               use version <code>1.10.1</code> or later of the Amazon VPC CNI add-on. If you specify
    #                   <code>ipv6</code>, then ensure that your VPC meets the requirements listed in the
    #               considerations listed in <a href="https://docs.aws.amazon.com/eks/latest/userguide/cni-ipv6.html">Assigning IPv6 addresses to pods and
    #                   services</a> in the <i>Amazon EKS User Guide</i>. Kubernetes assigns services <code>IPv6</code>
    #               addresses from the unique local address range <code>(fc00::/7)</code>. You can't specify
    #               a custom <code>IPv6</code> CIDR block. Pod addresses are assigned from the subnet's
    #                   <code>IPv6</code> CIDR.</p>
    #   @return [String]
    # @!attribute elastic_load_balancing
    #   <p>Request to enable or disable the load balancing capability on your EKS Auto Mode
    #               cluster. For more information, see EKS Auto Mode load balancing capability in the
    #               <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::ElasticLoadBalancing]
    class KubernetesNetworkConfigRequest < Struct.new(
      :service_ipv4_cidr,
      :ip_family,
      :elastic_load_balancing,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Kubernetes network configuration for the cluster. The response contains a value for
    #                 <b>serviceIpv6Cidr</b> or <b>serviceIpv4Cidr</b>, but not both. </p>
    # @!attribute service_ipv4_cidr
    #   <p>The CIDR block that Kubernetes <code>Pod</code> and <code>Service</code> object IP
    #               addresses are assigned from. Kubernetes assigns addresses from an <code>IPv4</code> CIDR
    #               block assigned to a subnet that the node is in. If you didn't specify a CIDR block when
    #               you created the cluster, then Kubernetes assigns addresses from either the
    #                   <code>10.100.0.0/16</code> or <code>172.20.0.0/16</code> CIDR blocks. If this was
    #               specified, then it was specified when the cluster was created and it can't be
    #               changed.</p>
    #   @return [String]
    # @!attribute service_ipv6_cidr
    #   <p>The CIDR block that Kubernetes pod and service IP addresses are assigned from if you
    #               created a 1.21 or later cluster with version 1.10.1 or later of the Amazon VPC CNI add-on and
    #               specified <code>ipv6</code> for <b>ipFamily</b> when you
    #               created the cluster. Kubernetes assigns service addresses from the unique local address range
    #                   (<code>fc00::/7</code>) because you can't specify a custom IPv6 CIDR block when you
    #               create the cluster.</p>
    #   @return [String]
    # @!attribute ip_family
    #   <p>The IP family used to assign Kubernetes <code>Pod</code> and <code>Service</code> objects
    #               IP addresses. The IP family is always <code>ipv4</code>, unless you have a
    #                   <code>1.21</code> or later cluster running version <code>1.10.1</code> or later of
    #               the Amazon VPC CNI plugin for Kubernetes and specified <code>ipv6</code> when you created the cluster.
    #           </p>
    #   @return [String]
    # @!attribute elastic_load_balancing
    #   <p>Indicates the current configuration of the load balancing capability on your EKS Auto
    #               Mode cluster. For example, if the capability is enabled or disabled.</p>
    #   @return [Types::ElasticLoadBalancing]
    class KubernetesNetworkConfigResponse < Struct.new(
      :service_ipv4_cidr,
      :service_ipv6_cidr,
      :ip_family,
      :elastic_load_balancing,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a node group launch template specification. The launch template
    #             can't include <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html">
    #                <code>SubnetId</code>
    #             </a>, <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html">
    #                <code>IamInstanceProfile</code>
    #             </a>, <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html">
    #                <code>RequestSpotInstances</code>
    #             </a>, <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html">
    #                <code>HibernationOptions</code>
    #             </a>, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html">
    #                <code>TerminateInstances</code>
    #             </a>, or the node group  deployment or
    #             update will fail. For more information about launch templates, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html">
    #                <code>CreateLaunchTemplate</code>
    #             </a> in the Amazon EC2 API Reference.
    #             For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #          <p>You must specify either the launch template ID or the launch template name in the
    #             request, but not both.</p>
    # @!attribute name
    #   <p>The name of the launch template.</p>
    #            <p>You must specify either the launch template name or the launch template ID in the
    #               request, but not both. After node group creation, you cannot use a different
    #               name.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the launch template to use. If no version is specified, then the
    #               template's default version is used. You can use a different version for node group
    #               updates.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the launch template.</p>
    #            <p>You must specify either the launch template ID or the launch template name in the
    #               request, but not both. After node group creation, you cannot use a different ID.</p>
    #   @return [String]
    class LaunchTemplateSpecification < Struct.new(
      :name,
      :version,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An EKS Anywhere license associated with a subscription.</p>
    # @!attribute id
    #   <p>An id associated with an EKS Anywhere subscription license.</p>
    #   @return [String]
    # @!attribute token
    #   <p>An optional license token that can be used for extended support verification.</p>
    #   @return [String]
    class License < Struct.new(
      :id,
      :token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute associated_policy_arn
    #   <p>The ARN of an <code>AccessPolicy</code>. When you specify an access policy ARN,
    #               only the access entries associated to that access policy are returned. For a list of
    #               available policy ARNs, use <code>ListAccessPolicies</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListAccessEntriesRequest < Struct.new(
      :cluster_name,
      :associated_policy_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_entries
    #   <p>The list of access entries that exist for the cluster.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListAccessEntriesResponse < Struct.new(
      :access_entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListAccessPoliciesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policies
    #   <p>The list of available access policies. You can't view the contents of an access policy
    #               using the API. To view the contents, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/access-policies.html#access-policy-permissions">Access
    #                   policy permissions</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Array<Types::AccessPolicy>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListAccessPoliciesResponse < Struct.new(
      :access_policies,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListAddonsRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addons
    #   <p>A list of installed add-ons.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListAddons</code>
    #               request. When the results of a <code>ListAddons</code> request exceed
    #                   <code>maxResults</code>, you can use this value to retrieve the next page of
    #               results. This value is <code>null</code> when there are no more results to
    #               return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListAddonsResponse < Struct.new(
      :addons,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListAssociatedAccessPoliciesRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    # @!attribute associated_access_policies
    #   <p>The list of access policies associated with the access entry.</p>
    #   @return [Array<Types::AssociatedAccessPolicy>]
    class ListAssociatedAccessPoliciesResponse < Struct.new(
      :cluster_name,
      :principal_arn,
      :next_token,
      :associated_access_policies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    # @!attribute include
    #   <p>Indicates whether external clusters are included in the returned list. Use
    #                   '<code>all</code>' to return <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html">https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html</a>connected clusters, or blank to
    #               return only Amazon EKS clusters. '<code>all</code>' must be in lowercase otherwise an error
    #               occurs.</p>
    #   @return [Array<String>]
    class ListClustersRequest < Struct.new(
      :max_results,
      :next_token,
      :include,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute clusters
    #   <p>A list of all of the clusters for your account in the specified Amazon Web Services Region .</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListClustersResponse < Struct.new(
      :clusters,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of cluster results returned by ListEksAnywhereSubscriptions in
    #               paginated output. When you use this parameter, ListEksAnywhereSubscriptions returns only
    #               maxResults results in a single page along with a nextToken response element. You can see
    #               the remaining results of the initial request by sending another
    #               ListEksAnywhereSubscriptions request with the returned nextToken value. This value can
    #               be between 1 and 100. If you don't use this parameter, ListEksAnywhereSubscriptions
    #               returns up to 10 results and a nextToken value if applicable.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListEksAnywhereSubscriptions</code> request where <code>maxResults</code> was
    #               used and the results exceeded the value of that parameter. Pagination continues from the
    #               end of the previous results that returned the <code>nextToken</code> value.</p>
    #   @return [String]
    # @!attribute include_status
    #   <p>An array of subscription statuses to filter on.</p>
    #   @return [Array<String>]
    class ListEksAnywhereSubscriptionsRequest < Struct.new(
      :max_results,
      :next_token,
      :include_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriptions
    #   <p>A list of all subscription objects in the region, filtered by includeStatus and
    #               paginated by nextToken and maxResults.</p>
    #   @return [Array<Types::EksAnywhereSubscription>]
    # @!attribute next_token
    #   <p>The nextToken value to include in a future ListEksAnywhereSubscriptions request. When
    #               the results of a ListEksAnywhereSubscriptions request exceed maxResults, you can use
    #               this value to retrieve the next page of results. This value is null when there are no
    #               more results to return.</p>
    #   @return [String]
    class ListEksAnywhereSubscriptionsResponse < Struct.new(
      :subscriptions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListFargateProfilesRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute fargate_profile_names
    #   <p>A list of all of the Fargate profiles associated with the specified cluster.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListFargateProfilesResponse < Struct.new(
      :fargate_profile_names,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListIdentityProviderConfigsRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_provider_configs
    #   <p>The identity provider configurations for the cluster.</p>
    #   @return [Array<Types::IdentityProviderConfig>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #                   <code>ListIdentityProviderConfigsResponse</code> request. When the results of a
    #                   <code>ListIdentityProviderConfigsResponse</code> request exceed
    #                   <code>maxResults</code>, you can use this value to retrieve the next page of
    #               results. This value is <code>null</code> when there are no more results to
    #               return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListIdentityProviderConfigsResponse < Struct.new(
      :identity_provider_configs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the Amazon EKS cluster associated with the insights.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>The criteria to filter your list of insights for your cluster. You can filter which
    #               insights are returned by category, associated Kubernetes version, and status.</p>
    #   @return [Types::InsightsFilter]
    # @!attribute max_results
    #   <p>The maximum number of identity provider configurations returned by
    #                   <code>ListInsights</code> in paginated output. When you use this parameter,
    #                   <code>ListInsights</code> returns only <code>maxResults</code> results in a single
    #               page along with a <code>nextToken</code> response element. You can see the remaining
    #               results of the initial request by sending another <code>ListInsights</code> request with
    #               the returned <code>nextToken</code> value. This value can be between 1
    #               and 100. If you don't use this parameter, <code>ListInsights</code>
    #               returns up to 100 results and a <code>nextToken</code> value, if
    #               applicable.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListInsights</code> request. When the results of a <code>ListInsights</code>
    #               request exceed <code>maxResults</code>, you can use this value to retrieve the next page
    #               of results. This value is <code>null</code> when there are no more results to
    #               return.</p>
    #   @return [String]
    class ListInsightsRequest < Struct.new(
      :cluster_name,
      :filter,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute insights
    #   <p>The returned list of insights.</p>
    #   @return [Array<Types::InsightSummary>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListInsights</code>
    #               request. When the results of a <code>ListInsights</code> request exceed
    #                   <code>maxResults</code>, you can use this value to retrieve the next page of
    #               results. This value is <code>null</code> when there are no more results to
    #               return.</p>
    #   @return [String]
    class ListInsightsResponse < Struct.new(
      :insights,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListNodegroupsRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute nodegroups
    #   <p>A list of all of the node groups associated with the specified cluster.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListNodegroupsResponse < Struct.new(
      :nodegroups,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster that the associations are in.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the Kubernetes namespace inside the cluster that the associations are in.</p>
    #   @return [String]
    # @!attribute service_account
    #   <p>The name of the Kubernetes service account that the associations use.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of EKS Pod Identity association results returned by
    #                   <code>ListPodIdentityAssociations</code> in paginated output. When you use this
    #               parameter, <code>ListPodIdentityAssociations</code> returns only <code>maxResults</code>
    #               results in a single page along with a <code>nextToken</code> response element. You can
    #               see the remaining results of the initial request by sending another
    #                   <code>ListPodIdentityAssociations</code> request with the returned
    #                   <code>nextToken</code> value. This value can be between 1 and
    #               100. If you don't use this parameter,
    #                   <code>ListPodIdentityAssociations</code> returns up to 100 results
    #               and a <code>nextToken</code> value if applicable.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListUpdates</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListPodIdentityAssociationsRequest < Struct.new(
      :cluster_name,
      :namespace,
      :service_account,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute associations
    #   <p>The list of summarized descriptions of the associations that are in the cluster and match
    #               any filters that you provided.</p>
    #            <p>Each summary is simplified by removing these fields compared to the full <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_PodIdentityAssociation.html">
    #                  <code>PodIdentityAssociation</code>
    #               </a>:</p>
    #            <ul>
    #               <li>
    #                  <p>The IAM role: <code>roleArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The timestamp that the association was created at: <code>createdAt</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The most recent timestamp that the association was modified at:. <code>modifiedAt</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The tags on the association: <code>tags</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::PodIdentityAssociationSummary>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #                   <code>ListPodIdentityAssociations</code> request. When the results of a
    #                   <code>ListPodIdentityAssociations</code> request exceed <code>maxResults</code>, you
    #               can use this value to retrieve the next page of results. This value is <code>null</code>
    #               when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListPodIdentityAssociationsResponse < Struct.new(
      :associations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon EKS cluster to list updates for.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The name of the Amazon EKS managed node group to list updates for.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The names of the installed add-ons that have available updates.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    #   @return [Integer]
    class ListUpdatesRequest < Struct.new(
      :name,
      :nodegroup_name,
      :addon_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_ids
    #   <p>A list of all the updates for the specified cluster and Region.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListUpdatesResponse < Struct.new(
      :update_ids,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the enabled or disabled Kubernetes control plane logs for your
    #             cluster.</p>
    # @!attribute types
    #   <p>The available cluster control plane log types.</p>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p>If a log type is enabled, that log type exports its control plane logs to CloudWatch Logs . If a
    #               log type isn't enabled, that log type doesn't export its control plane logs. Each
    #               individual log type can be enabled or disabled independently.</p>
    #   @return [Boolean]
    class LogSetup < Struct.new(
      :types,
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the logging configuration for resources in your cluster.</p>
    # @!attribute cluster_logging
    #   <p>The cluster control plane logging configuration for your cluster.</p>
    #   @return [Array<Types::LogSetup>]
    class Logging < Struct.new(
      :cluster_logging,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Amazon EKS add-on from the Amazon Web Services Marketplace.</p>
    # @!attribute product_id
    #   <p>The product ID from the Amazon Web Services Marketplace.</p>
    #   @return [String]
    # @!attribute product_url
    #   <p>The product URL from the Amazon Web Services Marketplace.</p>
    #   @return [String]
    class MarketplaceInformation < Struct.new(
      :product_id,
      :product_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The node auto repair configuration for the node group.</p>
    # @!attribute enabled
    #   <p>Specifies whether to enable node auto repair for the node group. Node auto repair is
    #               disabled by default.</p>
    #   @return [Boolean]
    class NodeRepairConfig < Struct.new(
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an Amazon EKS managed node group.</p>
    # @!attribute nodegroup_name
    #   <p>The name associated with an Amazon EKS managed node group.</p>
    #   @return [String]
    # @!attribute nodegroup_arn
    #   <p>The Amazon Resource Name (ARN) associated with the managed node group.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The Kubernetes version of the managed node group.</p>
    #   @return [String]
    # @!attribute release_version
    #   <p>If the node group was deployed using a launch template with a custom AMI, then this is
    #               the AMI ID that was specified in the launch template. For node groups that weren't
    #               deployed using a launch template, this is the version of the Amazon EKS optimized AMI that
    #               the node group was deployed with.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp at object creation.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The Unix epoch timestamp for the last modification to the object.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the managed node group.</p>
    #   @return [String]
    # @!attribute capacity_type
    #   <p>The capacity type of your managed node group.</p>
    #   @return [String]
    # @!attribute scaling_config
    #   <p>The scaling configuration details for the Auto Scaling group that is associated with
    #               your node group.</p>
    #   @return [Types::NodegroupScalingConfig]
    # @!attribute instance_types
    #   <p>If the node group wasn't deployed with a launch template, then this is the instance
    #               type that is associated with the node group. If the node group was deployed with a
    #               launch template, then this is <code>null</code>.</p>
    #   @return [Array<String>]
    # @!attribute subnets
    #   <p>The subnets that were specified for the Auto Scaling group that is associated with
    #               your node group.</p>
    #   @return [Array<String>]
    # @!attribute remote_access
    #   <p>If the node group wasn't deployed with a launch template, then this is the remote
    #               access configuration that is associated with the node group. If the node group was
    #               deployed with a launch template, then this is <code>null</code>.</p>
    #   @return [Types::RemoteAccessConfig]
    # @!attribute ami_type
    #   <p>If the node group was deployed using a launch template with a custom AMI, then this is
    #                   <code>CUSTOM</code>. For node groups that weren't deployed using a launch template,
    #               this is the AMI type that was specified in the node group configuration.</p>
    #   @return [String]
    # @!attribute node_role
    #   <p>The IAM role associated with your node group. The Amazon EKS node <code>kubelet</code>
    #               daemon makes calls to Amazon Web Services APIs on your behalf. Nodes receive permissions for these API
    #               calls through an IAM instance profile and associated policies.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>The Kubernetes <code>labels</code> applied to the nodes in the node group.</p>
    #            <note>
    #               <p>Only <code>labels</code> that are applied with the Amazon EKS API are shown here. There
    #                   may be other Kubernetes <code>labels</code> applied to the nodes in this group.</p>
    #            </note>
    #   @return [Hash<String, String>]
    # @!attribute taints
    #   <p>The Kubernetes taints to be applied to the nodes in the node group when they are created.
    #               Effect is one of <code>No_Schedule</code>, <code>Prefer_No_Schedule</code>, or
    #                   <code>No_Execute</code>. Kubernetes taints can be used together with tolerations to
    #               control how workloads are scheduled to your nodes. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on managed node groups</a>.</p>
    #   @return [Array<Types::Taint>]
    # @!attribute resources
    #   <p>The resources associated with the node group, such as Auto Scaling groups and security
    #               groups for remote access.</p>
    #   @return [Types::NodegroupResources]
    # @!attribute disk_size
    #   <p>If the node group wasn't deployed with a launch template, then this is the disk size
    #               in the node group configuration. If the node group was deployed with a launch template,
    #               then this is <code>null</code>.</p>
    #   @return [Integer]
    # @!attribute health
    #   <p>The health status of the node group. If there are issues with your node group's
    #               health, they are listed here.</p>
    #   @return [Types::NodegroupHealth]
    # @!attribute update_config
    #   <p>The node group update configuration.</p>
    #   @return [Types::NodegroupUpdateConfig]
    # @!attribute node_repair_config
    #   <p>The node auto repair configuration for the node group.</p>
    #   @return [Types::NodeRepairConfig]
    # @!attribute launch_template
    #   <p>If a launch template was used to create the node group, then this is the launch
    #               template that was used.</p>
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the health status of the node group.</p>
    # @!attribute issues
    #   <p>Any issues that are associated with the node group. </p>
    #   @return [Array<Types::Issue>]
    class NodegroupHealth < Struct.new(
      :issues,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the resources associated with the node group, such as Auto
    #             Scaling groups and security groups for remote access.</p>
    # @!attribute auto_scaling_groups
    #   <p>The Auto Scaling groups associated with the node group.</p>
    #   @return [Array<Types::AutoScalingGroup>]
    # @!attribute remote_access_security_group
    #   <p>The remote access security group associated with the node group. This security group
    #               controls SSH access to the nodes.</p>
    #   @return [String]
    class NodegroupResources < Struct.new(
      :auto_scaling_groups,
      :remote_access_security_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the scaling configuration details for the Auto Scaling group that is
    #             associated with your node group. When creating a node group, you must specify all or
    #             none of the properties. When updating a node group, you can specify any or none of the
    #             properties.</p>
    # @!attribute min_size
    #   <p>The minimum number of nodes that the managed node group can scale in to.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum number of nodes that the managed node group can scale out to. For
    #               information about the maximum number that you can specify, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/service-quotas.html">Amazon EKS service
    #                   quotas</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute desired_size
    #   <p>The current number of nodes that the managed node group should maintain.</p>
    #            <important>
    #               <p>If you use the Kubernetes <a href="https://github.com/kubernetes/autoscaler#kubernetes-autoscaler">Cluster
    #                       Autoscaler</a>, you shouldn't change the <code>desiredSize</code> value
    #                   directly, as this can cause the Cluster Autoscaler to suddenly scale up or scale
    #                   down.</p>
    #            </important>
    #            <p>Whenever this parameter changes, the number of worker nodes in the node group is
    #               updated to the specified size. If this parameter is given a value that is smaller than
    #               the current number of running worker nodes, the necessary number of worker nodes are
    #               terminated to match the given value.
    #               
    #               When using CloudFormation, no action occurs if you remove this parameter from your CFN
    #               template.</p>
    #            <p>This parameter can be different from <code>minSize</code> in some cases, such as when
    #               starting with extra hosts for testing. This parameter can also be different when you
    #               want to start with an estimated number of needed hosts, but let the Cluster Autoscaler
    #               reduce the number if there are too many. When the Cluster Autoscaler is used, the
    #                   <code>desiredSize</code> parameter is altered by the Cluster Autoscaler (but can be
    #               out-of-date for short periods of time). the Cluster Autoscaler doesn't scale a managed
    #               node group lower than <code>minSize</code> or higher than <code>maxSize</code>.</p>
    #   @return [Integer]
    class NodegroupScalingConfig < Struct.new(
      :min_size,
      :max_size,
      :desired_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The node group update configuration. An Amazon EKS managed node group updates by replacing
    #             nodes with new nodes of newer AMI versions in parallel. You choose the <i>maximum
    #                 unavailable</i> and the <i>update strategy</i>.</p>
    # @!attribute max_unavailable
    #   <p>The maximum number of nodes unavailable at once during a version update. Nodes are
    #               updated in parallel. This value or <code>maxUnavailablePercentage</code> is required to
    #               have a value.The maximum number is 100.</p>
    #   @return [Integer]
    # @!attribute max_unavailable_percentage
    #   <p>The maximum percentage of nodes unavailable during a version update. This percentage
    #               of nodes are updated in parallel, up to 100 nodes at once. This value or
    #                   <code>maxUnavailable</code> is required to have a value.</p>
    #   @return [Integer]
    # @!attribute update_strategy
    #   <p>The configuration for the behavior to follow during a node group version update of
    #               this managed node group. You choose between two possible strategies for replacing nodes
    #               during an <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateNodegroupVersion.html">
    #                  <code>UpdateNodegroupVersion</code>
    #               </a> action.</p>
    #            <p>An Amazon EKS managed node group updates by replacing nodes with new nodes of newer AMI
    #               versions in parallel. The <i>update strategy</i> changes the managed node
    #               update behavior of the managed node group for each quantity. The
    #                   <i>default</i> strategy has guardrails to protect you from
    #               misconfiguration and launches the new instances first, before terminating the old
    #               instances. The <i>minimal</i> strategy removes the guardrails and
    #               terminates the old instances before launching the new instances. This minimal strategy
    #               is useful in scenarios where you are constrained to resources or costs (for example,
    #               with hardware accelerators such as GPUs).</p>
    #   @return [String]
    class NodegroupUpdateConfig < Struct.new(
      :max_unavailable,
      :max_unavailable_percentage,
      :update_strategy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A service resource associated with the request could not be found. Clients should not
    #             retry such requests.</p>
    # @!attribute message
    #   <p>A service resource associated with the request could not be found. Clients should not
    #               retry such requests.</p>
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the <a href="https://openid.net/connect/">OpenID Connect</a>
    #             (OIDC) identity provider information for the cluster.</p>
    # @!attribute issuer
    #   <p>The issuer URL for the OIDC identity provider.</p>
    #   @return [String]
    class OIDC < Struct.new(
      :issuer,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the configuration for an OpenID Connect (OIDC) identity provider.
    #         </p>
    # @!attribute identity_provider_config_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute identity_provider_config_arn
    #   <p>The ARN of the configuration.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute issuer_url
    #   <p>The URL of the OIDC identity provider that allows the API server to discover public
    #               signing keys for verifying tokens.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>This is also known as <i>audience</i>. The ID of the client application
    #               that makes authentication requests to the OIDC identity provider.</p>
    #   @return [String]
    # @!attribute username_claim
    #   <p>The JSON Web token (JWT) claim that is used as the username.</p>
    #   @return [String]
    # @!attribute username_prefix
    #   <p>The prefix that is prepended to username claims to prevent clashes with existing
    #               names. The prefix can't contain <code>system:</code>
    #            </p>
    #   @return [String]
    # @!attribute groups_claim
    #   <p>The JSON web token (JWT) claim that the provider uses to return your groups.</p>
    #   @return [String]
    # @!attribute groups_prefix
    #   <p>The prefix that is prepended to group claims to prevent clashes with existing names
    #               (such as <code>system:</code> groups). For example, the value<code> oidc:</code> creates
    #               group names like <code>oidc:engineering</code> and <code>oidc:infra</code>. The prefix
    #               can't contain <code>system:</code>
    #            </p>
    #   @return [String]
    # @!attribute required_claims
    #   <p>The key-value pairs that describe required claims in the identity token. If set, each
    #               claim is verified to be present in the token with a matching value.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the OIDC identity provider.</p>
    #   @return [String]
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
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an OpenID Connect (OIDC) configuration. Before associating an
    #             OIDC identity provider to your cluster, review the considerations in <a href="https://docs.aws.amazon.com/eks/latest/userguide/authenticate-oidc-identity-provider.html">Authenticating
    #                 users for your cluster from an OIDC identity provider</a> in the
    #             <i>Amazon EKS User Guide</i>.</p>
    # @!attribute identity_provider_config_name
    #   <p>The name of the OIDC provider configuration.</p>
    #   @return [String]
    # @!attribute issuer_url
    #   <p>The URL of the OIDC identity provider that allows the API server to discover public
    #               signing keys for verifying tokens. The URL must begin with <code>https://</code> and
    #               should correspond to the <code>iss</code> claim in the provider's OIDC ID tokens.
    #               Based on the OIDC standard, path components are allowed but query parameters are not.
    #               Typically the URL consists of only a hostname, like
    #                   <code>https://server.example.org</code> or <code>https://example.com</code>. This
    #               URL should point to the level below <code>.well-known/openid-configuration</code> and
    #               must be publicly accessible over the internet.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>This is also known as <i>audience</i>. The ID for the client application
    #               that makes authentication requests to the OIDC identity provider.</p>
    #   @return [String]
    # @!attribute username_claim
    #   <p>The JSON Web Token (JWT) claim to use as the username. The default is
    #               <code>sub</code>, which is expected to be a unique identifier of the end user. You can
    #               choose other claims, such as <code>email</code> or <code>name</code>, depending on the
    #               OIDC identity provider. Claims other than <code>email</code> are prefixed with the
    #               issuer URL to prevent naming clashes with other plug-ins.</p>
    #   @return [String]
    # @!attribute username_prefix
    #   <p>The prefix that is prepended to username claims to prevent clashes with existing
    #               names. If you do not provide this field, and <code>username</code> is a value other than
    #                   <code>email</code>, the prefix defaults to <code>issuerurl#</code>. You can use the
    #               value <code>-</code> to disable all prefixing.</p>
    #   @return [String]
    # @!attribute groups_claim
    #   <p>The JWT claim that the provider uses to return your groups.</p>
    #   @return [String]
    # @!attribute groups_prefix
    #   <p>The prefix that is prepended to group claims to prevent clashes with existing names
    #               (such as <code>system:</code> groups). For example, the value<code> oidc:</code> will
    #               create group names like <code>oidc:engineering</code> and
    #               <code>oidc:infra</code>.</p>
    #   @return [String]
    # @!attribute required_claims
    #   <p>The key value pairs that describe required claims in the identity token. If set, each
    #               claim is verified to be present in the token with a matching value. For the maximum
    #               number of claims that you can require, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/service-quotas.html">Amazon EKS service quotas</a> in the
    #               <i>Amazon EKS User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class OidcIdentityProviderConfigRequest < Struct.new(
      :identity_provider_config_name,
      :issuer_url,
      :client_id,
      :username_claim,
      :username_prefix,
      :groups_claim,
      :groups_prefix,
      :required_claims,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of your local Amazon EKS cluster on an Amazon Web Services Outpost. Before creating a
    #             cluster on an Outpost, review <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-local-cluster-create.html">Creating a local
    #                 cluster on an Outpost</a> in the <i>Amazon EKS User Guide</i>. This API isn't available for
    #             Amazon EKS clusters on the Amazon Web Services cloud.</p>
    # @!attribute outpost_arns
    #   <p>The ARN of the Outpost that you want to use for your local Amazon EKS cluster on
    #               Outposts. Only a single Outpost ARN is supported.</p>
    #   @return [Array<String>]
    # @!attribute control_plane_instance_type
    #   <p>The Amazon EC2 instance type that you want to use for your local Amazon EKS cluster on Outposts.
    #               Choose an instance type based on the number of nodes that your cluster will have. For
    #               more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html">Capacity
    #                   considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <p>The instance type that you specify is used for all Kubernetes control plane instances. The
    #               instance type can't be changed after cluster creation. The control plane is not
    #               automatically scaled by Amazon EKS.</p>
    #            <p> </p>
    #   @return [String]
    # @!attribute control_plane_placement
    #   <p>An object representing the placement configuration for all the control plane instances
    #               of your local Amazon EKS cluster on an Amazon Web Services Outpost. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html">Capacity considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::ControlPlanePlacementRequest]
    class OutpostConfigRequest < Struct.new(
      :outpost_arns,
      :control_plane_instance_type,
      :control_plane_placement,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the configuration of your local Amazon EKS cluster on an Amazon Web Services
    #             Outpost. This API isn't available for Amazon EKS clusters on the Amazon Web Services cloud.</p>
    # @!attribute outpost_arns
    #   <p>The ARN of the Outpost that you specified for use with your local Amazon EKS cluster on
    #               Outposts.</p>
    #   @return [Array<String>]
    # @!attribute control_plane_instance_type
    #   <p>The Amazon EC2 instance type used for the control plane. The instance type is the same for
    #               all control plane instances.</p>
    #   @return [String]
    # @!attribute control_plane_placement
    #   <p>An object representing the placement configuration for all the control plane instances
    #               of your local Amazon EKS cluster on an Amazon Web Services Outpost. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html">Capacity
    #                   considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Types::ControlPlanePlacementResponse]
    class OutpostConfigResponse < Struct.new(
      :outpost_arns,
      :control_plane_instance_type,
      :control_plane_placement,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon EKS Pod Identity associations provide the ability to manage credentials for your applications, similar to the way that Amazon EC2 instance profiles provide credentials to Amazon EC2 instances.</p>
    # @!attribute cluster_name
    #   <p>The name of the cluster that the association is in.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the Kubernetes namespace inside the cluster to create the association in. The
    #               service account and the Pods that use the service account must be in this
    #               namespace.</p>
    #   @return [String]
    # @!attribute service_account
    #   <p>The name of the Kubernetes service account inside the cluster to associate the IAM
    #               credentials with.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity
    #               agent manages credentials to assume this role for applications in the containers in the
    #               Pods that use this service account.</p>
    #   @return [String]
    # @!attribute association_arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource – 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length – 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length – 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute created_at
    #   <p>The timestamp that the association was created at.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The most recent timestamp that the association was modified at.</p>
    #   @return [Time]
    # @!attribute owner_arn
    #   <p>If defined, the EKS Pod Identity association is owned by an Amazon EKS add-on.</p>
    #   @return [String]
    # @!attribute disable_session_tags
    #   <p>The state of the automatic sessions tags. The value of <i>true</i>
    #               disables these tags.</p>
    #            <p>EKS Pod Identity adds a pre-defined set of session tags when it assumes the role. You
    #               can use these tags to author a single role that can work across resources by allowing
    #               access to Amazon Web Services resources based on matching tags. By default, EKS Pod Identity attaches
    #               six tags, including tags for cluster name, namespace, and service account name. For the
    #               list of tags added by EKS Pod Identity, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-id-abac.html#pod-id-abac-tags">List of session tags
    #                   added by EKS Pod Identity</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute target_role_arn
    #   <p>The Amazon Resource Name (ARN) of the target IAM role to associate with the service account. This
    #               role is assumed by using the EKS Pod Identity association role, then the credentials for this
    #               role are injected into the Pod.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The unique identifier for this EKS Pod Identity association for a target IAM role. You put this value
    #               in the trust policy of the target role, in a <code>Condition</code> to match the
    #                   <code>sts.ExternalId</code>. This ensures that the target role can only be assumed
    #               by this association. This prevents the <i>confused deputy problem</i>. For
    #               more information about the confused deputy problem, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html">The confused deputy
    #               problem</a> in the <i>IAM User Guide</i>.</p>
    #            <p>If you want to use the same target role with multiple associations or
    #               other roles, use independent statements in the trust policy to allow
    #               <code>sts:AssumeRole</code> access from each role.</p>
    #   @return [String]
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
      :external_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summarized description of the association.</p>
    #          <p>Each summary is simplified by removing these fields compared to the full <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_PodIdentityAssociation.html">
    #                <code>PodIdentityAssociation</code>
    #             </a>:</p>
    #          <ul>
    #             <li>
    #                <p>The IAM role: <code>roleArn</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>The timestamp that the association was created at: <code>createdAt</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>The most recent timestamp that the association was modified at:. <code>modifiedAt</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>The tags on the association: <code>tags</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute cluster_name
    #   <p>The name of the cluster that the association is in.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the Kubernetes namespace inside the cluster to create the association in. The
    #               service account and the Pods that use the service account must be in this
    #               namespace.</p>
    #   @return [String]
    # @!attribute service_account
    #   <p>The name of the Kubernetes service account inside the cluster to associate the IAM
    #               credentials with.</p>
    #   @return [String]
    # @!attribute association_arn
    #   <p>The Amazon Resource Name (ARN) of the association.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The ID of the association.</p>
    #   @return [String]
    # @!attribute owner_arn
    #   <p>If defined, the association is owned by an Amazon EKS add-on.</p>
    #   @return [String]
    class PodIdentityAssociationSummary < Struct.new(
      :cluster_name,
      :namespace,
      :service_account,
      :association_arn,
      :association_id,
      :owner_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies the Key Management Service (KMS) key used to encrypt the secrets.</p>
    # @!attribute key_arn
    #   <p>Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must be symmetric and created in
    #               the same Amazon Web Services Region as the cluster. If the KMS key was created in a different
    #               account, the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html">IAM principal</a> must have access to the KMS key. For more information,
    #               see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html">Allowing
    #                   users in other accounts to use a KMS key</a> in the <i>Key Management Service
    #                   Developer Guide</i>.</p>
    #   @return [String]
    class Provider < Struct.new(
      :key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique name for this cluster in your Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute connector_config
    #   <p>The configuration settings required to connect the Kubernetes cluster to the Amazon EKS control
    #               plane.</p>
    #   @return [Types::ConnectorConfigRequest]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    class RegisterClusterRequest < Struct.new(
      :name,
      :connector_config,
      :client_request_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>An object representing an Amazon EKS cluster.</p>
    #   @return [Types::Cluster]
    class RegisterClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the remote access configuration for the managed node
    #             group.</p>
    # @!attribute ec2_ssh_key
    #   <p>The Amazon EC2 SSH key name that provides access for SSH communication with the nodes in
    #               the managed node group. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Amazon EC2 key
    #                   pairs and Linux instances</a> in the <i>Amazon Elastic Compute Cloud User Guide for Linux Instances</i>. For Windows, an Amazon EC2 SSH
    #               key is used to obtain the RDP password. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-key-pairs.html">Amazon EC2 key
    #                   pairs and Windows instances</a> in the <i>Amazon Elastic Compute Cloud User Guide for Windows Instances</i>.</p>
    #   @return [String]
    # @!attribute source_security_groups
    #   <p>The security group IDs that are allowed SSH access (port 22) to the nodes. For
    #               Windows, the port is 3389. If you specify an Amazon EC2 SSH key but don't specify a source
    #               security group when you create a managed node group, then the port on the nodes is
    #               opened to the internet (<code>0.0.0.0/0</code>). For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html">Security
    #                   Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
    #   @return [Array<String>]
    class RemoteAccessConfig < Struct.new(
      :ec2_ssh_key,
      :source_security_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration in the cluster for EKS Hybrid Nodes. You can add, change, or remove this
    #             configuration after the cluster is created.</p>
    # @!attribute remote_node_networks
    #   <p>The list of network CIDRs that can contain hybrid nodes.</p>
    #            <p>These CIDR blocks define the expected IP address range of the hybrid nodes that join
    #               the cluster. These blocks are typically determined by your network administrator. </p>
    #            <p>Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation (for example,
    #                   <code> 10.2.0.0/16</code>).</p>
    #            <p>It must satisfy the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Each block must be within an <code>IPv4</code> RFC-1918 network range. Minimum
    #                       allowed size is /32, maximum allowed size is /8. Publicly-routable addresses
    #                       aren't supported.</p>
    #               </li>
    #               <li>
    #                  <p>Each block cannot overlap with the range of the VPC CIDR blocks for your EKS
    #                       resources, or the block of the Kubernetes service IP range.</p>
    #               </li>
    #               <li>
    #                  <p>Each block must have a route to the VPC that uses the VPC CIDR blocks, not
    #                       public IPs or Elastic IPs. There are many options including Transit Gateway,
    #                       Site-to-Site VPN, or Direct Connect.</p>
    #               </li>
    #               <li>
    #                  <p>Each host must allow outbound connection to the EKS cluster control plane on
    #                       TCP ports <code>443</code> and <code>10250</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Each host must allow inbound connection from the EKS cluster control plane on
    #                       TCP port 10250 for logs, exec and port-forward operations.</p>
    #               </li>
    #               <li>
    #                  <p> Each host must allow TCP and UDP network connectivity to and from other hosts
    #                       that are running <code>CoreDNS</code> on UDP port <code>53</code> for service and pod DNS
    #                       names.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::RemoteNodeNetwork>]
    # @!attribute remote_pod_networks
    #   <p>The list of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid
    #               nodes.</p>
    #            <p>These CIDR blocks are determined by configuring your Container Network Interface (CNI)
    #               plugin. We recommend the Calico CNI or Cilium CNI. Note that the Amazon VPC CNI plugin for Kubernetes isn't
    #               available for on-premises and edge locations.</p>
    #            <p>Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation (for example,
    #                   <code> 10.2.0.0/16</code>).</p>
    #            <p>It must satisfy the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Each block must be within an <code>IPv4</code> RFC-1918 network range. Minimum
    #                       allowed size is /32, maximum allowed size is /8. Publicly-routable addresses
    #                       aren't supported.</p>
    #               </li>
    #               <li>
    #                  <p>Each block cannot overlap with the range of the VPC CIDR blocks for your EKS
    #                       resources, or the block of the Kubernetes service IP range.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::RemotePodNetwork>]
    class RemoteNetworkConfigRequest < Struct.new(
      :remote_node_networks,
      :remote_pod_networks,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration in the cluster for EKS Hybrid Nodes. You can add, change, or remove this
    #             configuration after the cluster is created.</p>
    # @!attribute remote_node_networks
    #   <p>The list of network CIDRs that can contain hybrid nodes.</p>
    #   @return [Array<Types::RemoteNodeNetwork>]
    # @!attribute remote_pod_networks
    #   <p>The list of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid
    #               nodes.</p>
    #   @return [Array<Types::RemotePodNetwork>]
    class RemoteNetworkConfigResponse < Struct.new(
      :remote_node_networks,
      :remote_pod_networks,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A network CIDR that can contain hybrid nodes.</p>
    #          <p>These CIDR blocks define the expected IP address range of the hybrid nodes that join
    #             the cluster. These blocks are typically determined by your network administrator. </p>
    #          <p>Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation (for example,
    #                 <code> 10.2.0.0/16</code>).</p>
    #          <p>It must satisfy the following requirements:</p>
    #          <ul>
    #             <li>
    #                <p>Each block must be within an <code>IPv4</code> RFC-1918 network range. Minimum
    #                     allowed size is /32, maximum allowed size is /8. Publicly-routable addresses
    #                     aren't supported.</p>
    #             </li>
    #             <li>
    #                <p>Each block cannot overlap with the range of the VPC CIDR blocks for your EKS
    #                     resources, or the block of the Kubernetes service IP range.</p>
    #             </li>
    #             <li>
    #                <p>Each block must have a route to the VPC that uses the VPC CIDR blocks, not
    #                     public IPs or Elastic IPs. There are many options including Transit Gateway,
    #                     Site-to-Site VPN, or Direct Connect.</p>
    #             </li>
    #             <li>
    #                <p>Each host must allow outbound connection to the EKS cluster control plane on
    #                     TCP ports <code>443</code> and <code>10250</code>.</p>
    #             </li>
    #             <li>
    #                <p>Each host must allow inbound connection from the EKS cluster control plane on
    #                     TCP port 10250 for logs, exec and port-forward operations.</p>
    #             </li>
    #             <li>
    #                <p> Each host must allow TCP and UDP network connectivity to and from other hosts
    #                     that are running <code>CoreDNS</code> on UDP port <code>53</code> for service and pod DNS
    #                     names.</p>
    #             </li>
    #          </ul>
    # @!attribute cidrs
    #   <p>A network CIDR that can contain hybrid nodes.</p>
    #            <p>These CIDR blocks define the expected IP address range of the hybrid nodes that join
    #               the cluster. These blocks are typically determined by your network administrator. </p>
    #            <p>Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation (for example,
    #                   <code> 10.2.0.0/16</code>).</p>
    #            <p>It must satisfy the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Each block must be within an <code>IPv4</code> RFC-1918 network range. Minimum
    #                       allowed size is /32, maximum allowed size is /8. Publicly-routable addresses
    #                       aren't supported.</p>
    #               </li>
    #               <li>
    #                  <p>Each block cannot overlap with the range of the VPC CIDR blocks for your EKS
    #                       resources, or the block of the Kubernetes service IP range.</p>
    #               </li>
    #               <li>
    #                  <p>Each block must have a route to the VPC that uses the VPC CIDR blocks, not
    #                       public IPs or Elastic IPs. There are many options including Transit Gateway,
    #                       Site-to-Site VPN, or Direct Connect.</p>
    #               </li>
    #               <li>
    #                  <p>Each host must allow outbound connection to the EKS cluster control plane on
    #                       TCP ports <code>443</code> and <code>10250</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Each host must allow inbound connection from the EKS cluster control plane on
    #                       TCP port 10250 for logs, exec and port-forward operations.</p>
    #               </li>
    #               <li>
    #                  <p> Each host must allow TCP and UDP network connectivity to and from other hosts
    #                       that are running <code>CoreDNS</code> on UDP port <code>53</code> for service and pod DNS
    #                       names.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class RemoteNodeNetwork < Struct.new(
      :cidrs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A network CIDR that can contain pods that run Kubernetes webhooks on hybrid nodes.</p>
    #          <p>These CIDR blocks are determined by configuring your Container Network Interface (CNI)
    #             plugin. We recommend the Calico CNI or Cilium CNI. Note that the Amazon VPC CNI plugin for Kubernetes isn't
    #             available for on-premises and edge locations.</p>
    #          <p>Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation (for example,
    #                 <code> 10.2.0.0/16</code>).</p>
    #          <p>It must satisfy the following requirements:</p>
    #          <ul>
    #             <li>
    #                <p>Each block must be within an <code>IPv4</code> RFC-1918 network range. Minimum
    #                     allowed size is /32, maximum allowed size is /8. Publicly-routable addresses
    #                     aren't supported.</p>
    #             </li>
    #             <li>
    #                <p>Each block cannot overlap with the range of the VPC CIDR blocks for your EKS
    #                     resources, or the block of the Kubernetes service IP range.</p>
    #             </li>
    #          </ul>
    # @!attribute cidrs
    #   <p>A network CIDR that can contain pods that run Kubernetes webhooks on hybrid nodes.</p>
    #            <p>These CIDR blocks are determined by configuring your Container Network Interface (CNI)
    #               plugin. We recommend the Calico CNI or Cilium CNI. Note that the Amazon VPC CNI plugin for Kubernetes isn't
    #               available for on-premises and edge locations.</p>
    #            <p>Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation (for example,
    #                   <code> 10.2.0.0/16</code>).</p>
    #            <p>It must satisfy the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Each block must be within an <code>IPv4</code> RFC-1918 network range. Minimum
    #                       allowed size is /32, maximum allowed size is /8. Publicly-routable addresses
    #                       aren't supported.</p>
    #               </li>
    #               <li>
    #                  <p>Each block cannot overlap with the range of the VPC CIDR blocks for your EKS
    #                       resources, or the block of the Kubernetes service IP range.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class RemotePodNetwork < Struct.new(
      :cidrs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource is in use.</p>
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The specified add-on name is in use.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The Amazon EKS message associated with the exception.</p>
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have encountered a service limit on the specified resource.</p>
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The Amazon EKS subscription ID with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The Amazon EKS message associated with the exception.</p>
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :subscription_id,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource could not be found. You can view your available clusters with
    #                 <code>ListClusters</code>. You can view your available managed node groups with
    #                 <code>ListNodegroups</code>. Amazon EKS clusters and node groups are Amazon Web Services Region
    #             specific.</p>
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #   @return [String]
    # @!attribute fargate_profile_name
    #   <p>The Fargate profile associated with the exception.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The Amazon EKS add-on name associated with the exception.</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The Amazon EKS subscription ID with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The Amazon EKS message associated with the exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :fargate_profile_name,
      :addon_name,
      :subscription_id,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Required resources (such as service-linked roles) were created and are still
    #             propagating. Retry later.</p>
    # @!attribute message
    #   <p>Required resources (such as service-linked roles) were created and are still
    #               propagating. Retry later.</p>
    #   @return [String]
    class ResourcePropagationDelayException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>These errors are usually caused by a server-side issue.</p>
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The Amazon EKS add-on name associated with the exception.</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The Amazon EKS subscription ID with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>These errors are usually caused by a server-side issue.</p>
    #   @return [String]
    class ServerException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :subscription_id,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service is unavailable. Back off and retry the operation.</p>
    # @!attribute message
    #   <p>The request has failed due to a temporary failure of the server.</p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster for the refresh insights operation.</p>
    #   @return [String]
    class StartInsightsRefreshRequest < Struct.new(
      :cluster_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>The message associated with the insights refresh operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the insights refresh operation.</p>
    #   @return [String]
    class StartInsightsRefreshResponse < Struct.new(
      :message,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request to update the configuration of the storage capability of your EKS Auto Mode
    #             cluster. For example, enable the capability. For more information, see EKS Auto Mode
    #             block storage capability in the <i>Amazon EKS User Guide</i>.</p>
    # @!attribute block_storage
    #   <p>Request to configure EBS Block Storage settings for your EKS Auto Mode cluster.</p>
    #   @return [Types::BlockStorage]
    class StorageConfigRequest < Struct.new(
      :block_storage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the status of the request to update the block storage capability of your EKS
    #             Auto Mode cluster.</p>
    # @!attribute block_storage
    #   <p>Indicates the current configuration of the block storage capability on your EKS Auto
    #               Mode cluster. For example, if the capability is enabled or disabled.</p>
    #   @return [Types::BlockStorage]
    class StorageConfigResponse < Struct.new(
      :block_storage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A property that allows a node to repel a <code>Pod</code>. For more information, see
    #                 <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on
    #                 managed node groups</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @!attribute key
    #   <p>The key of the taint.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the taint.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The effect of the taint.</p>
    #   @return [String]
    class Taint < Struct.new(
      :key,
      :value,
      :effect,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request or operation couldn't be performed because a service is throttling
    #             requests.</p>
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :cluster_name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>At least one of your specified cluster subnets is in an Availability Zone that does not support
    #             Amazon EKS. The exception output specifies the supported Availability Zones for your account, from which
    #             you can choose subnets for your cluster.</p>
    # @!attribute message
    #   <p>At least one of your specified cluster subnets is in an Availability Zone that does not support
    #               Amazon EKS. The exception output specifies the supported Availability Zones for your account, from which
    #               you can choose subnets for your cluster.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #   @return [String]
    # @!attribute valid_zones
    #   <p>The supported Availability Zones for your account. Choose subnets in these Availability Zones for your
    #               cluster.</p>
    #   @return [Array<String>]
    class UnsupportedAvailabilityZoneException < Struct.new(
      :message,
      :cluster_name,
      :nodegroup_name,
      :valid_zones,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an asynchronous update.</p>
    # @!attribute id
    #   <p>A UUID that is used to track the update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the update.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the update.</p>
    #   @return [String]
    # @!attribute params
    #   <p>A key-value map that contains the parameters associated with the update.</p>
    #   @return [Array<Types::UpdateParam>]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp at object creation.</p>
    #   @return [Time]
    # @!attribute errors
    #   <p>Any errors associated with a <code>Failed</code> update.</p>
    #   @return [Array<Types::ErrorDetail>]
    class Update < Struct.new(
      :id,
      :status,
      :type,
      :params,
      :created_at,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The access configuration information for the cluster.</p>
    # @!attribute authentication_mode
    #   <p>The desired authentication mode for the cluster.</p>
    #   @return [String]
    class UpdateAccessConfigRequest < Struct.new(
      :authentication_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    #   @return [String]
    # @!attribute kubernetes_groups
    #   <p>The value for <code>name</code> that you've specified for <code>kind: Group</code> as
    #               a <code>subject</code> in a Kubernetes <code>RoleBinding</code> or
    #                   <code>ClusterRoleBinding</code> object. Amazon EKS doesn't confirm that the value for
    #                   <code>name</code> exists in any bindings on your cluster. You can specify one or
    #               more names.</p>
    #            <p>Kubernetes authorizes the <code>principalArn</code> of the access entry to access any
    #               cluster objects that you've specified in a Kubernetes <code>Role</code> or
    #                   <code>ClusterRole</code> object that is also specified in a binding's
    #                   <code>roleRef</code>. For more information about creating Kubernetes
    #                   <code>RoleBinding</code>, <code>ClusterRoleBinding</code>, <code>Role</code>, or
    #                   <code>ClusterRole</code> objects, see <a href="https://kubernetes.io/docs/reference/access-authn-authz/rbac/">Using RBAC
    #                   Authorization in the Kubernetes documentation</a>.</p>
    #            <p>If you want Amazon EKS to authorize the <code>principalArn</code> (instead of, or in
    #               addition to Kubernetes authorizing the <code>principalArn</code>), you can associate one or
    #               more access policies to the access entry using <code>AssociateAccessPolicy</code>. If
    #               you associate any access policies, the <code>principalARN</code> has all permissions
    #               assigned in the associated access policies and all permissions in any Kubernetes
    #                   <code>Role</code> or <code>ClusterRole</code> objects that the group names are bound
    #               to.</p>
    #   @return [Array<String>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username to authenticate to Kubernetes with. We recommend not specifying a username and
    #               letting Amazon EKS specify it for you. For more information about the value Amazon EKS specifies
    #               for you, or constraints before specifying your own username, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html#creating-access-entries">Creating
    #                   access entries</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [String]
    class UpdateAccessEntryRequest < Struct.new(
      :cluster_name,
      :principal_arn,
      :kubernetes_groups,
      :client_request_token,
      :username,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_entry
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    #   @return [Types::AccessEntry]
    class UpdateAccessEntryResponse < Struct.new(
      :access_entry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #   @return [String]
    # @!attribute addon_version
    #   <p>The version of the add-on. The version must match one of the versions returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    #   @return [String]
    # @!attribute service_account_role_arn
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the
    #        permissions assigned to the node IAM role. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon EKS node IAM role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <note>
    #               <p>To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for
    #                   your cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html">Enabling
    #                       IAM roles for service accounts on your cluster</a> in the
    #                   <i>Amazon EKS User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute resolve_conflicts
    #   <p>How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value
    #               from the Amazon EKS default value. Conflicts are handled based on the option you
    #               choose:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>None</b> – Amazon EKS doesn't change the value.
    #                       The update might fail.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Overwrite</b> – Amazon EKS overwrites the
    #                       changed value back to the Amazon EKS default value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Preserve</b> – Amazon EKS preserves the value.
    #                       If you choose this option, we recommend that you test any field and value
    #                       changes on a non-production cluster before updating the add-on on your
    #                       production cluster.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute configuration_values
    #   <p>The set of configuration values for the add-on that's created. The values that you
    #               provide are validated against the schema returned by
    #                   <code>DescribeAddonConfiguration</code>.</p>
    #   @return [String]
    # @!attribute pod_identity_associations
    #   <p>An array of EKS Pod Identity associations to be updated. Each association
    #               maps a Kubernetes service account to an IAM role. If this value is left blank, no change.
    #               If an empty array is provided, existing associations owned by the add-on are
    #               deleted.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html">Attach an IAM Role to an Amazon EKS add-on
    #                   using EKS Pod Identity</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [Array<Types::AddonPodIdentityAssociations>]
    class UpdateAddonRequest < Struct.new(
      :cluster_name,
      :addon_name,
      :addon_version,
      :service_account_role_arn,
      :resolve_conflicts,
      :client_request_token,
      :configuration_values,
      :pod_identity_associations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #   @return [Types::Update]
    class UpdateAddonResponse < Struct.new(
      :update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon EKS cluster to update.</p>
    #   @return [String]
    # @!attribute resources_vpc_config
    #   <p>An object representing the VPC configuration to use for an Amazon EKS cluster.</p>
    #   @return [Types::VpcConfigRequest]
    # @!attribute logging
    #   <p>Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs .
    #               By default, cluster control plane logs aren't exported to CloudWatch Logs . For more information,
    #               see <a href="https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html">Amazon EKS
    #                   cluster control plane logs</a> in the
    #               <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #            <note>
    #               <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported
    #                   control plane logs. For more information, see <a href="http://aws.amazon.com/cloudwatch/pricing/">CloudWatch Pricing</a>.</p>
    #            </note>
    #   @return [Types::Logging]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute access_config
    #   <p>The access configuration for the cluster.</p>
    #   @return [Types::UpdateAccessConfigRequest]
    # @!attribute upgrade_policy
    #   <p>You can enable or disable extended support for clusters currently on standard support.
    #               You cannot disable extended support once it starts. You must enable extended support
    #               before your cluster exits standard support.</p>
    #   @return [Types::UpgradePolicyRequest]
    # @!attribute zonal_shift_config
    #   <p>Enable or disable ARC zonal shift for the cluster. If zonal shift is enabled, Amazon Web Services
    #               configures zonal autoshift for the cluster.</p>
    #            <p>Zonal shift is a feature of Amazon Application Recovery Controller (ARC). ARC zonal shift is designed to be a
    #               temporary measure that allows you to move traffic for a resource away from an impaired
    #               AZ until the zonal shift expires or you cancel it. You can extend the zonal shift if
    #               necessary.</p>
    #            <p>You can start a zonal shift for an EKS cluster, or you can allow Amazon Web Services to do it for
    #               you by enabling <i>zonal autoshift</i>. This shift updates the flow of
    #               east-to-west network traffic in your cluster to only consider network endpoints for Pods
    #               running on worker nodes in healthy AZs. Additionally, any ALB or NLB handling ingress
    #               traffic for applications in your EKS cluster will automatically route traffic to targets
    #               in the healthy AZs. For more information about zonal shift in EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/zone-shift.html">Learn about
    #                   Amazon Application Recovery Controller (ARC) Zonal Shift in Amazon EKS</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #   @return [Types::ZonalShiftConfigRequest]
    # @!attribute compute_config
    #   <p>Update the configuration of the compute capability of your EKS Auto Mode cluster. For
    #               example, enable the capability.</p>
    #   @return [Types::ComputeConfigRequest]
    # @!attribute kubernetes_network_config
    #   <p>The Kubernetes network configuration for the cluster.</p>
    #   @return [Types::KubernetesNetworkConfigRequest]
    # @!attribute storage_config
    #   <p>Update the configuration of the block storage capability of your EKS Auto Mode
    #               cluster. For example, enable the capability.</p>
    #   @return [Types::StorageConfigRequest]
    # @!attribute remote_network_config
    #   <p>The configuration in the cluster for EKS Hybrid Nodes. You can add, change, or remove this
    #               configuration after the cluster is created.</p>
    #   @return [Types::RemoteNetworkConfigRequest]
    # @!attribute deletion_protection
    #   <p>Specifies whether to enable or disable deletion protection for the cluster. When 
    #               enabled (<code>true</code>), the cluster cannot be deleted until deletion protection is 
    #               explicitly disabled. When disabled (<code>false</code>), the cluster can be deleted 
    #               normally.</p>
    #   @return [Boolean]
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
      :deletion_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #   @return [Types::Update]
    class UpdateClusterConfigResponse < Struct.new(
      :update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon EKS cluster to update.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The desired Kubernetes version following a successful update.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute force
    #   <p>Set this value to <code>true</code> to override upgrade-blocking readiness checks when
    #               updating a cluster.</p>
    #   @return [Boolean]
    class UpdateClusterVersionRequest < Struct.new(
      :name,
      :version,
      :client_request_token,
      :force,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update
    #   <p>The full description of the specified update</p>
    #   @return [Types::Update]
    class UpdateClusterVersionResponse < Struct.new(
      :update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the subscription.</p>
    #   @return [String]
    # @!attribute auto_renew
    #   <p>A boolean indicating whether or not to automatically renew the subscription.</p>
    #   @return [Boolean]
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier to ensure the idempotency of the request.</p>
    #   @return [String]
    class UpdateEksAnywhereSubscriptionRequest < Struct.new(
      :id,
      :auto_renew,
      :client_request_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The full description of the updated subscription.</p>
    #   @return [Types::EksAnywhereSubscription]
    class UpdateEksAnywhereSubscriptionResponse < Struct.new(
      :subscription,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a Kubernetes <code>label</code> change for a managed node
    #             group.</p>
    # @!attribute add_or_update_labels
    #   <p>The Kubernetes <code>labels</code> to add or update.</p>
    #   @return [Hash<String, String>]
    # @!attribute remove_labels
    #   <p>The Kubernetes <code>labels</code> to remove.</p>
    #   @return [Array<String>]
    class UpdateLabelsPayload < Struct.new(
      :add_or_update_labels,
      :remove_labels,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The name of the managed node group to update.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>The Kubernetes <code>labels</code> to apply to the nodes in the node group after the
    #               update.</p>
    #   @return [Types::UpdateLabelsPayload]
    # @!attribute taints
    #   <p>The Kubernetes taints to be applied to the nodes in the node group after the update. For
    #               more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on
    #                   managed node groups</a>.</p>
    #   @return [Types::UpdateTaintsPayload]
    # @!attribute scaling_config
    #   <p>The scaling configuration details for the Auto Scaling group after the update.</p>
    #   @return [Types::NodegroupScalingConfig]
    # @!attribute update_config
    #   <p>The node group update configuration.</p>
    #   @return [Types::NodegroupUpdateConfig]
    # @!attribute node_repair_config
    #   <p>The node auto repair configuration for the node group.</p>
    #   @return [Types::NodeRepairConfig]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    class UpdateNodegroupConfigRequest < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :labels,
      :taints,
      :scaling_config,
      :update_config,
      :node_repair_config,
      :client_request_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #   @return [Types::Update]
    class UpdateNodegroupConfigResponse < Struct.new(
      :update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster.</p>
    #   @return [String]
    # @!attribute nodegroup_name
    #   <p>The name of the managed node group to update.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The Kubernetes version to update to. If no version is specified, then the Kubernetes version of
    #               the node group does not change. You can specify the Kubernetes version of the cluster to
    #               update the node group to the latest AMI version of the cluster's Kubernetes version.
    #               If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify  <code>version</code>,
    #               or the node group  update will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [String]
    # @!attribute release_version
    #   <p>The AMI version of the Amazon EKS optimized AMI to use for the update. By default, the
    #               latest available AMI version for the node group's Kubernetes version is used. For information
    #               about Linux versions, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html">Amazon EKS optimized Amazon Linux AMI versions</a> in the
    #               <i>Amazon EKS User Guide</i>. Amazon EKS managed node groups support the November 2022 and later releases
    #               of the Windows AMIs. For information about Windows versions, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html">Amazon EKS
    #                   optimized Windows AMI versions</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <p>If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify 
    #                   <code>releaseVersion</code>, or the node group  update will fail.
    #               For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    #   @return [String]
    # @!attribute launch_template
    #   <p>An object representing a node group's launch template specification. You can only
    #               update a node group using a launch template if the node group was originally deployed
    #               with a launch template. When updating, you must specify the same launch template ID or
    #               name that was used to create the node group.</p>
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute force
    #   <p>Force the update if any <code>Pod</code> on the existing node group can't be drained
    #               due to a <code>Pod</code> disruption budget issue. If an update fails because all Pods
    #               can't be drained, you can force the update after it fails to terminate the old node
    #               whether or not any <code>Pod</code> is running on the node.</p>
    #   @return [Boolean]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    class UpdateNodegroupVersionRequest < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :version,
      :release_version,
      :launch_template,
      :force,
      :client_request_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #   @return [Types::Update]
    class UpdateNodegroupVersionResponse < Struct.new(
      :update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the details of an update request.</p>
    # @!attribute type
    #   <p>The keys associated with an update request.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the keys submitted as part of an update request.</p>
    #   @return [String]
    class UpdateParam < Struct.new(
      :type,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster that you want to update the association in.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The ID of the association to be updated.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The new IAM role to change in the association.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    #   @return [String]
    # @!attribute disable_session_tags
    #   <p>Disable the automatic sessions tags that are appended by EKS Pod Identity.</p>
    #            <p>EKS Pod Identity adds a pre-defined set of session tags when it assumes the role. You
    #               can use these tags to author a single role that can work across resources by allowing
    #               access to Amazon Web Services resources based on matching tags. By default, EKS Pod Identity attaches
    #               six tags, including tags for cluster name, namespace, and service account name. For the
    #               list of tags added by EKS Pod Identity, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-id-abac.html#pod-id-abac-tags">List of session tags
    #                   added by EKS Pod Identity</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <p>Amazon Web Services compresses inline session policies, managed policy ARNs, and session tags into a
    #               packed binary format that has a separate limit. If you receive a <code>PackedPolicyTooLarge</code> error
    #               indicating the packed binary format has exceeded the size limit, you can attempt to reduce
    #               the size by disabling the session tags added by EKS Pod Identity.</p>
    #   @return [Boolean]
    # @!attribute target_role_arn
    #   <p>The Amazon Resource Name (ARN) of the target IAM role to associate with the service account. This
    #               role is assumed by using the EKS Pod Identity association role, then the credentials for this
    #               role are injected into the Pod.</p>
    #            <p>When you run applications on Amazon EKS, your application might need to access Amazon Web Services
    #               resources from a different role that exists in the same or different Amazon Web Services account. For
    #               example, your application running in “Account A” might need to access resources, such as
    #               buckets in “Account B” or within “Account A” itself. You can create a association to
    #               access Amazon Web Services resources in “Account B” by creating two IAM roles: a role in “Account A”
    #               and a role in “Account B” (which can be the same or different account), each with the
    #               necessary trust and permission policies. After you provide these roles in the <i>IAM role</i>
    #               and <i>Target IAM role</i> fields, EKS will perform role chaining to ensure your application
    #               gets the required permissions. This means Role A will assume Role B, allowing your Pods
    #               to securely access resources like S3 buckets in the target account.</p>
    #   @return [String]
    class UpdatePodIdentityAssociationRequest < Struct.new(
      :cluster_name,
      :association_id,
      :role_arn,
      :client_request_token,
      :disable_session_tags,
      :target_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association
    #   <p>The full description of the association that was updated.</p>
    #   @return [Types::PodIdentityAssociation]
    class UpdatePodIdentityAssociationResponse < Struct.new(
      :association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the details of an update to a taints payload. For more
    #             information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on
    #                 managed node groups</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @!attribute add_or_update_taints
    #   <p>Kubernetes taints to be added or updated.</p>
    #   @return [Array<Types::Taint>]
    # @!attribute remove_taints
    #   <p>Kubernetes taints to remove.</p>
    #   @return [Array<Types::Taint>]
    class UpdateTaintsPayload < Struct.new(
      :add_or_update_taints,
      :remove_taints,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The support policy to use for the cluster. Extended support allows you to remain on
    #             specific Kubernetes versions for longer. Clusters in extended support have higher costs. The
    #             default value is <code>EXTENDED</code>. Use <code>STANDARD</code> to disable extended
    #             support.</p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/eks/latest/userguide/extended-support-control.html">Learn more about EKS Extended Support in the <i>Amazon EKS User Guide</i>.</a>
    #          </p>
    # @!attribute support_type
    #   <p>If the cluster is set to <code>EXTENDED</code>, it will enter extended support at the
    #               end of standard support. If the cluster is set to <code>STANDARD</code>, it will be
    #               automatically upgraded at the end of standard support.</p>
    #            <p>
    #               <a href="https://docs.aws.amazon.com/eks/latest/userguide/extended-support-control.html">Learn more about EKS Extended Support in the <i>Amazon EKS User Guide</i>.</a>
    #            </p>
    #   @return [String]
    class UpgradePolicyRequest < Struct.new(
      :support_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This value indicates if extended support is enabled or disabled for the
    #             cluster.</p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/eks/latest/userguide/extended-support-control.html">Learn more about EKS Extended Support in the <i>Amazon EKS User Guide</i>.</a>
    #          </p>
    # @!attribute support_type
    #   <p>If the cluster is set to <code>EXTENDED</code>, it will enter extended support at the
    #               end of standard support. If the cluster is set to <code>STANDARD</code>, it will be
    #               automatically upgraded at the end of standard support.</p>
    #            <p>
    #               <a href="https://docs.aws.amazon.com/eks/latest/userguide/extended-support-control.html">Learn more about EKS Extended Support in the <i>Amazon EKS User Guide</i>.</a>
    #            </p>
    #   @return [String]
    class UpgradePolicyResponse < Struct.new(
      :support_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the VPC configuration to use for an Amazon EKS cluster.</p>
    # @!attribute subnet_ids
    #   <p>Specify subnets for your Amazon EKS nodes. Amazon EKS creates cross-account elastic network
    #               interfaces in these subnets to allow communication between your nodes and the Kubernetes
    #               control plane.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>Specify one or more security groups for the cross-account elastic network interfaces
    #               that Amazon EKS creates to use that allow communication between your nodes and the Kubernetes
    #               control plane. If you don't specify any security groups, then familiarize yourself with
    #               the difference between Amazon EKS defaults for clusters deployed with Kubernetes. For more
    #               information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html">Amazon EKS security group
    #                   considerations</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #   @return [Array<String>]
    # @!attribute endpoint_public_access
    #   <p>Set this value to <code>false</code> to disable public access to your cluster's Kubernetes
    #               API server endpoint. If you disable public access, your cluster's Kubernetes API server can
    #               only receive requests from within the cluster VPC. The default value for this parameter
    #               is <code>true</code>, which enables public access for your Kubernetes API server. The
    #               endpoint domain name and IP address family depends on the value of the
    #                   <code>ipFamily</code> for the cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Cluster API
    #                   server endpoint</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #   @return [Boolean]
    # @!attribute endpoint_private_access
    #   <p>Set this value to <code>true</code> to enable private access for your cluster's Kubernetes
    #               API server endpoint. If you enable private access, Kubernetes API requests from within your
    #               cluster's VPC use the private VPC endpoint. The default value for this parameter is
    #                   <code>false</code>, which disables private access for your Kubernetes API server. If you
    #               disable private access and you have nodes or Fargate pods in the cluster, then
    #               ensure that <code>publicAccessCidrs</code> includes the necessary CIDR blocks for
    #               communication with the nodes or Fargate pods. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Cluster
    #                   API server endpoint</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #   @return [Boolean]
    # @!attribute public_access_cidrs
    #   <p>The CIDR blocks that are allowed access to your cluster's public Kubernetes API server
    #               endpoint. Communication to the endpoint from addresses outside of the CIDR blocks that
    #               you specify is denied. The default value is <code>0.0.0.0/0</code> and additionally
    #                   <code>::/0</code> for dual-stack `IPv6` clusters. If you've disabled private
    #               endpoint access, make sure that you specify the necessary CIDR blocks for every node and
    #               Fargate <code>Pod</code> in the cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Cluster
    #                   API server endpoint</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #            <p>Note that the public endpoints are dual-stack for only <code>IPv6</code> clusters that
    #               are made after October 2024. You can't add <code>IPv6</code> CIDR blocks to
    #                   <code>IPv4</code> clusters or <code>IPv6</code> clusters that were made before
    #               October 2024.</p>
    #   @return [Array<String>]
    class VpcConfigRequest < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :endpoint_public_access,
      :endpoint_private_access,
      :public_access_cidrs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing an Amazon EKS cluster VPC configuration response.</p>
    # @!attribute subnet_ids
    #   <p>The subnets associated with your cluster.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The security groups associated with the cross-account elastic network interfaces that
    #               are used to allow communication between your nodes and the Kubernetes control plane.</p>
    #   @return [Array<String>]
    # @!attribute cluster_security_group_id
    #   <p>The cluster security group that was created by Amazon EKS for the cluster. Managed node
    #               groups use this security group for control-plane-to-data-plane communication.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC associated with your cluster.</p>
    #   @return [String]
    # @!attribute endpoint_public_access
    #   <p>Whether the public API server endpoint is enabled.</p>
    #   @return [Boolean]
    # @!attribute endpoint_private_access
    #   <p>This parameter indicates whether the Amazon EKS private API server endpoint is enabled. If
    #               the Amazon EKS private API server endpoint is enabled, Kubernetes API requests that originate from
    #               within your cluster's VPC use the private VPC endpoint instead of traversing the
    #               internet. If this value is disabled and you have nodes or Fargate pods in the
    #               cluster, then ensure that <code>publicAccessCidrs</code> includes the necessary CIDR
    #               blocks for communication with the nodes or Fargate pods. For more information, see
    #                   <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Cluster
    #                   API server endpoint</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #   @return [Boolean]
    # @!attribute public_access_cidrs
    #   <p>The CIDR blocks that are allowed access to your cluster's public Kubernetes API server
    #               endpoint. Communication to the endpoint from addresses outside of the CIDR blocks that
    #               you specify is denied. The default value is <code>0.0.0.0/0</code> and additionally
    #               <code>::/0</code> for dual-stack `IPv6` clusters. If you've disabled private
    #               endpoint access, make sure that you specify the necessary CIDR blocks for every node and
    #               Fargate <code>Pod</code> in the cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Cluster
    #                   API server endpoint</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #            <p>Note that the public endpoints are dual-stack for only <code>IPv6</code> clusters that
    #               are made after October 2024. You can't add <code>IPv6</code> CIDR blocks to
    #               <code>IPv4</code> clusters or <code>IPv6</code> clusters that were made before
    #               October 2024.</p>
    #   @return [Array<String>]
    class VpcConfigResponse < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :cluster_security_group_id,
      :vpc_id,
      :endpoint_public_access,
      :endpoint_private_access,
      :public_access_cidrs,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:endpoint_public_access] = false unless options.key?(:endpoint_public_access)
        options[:endpoint_private_access] = false unless options.key?(:endpoint_private_access)
        super
      end
    end

    # <p>The configuration for zonal shift for the cluster.</p>
    # @!attribute enabled
    #   <p>If zonal shift is enabled, Amazon Web Services configures zonal autoshift for the cluster.</p>
    #   @return [Boolean]
    class ZonalShiftConfigRequest < Struct.new(
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of zonal shift configuration for the cluster</p>
    # @!attribute enabled
    #   <p>Whether the zonal shift is enabled.</p>
    #   @return [Boolean]
    class ZonalShiftConfigResponse < Struct.new(
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
