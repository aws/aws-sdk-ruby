# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RAM
  module Types

    # @!attribute [rw] resource_share_invitation_arn
    #   The [Amazon Resource Name (ARN)][1] of the invitation that you want
    #   to accept.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AcceptResourceShareInvitationRequest AWS API Documentation
    #
    class AcceptResourceShareInvitationRequest < Struct.new(
      :resource_share_invitation_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_invitation
    #   An object that contains information about the specified invitation.
    #   @return [Types::ResourceShareInvitation]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AcceptResourceShareInvitationResponse AWS API Documentation
    #
    class AcceptResourceShareInvitationResponse < Struct.new(
      :resource_share_invitation,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   to which you want to add or replace permissions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the RAM permission
    #   to associate with the resource share. To find the ARN for a
    #   permission, use either the ListPermissions operation or go to the
    #   [Permissions library][2] page in the RAM console and then choose the
    #   name of the permission. The ARN is displayed on the detail page.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://console.aws.amazon.com/ram/home#Permissions:
    #   @return [String]
    #
    # @!attribute [rw] replace
    #   Specifies whether the specified permission should replace the
    #   existing permission associated with the resource share. Use `true`
    #   to replace the current permissions. Use `false` to add the
    #   permission to a resource share that currently doesn't have a
    #   permission. The default value is `false`.
    #
    #   <note markdown="1"> A resource share can have only one permission per resource type. If
    #   a resource share already has a permission for the specified resource
    #   type and you don't set `replace` to `true` then the operation
    #   returns an error. This helps prevent accidental overwriting of a
    #   permission.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] permission_version
    #   Specifies the version of the RAM permission to associate with the
    #   resource share. You can specify *only* the version that is currently
    #   set as the default version for the permission. If you also set the
    #   `replace` pararameter to `true`, then this operation updates an
    #   outdated version of the permission to the current default version.
    #
    #   <note markdown="1"> You don't need to specify this parameter because the default
    #   behavior is to use the version that is currently set as the default
    #   version for the permission. This parameter is supported for
    #   backwards compatibility.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceSharePermissionRequest AWS API Documentation
    #
    class AssociateResourceSharePermissionRequest < Struct.new(
      :resource_share_arn,
      :permission_arn,
      :replace,
      :client_token,
      :permission_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   A return value of `true` indicates that the request succeeded. A
    #   value of `false` indicates that the request failed.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceSharePermissionResponse AWS API Documentation
    #
    class AssociateResourceSharePermissionResponse < Struct.new(
      :return_value,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   that you want to add principals or resources to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   Specifies a list of [Amazon Resource Names (ARNs)][1] of the
    #   resources that you want to share. This can be `null` if you want to
    #   add only principals.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] principals
    #   Specifies a list of principals to whom you want to the resource
    #   share. This can be `null` if you want to add only resources.
    #
    #   What the principals can do with the resources in the share is
    #   determined by the RAM permissions that you associate with the
    #   resource share. See AssociateResourceSharePermission.
    #
    #   You can include the following values:
    #
    #   * An Amazon Web Services account ID, for example: `123456789012`
    #
    #   * An [Amazon Resource Name (ARN)][1] of an organization in
    #     Organizations, for example:
    #     `organizations::123456789012:organization/o-exampleorgid`
    #
    #   * An ARN of an organizational unit (OU) in Organizations, for
    #     example:
    #     `organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123`
    #
    #   * An ARN of an IAM role, for example:
    #     `iam::123456789012:role/rolename`
    #
    #   * An ARN of an IAM user, for example:
    #     `iam::123456789012user/username`
    #
    #   <note markdown="1"> Not all resource types can be shared with IAM roles and users. For
    #   more information, see [Sharing with IAM roles and users][2] in the
    #   *Resource Access Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceShareRequest AWS API Documentation
    #
    class AssociateResourceShareRequest < Struct.new(
      :resource_share_arn,
      :resource_arns,
      :principals,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_associations
    #   An array of objects that contain information about the associations.
    #   @return [Array<Types::ResourceShareAssociation>]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociateResourceShareResponse AWS API Documentation
    #
    class AssociateResourceShareResponse < Struct.new(
      :resource_share_associations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes a managed permission associated with a
    # resource share.
    #
    # @!attribute [rw] arn
    #   The [Amazon Resource Name (ARN)][1] of the associated managed
    #   permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] permission_version
    #   The version of the permission currently associated with the resource
    #   share.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   Indicates whether the associated resource share is using the default
    #   version of the permission.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_type
    #   The resource type to which this permission applies.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the association between the permission and the
    #   resource share. The following are the possible values:
    #
    #   * `ATTACHABLE` – This permission or version can be associated with
    #     resource shares.
    #
    #   * `UNATTACHABLE` – This permission or version can't currently be
    #     associated with resource shares.
    #
    #   * `DELETING` – This permission or version is in the process of being
    #     deleted.
    #
    #   * `DELETED` – This permission or version is deleted.
    #   @return [String]
    #
    # @!attribute [rw] feature_set
    #   Indicates what features are available for this resource share. This
    #   parameter can have one of the following values:
    #
    #   * **STANDARD** – A resource share that supports all functionality.
    #     These resource shares are visible to all principals you share the
    #     resource share with. You can modify these resource shares in RAM
    #     using the console or APIs. This resource share might have been
    #     created by RAM, or it might have been **CREATED\_FROM\_POLICY**
    #     and then promoted.
    #
    #   * **CREATED\_FROM\_POLICY** – The customer manually shared a
    #     resource by attaching a resource-based policy. That policy did not
    #     match any existing managed permissions, so RAM created this
    #     customer managed permission automatically on the customer's
    #     behalf based on the attached policy document. This type of
    #     resource share is visible only to the Amazon Web Services account
    #     that created it. You can't modify it in RAM unless you promote
    #     it. For more information, see
    #     PromoteResourceShareCreatedFromPolicy.
    #
    #   * **PROMOTING\_TO\_STANDARD** – This resource share was originally
    #     `CREATED_FROM_POLICY`, but the customer ran the
    #     PromoteResourceShareCreatedFromPolicy and that operation is still
    #     in progress. This value changes to `STANDARD` when complete.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time when the association between the permission and
    #   the resource share was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] resource_share_arn
    #   The [Amazon Resource Name (ARN)][1] of a resource share associated
    #   with this permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/AssociatedPermission AWS API Documentation
    #
    class AssociatedPermission < Struct.new(
      :arn,
      :permission_version,
      :default_version,
      :resource_type,
      :status,
      :feature_set,
      :last_updated_time,
      :resource_share_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Specifies the name of the customer managed permission. The name must
    #   be unique within the Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Specifies the name of the resource type that this customer managed
    #   permission applies to.
    #
    #   The format is ` <service-code>:<resource-type> ` and is not case
    #   sensitive. For example, to specify an Amazon EC2 Subnet, you can use
    #   the string `ec2:subnet`. To see the list of valid values for this
    #   parameter, query the ListResourceTypes operation.
    #   @return [String]
    #
    # @!attribute [rw] policy_template
    #   A string in JSON format string that contains the following elements
    #   of a resource-based policy:
    #
    #   * **Effect**: must be set to `ALLOW`.
    #
    #   * **Action**: specifies the actions that are allowed by this
    #     customer managed permission. The list must contain only actions
    #     that are supported by the specified resource type. For a list of
    #     all actions supported by each resource type, see [Actions,
    #     resources, and condition keys for Amazon Web Services services][1]
    #     in the *Identity and Access Management User Guide*.
    #
    #   * **Condition**: (optional) specifies conditional parameters that
    #     must evaluate to true when a user attempts an action for that
    #     action to be allowed. For more information about the Condition
    #     element, see [IAM policies: Condition element][2] in the *Identity
    #     and Access Management User Guide*.
    #
    #   This template can't include either the `Resource` or `Principal`
    #   elements. Those are both filled in by RAM when it instantiates the
    #   resource-based policy on each resource shared using this managed
    #   permission. The `Resource` comes from the ARN of the specific
    #   resource that you are sharing. The `Principal` comes from the list
    #   of identities added to the resource share.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies a list of one or more tag key and value pairs to attach to
    #   the permission.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreatePermissionRequest AWS API Documentation
    #
    class CreatePermissionRequest < Struct.new(
      :name,
      :resource_type,
      :policy_template,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission
    #   A structure with information about this customer managed permission.
    #   @return [Types::ResourceSharePermissionSummary]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreatePermissionResponse AWS API Documentation
    #
    class CreatePermissionResponse < Struct.new(
      :permission,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the customer
    #   managed permission you're creating a new version for.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] policy_template
    #   A string in JSON format string that contains the following elements
    #   of a resource-based policy:
    #
    #   * **Effect**: must be set to `ALLOW`.
    #
    #   * **Action**: specifies the actions that are allowed by this
    #     customer managed permission. The list must contain only actions
    #     that are supported by the specified resource type. For a list of
    #     all actions supported by each resource type, see [Actions,
    #     resources, and condition keys for Amazon Web Services services][1]
    #     in the *Identity and Access Management User Guide*.
    #
    #   * **Condition**: (optional) specifies conditional parameters that
    #     must evaluate to true when a user attempts an action for that
    #     action to be allowed. For more information about the Condition
    #     element, see [IAM policies: Condition element][2] in the *Identity
    #     and Access Management User Guide*.
    #
    #   This template can't include either the `Resource` or `Principal`
    #   elements. Those are both filled in by RAM when it instantiates the
    #   resource-based policy on each resource shared using this managed
    #   permission. The `Resource` comes from the ARN of the specific
    #   resource that you are sharing. The `Principal` comes from the list
    #   of identities added to the resource share.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreatePermissionVersionRequest AWS API Documentation
    #
    class CreatePermissionVersionRequest < Struct.new(
      :permission_arn,
      :policy_template,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission
    #   Information about a RAM managed permission.
    #   @return [Types::ResourceSharePermissionDetail]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreatePermissionVersionResponse AWS API Documentation
    #
    class CreatePermissionVersionResponse < Struct.new(
      :permission,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Specifies the name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   Specifies a list of one or more ARNs of the resources to associate
    #   with the resource share.
    #   @return [Array<String>]
    #
    # @!attribute [rw] principals
    #   Specifies a list of one or more principals to associate with the
    #   resource share.
    #
    #   You can include the following values:
    #
    #   * An Amazon Web Services account ID, for example: `123456789012`
    #
    #   * An [Amazon Resource Name (ARN)][1] of an organization in
    #     Organizations, for example:
    #     `organizations::123456789012:organization/o-exampleorgid`
    #
    #   * An ARN of an organizational unit (OU) in Organizations, for
    #     example:
    #     `organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123`
    #
    #   * An ARN of an IAM role, for example:
    #     `iam::123456789012:role/rolename`
    #
    #   * An ARN of an IAM user, for example:
    #     `iam::123456789012user/username`
    #
    #   <note markdown="1"> Not all resource types can be shared with IAM roles and users. For
    #   more information, see [Sharing with IAM roles and users][2] in the
    #   *Resource Access Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Specifies one or more tags to attach to the resource share itself.
    #   It doesn't attach the tags to the resources associated with the
    #   resource share.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] allow_external_principals
    #   Specifies whether principals outside your organization in
    #   Organizations can be associated with a resource share. A value of
    #   `true` lets you share with individual Amazon Web Services accounts
    #   that are *not* in your organization. A value of `false` only has
    #   meaning if your account is a member of an Amazon Web Services
    #   Organization. The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] permission_arns
    #   Specifies the [Amazon Resource Names (ARNs)][1] of the RAM
    #   permission to associate with the resource share. If you do not
    #   specify an ARN for the permission, RAM automatically attaches the
    #   default version of the permission for each resource type. You can
    #   associate only one permission with each resource type included in
    #   the resource share.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreateResourceShareRequest AWS API Documentation
    #
    class CreateResourceShareRequest < Struct.new(
      :name,
      :resource_arns,
      :principals,
      :tags,
      :allow_external_principals,
      :client_token,
      :permission_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share
    #   An object with information about the new resource share.
    #   @return [Types::ResourceShare]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/CreateResourceShareResponse AWS API Documentation
    #
    class CreateResourceShareResponse < Struct.new(
      :resource_share,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the customer
    #   managed permission that you want to delete.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeletePermissionRequest AWS API Documentation
    #
    class DeletePermissionRequest < Struct.new(
      :permission_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   A boolean that indicates whether the delete operations succeeded.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @!attribute [rw] permission_status
    #   This operation is performed asynchronously, and this response
    #   parameter indicates the current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeletePermissionResponse AWS API Documentation
    #
    class DeletePermissionResponse < Struct.new(
      :return_value,
      :client_token,
      :permission_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the permission with
    #   the version you want to delete.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] permission_version
    #   Specifies the version number to delete.
    #
    #   You can't delete the default version for a customer managed
    #   permission.
    #
    #   You can't delete a version if it's the only version of the
    #   permission. You must either first create another version, or delete
    #   the permission completely.
    #
    #   You can't delete a version if it is attached to any resource
    #   shares. If the version is the default, you must first use
    #   SetDefaultPermissionVersion to set a different version as the
    #   default for the customer managed permission, and then use
    #   AssociateResourceSharePermission to update your resource shares to
    #   use the new default version.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeletePermissionVersionRequest AWS API Documentation
    #
    class DeletePermissionVersionRequest < Struct.new(
      :permission_arn,
      :permission_version,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   A boolean value that indicates whether the operation is successful.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @!attribute [rw] permission_status
    #   This operation is performed asynchronously, and this response
    #   parameter indicates the current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeletePermissionVersionResponse AWS API Documentation
    #
    class DeletePermissionVersionResponse < Struct.new(
      :return_value,
      :client_token,
      :permission_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   to delete.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeleteResourceShareRequest AWS API Documentation
    #
    class DeleteResourceShareRequest < Struct.new(
      :resource_share_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   A return value of `true` indicates that the request succeeded. A
    #   value of `false` indicates that the request failed.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DeleteResourceShareResponse AWS API Documentation
    #
    class DeleteResourceShareResponse < Struct.new(
      :return_value,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_arn
    #   The [Amazon Resource Name (ARN)][1] of the resource share that you
    #   want to remove the managed permission from.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] permission_arn
    #   The [Amazon Resource Name (ARN)][1] of the managed permission to
    #   disassociate from the resource share. Changes to permissions take
    #   effect immediately.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceSharePermissionRequest AWS API Documentation
    #
    class DisassociateResourceSharePermissionRequest < Struct.new(
      :resource_share_arn,
      :permission_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   A return value of `true` indicates that the request succeeded. A
    #   value of `false` indicates that the request failed.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceSharePermissionResponse AWS API Documentation
    #
    class DisassociateResourceSharePermissionResponse < Struct.new(
      :return_value,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_arn
    #   Specifies [Amazon Resource Name (ARN)][1] of the resource share that
    #   you want to remove resources or principals from.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   Specifies a list of [Amazon Resource Names (ARNs)][1] for one or
    #   more resources that you want to remove from the resource share.
    #   After the operation runs, these resources are no longer shared with
    #   principals associated with the resource share.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] principals
    #   Specifies a list of one or more principals that no longer are to
    #   have access to the resources in this resource share.
    #
    #   You can include the following values:
    #
    #   * An Amazon Web Services account ID, for example: `123456789012`
    #
    #   * An [Amazon Resource Name (ARN)][1] of an organization in
    #     Organizations, for example:
    #     `organizations::123456789012:organization/o-exampleorgid`
    #
    #   * An ARN of an organizational unit (OU) in Organizations, for
    #     example:
    #     `organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123`
    #
    #   * An ARN of an IAM role, for example:
    #     `iam::123456789012:role/rolename`
    #
    #   * An ARN of an IAM user, for example:
    #     `iam::123456789012user/username`
    #
    #   <note markdown="1"> Not all resource types can be shared with IAM roles and users. For
    #   more information, see [Sharing with IAM roles and users][2] in the
    #   *Resource Access Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceShareRequest AWS API Documentation
    #
    class DisassociateResourceShareRequest < Struct.new(
      :resource_share_arn,
      :resource_arns,
      :principals,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_associations
    #   An array of objects with information about the updated associations
    #   for this resource share.
    #   @return [Array<Types::ResourceShareAssociation>]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/DisassociateResourceShareResponse AWS API Documentation
    #
    class DisassociateResourceShareResponse < Struct.new(
      :resource_share_associations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/EnableSharingWithAwsOrganizationRequest AWS API Documentation
    #
    class EnableSharingWithAwsOrganizationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] return_value
    #   A return value of `true` indicates that the request succeeded. A
    #   value of `false` indicates that the request failed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/EnableSharingWithAwsOrganizationResponse AWS API Documentation
    #
    class EnableSharingWithAwsOrganizationResponse < Struct.new(
      :return_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the permission
    #   whose contents you want to retrieve. To find the ARN for a
    #   permission, use either the ListPermissions operation or go to the
    #   [Permissions library][2] page in the RAM console and then choose the
    #   name of the permission. The ARN is displayed on the detail page.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://console.aws.amazon.com/ram/home#Permissions:
    #   @return [String]
    #
    # @!attribute [rw] permission_version
    #   Specifies the version number of the RAM permission to retrieve. If
    #   you don't specify this parameter, the operation retrieves the
    #   default version.
    #
    #   To see the list of available versions, use ListPermissionVersions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetPermissionRequest AWS API Documentation
    #
    class GetPermissionRequest < Struct.new(
      :permission_arn,
      :permission_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission
    #   An object with details about the permission.
    #   @return [Types::ResourceSharePermissionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetPermissionResponse AWS API Documentation
    #
    class GetPermissionResponse < Struct.new(
      :permission)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arns
    #   Specifies the [Amazon Resource Names (ARNs)][1] of the resources
    #   whose policies you want to retrieve.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] principal
    #   Specifies the principal.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourcePoliciesRequest AWS API Documentation
    #
    class GetResourcePoliciesRequest < Struct.new(
      :resource_arns,
      :principal,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policies
    #   An array of resource policy documents in JSON format.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourcePoliciesResponse AWS API Documentation
    #
    class GetResourcePoliciesResponse < Struct.new(
      :policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association_type
    #   Specifies whether you want to retrieve the associations that involve
    #   a specified resource or principal.
    #
    #   * `PRINCIPAL` – list the principals whose associations you want to
    #     see.
    #
    #   * `RESOURCE` – list the resources whose associations you want to
    #     see.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arns
    #   Specifies a list of [Amazon Resource Names (ARNs)][1] of the
    #   resource share whose associations you want to retrieve.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of a resource whose
    #   resource shares you want to retrieve.
    #
    #   You cannot specify this parameter if the association type is
    #   `PRINCIPAL`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   Specifies the ID of the principal whose resource shares you want to
    #   retrieve. This can be an Amazon Web Services account ID, an
    #   organization ID, an organizational unit ID, or the [Amazon Resource
    #   Name (ARN)][1] of an individual IAM user or role.
    #
    #   You cannot specify this parameter if the association type is
    #   `RESOURCE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] association_status
    #   Specifies that you want to retrieve only associations that have this
    #   status.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareAssociationsRequest AWS API Documentation
    #
    class GetResourceShareAssociationsRequest < Struct.new(
      :association_type,
      :resource_share_arns,
      :resource_arn,
      :principal,
      :association_status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_associations
    #   An array of objects that contain the details about the associations.
    #   @return [Array<Types::ResourceShareAssociation>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareAssociationsResponse AWS API Documentation
    #
    class GetResourceShareAssociationsResponse < Struct.new(
      :resource_share_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_invitation_arns
    #   Specifies the [Amazon Resource Names (ARNs)][1] of the resource
    #   share invitations you want information about.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_share_arns
    #   Specifies that you want details about invitations only for the
    #   resource shares described by this list of [Amazon Resource Names
    #   (ARNs)][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareInvitationsRequest AWS API Documentation
    #
    class GetResourceShareInvitationsRequest < Struct.new(
      :resource_share_invitation_arns,
      :resource_share_arns,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_invitations
    #   An array of objects that contain the details about the invitations.
    #   @return [Array<Types::ResourceShareInvitation>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceShareInvitationsResponse AWS API Documentation
    #
    class GetResourceShareInvitationsResponse < Struct.new(
      :resource_share_invitations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_arns
    #   Specifies the [Amazon Resource Names (ARNs)][1] of individual
    #   resource shares that you want information about.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_share_status
    #   Specifies that you want to retrieve details of only those resource
    #   shares that have this status.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   Specifies that you want to retrieve details of only those resource
    #   shares that match the following:
    #
    #   * <b> <code>SELF</code> </b> – resource shares that your account
    #     shares with other accounts
    #
    #   * <b> <code>OTHER-ACCOUNTS</code> </b> – resource shares that other
    #     accounts share with your account
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies the name of an individual resource share that you want to
    #   retrieve details about.
    #   @return [String]
    #
    # @!attribute [rw] tag_filters
    #   Specifies that you want to retrieve details of only those resource
    #   shares that match the specified tag keys and values.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] permission_arn
    #   Specifies that you want to retrieve details of only those resource
    #   shares that use the managed permission with this [Amazon Resource
    #   Name (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] permission_version
    #   Specifies that you want to retrieve details for only those resource
    #   shares that use the specified version of the managed permission.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceSharesRequest AWS API Documentation
    #
    class GetResourceSharesRequest < Struct.new(
      :resource_share_arns,
      :resource_share_status,
      :resource_owner,
      :name,
      :tag_filters,
      :next_token,
      :max_results,
      :permission_arn,
      :permission_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_shares
    #   An array of objects that contain the information about the resource
    #   shares.
    #   @return [Array<Types::ResourceShare>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetResourceSharesResponse AWS API Documentation
    #
    class GetResourceSharesResponse < Struct.new(
      :resource_shares,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the client token input parameter matched
    # one that was used with a previous call to the operation, but at least
    # one of the other input parameters is different from the previous call.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/IdempotentParameterMismatchException AWS API Documentation
    #
    class IdempotentParameterMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified client token isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidClientTokenException AWS API Documentation
    #
    class InvalidClientTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified value for `MaxResults`
    # isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidMaxResultsException AWS API Documentation
    #
    class InvalidMaxResultsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified value for `NextToken`
    # isn't valid. You must specify a value you received in the `NextToken`
    # response of a previous call to this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because a parameter you specified isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because a policy you specified isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidPolicyException AWS API Documentation
    #
    class InvalidPolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified resource type isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidResourceTypeException AWS API Documentation
    #
    class InvalidResourceTypeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the requested operation isn't valid for
    # the resource share in its current state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/InvalidStateTransitionException AWS API Documentation
    #
    class InvalidStateTransitionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_invitation_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the invitation. You
    #   can use GetResourceShareInvitations to find the ARN of the
    #   invitation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_region_scope
    #   Specifies that you want the results to include only resources that
    #   have the specified scope.
    #
    #   * `ALL` – the results include both global and regional resources or
    #     resource types.
    #
    #   * `GLOBAL` – the results include only global resources or resource
    #     types.
    #
    #   * `REGIONAL` – the results include only regional resources or
    #     resource types.
    #
    #   The default value is `ALL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPendingInvitationResourcesRequest AWS API Documentation
    #
    class ListPendingInvitationResourcesRequest < Struct.new(
      :resource_share_invitation_arn,
      :next_token,
      :max_results,
      :resource_region_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   An array of objects that contain the information about the resources
    #   included the specified resource share.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPendingInvitationResourcesResponse AWS API Documentation
    #
    class ListPendingInvitationResourcesResponse < Struct.new(
      :resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the managed
    #   permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] permission_version
    #   Specifies that you want to list only those associations with
    #   resource shares that use this version of the managed permission. If
    #   you don't provide a value for this parameter, then the operation
    #   returns information about associations with resource shares that use
    #   any version of the managed permission.
    #   @return [Integer]
    #
    # @!attribute [rw] association_status
    #   Specifies that you want to list only those associations with
    #   resource shares that match this status.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Specifies that you want to list only those associations with
    #   resource shares that include at least one resource of this resource
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] feature_set
    #   Specifies that you want to list only those associations with
    #   resource shares that have a `featureSet` with this value.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   When `true`, specifies that you want to list only those associations
    #   with resource shares that use the default version of the specified
    #   managed permission.
    #
    #   When `false` (the default value), lists associations with resource
    #   shares that use any version of the specified managed permission.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissionAssociationsRequest AWS API Documentation
    #
    class ListPermissionAssociationsRequest < Struct.new(
      :permission_arn,
      :permission_version,
      :association_status,
      :resource_type,
      :feature_set,
      :default_version,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   A structure with information about this customer managed permission.
    #   @return [Array<Types::AssociatedPermission>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissionAssociationsResponse AWS API Documentation
    #
    class ListPermissionAssociationsResponse < Struct.new(
      :permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the RAM permission
    #   whose versions you want to list. You can use the `permissionVersion`
    #   parameter on the AssociateResourceSharePermission operation to
    #   specify a non-default version to attach.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissionVersionsRequest AWS API Documentation
    #
    class ListPermissionVersionsRequest < Struct.new(
      :permission_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   An array of objects that contain details for each of the available
    #   versions.
    #   @return [Array<Types::ResourceSharePermissionSummary>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissionVersionsResponse AWS API Documentation
    #
    class ListPermissionVersionsResponse < Struct.new(
      :permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   Specifies that you want to list only those permissions that apply to
    #   the specified resource type. This parameter is not case sensitive.
    #
    #   For example, to list only permissions that apply to Amazon EC2
    #   subnets, specify `ec2:subnet`. You can use the ListResourceTypes
    #   operation to get the specific string required.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] permission_type
    #   Specifies that you want to list only permissions of this type:
    #
    #   * `AWS` – returns only Amazon Web Services managed permissions.
    #
    #   * `LOCAL` – returns only customer managed permissions
    #
    #   * `ALL` – returns both Amazon Web Services managed permissions and
    #     customer managed permissions.
    #
    #   If you don't specify this parameter, the default is `All`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissionsRequest AWS API Documentation
    #
    class ListPermissionsRequest < Struct.new(
      :resource_type,
      :next_token,
      :max_results,
      :permission_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   An array of objects with information about the permissions.
    #   @return [Array<Types::ResourceSharePermissionSummary>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissionsResponse AWS API Documentation
    #
    class ListPermissionsResponse < Struct.new(
      :permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_owner
    #   Specifies that you want to list information for only resource shares
    #   that match the following:
    #
    #   * <b> <code>SELF</code> </b> – principals that your account is
    #     sharing resources with
    #
    #   * <b> <code>OTHER-ACCOUNTS</code> </b> – principals that are sharing
    #     resources with your account
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Specifies that you want to list principal information for the
    #   resource share with the specified [Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] principals
    #   Specifies that you want to list information for only the listed
    #   principals.
    #
    #   You can include the following values:
    #
    #   * An Amazon Web Services account ID, for example: `123456789012`
    #
    #   * An [Amazon Resource Name (ARN)][1] of an organization in
    #     Organizations, for example:
    #     `organizations::123456789012:organization/o-exampleorgid`
    #
    #   * An ARN of an organizational unit (OU) in Organizations, for
    #     example:
    #     `organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123`
    #
    #   * An ARN of an IAM role, for example:
    #     `iam::123456789012:role/rolename`
    #
    #   * An ARN of an IAM user, for example:
    #     `iam::123456789012user/username`
    #
    #   <note markdown="1"> Not all resource types can be shared with IAM roles and users. For
    #   more information, see [Sharing with IAM roles and users][2] in the
    #   *Resource Access Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_type
    #   Specifies that you want to list information for only principals
    #   associated with resource shares that include the specified resource
    #   type.
    #
    #   For a list of valid values, query the ListResourceTypes operation.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arns
    #   Specifies that you want to list information for only principals
    #   associated with the resource shares specified by a list the [Amazon
    #   Resource Names (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPrincipalsRequest AWS API Documentation
    #
    class ListPrincipalsRequest < Struct.new(
      :resource_owner,
      :resource_arn,
      :principals,
      :resource_type,
      :resource_share_arns,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] principals
    #   An array of objects that contain the details about the principals.
    #   @return [Array<Types::Principal>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPrincipalsResponse AWS API Documentation
    #
    class ListPrincipalsResponse < Struct.new(
      :principals,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] work_ids
    #   A list of IDs. These values come from the `id`field of the
    #   `replacePermissionAssociationsWork`structure returned by the
    #   ReplacePermissionAssociations operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   Specifies that you want to see only the details about requests with
    #   a status that matches this value.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListReplacePermissionAssociationsWorkRequest AWS API Documentation
    #
    class ListReplacePermissionAssociationsWorkRequest < Struct.new(
      :work_ids,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replace_permission_associations_works
    #   An array of data structures that provide details of the matching
    #   work IDs.
    #   @return [Array<Types::ReplacePermissionAssociationsWork>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListReplacePermissionAssociationsWorkResponse AWS API Documentation
    #
    class ListReplacePermissionAssociationsWorkResponse < Struct.new(
      :replace_permission_associations_works,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   for which you want to retrieve the associated permissions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceSharePermissionsRequest AWS API Documentation
    #
    class ListResourceSharePermissionsRequest < Struct.new(
      :resource_share_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   An array of objects that describe the permissions associated with
    #   the resource share.
    #   @return [Array<Types::ResourceSharePermissionSummary>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceSharePermissionsResponse AWS API Documentation
    #
    class ListResourceSharePermissionsResponse < Struct.new(
      :permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_region_scope
    #   Specifies that you want the results to include only resources that
    #   have the specified scope.
    #
    #   * `ALL` – the results include both global and regional resources or
    #     resource types.
    #
    #   * `GLOBAL` – the results include only global resources or resource
    #     types.
    #
    #   * `REGIONAL` – the results include only regional resources or
    #     resource types.
    #
    #   The default value is `ALL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceTypesRequest AWS API Documentation
    #
    class ListResourceTypesRequest < Struct.new(
      :next_token,
      :max_results,
      :resource_region_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_types
    #   An array of objects that contain information about the resource
    #   types that can be shared using RAM.
    #   @return [Array<Types::ServiceNameAndResourceType>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourceTypesResponse AWS API Documentation
    #
    class ListResourceTypesResponse < Struct.new(
      :resource_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_owner
    #   Specifies that you want to list only the resource shares that match
    #   the following:
    #
    #   * <b> <code>SELF</code> </b> – resources that your account shares
    #     with other accounts
    #
    #   * <b> <code>OTHER-ACCOUNTS</code> </b> – resources that other
    #     accounts share with your account
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   Specifies that you want to list only the resource shares that are
    #   associated with the specified principal.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Specifies that you want to list only the resource shares that
    #   include resources of the specified resource type.
    #
    #   For valid values, query the ListResourceTypes operation.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   Specifies that you want to list only the resource shares that
    #   include resources with the specified [Amazon Resource Names
    #   (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_share_arns
    #   Specifies that you want to list only resources in the resource
    #   shares identified by the specified [Amazon Resource Names
    #   (ARNs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included on each
    #   page of the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the number you specify, the `NextToken` response
    #   element is returned with a value (not null). Include the specified
    #   value as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that the service
    #   might return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_region_scope
    #   Specifies that you want the results to include only resources that
    #   have the specified scope.
    #
    #   * `ALL` – the results include both global and regional resources or
    #     resource types.
    #
    #   * `GLOBAL` – the results include only global resources or resource
    #     types.
    #
    #   * `REGIONAL` – the results include only regional resources or
    #     resource types.
    #
    #   The default value is `ALL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourcesRequest AWS API Documentation
    #
    class ListResourcesRequest < Struct.new(
      :resource_owner,
      :principal,
      :resource_type,
      :resource_arns,
      :resource_share_arns,
      :next_token,
      :max_results,
      :resource_region_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   An array of objects that contain information about the resources.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListResourcesResponse AWS API Documentation
    #
    class ListResourcesResponse < Struct.new(
      :resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified [Amazon Resource Name
    # (ARN)][1] has a format that isn't valid.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/MalformedArnException AWS API Documentation
    #
    class MalformedArnException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the policy template that you provided
    # isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/MalformedPolicyTemplateException AWS API Documentation
    #
    class MalformedPolicyTemplateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because a required input parameter is missing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/MissingRequiredParameterException AWS API Documentation
    #
    class MissingRequiredParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the requested operation isn't permitted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/OperationNotPermittedException AWS API Documentation
    #
    class OperationNotPermittedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because a permission with the specified name
    # already exists in the requested Amazon Web Services Region. Choose a
    # different name.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PermissionAlreadyExistsException AWS API Documentation
    #
    class PermissionAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because it would exceed the maximum number of
    # permissions you can create in each Amazon Web Services Region. To view
    # the limits for your Amazon Web Services account, see the [RAM page in
    # the Service Quotas console][1].
    #
    #
    #
    # [1]: https://console.aws.amazon.com/servicequotas/home/services/ram/quotas
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PermissionLimitExceededException AWS API Documentation
    #
    class PermissionLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because it would exceed the limit for the number
    # of versions you can have for a permission. To view the limits for your
    # Amazon Web Services account, see the [RAM page in the Service Quotas
    # console][1].
    #
    #
    #
    # [1]: https://console.aws.amazon.com/servicequotas/home/services/ram/quotas
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PermissionVersionsLimitExceededException AWS API Documentation
    #
    class PermissionVersionsLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a principal for use with Resource Access Manager.
    #
    # @!attribute [rw] id
    #   The ID of the principal that can be associated with a resource
    #   share.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arn
    #   The [Amazon Resource Name (ARN)][1] of a resource share the
    #   principal is associated with.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time when the principal was associated with the
    #   resource share.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time when the association between the resource share
    #   and the principal was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] external
    #   Indicates the relationship between the Amazon Web Services account
    #   the principal belongs to and the account that owns the resource
    #   share:
    #
    #   * `True` – The two accounts belong to same organization.
    #
    #   * `False` – The two accounts do not belong to the same organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/Principal AWS API Documentation
    #
    class Principal < Struct.new(
      :id,
      :resource_share_arn,
      :creation_time,
      :last_updated_time,
      :external)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the
    #   `CREATED_FROM_POLICY` permission that you want to promote. You can
    #   get this [Amazon Resource Name (ARN)][1] by calling the
    #   ListResourceSharePermissions operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies a name for the promoted customer managed permission.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PromotePermissionCreatedFromPolicyRequest AWS API Documentation
    #
    class PromotePermissionCreatedFromPolicyRequest < Struct.new(
      :permission_arn,
      :name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission
    #   Information about an RAM permission.
    #   @return [Types::ResourceSharePermissionSummary]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PromotePermissionCreatedFromPolicyResponse AWS API Documentation
    #
    class PromotePermissionCreatedFromPolicyResponse < Struct.new(
      :permission,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   to promote.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PromoteResourceShareCreatedFromPolicyRequest AWS API Documentation
    #
    class PromoteResourceShareCreatedFromPolicyRequest < Struct.new(
      :resource_share_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   A return value of `true` indicates that the request succeeded. A
    #   value of `false` indicates that the request failed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/PromoteResourceShareCreatedFromPolicyResponse AWS API Documentation
    #
    class PromoteResourceShareCreatedFromPolicyResponse < Struct.new(
      :return_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_invitation_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the invitation that
    #   you want to reject.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/RejectResourceShareInvitationRequest AWS API Documentation
    #
    class RejectResourceShareInvitationRequest < Struct.new(
      :resource_share_invitation_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_invitation
    #   An object that contains the details about the rejected invitation.
    #   @return [Types::ResourceShareInvitation]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/RejectResourceShareInvitationResponse AWS API Documentation
    #
    class RejectResourceShareInvitationResponse < Struct.new(
      :resource_share_invitation,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] from_permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the managed
    #   permission that you want to replace.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] from_permission_version
    #   Specifies that you want to updated the permissions for only those
    #   resource shares that use the specified version of the managed
    #   permission.
    #   @return [Integer]
    #
    # @!attribute [rw] to_permission_arn
    #   Specifies the ARN of the managed permission that you want to
    #   associate with resource shares in place of the one specified by
    #   `fromPerssionArn` and `fromPermissionVersion`.
    #
    #   The operation always associates the version that is currently the
    #   default for the specified managed permission.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ReplacePermissionAssociationsRequest AWS API Documentation
    #
    class ReplacePermissionAssociationsRequest < Struct.new(
      :from_permission_arn,
      :from_permission_version,
      :to_permission_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replace_permission_associations_work
    #   Specifies a data structure that you can use to track the
    #   asynchronous tasks that RAM performs to complete this operation. You
    #   can use the ListReplacePermissionAssociationsWork operation and pass
    #   the `id` value returned in this structure.
    #   @return [Types::ReplacePermissionAssociationsWork]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ReplacePermissionAssociationsResponse AWS API Documentation
    #
    class ReplacePermissionAssociationsResponse < Struct.new(
      :replace_permission_associations_work,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents the background work that RAM performs when
    # you invoke the ReplacePermissionAssociations operation.
    #
    # @!attribute [rw] id
    #   The unique identifier for the background task associated with one
    #   ReplacePermissionAssociations request.
    #   @return [String]
    #
    # @!attribute [rw] from_permission_arn
    #   The [Amazon Resource Name (ARN)][1] of the managed permission that
    #   this background task is replacing.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] from_permission_version
    #   The version of the managed permission that this background task is
    #   replacing.
    #   @return [String]
    #
    # @!attribute [rw] to_permission_arn
    #   The ARN of the managed permission that this background task is
    #   associating with the resource shares in place of the managed
    #   permission and version specified in `fromPermissionArn` and
    #   `fromPermissionVersion`.
    #   @return [String]
    #
    # @!attribute [rw] to_permission_version
    #   The version of the managed permission that this background task is
    #   associating with the resource shares. This is always the version
    #   that is currently the default for this managed permission.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the current status of the background tasks for the
    #   specified ID. The output is one of the following strings:
    #
    #   * `IN_PROGRESS`
    #
    #   * `COMPLETED`
    #
    #   * `FAILED`
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Specifies the reason for a `FAILED` status. This field is present
    #   only when there `status` is `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time when this asynchronous background task was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time when the status of this background task was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ReplacePermissionAssociationsWork AWS API Documentation
    #
    class ReplacePermissionAssociationsWork < Struct.new(
      :id,
      :from_permission_arn,
      :from_permission_version,
      :to_permission_arn,
      :to_permission_version,
      :status,
      :status_message,
      :creation_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resource associated with a resource share in RAM.
    #
    # @!attribute [rw] arn
    #   The [Amazon Resource Name (ARN)][1] of the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The resource type. This takes the form of:
    #   `service-code`:`resource-code`, and is case-insensitive. For
    #   example, an Amazon EC2 Subnet would be represented by the string
    #   `ec2:subnet`.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arn
    #   The [Amazon Resource Name (ARN)][1] of the resource share this
    #   resource is associated with.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] resource_group_arn
    #   The [Amazon Resource Name (ARN)][1] of the resource group. This
    #   value is available only if the resource is part of a resource group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message about the status of the resource.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time when the resource was associated with the resource
    #   share.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date an time when the association between the resource and the
    #   resource share was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] resource_region_scope
    #   Specifies the scope of visibility of this resource:
    #
    #   * **REGIONAL** – The resource can be accessed only by using requests
    #     that target the Amazon Web Services Region in which the resource
    #     exists.
    #
    #   * **GLOBAL** – The resource can be accessed from any Amazon Web
    #     Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :arn,
      :type,
      :resource_share_arn,
      :resource_group_arn,
      :status,
      :status_message,
      :creation_time,
      :last_updated_time,
      :resource_region_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified [Amazon Resource Name
    # (ARN)][1] was not found.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceArnNotFoundException AWS API Documentation
    #
    class ResourceArnNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resource share in RAM.
    #
    # @!attribute [rw] resource_share_arn
    #   The [Amazon Resource Name (ARN)][1] of the resource share
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] owning_account_id
    #   The ID of the Amazon Web Services account that owns the resource
    #   share.
    #   @return [String]
    #
    # @!attribute [rw] allow_external_principals
    #   Indicates whether principals outside your organization in
    #   Organizations can be associated with a resource share.
    #
    #   * `True` – the resource share can be shared with any Amazon Web
    #     Services account.
    #
    #   * `False` – the resource share can be shared with only accounts in
    #     the same organization as the account that owns the resource share.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message about the status of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key and value pairs attached to the resource share.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] creation_time
    #   The date and time when the resource share was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time when the resource share was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] feature_set
    #   Indicates what features are available for this resource share. This
    #   parameter can have one of the following values:
    #
    #   * **STANDARD** – A resource share that supports all functionality.
    #     These resource shares are visible to all principals you share the
    #     resource share with. You can modify these resource shares in RAM
    #     using the console or APIs. This resource share might have been
    #     created by RAM, or it might have been **CREATED\_FROM\_POLICY**
    #     and then promoted.
    #
    #   * **CREATED\_FROM\_POLICY** – The customer manually shared a
    #     resource by attaching a resource-based policy. That policy did not
    #     match any existing managed permissions, so RAM created this
    #     customer managed permission automatically on the customer's
    #     behalf based on the attached policy document. This type of
    #     resource share is visible only to the Amazon Web Services account
    #     that created it. You can't modify it in RAM unless you promote
    #     it. For more information, see
    #     PromoteResourceShareCreatedFromPolicy.
    #
    #   * **PROMOTING\_TO\_STANDARD** – This resource share was originally
    #     `CREATED_FROM_POLICY`, but the customer ran the
    #     PromoteResourceShareCreatedFromPolicy and that operation is still
    #     in progress. This value changes to `STANDARD` when complete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShare AWS API Documentation
    #
    class ResourceShare < Struct.new(
      :resource_share_arn,
      :name,
      :owning_account_id,
      :allow_external_principals,
      :status,
      :status_message,
      :tags,
      :creation_time,
      :last_updated_time,
      :feature_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an association between a resource share and either a
    # principal or a resource.
    #
    # @!attribute [rw] resource_share_arn
    #   The [Amazon Resource Name (ARN)][1] of the resource share.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] resource_share_name
    #   The name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] associated_entity
    #   The associated entity. This can be either of the following:
    #
    #   * For a resource association, this is the [Amazon Resource Name
    #     (ARN)][1] of the resource.
    #
    #   * For principal associations, this is one of the following:
    #
    #     * The ID of an Amazon Web Services account
    #
    #     * The [Amazon Resource Name (ARN)][1] of an organization in
    #       Organizations
    #
    #     * The ARN of an organizational unit (OU) in Organizations
    #
    #     * The ARN of an IAM role
    #
    #     * The ARN of an IAM user
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The type of entity included in this association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the association.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message about the status of the association.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time when the association was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time when the association was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] external
    #   Indicates whether the principal belongs to the same organization in
    #   Organizations as the Amazon Web Services account that owns the
    #   resource share.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareAssociation AWS API Documentation
    #
    class ResourceShareAssociation < Struct.new(
      :resource_share_arn,
      :resource_share_name,
      :associated_entity,
      :association_type,
      :status,
      :status_message,
      :creation_time,
      :last_updated_time,
      :external)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an invitation for an Amazon Web Services account to join a
    # resource share.
    #
    # @!attribute [rw] resource_share_invitation_arn
    #   The [Amazon Resource Name (ARN)][1] of the invitation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] resource_share_name
    #   The name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arn
    #   The [Amazon Resource Name (ARN)][1] of the resource share
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] sender_account_id
    #   The ID of the Amazon Web Services account that sent the invitation.
    #   @return [String]
    #
    # @!attribute [rw] receiver_account_id
    #   The ID of the Amazon Web Services account that received the
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] invitation_timestamp
    #   The date and time when the invitation was sent.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the invitation.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_associations
    #   To view the resources associated with a pending resource share
    #   invitation, use ListPendingInvitationResources.
    #   @return [Array<Types::ResourceShareAssociation>]
    #
    # @!attribute [rw] receiver_arn
    #   The [Amazon Resource Name (ARN)][1] of the IAM user or role that
    #   received the invitation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareInvitation AWS API Documentation
    #
    class ResourceShareInvitation < Struct.new(
      :resource_share_invitation_arn,
      :resource_share_name,
      :resource_share_arn,
      :sender_account_id,
      :receiver_account_id,
      :invitation_timestamp,
      :status,
      :resource_share_associations,
      :receiver_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified invitation was already
    # accepted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareInvitationAlreadyAcceptedException AWS API Documentation
    #
    class ResourceShareInvitationAlreadyAcceptedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified invitation was already
    # rejected.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareInvitationAlreadyRejectedException AWS API Documentation
    #
    class ResourceShareInvitationAlreadyRejectedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified [Amazon Resource Name
    # (ARN)][1] for an invitation was not found.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareInvitationArnNotFoundException AWS API Documentation
    #
    class ResourceShareInvitationArnNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified invitation is past its
    # expiration date and time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareInvitationExpiredException AWS API Documentation
    #
    class ResourceShareInvitationExpiredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because it would exceed the limit for resource
    # shares for your account. To view the limits for your Amazon Web
    # Services account, see the [RAM page in the Service Quotas console][1].
    #
    #
    #
    # [1]: https://console.aws.amazon.com/servicequotas/home/services/ram/quotas
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceShareLimitExceededException AWS API Documentation
    #
    class ResourceShareLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a RAM managed permission.
    #
    # @!attribute [rw] arn
    #   The [Amazon Resource Name (ARN)][1] of this RAM managed permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the permission described in this response.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   Specifies whether the version of the permission represented in this
    #   response is the default version for this permission.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of this permission.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type to which this permission applies.
    #   @return [String]
    #
    # @!attribute [rw] permission
    #   The permission's effect and actions in JSON format. The `effect`
    #   indicates whether the specified actions are allowed or denied. The
    #   `actions` list the operations to which the principal is granted or
    #   denied access.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time when the permission was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time when the permission was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] is_resource_type_default
    #   Specifies whether the version of the permission represented in this
    #   response is the default version for all resources of this resource
    #   type.
    #   @return [Boolean]
    #
    # @!attribute [rw] permission_type
    #   The type of managed permission. This can be one of the following
    #   values:
    #
    #   * `AWS_MANAGED` – Amazon Web Services created and manages this
    #     managed permission. You can associate it with your resource
    #     shares, but you can't modify it.
    #
    #   * `CUSTOMER_MANAGED` – You, or another principal in your account
    #     created this managed permission. You can associate it with your
    #     resource shares and create new versions that have different
    #     permissions.
    #   @return [String]
    #
    # @!attribute [rw] feature_set
    #   Indicates what features are available for this resource share. This
    #   parameter can have one of the following values:
    #
    #   * **STANDARD** – A resource share that supports all functionality.
    #     These resource shares are visible to all principals you share the
    #     resource share with. You can modify these resource shares in RAM
    #     using the console or APIs. This resource share might have been
    #     created by RAM, or it might have been **CREATED\_FROM\_POLICY**
    #     and then promoted.
    #
    #   * **CREATED\_FROM\_POLICY** – The customer manually shared a
    #     resource by attaching a resource-based policy. That policy did not
    #     match any existing managed permissions, so RAM created this
    #     customer managed permission automatically on the customer's
    #     behalf based on the attached policy document. This type of
    #     resource share is visible only to the Amazon Web Services account
    #     that created it. You can't modify it in RAM unless you promote
    #     it. For more information, see
    #     PromoteResourceShareCreatedFromPolicy.
    #
    #   * **PROMOTING\_TO\_STANDARD** – This resource share was originally
    #     `CREATED_FROM_POLICY`, but the customer ran the
    #     PromoteResourceShareCreatedFromPolicy and that operation is still
    #     in progress. This value changes to `STANDARD` when complete.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the association between the permission and the
    #   resource share. The following are the possible values:
    #
    #   * `ATTACHABLE` – This permission or version can be associated with
    #     resource shares.
    #
    #   * `UNATTACHABLE` – This permission or version can't currently be
    #     associated with resource shares.
    #
    #   * `DELETING` – This permission or version is in the process of being
    #     deleted.
    #
    #   * `DELETED` – This permission or version is deleted.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key and value pairs attached to the resource share.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceSharePermissionDetail AWS API Documentation
    #
    class ResourceSharePermissionDetail < Struct.new(
      :arn,
      :version,
      :default_version,
      :name,
      :resource_type,
      :permission,
      :creation_time,
      :last_updated_time,
      :is_resource_type_default,
      :permission_type,
      :feature_set,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an RAM permission.
    #
    # @!attribute [rw] arn
    #   The [Amazon Resource Name (ARN)][1] of the permission you want
    #   information about.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the permission associated with this resource share.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   Specifies whether the version of the managed permission used by this
    #   resource share is the default version for this managed permission.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of this managed permission.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource to which this permission applies. This takes
    #   the form of: `service-code`:`resource-code`, and is
    #   case-insensitive. For example, an Amazon EC2 Subnet would be
    #   represented by the string `ec2:subnet`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the permission.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time when the permission was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time when the permission was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] is_resource_type_default
    #   Specifies whether the managed permission associated with this
    #   resource share is the default managed permission for all resources
    #   of this resource type.
    #   @return [Boolean]
    #
    # @!attribute [rw] permission_type
    #   The type of managed permission. This can be one of the following
    #   values:
    #
    #   * `AWS_MANAGED` – Amazon Web Services created and manages this
    #     managed permission. You can associate it with your resource
    #     shares, but you can't modify it.
    #
    #   * `CUSTOMER_MANAGED` – You, or another principal in your account
    #     created this managed permission. You can associate it with your
    #     resource shares and create new versions that have different
    #     permissions.
    #   @return [String]
    #
    # @!attribute [rw] feature_set
    #   Indicates what features are available for this resource share. This
    #   parameter can have one of the following values:
    #
    #   * **STANDARD** – A resource share that supports all functionality.
    #     These resource shares are visible to all principals you share the
    #     resource share with. You can modify these resource shares in RAM
    #     using the console or APIs. This resource share might have been
    #     created by RAM, or it might have been **CREATED\_FROM\_POLICY**
    #     and then promoted.
    #
    #   * **CREATED\_FROM\_POLICY** – The customer manually shared a
    #     resource by attaching a resource-based policy. That policy did not
    #     match any existing managed permissions, so RAM created this
    #     customer managed permission automatically on the customer's
    #     behalf based on the attached policy document. This type of
    #     resource share is visible only to the Amazon Web Services account
    #     that created it. You can't modify it in RAM unless you promote
    #     it. For more information, see
    #     PromoteResourceShareCreatedFromPolicy.
    #
    #   * **PROMOTING\_TO\_STANDARD** – This resource share was originally
    #     `CREATED_FROM_POLICY`, but the customer ran the
    #     PromoteResourceShareCreatedFromPolicy and that operation is still
    #     in progress. This value changes to `STANDARD` when complete.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the tag key value pairs currently attached to the
    #   permission.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ResourceSharePermissionSummary AWS API Documentation
    #
    class ResourceSharePermissionSummary < Struct.new(
      :arn,
      :version,
      :default_version,
      :name,
      :resource_type,
      :status,
      :creation_time,
      :last_updated_time,
      :is_resource_type_default,
      :permission_type,
      :feature_set,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the service could not respond to the
    # request due to an internal problem. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ServerInternalException AWS API Documentation
    #
    class ServerInternalException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a shareable resource type and the Amazon Web
    # Services service to which resources of that type belong.
    #
    # @!attribute [rw] resource_type
    #   The type of the resource. This takes the form of:
    #   `service-code`:`resource-code`, and is case-insensitive. For
    #   example, an Amazon EC2 Subnet would be represented by the string
    #   `ec2:subnet`.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the Amazon Web Services service to which resources of
    #   this type belong.
    #   @return [String]
    #
    # @!attribute [rw] resource_region_scope
    #   Specifies the scope of visibility of resources of this type:
    #
    #   * **REGIONAL** – The resource can be accessed only by using requests
    #     that target the Amazon Web Services Region in which the resource
    #     exists.
    #
    #   * **GLOBAL** – The resource can be accessed from any Amazon Web
    #     Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ServiceNameAndResourceType AWS API Documentation
    #
    class ServiceNameAndResourceType < Struct.new(
      :resource_type,
      :service_name,
      :resource_region_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the service isn't available. Try again
    # later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the customer
    #   managed permission whose default version you want to change.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] permission_version
    #   Specifies the version number that you want to designate as the
    #   default for customer managed permission. To see a list of all
    #   available version numbers, use ListPermissionVersions.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/SetDefaultPermissionVersionRequest AWS API Documentation
    #
    class SetDefaultPermissionVersionRequest < Struct.new(
      :permission_arn,
      :permission_version,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   A boolean value that indicates whether the operation was successful.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/SetDefaultPermissionVersionResponse AWS API Documentation
    #
    class SetDefaultPermissionVersionResponse < Struct.new(
      :return_value,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing a tag. A tag is metadata that you can attach to
    # your resources to help organize and categorize them. You can also use
    # them to help you secure your resources. For more information, see
    # [Controlling access to Amazon Web Services resources using tags][1].
    #
    # For more information about tags, see [Tagging Amazon Web Services
    # resources][2] in the *Amazon Web Services General Reference Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    # [2]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @!attribute [rw] key
    #   The key, or name, attached to the tag. Every tag must have a key.
    #   Key names are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The string value attached to the tag. The value can be an empty
    #   string. Key values are case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag key and optional list of possible values that you can use to
    # filter results for tagged resources.
    #
    # @!attribute [rw] tag_key
    #   The tag key. This must have a valid string value and can't be
    #   empty.
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   A list of zero or more tag values. If no values are provided, then
    #   the filter matches any tag with the specified key, regardless of its
    #   value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagFilter AWS API Documentation
    #
    class TagFilter < Struct.new(
      :tag_key,
      :tag_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because it would exceed the limit for tags for
    # your Amazon Web Services account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagLimitExceededException AWS API Documentation
    #
    class TagLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because the specified tag key is a reserved word
    # and can't be used.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagPolicyViolationException AWS API Documentation
    #
    class TagPolicyViolationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   that you want to add tags to. You must specify *either*
    #   `resourceShareArn`, or `resourceArn`, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of one or more tag key and value pairs. The tag key must be
    #   present and not be an empty string. The tag value must be present
    #   but can be an empty string.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] resource_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the managed
    #   permission that you want to add tags to. You must specify *either*
    #   `resourceArn`, or `resourceShareArn`, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_share_arn,
      :tags,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The operation failed because it exceeded the rate at which you are
    # allowed to perform this operation. Please try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because a specified resource couldn't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UnknownResourceException AWS API Documentation
    #
    class UnknownResourceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There isn't an existing managed permission defined in RAM that has
    # the same IAM permissions as the resource-based policy attached to the
    # resource. You should first run PromotePermissionCreatedFromPolicy to
    # create that managed permission.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UnmatchedPolicyPermissionException AWS API Documentation
    #
    class UnmatchedPolicyPermissionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   that you want to remove tags from. The tags are removed from the
    #   resource share, not the resources in the resource share. You must
    #   specify either `resourceShareArn`, or `resourceArn`, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Specifies a list of one or more tag keys that you want to remove.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the managed
    #   permission that you want to remove tags from. You must specify
    #   either `resourceArn`, or `resourceShareArn`, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_share_arn,
      :tag_keys,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resource Name (ARN)][1] of the resource share
    #   that you want to modify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   If specified, the new name that you want to attach to the resource
    #   share.
    #   @return [String]
    #
    # @!attribute [rw] allow_external_principals
    #   Specifies whether principals outside your organization in
    #   Organizations can be associated with a resource share.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UpdateResourceShareRequest AWS API Documentation
    #
    class UpdateResourceShareRequest < Struct.new(
      :resource_share_arn,
      :name,
      :allow_external_principals,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_share
    #   Information about the resource share.
    #   @return [Types::ResourceShare]
    #
    # @!attribute [rw] client_token
    #   The idempotency identifier associated with this request. If you want
    #   to repeat the same operation in an idempotent manner then you must
    #   include this value in the `clientToken` request parameter of that
    #   later call. All other parameters must also have the same values that
    #   you used in the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UpdateResourceShareResponse AWS API Documentation
    #
    class UpdateResourceShareResponse < Struct.new(
      :resource_share,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
