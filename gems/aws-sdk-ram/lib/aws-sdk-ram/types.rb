# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RAM
  module Types

    # @note When making an API call, you may pass AcceptResourceShareInvitationRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_invitation_arn: "String", # required
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_invitation_arn
    #   The [Amazon Resoure Name (ARN)][1] of the invitation that you want
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

    # @note When making an API call, you may pass AssociateResourceSharePermissionRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         permission_arn: "String", # required
    #         replace: false,
    #         client_token: "String",
    #         permission_version: 1,
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the resource share
    #   to which you want to add or replace permissions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the RAM permission
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
    #   Specifies whether the specified permission should replace or add to
    #   the existing permission associated with the resource share. Use
    #   `true` to replace the current permissions. Use `false` to add the
    #   permission to the current permission. The default value is `false`.
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
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] permission_version
    #   Specifies the version of the RAM permission to associate with the
    #   resource share. If you don't specify this parameter, the operation
    #   uses the version designated as the default. You can use the
    #   ListPermissionVersions operation to discover the available versions
    #   of a permission.
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

    # @note When making an API call, you may pass AssociateResourceShareRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         resource_arns: ["String"],
    #         principals: ["String"],
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the resource share
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
    #   * An [Amazon Resoure Name (ARN)][1] of an organization in
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

    # @note When making an API call, you may pass CreateResourceShareRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         resource_arns: ["String"],
    #         principals: ["String"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         allow_external_principals: false,
    #         client_token: "String",
    #         permission_arns: ["String"],
    #       }
    #
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
    #   * An [Amazon Resoure Name (ARN)][1] of an organization in
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

    # @note When making an API call, you may pass DeleteResourceShareRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the resource share
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

    # @note When making an API call, you may pass DisassociateResourceSharePermissionRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         permission_arn: "String", # required
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   The [Amazon Resoure Name (ARN)][1] of the resource share from which
    #   you want to disassociate a permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] permission_arn
    #   The [Amazon Resoure Name (ARN)][1] of the permission to disassociate
    #   from the resource share. Changes to permissions take effect
    #   immediately.
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

    # @note When making an API call, you may pass DisassociateResourceShareRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         resource_arns: ["String"],
    #         principals: ["String"],
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   Specifies [Amazon Resoure Name (ARN)][1] of the resource share that
    #   you want to remove resources from.
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
    #   principals outside of the Amazon Web Services account that created
    #   the resources.
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
    #   * An [Amazon Resoure Name (ARN)][1] of an organization in
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
    #   An array of objects that contain information about the updated
    #   associations for this resource share.
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

    # @note When making an API call, you may pass GetPermissionRequest
    #   data as a hash:
    #
    #       {
    #         permission_arn: "String", # required
    #         permission_version: 1,
    #       }
    #
    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the permission whose
    #   contents you want to retrieve. To find the ARN for a permission, use
    #   either the ListPermissions operation or go to the [Permissions
    #   library][2] page in the RAM console and then choose the name of the
    #   permission. The ARN is displayed on the detail page.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://console.aws.amazon.com/ram/home#Permissions:
    #   @return [String]
    #
    # @!attribute [rw] permission_version
    #   Specifies identifier for the version of the RAM permission to
    #   retrieve. If you don't specify this parameter, the operation
    #   retrieves the default version.
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
    #   An object that contains information about the permission.
    #   @return [Types::ResourceSharePermissionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/GetPermissionResponse AWS API Documentation
    #
    class GetPermissionResponse < Struct.new(
      :permission)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourcePoliciesRequest
    #   data as a hash:
    #
    #       {
    #         resource_arns: ["String"], # required
    #         principal: "String",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass GetResourceShareAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         association_type: "PRINCIPAL", # required, accepts PRINCIPAL, RESOURCE
    #         resource_share_arns: ["String"],
    #         resource_arn: "String",
    #         principal: "String",
    #         association_status: "ASSOCIATING", # accepts ASSOCIATING, ASSOCIATED, FAILED, DISASSOCIATING, DISASSOCIATED
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] association_type
    #   Specifies whether you want to retrieve the associations that involve
    #   a specified resource or principal.
    #
    #   * `PRINCIPAL` – list the principals that are associated with the
    #     specified resource share.
    #
    #   * `RESOURCE` – list the resources that are associated with the
    #     specified resource share.
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
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the resource whose
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
    #   organization ID, an organizational unit ID, or the [Amazon Resoure
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
    #   Specifies that you want to retrieve only associations with this
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

    # @note When making an API call, you may pass GetResourceShareInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_invitation_arns: ["String"],
    #         resource_share_arns: ["String"],
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass GetResourceSharesRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arns: ["String"],
    #         resource_share_status: "PENDING", # accepts PENDING, ACTIVE, FAILED, DELETING, DELETED
    #         resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #         name: "String",
    #         tag_filters: [
    #           {
    #             tag_key: "TagKey",
    #             tag_values: ["TagValue"],
    #           },
    #         ],
    #         next_token: "String",
    #         max_results: 1,
    #         permission_arn: "String",
    #       }
    #
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
    #   * <b> <code>SELF</code> </b> – resources that you are sharing
    #
    #   * <b> <code>OTHER-ACCOUNTS</code> </b> – resources that other
    #     accounts share with you
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
    #   shares that use the RAM permission with this [Amazon Resoure Name
    #   (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
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
      :permission_arn)
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

    # The client token input parameter was matched one used with a previous
    # call to the operation, but at least one of the other input parameters
    # is different from the previous call.
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

    # The client token is not valid.
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

    # The specified value for `MaxResults` is not valid.
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

    # The specified value for `NextToken` is not valid.
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

    # A parameter is not valid.
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

    # The specified resource type is not valid.
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

    # The requested state transition is not valid.
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

    # @note When making an API call, you may pass ListPendingInvitationResourcesRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_invitation_arn: "String", # required
    #         next_token: "String",
    #         max_results: 1,
    #         resource_region_scope: "ALL", # accepts ALL, REGIONAL, GLOBAL
    #       }
    #
    # @!attribute [rw] resource_share_invitation_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the invitation. You
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

    # @note When making an API call, you may pass ListPermissionVersionsRequest
    #   data as a hash:
    #
    #       {
    #         permission_arn: "String", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] permission_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the RAM permission
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

    # @note When making an API call, you may pass ListPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "String",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_type
    #   Specifies that you want to list permissions for only the specified
    #   resource type. For example, to list only permissions that apply to
    #   EC2 subnets, specify `ec2:Subnet`. You can use the ListResourceTypes
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/ListPermissionsRequest AWS API Documentation
    #
    class ListPermissionsRequest < Struct.new(
      :resource_type,
      :next_token,
      :max_results)
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

    # @note When making an API call, you may pass ListPrincipalsRequest
    #   data as a hash:
    #
    #       {
    #         resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #         resource_arn: "String",
    #         principals: ["String"],
    #         resource_type: "String",
    #         resource_share_arns: ["String"],
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_owner
    #   Specifies that you want to list information for only resource shares
    #   that match the following:
    #
    #   * <b> <code>SELF</code> </b> – resources that you are sharing
    #
    #   * <b> <code>OTHER-ACCOUNTS</code> </b> – resources that other
    #     accounts share with you
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Specifies that you want to list principal information for the
    #   resource share with the specified [Amazon Resoure Name (ARN)][1].
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
    #   * An [Amazon Resoure Name (ARN)][1] of an organization in
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

    # @note When making an API call, you may pass ListResourceSharePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the resource share
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

    # @note When making an API call, you may pass ListResourceTypesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #         max_results: 1,
    #         resource_region_scope: "ALL", # accepts ALL, REGIONAL, GLOBAL
    #       }
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

    # @note When making an API call, you may pass ListResourcesRequest
    #   data as a hash:
    #
    #       {
    #         resource_owner: "SELF", # required, accepts SELF, OTHER-ACCOUNTS
    #         principal: "String",
    #         resource_type: "String",
    #         resource_arns: ["String"],
    #         resource_share_arns: ["String"],
    #         next_token: "String",
    #         max_results: 1,
    #         resource_region_scope: "ALL", # accepts ALL, REGIONAL, GLOBAL
    #       }
    #
    # @!attribute [rw] resource_owner
    #   Specifies that you want to list only the resource shares that match
    #   the following:
    #
    #   * <b> <code>SELF</code> </b> – resources that you are sharing
    #
    #   * <b> <code>OTHER-ACCOUNTS</code> </b> – resources that other
    #     accounts share with you
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

    # The format of an Amazon Resource Name (ARN) is not valid.
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

    # A required input parameter is missing.
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

    # The requested operation is not permitted.
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

    # Describes a principal for use with Resource Access Manager.
    #
    # @!attribute [rw] id
    #   The ID of the principal.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arn
    #   The [Amazon Resoure Name (ARN)][1] of a resource share the principal
    #   is associated with.
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
    #   The date and time when the association was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] external
    #   Indicates whether the principal belongs to the same organization in
    #   Organizations as the Amazon Web Services account that owns the
    #   resource share.
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

    # @note When making an API call, you may pass PromoteResourceShareCreatedFromPolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the resource share
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

    # @note When making an API call, you may pass RejectResourceShareInvitationRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_invitation_arn: "String", # required
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_invitation_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the invitation that
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

    # Describes a resource associated with a resource share in RAM.
    #
    # @!attribute [rw] arn
    #   The [Amazon Resoure Name (ARN)][1] of the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The resource type. This takes the form of:
    #   `service-code`\:`resource-code`
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arn
    #   The [Amazon Resoure Name (ARN)][1] of the resource share this
    #   resource is associated with.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] resource_group_arn
    #   The [Amazon Resoure Name (ARN)][1] of the resource group. This value
    #   is available only if the resource is part of a resource group.
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
    #   The date an time when the association was last updated.
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

    # The specified Amazon Resource Name (ARN) was not found.
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
    #   The [Amazon Resoure Name (ARN)][1] of the resource share
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
    #   Indicates how the resource share was created. Possible values
    #   include:
    #
    #   * `CREATED_FROM_POLICY` - Indicates that the resource share was
    #     created from an Identity and Access Management (IAM)
    #     resource-based permission policy attached to the resource. This
    #     type of resource share is visible only to the Amazon Web Services
    #     account that created it. You can't modify it in RAM unless you
    #     promote it. For more information, see
    #     PromoteResourceShareCreatedFromPolicy.
    #
    #   * `PROMOTING_TO_STANDARD` - The resource share is in the process of
    #     being promoted. For more information, see
    #     PromoteResourceShareCreatedFromPolicy.
    #
    #   * `STANDARD` - Indicates that the resource share was created in RAM
    #     using the console or APIs. These resource shares are visible to
    #     all principals you share the resource share with. You can modify
    #     these resource shares in RAM using the console or APIs.
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

    # Describes an association with a resource share and either a principal
    # or a resource.
    #
    # @!attribute [rw] resource_share_arn
    #   The [Amazon Resoure Name (ARN)][1] of the resource share.
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
    #   * For a resource association, this is the [Amazon Resoure Name
    #     (ARN)][1] of the resource.
    #
    #   * For principal associations, this is one of the following:
    #
    #     * The ID of an Amazon Web Services account
    #
    #     * The [Amazon Resoure Name (ARN)][1] of an organization in
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
    #   The [Amazon Resoure Name (ARN)][1] of the invitation.
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
    #   The [Amazon Resoure Name (ARN)][1] of the resource share
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
    #   The [Amazon Resoure Name (ARN)][1] of the IAM user or role that
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

    # The specified invitation was already accepted.
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

    # The specified invitation was already rejected.
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

    # The specified Amazon Resource Name (ARN) for an invitation was not
    # found.
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

    # The specified invitation is expired.
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

    # This request would exceed the limit for resource shares for your
    # account.
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

    # Information about an RAM permission.
    #
    # @!attribute [rw] arn
    #   The [Amazon Resoure Name (ARN)][1] of this RAM permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the permission represented in this structure.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   Specifies whether the version of the permission represented in this
    #   structure is the default version for this permission.
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
    #   structure is the default version for all resources of this resource
    #   type.
    #   @return [Boolean]
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
      :is_resource_type_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an RAM permission that is associated with a resource
    # share and any of its resources of a specified type.
    #
    # @!attribute [rw] arn
    #   The [Amazon Resoure Name (ARN)][1] of the permission you want
    #   information about.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the permission represented in this structure.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   Specifies whether the version of the permission represented in this
    #   structure is the default version for this permission.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of this permission.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource to which this permission applies.
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
    #   Specifies whether the version of the permission represented in this
    #   structure is the default version for all resources of this resource
    #   type.
    #   @return [Boolean]
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
      :is_resource_type_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service could not respond to the request due to an internal
    # problem.
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
    #   The type of the resource.
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

    # The service is not available.
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
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
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
    # @note When making an API call, you may pass TagFilter
    #   data as a hash:
    #
    #       {
    #         tag_key: "TagKey",
    #         tag_values: ["TagValue"],
    #       }
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

    # This request would exceed the limit for tags for your account.
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

    # The specified tag key is a reserved word and can't be used.
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the resource share
    #   that you want to add tags to.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_share_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # You exceeded the rate at which you are allowed to perform this
    # operation. Please try again later.
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

    # A specified resource was not found.
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the resource share
    #   that you want to remove tags from. The tags are removed from the
    #   resource share, not the resources in the resource share.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_share_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ram-2018-01-04/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateResourceShareRequest
    #   data as a hash:
    #
    #       {
    #         resource_share_arn: "String", # required
    #         name: "String",
    #         allow_external_principals: false,
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] resource_share_arn
    #   Specifies the [Amazon Resoure Name (ARN)][1] of the resource share
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
