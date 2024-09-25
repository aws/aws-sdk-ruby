# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSOAdmin
  module Types

    # These are IAM Identity Center identity store attributes that you can
    # configure for use in attributes-based access control (ABAC). You can
    # create permissions policies that determine who can access your Amazon
    # Web Services resources based upon the configured attribute values.
    # When you enable ABAC and specify `AccessControlAttributes`, IAM
    # Identity Center passes the attribute values of the authenticated user
    # into IAM for use in policy evaluation.
    #
    # @!attribute [rw] key
    #   The name of the attribute associated with your identities in your
    #   identity source. This is used to map a specified attribute in your
    #   identity source with an attribute in IAM Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value used for mapping a specified attribute to an identity
    #   source.
    #   @return [Types::AccessControlAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AccessControlAttribute AWS API Documentation
    #
    class AccessControlAttribute < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value used for mapping a specified attribute to an identity
    # source. For more information, see [Attribute mappings][1] in the *IAM
    # Identity Center User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/singlesignon/latest/userguide/attributemappingsconcept.html
    #
    # @!attribute [rw] source
    #   The identity source to use when mapping a specified attribute to IAM
    #   Identity Center.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AccessControlAttributeValue AWS API Documentation
    #
    class AccessControlAttributeValue < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assignment that indicates a principal's limited access to a
    # specified Amazon Web Services account with a specified permission set.
    #
    # <note markdown="1"> The term *principal* here refers to a user or group that is defined in
    # IAM Identity Center.
    #
    #  </note>
    #
    # @!attribute [rw] account_id
    #   The identifier of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in IAM Identity Center, such as a user
    #   or group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AccountAssignment AWS API Documentation
    #
    class AccountAssignment < Struct.new(
      :account_id,
      :permission_set_arn,
      :principal_id,
      :principal_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes an assignment of an Amazon Web Services
    # account to a principal and the permissions that principal has in the
    # account.
    #
    # @!attribute [rw] account_id
    #   The account ID number of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the IAM Identity Center permission set assigned to this
    #   principal for this Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The ID of the principal.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The type of the principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AccountAssignmentForPrincipal AWS API Documentation
    #
    class AccountAssignmentForPrincipal < Struct.new(
      :account_id,
      :permission_set_arn,
      :principal_id,
      :principal_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the creation or deletion operation of an assignment that
    # a principal needs to access an account.
    #
    # @!attribute [rw] created_date
    #   The date that the permission set was created.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The message that contains an error or exception in case of an
    #   operation failure.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in IAM Identity Center, such as a user
    #   or group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The identifier for tracking the request operation that is generated
    #   by the universally unique identifier (UUID) workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the permission set provisioning process.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   TargetID is an Amazon Web Services account identifier, (For example,
    #   123456789012).
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AccountAssignmentOperationStatus AWS API Documentation
    #
    class AccountAssignmentOperationStatus < Struct.new(
      :created_date,
      :failure_reason,
      :permission_set_arn,
      :principal_id,
      :principal_type,
      :request_id,
      :status,
      :target_id,
      :target_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the AccountAssignment creation request.
    #
    # @!attribute [rw] created_date
    #   The date that the permission set was created.
    #   @return [Time]
    #
    # @!attribute [rw] request_id
    #   The identifier for tracking the request operation that is generated
    #   by the universally unique identifier (UUID) workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the permission set provisioning process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AccountAssignmentOperationStatusMetadata AWS API Documentation
    #
    class AccountAssignmentOperationStatusMetadata < Struct.new(
      :created_date,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes an application that uses IAM Identity
    # Center for access management.
    #
    # @!attribute [rw] application_account
    #   The Amazon Web Services account ID number of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   The ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_provider_arn
    #   The ARN of the application provider for this application.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time when the application was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the instance of IAM Identity Center that is configured
    #   with this application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] portal_options
    #   A structure that describes the options for the access portal
    #   associated with this application.
    #   @return [Types::PortalOptions]
    #
    # @!attribute [rw] status
    #   The current status of the application in this instance of IAM
    #   Identity Center.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/Application AWS API Documentation
    #
    class Application < Struct.new(
      :application_account,
      :application_arn,
      :application_provider_arn,
      :created_date,
      :description,
      :instance_arn,
      :name,
      :portal_options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes an assignment of a principal to an
    # application.
    #
    # @!attribute [rw] application_arn
    #   The ARN of the application that has principals assigned.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The unique identifier of the principal assigned to the application.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The type of the principal assigned to the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ApplicationAssignment AWS API Documentation
    #
    class ApplicationAssignment < Struct.new(
      :application_arn,
      :principal_id,
      :principal_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes an application to which a principal is
    # assigned.
    #
    # @!attribute [rw] application_arn
    #   The ARN of the application to which the specified principal is
    #   assigned.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The unique identifier of the principal assigned to the application.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The type of the principal assigned to the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ApplicationAssignmentForPrincipal AWS API Documentation
    #
    class ApplicationAssignmentForPrincipal < Struct.new(
      :application_arn,
      :principal_id,
      :principal_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes a provider that can be used to connect an
    # Amazon Web Services managed application or customer managed
    # application to IAM Identity Center.
    #
    # @!attribute [rw] application_provider_arn
    #   The ARN of the application provider.
    #   @return [String]
    #
    # @!attribute [rw] display_data
    #   A structure that describes how IAM Identity Center represents the
    #   application provider in the portal.
    #   @return [Types::DisplayData]
    #
    # @!attribute [rw] federation_protocol
    #   The protocol that the application provider uses to perform
    #   federation.
    #   @return [String]
    #
    # @!attribute [rw] resource_server_config
    #   A structure that describes the application provider's resource
    #   server.
    #   @return [Types::ResourceServerConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ApplicationProvider AWS API Documentation
    #
    class ApplicationProvider < Struct.new(
      :application_provider_arn,
      :display_data,
      :federation_protocol,
      :resource_server_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_managed_policy_reference
    #   Specifies the name and path of a customer managed policy. You must
    #   have an IAM policy that matches the name and path in each Amazon Web
    #   Services account where you want to deploy your permission set.
    #   @return [Types::CustomerManagedPolicyReference]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the `PermissionSet`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AttachCustomerManagedPolicyReferenceToPermissionSetRequest AWS API Documentation
    #
    class AttachCustomerManagedPolicyReferenceToPermissionSetRequest < Struct.new(
      :customer_managed_policy_reference,
      :instance_arn,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AttachCustomerManagedPolicyReferenceToPermissionSetResponse AWS API Documentation
    #
    class AttachCustomerManagedPolicyReferenceToPermissionSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] managed_policy_arn
    #   The Amazon Web Services managed policy ARN to be attached to a
    #   permission set.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the PermissionSet that the managed policy should be
    #   attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AttachManagedPolicyToPermissionSetRequest AWS API Documentation
    #
    class AttachManagedPolicyToPermissionSetRequest < Struct.new(
      :instance_arn,
      :managed_policy_arn,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AttachManagedPolicyToPermissionSetResponse AWS API Documentation
    #
    class AttachManagedPolicyToPermissionSetResponse < Aws::EmptyStructure; end

    # A structure that stores the details of the Amazon Web Services managed
    # policy.
    #
    # @!attribute [rw] arn
    #   The ARN of the Amazon Web Services managed policy. For more
    #   information about ARNs, see [Amazon Resource Names (ARNs) and Amazon
    #   Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon Web Services managed policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AttachedManagedPolicy AWS API Documentation
    #
    class AttachedManagedPolicy < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes an authentication method that can be used
    # by an application.
    #
    # @note AuthenticationMethod is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AuthenticationMethod is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AuthenticationMethod corresponding to the set member.
    #
    # @!attribute [rw] iam
    #   A structure that describes details for IAM authentication.
    #   @return [Types::IamAuthenticationMethod]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AuthenticationMethod AWS API Documentation
    #
    class AuthenticationMethod < Struct.new(
      :iam,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Iam < AuthenticationMethod; end
      class Unknown < AuthenticationMethod; end
    end

    # A structure that describes an authentication method and its type.
    #
    # @!attribute [rw] authentication_method
    #   A structure that describes an authentication method. The contents of
    #   this structure is determined by the `AuthenticationMethodType`.
    #   @return [Types::AuthenticationMethod]
    #
    # @!attribute [rw] authentication_method_type
    #   The type of authentication that is used by this method.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AuthenticationMethodItem AWS API Documentation
    #
    class AuthenticationMethodItem < Struct.new(
      :authentication_method,
      :authentication_method_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines configuration settings for an application
    # that supports the OAuth 2.0 Authorization Code Grant.
    #
    # @!attribute [rw] redirect_uris
    #   A list of URIs that are valid locations to redirect a user's
    #   browser after the user is authorized.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AuthorizationCodeGrant AWS API Documentation
    #
    class AuthorizationCodeGrant < Struct.new(
      :redirect_uris)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes a trusted token issuer and associates it
    # with a set of authorized audiences.
    #
    # @!attribute [rw] authorized_audiences
    #   An array list of authorized audiences, or applications, that can
    #   consume the tokens generated by the associated trusted token issuer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] trusted_token_issuer_arn
    #   The ARN of the trusted token issuer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AuthorizedTokenIssuer AWS API Documentation
    #
    class AuthorizedTokenIssuer < Struct.new(
      :authorized_audiences,
      :trusted_token_issuer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Occurs when a conflict with a previous successful write is detected.
    # This generally occurs when the previous write did not have time to
    # propagate to the host serving the current request. A retry (with
    # appropriate backoff logic) is the recommended response to this
    # exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set that the admin wants to grant the
    #   principal access to.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in IAM Identity Center, such as a user
    #   or group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   TargetID is an Amazon Web Services account identifier, (For example,
    #   123456789012).
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateAccountAssignmentRequest AWS API Documentation
    #
    class CreateAccountAssignmentRequest < Struct.new(
      :instance_arn,
      :permission_set_arn,
      :principal_id,
      :principal_type,
      :target_id,
      :target_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_assignment_creation_status
    #   The status object for the account assignment creation operation.
    #   @return [Types::AccountAssignmentOperationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateAccountAssignmentResponse AWS API Documentation
    #
    class CreateAccountAssignmentResponse < Struct.new(
      :account_assignment_creation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The ARN of the application provider under which the operation will
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in IAM Identity Center, such as a user
    #   or group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateApplicationAssignmentRequest AWS API Documentation
    #
    class CreateApplicationAssignmentRequest < Struct.new(
      :application_arn,
      :principal_id,
      :principal_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateApplicationAssignmentResponse AWS API Documentation
    #
    class CreateApplicationAssignmentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_provider_arn
    #   The ARN of the application provider under which the operation will
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the .
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the instance of IAM Identity Center under which the
    #   operation will run. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the .
    #   @return [String]
    #
    # @!attribute [rw] portal_options
    #   A structure that describes the options for the portal associated
    #   with an application.
    #   @return [Types::PortalOptions]
    #
    # @!attribute [rw] status
    #   Specifies whether the application is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies tags to be attached to the application.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :application_provider_arn,
      :client_token,
      :description,
      :instance_arn,
      :name,
      :portal_options,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_access_control_attribute_configuration
    #   Specifies the IAM Identity Center identity store attributes to add
    #   to your ABAC configuration. When using an external identity provider
    #   as an identity source, you can pass attributes through the SAML
    #   assertion. Doing so provides an alternative to configuring
    #   attributes from the IAM Identity Center identity store. If a SAML
    #   assertion passes any of these attributes, IAM Identity Center will
    #   replace the attribute value with the value from the IAM Identity
    #   Center identity store.
    #   @return [Types::InstanceAccessControlAttributeConfiguration]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateInstanceAccessControlAttributeConfigurationRequest AWS API Documentation
    #
    class CreateInstanceAccessControlAttributeConfigurationRequest < Struct.new(
      :instance_access_control_attribute_configuration,
      :instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateInstanceAccessControlAttributeConfigurationResponse AWS API Documentation
    #
    class CreateInstanceAccessControlAttributeConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the instance of IAM Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies tags to be attached to the instance of IAM Identity
    #   Center.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateInstanceRequest AWS API Documentation
    #
    class CreateInstanceRequest < Struct.new(
      :client_token,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the instance of IAM Identity Center under which the
    #   operation will run.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateInstanceResponse AWS API Documentation
    #
    class CreateInstanceResponse < Struct.new(
      :instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the PermissionSet.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the PermissionSet.
    #   @return [String]
    #
    # @!attribute [rw] relay_state
    #   Used to redirect users within the application during the federation
    #   authentication process.
    #   @return [String]
    #
    # @!attribute [rw] session_duration
    #   The length of time that the application user sessions are valid in
    #   the ISO-8601 standard.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the new PermissionSet.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreatePermissionSetRequest AWS API Documentation
    #
    class CreatePermissionSetRequest < Struct.new(
      :description,
      :instance_arn,
      :name,
      :relay_state,
      :session_duration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_set
    #   Defines the level of access on an Amazon Web Services account.
    #   @return [Types::PermissionSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreatePermissionSetResponse AWS API Documentation
    #
    class CreatePermissionSetResponse < Struct.new(
      :permission_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive ID that you provide to ensure the
    #   idempotency of the request. This lets you safely retry the request
    #   without accidentally performing the same operation a second time.
    #   Passing the same value to a later call to an operation requires that
    #   you also pass the same value for all other parameters. We recommend
    #   that you use a [UUID type of value.][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   Specifies the ARN of the instance of IAM Identity Center to contain
    #   the new trusted token issuer configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies the name of the new trusted token issuer configuration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies tags to be attached to the new trusted token issuer
    #   configuration.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] trusted_token_issuer_configuration
    #   Specifies settings that apply to the new trusted token issuer
    #   configuration. The settings that are available depend on what
    #   `TrustedTokenIssuerType` you specify.
    #   @return [Types::TrustedTokenIssuerConfiguration]
    #
    # @!attribute [rw] trusted_token_issuer_type
    #   Specifies the type of the new trusted token issuer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateTrustedTokenIssuerRequest AWS API Documentation
    #
    class CreateTrustedTokenIssuerRequest < Struct.new(
      :client_token,
      :instance_arn,
      :name,
      :tags,
      :trusted_token_issuer_configuration,
      :trusted_token_issuer_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trusted_token_issuer_arn
    #   The ARN of the new trusted token issuer configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateTrustedTokenIssuerResponse AWS API Documentation
    #
    class CreateTrustedTokenIssuerResponse < Struct.new(
      :trusted_token_issuer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the name and path of a customer managed policy. You must
    # have an IAM policy that matches the name and path in each Amazon Web
    # Services account where you want to deploy your permission set.
    #
    # @!attribute [rw] name
    #   The name of the IAM policy that you have configured in each account
    #   where you want to deploy your permission set.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the IAM policy that you have configured in each account
    #   where you want to deploy your permission set. The default is `/`.
    #   For more information, see [Friendly names and paths][1] in the *IAM
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CustomerManagedPolicyReference AWS API Documentation
    #
    class CustomerManagedPolicyReference < Struct.new(
      :name,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set that will be used to remove access.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in IAM Identity Center, such as a user
    #   or group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be deleted.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   TargetID is an Amazon Web Services account identifier, (For example,
    #   123456789012).
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The entity type for which the assignment will be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteAccountAssignmentRequest AWS API Documentation
    #
    class DeleteAccountAssignmentRequest < Struct.new(
      :instance_arn,
      :permission_set_arn,
      :principal_id,
      :principal_type,
      :target_id,
      :target_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_assignment_deletion_status
    #   The status object for the account assignment deletion operation.
    #   @return [Types::AccountAssignmentOperationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteAccountAssignmentResponse AWS API Documentation
    #
    class DeleteAccountAssignmentResponse < Struct.new(
      :account_assignment_deletion_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application with the access scope to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies the name of the access scope to remove from the
    #   application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplicationAccessScopeRequest AWS API Documentation
    #
    class DeleteApplicationAccessScopeRequest < Struct.new(
      :application_arn,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in IAM Identity Center, such as a user
    #   or group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplicationAssignmentRequest AWS API Documentation
    #
    class DeleteApplicationAssignmentRequest < Struct.new(
      :application_arn,
      :principal_id,
      :principal_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplicationAssignmentResponse AWS API Documentation
    #
    class DeleteApplicationAssignmentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application with the authentication method
    #   to delete.
    #   @return [String]
    #
    # @!attribute [rw] authentication_method_type
    #   Specifies the authentication method type to delete from the
    #   application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplicationAuthenticationMethodRequest AWS API Documentation
    #
    class DeleteApplicationAuthenticationMethodRequest < Struct.new(
      :application_arn,
      :authentication_method_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application with the grant to delete.
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   Specifies the type of grant to delete from the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplicationGrantRequest AWS API Documentation
    #
    class DeleteApplicationGrantRequest < Struct.new(
      :application_arn,
      :grant_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application. For more information about
    #   ARNs, see [Amazon Resource Names (ARNs) and Amazon Web Services
    #   Service Namespaces](/general/latest/gr/aws-arns-and-namespaces.html)
    #   in the *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set that will be used to remove access.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteInlinePolicyFromPermissionSetRequest AWS API Documentation
    #
    class DeleteInlinePolicyFromPermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteInlinePolicyFromPermissionSetResponse AWS API Documentation
    #
    class DeleteInlinePolicyFromPermissionSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteInstanceAccessControlAttributeConfigurationRequest AWS API Documentation
    #
    class DeleteInstanceAccessControlAttributeConfigurationRequest < Struct.new(
      :instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteInstanceAccessControlAttributeConfigurationResponse AWS API Documentation
    #
    class DeleteInstanceAccessControlAttributeConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_arn
    #   The ARN of the instance of IAM Identity Center under which the
    #   operation will run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteInstanceRequest AWS API Documentation
    #
    class DeleteInstanceRequest < Struct.new(
      :instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteInstanceResponse AWS API Documentation
    #
    class DeleteInstanceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set that should be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeletePermissionSetRequest AWS API Documentation
    #
    class DeletePermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeletePermissionSetResponse AWS API Documentation
    #
    class DeletePermissionSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the `PermissionSet`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeletePermissionsBoundaryFromPermissionSetRequest AWS API Documentation
    #
    class DeletePermissionsBoundaryFromPermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeletePermissionsBoundaryFromPermissionSetResponse AWS API Documentation
    #
    class DeletePermissionsBoundaryFromPermissionSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] trusted_token_issuer_arn
    #   Specifies the ARN of the trusted token issuer configuration to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteTrustedTokenIssuerRequest AWS API Documentation
    #
    class DeleteTrustedTokenIssuerRequest < Struct.new(
      :trusted_token_issuer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteTrustedTokenIssuerResponse AWS API Documentation
    #
    class DeleteTrustedTokenIssuerResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_assignment_creation_request_id
    #   The identifier that is used to track the request operation progress.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeAccountAssignmentCreationStatusRequest AWS API Documentation
    #
    class DescribeAccountAssignmentCreationStatusRequest < Struct.new(
      :account_assignment_creation_request_id,
      :instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_assignment_creation_status
    #   The status object for the account assignment creation operation.
    #   @return [Types::AccountAssignmentOperationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeAccountAssignmentCreationStatusResponse AWS API Documentation
    #
    class DescribeAccountAssignmentCreationStatusResponse < Struct.new(
      :account_assignment_creation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_assignment_deletion_request_id
    #   The identifier that is used to track the request operation progress.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeAccountAssignmentDeletionStatusRequest AWS API Documentation
    #
    class DescribeAccountAssignmentDeletionStatusRequest < Struct.new(
      :account_assignment_deletion_request_id,
      :instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_assignment_deletion_status
    #   The status object for the account assignment deletion operation.
    #   @return [Types::AccountAssignmentOperationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeAccountAssignmentDeletionStatusResponse AWS API Documentation
    #
    class DescribeAccountAssignmentDeletionStatusResponse < Struct.new(
      :account_assignment_deletion_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application. For more information about
    #   ARNs, see [Amazon Resource Names (ARNs) and Amazon Web Services
    #   Service Namespaces](/general/latest/gr/aws-arns-and-namespaces.html)
    #   in the *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in IAM Identity Center, such as a user
    #   or group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeApplicationAssignmentRequest AWS API Documentation
    #
    class DescribeApplicationAssignmentRequest < Struct.new(
      :application_arn,
      :principal_id,
      :principal_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application. For more information about
    #   ARNs, see [Amazon Resource Names (ARNs) and Amazon Web Services
    #   Service Namespaces](/general/latest/gr/aws-arns-and-namespaces.html)
    #   in the *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in IAM Identity Center, such as a user
    #   or group. PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in IAM Identity Center, see the [IAM Identity Center
    #   Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeApplicationAssignmentResponse AWS API Documentation
    #
    class DescribeApplicationAssignmentResponse < Struct.new(
      :application_arn,
      :principal_id,
      :principal_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_provider_arn
    #   Specifies the ARN of the application provider for which you want
    #   details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeApplicationProviderRequest AWS API Documentation
    #
    class DescribeApplicationProviderRequest < Struct.new(
      :application_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_provider_arn
    #   The ARN of the application provider.
    #   @return [String]
    #
    # @!attribute [rw] display_data
    #   A structure with details about the display data for the application
    #   provider.
    #   @return [Types::DisplayData]
    #
    # @!attribute [rw] federation_protocol
    #   The protocol used to federate to the application provider.
    #   @return [String]
    #
    # @!attribute [rw] resource_server_config
    #   A structure with details about the receiving application.
    #   @return [Types::ResourceServerConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeApplicationProviderResponse AWS API Documentation
    #
    class DescribeApplicationProviderResponse < Struct.new(
      :application_provider_arn,
      :display_data,
      :federation_protocol,
      :resource_server_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application. For more information about
    #   ARNs, see [Amazon Resource Names (ARNs) and Amazon Web Services
    #   Service Namespaces](/general/latest/gr/aws-arns-and-namespaces.html)
    #   in the *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeApplicationRequest AWS API Documentation
    #
    class DescribeApplicationRequest < Struct.new(
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_account
    #   The account ID.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_provider_arn
    #   The ARN of the application provider under which the operation will
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date the application was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the .
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center application under which the
    #   operation will run. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The application name.
    #   @return [String]
    #
    # @!attribute [rw] portal_options
    #   A structure that describes the options for the portal associated
    #   with an application.
    #   @return [Types::PortalOptions]
    #
    # @!attribute [rw] status
    #   Specifies whether the application is enabled or disabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeApplicationResponse AWS API Documentation
    #
    class DescribeApplicationResponse < Struct.new(
      :application_account,
      :application_arn,
      :application_provider_arn,
      :created_date,
      :description,
      :instance_arn,
      :name,
      :portal_options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeInstanceAccessControlAttributeConfigurationRequest AWS API Documentation
    #
    class DescribeInstanceAccessControlAttributeConfigurationRequest < Struct.new(
      :instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_access_control_attribute_configuration
    #   Gets the list of IAM Identity Center identity store attributes that
    #   have been added to your ABAC configuration.
    #   @return [Types::InstanceAccessControlAttributeConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the attribute configuration process.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Provides more details about the current status of the specified
    #   attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeInstanceAccessControlAttributeConfigurationResponse AWS API Documentation
    #
    class DescribeInstanceAccessControlAttributeConfigurationResponse < Struct.new(
      :instance_access_control_attribute_configuration,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the instance of IAM Identity Center under which the
    #   operation will run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeInstanceRequest AWS API Documentation
    #
    class DescribeInstanceRequest < Struct.new(
      :instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_date
    #   The date the instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] identity_store_id
    #   The identifier of the identity store that is connected to the
    #   instance of IAM Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the instance of IAM Identity Center under which the
    #   operation will run. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies the instance name.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The identifier of the Amazon Web Services account for which the
    #   instance was created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeInstanceResponse AWS API Documentation
    #
    class DescribeInstanceResponse < Struct.new(
      :created_date,
      :identity_store_id,
      :instance_arn,
      :name,
      :owner_account_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] provision_permission_set_request_id
    #   The identifier that is provided by the ProvisionPermissionSet call
    #   to retrieve the current status of the provisioning workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribePermissionSetProvisioningStatusRequest AWS API Documentation
    #
    class DescribePermissionSetProvisioningStatusRequest < Struct.new(
      :instance_arn,
      :provision_permission_set_request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_set_provisioning_status
    #   The status object for the permission set provisioning operation.
    #   @return [Types::PermissionSetProvisioningStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribePermissionSetProvisioningStatusResponse AWS API Documentation
    #
    class DescribePermissionSetProvisioningStatusResponse < Struct.new(
      :permission_set_provisioning_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribePermissionSetRequest AWS API Documentation
    #
    class DescribePermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_set
    #   Describes the level of access on an Amazon Web Services account.
    #   @return [Types::PermissionSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribePermissionSetResponse AWS API Documentation
    #
    class DescribePermissionSetResponse < Struct.new(
      :permission_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trusted_token_issuer_arn
    #   Specifies the ARN of the trusted token issuer configuration that you
    #   want details about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeTrustedTokenIssuerRequest AWS API Documentation
    #
    class DescribeTrustedTokenIssuerRequest < Struct.new(
      :trusted_token_issuer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trusted token issuer configuration.
    #   @return [String]
    #
    # @!attribute [rw] trusted_token_issuer_arn
    #   The ARN of the trusted token issuer configuration.
    #   @return [String]
    #
    # @!attribute [rw] trusted_token_issuer_configuration
    #   A structure the describes the settings that apply of this trusted
    #   token issuer.
    #   @return [Types::TrustedTokenIssuerConfiguration]
    #
    # @!attribute [rw] trusted_token_issuer_type
    #   The type of the trusted token issuer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeTrustedTokenIssuerResponse AWS API Documentation
    #
    class DescribeTrustedTokenIssuerResponse < Struct.new(
      :name,
      :trusted_token_issuer_arn,
      :trusted_token_issuer_configuration,
      :trusted_token_issuer_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_managed_policy_reference
    #   Specifies the name and path of a customer managed policy. You must
    #   have an IAM policy that matches the name and path in each Amazon Web
    #   Services account where you want to deploy your permission set.
    #   @return [Types::CustomerManagedPolicyReference]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the `PermissionSet`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DetachCustomerManagedPolicyReferenceFromPermissionSetRequest AWS API Documentation
    #
    class DetachCustomerManagedPolicyReferenceFromPermissionSetRequest < Struct.new(
      :customer_managed_policy_reference,
      :instance_arn,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DetachCustomerManagedPolicyReferenceFromPermissionSetResponse AWS API Documentation
    #
    class DetachCustomerManagedPolicyReferenceFromPermissionSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] managed_policy_arn
    #   The Amazon Web Services managed policy ARN to be detached from a
    #   permission set.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the PermissionSet from which the policy should be
    #   detached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DetachManagedPolicyFromPermissionSetRequest AWS API Documentation
    #
    class DetachManagedPolicyFromPermissionSetRequest < Struct.new(
      :instance_arn,
      :managed_policy_arn,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DetachManagedPolicyFromPermissionSetResponse AWS API Documentation
    #
    class DetachManagedPolicyFromPermissionSetResponse < Aws::EmptyStructure; end

    # A structure that describes how the portal represents an application
    # provider.
    #
    # @!attribute [rw] description
    #   The description of the application provider that appears in the
    #   portal.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the application provider that appears in the portal.
    #   @return [String]
    #
    # @!attribute [rw] icon_url
    #   A URL that points to an icon that represents the application
    #   provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DisplayData AWS API Documentation
    #
    class DisplayData < Struct.new(
      :description,
      :display_name,
      :icon_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application with the access scope that you
    #   want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Specifies the name of the access scope for which you want the
    #   authorized targets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationAccessScopeRequest AWS API Documentation
    #
    class GetApplicationAccessScopeRequest < Struct.new(
      :application_arn,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorized_targets
    #   An array of authorized targets associated with this access scope.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   The name of the access scope that can be used with the authorized
    #   targets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationAccessScopeResponse AWS API Documentation
    #
    class GetApplicationAccessScopeResponse < Struct.new(
      :authorized_targets,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application. For more information about
    #   ARNs, see [Amazon Resource Names (ARNs) and Amazon Web Services
    #   Service Namespaces](/general/latest/gr/aws-arns-and-namespaces.html)
    #   in the *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationAssignmentConfigurationRequest AWS API Documentation
    #
    class GetApplicationAssignmentConfigurationRequest < Struct.new(
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assignment_required
    #   If `AssignmentsRequired` is `true` (default value), users don’t have
    #   access to the application unless an assignment is created using the
    #   [CreateApplicationAssignment API][1]. If `false`, all users have
    #   access to the application.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationAssignmentConfigurationResponse AWS API Documentation
    #
    class GetApplicationAssignmentConfigurationResponse < Struct.new(
      :assignment_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] authentication_method_type
    #   Specifies the type of authentication method for which you want
    #   details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationAuthenticationMethodRequest AWS API Documentation
    #
    class GetApplicationAuthenticationMethodRequest < Struct.new(
      :application_arn,
      :authentication_method_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_method
    #   A structure that contains details about the requested authentication
    #   method.
    #   @return [Types::AuthenticationMethod]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationAuthenticationMethodResponse AWS API Documentation
    #
    class GetApplicationAuthenticationMethodResponse < Struct.new(
      :authentication_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application that contains the grant.
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   Specifies the type of grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationGrantRequest AWS API Documentation
    #
    class GetApplicationGrantRequest < Struct.new(
      :application_arn,
      :grant_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant
    #   A structure that describes the requested grant.
    #   @return [Types::Grant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetApplicationGrantResponse AWS API Documentation
    #
    class GetApplicationGrantResponse < Struct.new(
      :grant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetInlinePolicyForPermissionSetRequest AWS API Documentation
    #
    class GetInlinePolicyForPermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inline_policy
    #   The inline policy that is attached to the permission set.
    #
    #   <note markdown="1"> For `Length Constraints`, if a valid ARN is provided for a
    #   permission set, it is possible for an empty inline policy to be
    #   returned.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetInlinePolicyForPermissionSetResponse AWS API Documentation
    #
    class GetInlinePolicyForPermissionSetResponse < Struct.new(
      :inline_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the `PermissionSet`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetPermissionsBoundaryForPermissionSetRequest AWS API Documentation
    #
    class GetPermissionsBoundaryForPermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions_boundary
    #   The permissions boundary attached to the specified permission set.
    #   @return [Types::PermissionsBoundary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetPermissionsBoundaryForPermissionSetResponse AWS API Documentation
    #
    class GetPermissionsBoundaryForPermissionSetResponse < Struct.new(
      :permissions_boundary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Grant union represents the set of possible configuration options
    # for the selected grant type. Exactly one member of the union must be
    # specified, and must match the grant type selected.
    #
    # @note Grant is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Grant is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Grant corresponding to the set member.
    #
    # @!attribute [rw] authorization_code
    #   Configuration options for the `authorization_code` grant type.
    #   @return [Types::AuthorizationCodeGrant]
    #
    # @!attribute [rw] jwt_bearer
    #   Configuration options for the
    #   `urn:ietf:params:oauth:grant-type:jwt-bearer` grant type.
    #   @return [Types::JwtBearerGrant]
    #
    # @!attribute [rw] refresh_token
    #   Configuration options for the `refresh_token` grant type.
    #   @return [Types::RefreshTokenGrant]
    #
    # @!attribute [rw] token_exchange
    #   Configuration options for the
    #   `urn:ietf:params:oauth:grant-type:token-exchange` grant type.
    #   @return [Types::TokenExchangeGrant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/Grant AWS API Documentation
    #
    class Grant < Struct.new(
      :authorization_code,
      :jwt_bearer,
      :refresh_token,
      :token_exchange,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AuthorizationCode < Grant; end
      class JwtBearer < Grant; end
      class RefreshToken < Grant; end
      class TokenExchange < Grant; end
      class Unknown < Grant; end
    end

    # A structure that defines a single grant and its configuration.
    #
    # @!attribute [rw] grant
    #   The configuration structure for the selected grant.
    #   @return [Types::Grant]
    #
    # @!attribute [rw] grant_type
    #   The type of the selected grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GrantItem AWS API Documentation
    #
    class GrantItem < Struct.new(
      :grant,
      :grant_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes details for authentication that uses IAM.
    #
    # @!attribute [rw] actor_policy
    #   An IAM policy document in JSON.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/IamAuthenticationMethod AWS API Documentation
    #
    class IamAuthenticationMethod < Struct.new(
      :actor_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the attributes to add to your attribute-based access control
    # (ABAC) configuration.
    #
    # @!attribute [rw] access_control_attributes
    #   Lists the attributes that are configured for ABAC in the specified
    #   IAM Identity Center instance.
    #   @return [Array<Types::AccessControlAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/InstanceAccessControlAttributeConfiguration AWS API Documentation
    #
    class InstanceAccessControlAttributeConfiguration < Struct.new(
      :access_control_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the IAM Identity Center instance.
    #
    # @!attribute [rw] created_date
    #   The date and time that the Identity Center instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] identity_store_id
    #   The identifier of the identity store that is connected to the
    #   Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the Identity Center instance under which the operation
    #   will be executed. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID number of the owner of the
    #   Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this Identity Center instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/InstanceMetadata AWS API Documentation
    #
    class InstanceMetadata < Struct.new(
      :created_date,
      :identity_store_id,
      :instance_arn,
      :name,
      :owner_account_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure with an internal server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines configuration settings for an application
    # that supports the JWT Bearer Token Authorization Grant.
    #
    # @!attribute [rw] authorized_token_issuers
    #   A list of allowed token issuers trusted by the Identity Center
    #   instances for this application.
    #   @return [Array<Types::AuthorizedTokenIssuer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/JwtBearerGrant AWS API Documentation
    #
    class JwtBearerGrant < Struct.new(
      :authorized_token_issuers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Filters results based on the passed attribute value.
    #   @return [Types::OperationStatusFilter]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display for the assignment.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentCreationStatusRequest AWS API Documentation
    #
    class ListAccountAssignmentCreationStatusRequest < Struct.new(
      :filter,
      :instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_assignments_creation_status
    #   The status object for the account assignment creation operation.
    #   @return [Array<Types::AccountAssignmentOperationStatusMetadata>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentCreationStatusResponse AWS API Documentation
    #
    class ListAccountAssignmentCreationStatusResponse < Struct.new(
      :account_assignments_creation_status,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Filters results based on the passed attribute value.
    #   @return [Types::OperationStatusFilter]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display for the assignment.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentDeletionStatusRequest AWS API Documentation
    #
    class ListAccountAssignmentDeletionStatusRequest < Struct.new(
      :filter,
      :instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_assignments_deletion_status
    #   The status object for the account assignment deletion operation.
    #   @return [Array<Types::AccountAssignmentOperationStatusMetadata>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentDeletionStatusResponse AWS API Documentation
    #
    class ListAccountAssignmentDeletionStatusResponse < Struct.new(
      :account_assignments_deletion_status,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes a filter for account assignments.
    #
    # @!attribute [rw] account_id
    #   The ID number of an Amazon Web Services account that filters the
    #   results in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentsFilter AWS API Documentation
    #
    class ListAccountAssignmentsFilter < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Specifies an Amazon Web Services account ID number. Results are
    #   filtered to only those that match this ID number.
    #   @return [Types::ListAccountAssignmentsFilter]
    #
    # @!attribute [rw] instance_arn
    #   Specifies the ARN of the instance of IAM Identity Center that
    #   contains the principal.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify,
    #   the `NextToken` response element is returned with a value (not
    #   null). Include the specified value as the `NextToken` request
    #   parameter in the next call to the operation to get the next set of
    #   results. Note that the service might return fewer results than the
    #   maximum even when there are more results available. You should check
    #   `NextToken` after every operation to ensure that you receive all of
    #   the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   Specifies the principal for which you want to retrieve the list of
    #   account assignments.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   Specifies the type of the principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentsForPrincipalRequest AWS API Documentation
    #
    class ListAccountAssignmentsForPrincipalRequest < Struct.new(
      :filter,
      :instance_arn,
      :max_results,
      :next_token,
      :principal_id,
      :principal_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_assignments
    #   An array list of the account assignments for the principal.
    #   @return [Array<Types::AccountAssignmentForPrincipal>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentsForPrincipalResponse AWS API Documentation
    #
    class ListAccountAssignmentsForPrincipalResponse < Struct.new(
      :account_assignments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The identifier of the Amazon Web Services account from which to list
    #   the assignments.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display for the assignment.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set from which to list assignments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentsRequest AWS API Documentation
    #
    class ListAccountAssignmentsRequest < Struct.new(
      :account_id,
      :instance_arn,
      :max_results,
      :next_token,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_assignments
    #   The list of assignments that match the input Amazon Web Services
    #   account and permission set.
    #   @return [Array<Types::AccountAssignment>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentsResponse AWS API Documentation
    #
    class ListAccountAssignmentsResponse < Struct.new(
      :account_assignments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display for the PermissionSet.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the PermissionSet from which the associated Amazon Web
    #   Services accounts will be listed.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_status
    #   The permission set provisioning status for an Amazon Web Services
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountsForProvisionedPermissionSetRequest AWS API Documentation
    #
    class ListAccountsForProvisionedPermissionSetRequest < Struct.new(
      :instance_arn,
      :max_results,
      :next_token,
      :permission_set_arn,
      :provisioning_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The list of Amazon Web Services `AccountIds`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountsForProvisionedPermissionSetResponse AWS API Documentation
    #
    class ListAccountsForProvisionedPermissionSetResponse < Struct.new(
      :account_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify,
    #   the `NextToken` response element is returned with a value (not
    #   null). Include the specified value as the `NextToken` request
    #   parameter in the next call to the operation to get the next set of
    #   results. Note that the service might return fewer results than the
    #   maximum even when there are more results available. You should check
    #   `NextToken` after every operation to ensure that you receive all of
    #   the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAccessScopesRequest AWS API Documentation
    #
    class ListApplicationAccessScopesRequest < Struct.new(
      :application_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   An array list of access scopes and their authorized targets that are
    #   associated with the application.
    #   @return [Array<Types::ScopeDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAccessScopesResponse AWS API Documentation
    #
    class ListApplicationAccessScopesResponse < Struct.new(
      :next_token,
      :scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes a filter for application assignments.
    #
    # @!attribute [rw] application_arn
    #   The ARN of an application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAssignmentsFilter AWS API Documentation
    #
    class ListApplicationAssignmentsFilter < Struct.new(
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Filters the output to include only assignments associated with the
    #   application that has the specified ARN.
    #   @return [Types::ListApplicationAssignmentsFilter]
    #
    # @!attribute [rw] instance_arn
    #   Specifies the instance of IAM Identity Center that contains
    #   principal and applications.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify,
    #   the `NextToken` response element is returned with a value (not
    #   null). Include the specified value as the `NextToken` request
    #   parameter in the next call to the operation to get the next set of
    #   results. Note that the service might return fewer results than the
    #   maximum even when there are more results available. You should check
    #   `NextToken` after every operation to ensure that you receive all of
    #   the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   Specifies the unique identifier of the principal for which you want
    #   to retrieve its assignments.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   Specifies the type of the principal for which you want to retrieve
    #   its assignments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAssignmentsForPrincipalRequest AWS API Documentation
    #
    class ListApplicationAssignmentsForPrincipalRequest < Struct.new(
      :filter,
      :instance_arn,
      :max_results,
      :next_token,
      :principal_id,
      :principal_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_assignments
    #   An array list of the application assignments for the specified
    #   principal.
    #   @return [Array<Types::ApplicationAssignmentForPrincipal>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAssignmentsForPrincipalResponse AWS API Documentation
    #
    class ListApplicationAssignmentsForPrincipalResponse < Struct.new(
      :application_assignments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify,
    #   the `NextToken` response element is returned with a value (not
    #   null). Include the specified value as the `NextToken` request
    #   parameter in the next call to the operation to get the next set of
    #   results. Note that the service might return fewer results than the
    #   maximum even when there are more results available. You should check
    #   `NextToken` after every operation to ensure that you receive all of
    #   the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAssignmentsRequest AWS API Documentation
    #
    class ListApplicationAssignmentsRequest < Struct.new(
      :application_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_assignments
    #   The list of users assigned to an application.
    #   @return [Array<Types::ApplicationAssignment>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAssignmentsResponse AWS API Documentation
    #
    class ListApplicationAssignmentsResponse < Struct.new(
      :application_assignments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application with the authentication methods
    #   you want to list.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAuthenticationMethodsRequest AWS API Documentation
    #
    class ListApplicationAuthenticationMethodsRequest < Struct.new(
      :application_arn,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_methods
    #   An array list of authentication methods for the specified
    #   application.
    #   @return [Array<Types::AuthenticationMethodItem>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationAuthenticationMethodsResponse AWS API Documentation
    #
    class ListApplicationAuthenticationMethodsResponse < Struct.new(
      :authentication_methods,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application whose grants you want to list.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationGrantsRequest AWS API Documentation
    #
    class ListApplicationGrantsRequest < Struct.new(
      :application_arn,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grants
    #   An array list of structures that describe the requested grants.
    #   @return [Array<Types::GrantItem>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationGrantsResponse AWS API Documentation
    #
    class ListApplicationGrantsResponse < Struct.new(
      :grants,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify,
    #   the `NextToken` response element is returned with a value (not
    #   null). Include the specified value as the `NextToken` request
    #   parameter in the next call to the operation to get the next set of
    #   results. Note that the service might return fewer results than the
    #   maximum even when there are more results available. You should check
    #   `NextToken` after every operation to ensure that you receive all of
    #   the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationProvidersRequest AWS API Documentation
    #
    class ListApplicationProvidersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_providers
    #   An array list of structures that describe application providers.
    #   @return [Array<Types::ApplicationProvider>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationProvidersResponse AWS API Documentation
    #
    class ListApplicationProvidersResponse < Struct.new(
      :application_providers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes a filter for applications.
    #
    # @!attribute [rw] application_account
    #   An Amazon Web Services account ID number that filters the results in
    #   the response.
    #   @return [String]
    #
    # @!attribute [rw] application_provider
    #   The ARN of an application provider that can filter the results in
    #   the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationsFilter AWS API Documentation
    #
    class ListApplicationsFilter < Struct.new(
      :application_account,
      :application_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Filters response results.
    #   @return [Types::ListApplicationsFilter]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center application under which the
    #   operation will run. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify,
    #   the `NextToken` response element is returned with a value (not
    #   null). Include the specified value as the `NextToken` request
    #   parameter in the next call to the operation to get the next set of
    #   results. Note that the service might return fewer results than the
    #   maximum even when there are more results available. You should check
    #   `NextToken` after every operation to ensure that you receive all of
    #   the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :filter,
      :instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applications
    #   Retrieves all applications associated with the instance.
    #   @return [Array<Types::Application>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display for the list call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the `PermissionSet`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListCustomerManagedPolicyReferencesInPermissionSetRequest AWS API Documentation
    #
    class ListCustomerManagedPolicyReferencesInPermissionSetRequest < Struct.new(
      :instance_arn,
      :max_results,
      :next_token,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_managed_policy_references
    #   Specifies the names and paths of the customer managed policies that
    #   you have attached to your permission set.
    #   @return [Array<Types::CustomerManagedPolicyReference>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListCustomerManagedPolicyReferencesInPermissionSetResponse AWS API Documentation
    #
    class ListCustomerManagedPolicyReferencesInPermissionSetResponse < Struct.new(
      :customer_managed_policy_references,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to display for the instance.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListInstancesRequest AWS API Documentation
    #
    class ListInstancesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   Lists the IAM Identity Center instances that the caller has access
    #   to.
    #   @return [Array<Types::InstanceMetadata>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListInstancesResponse AWS API Documentation
    #
    class ListInstancesResponse < Struct.new(
      :instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display for the PermissionSet.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the PermissionSet whose managed policies will be listed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListManagedPoliciesInPermissionSetRequest AWS API Documentation
    #
    class ListManagedPoliciesInPermissionSetRequest < Struct.new(
      :instance_arn,
      :max_results,
      :next_token,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attached_managed_policies
    #   An array of the AttachedManagedPolicy data type object.
    #   @return [Array<Types::AttachedManagedPolicy>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListManagedPoliciesInPermissionSetResponse AWS API Documentation
    #
    class ListManagedPoliciesInPermissionSetResponse < Struct.new(
      :attached_managed_policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Filters results based on the passed attribute value.
    #   @return [Types::OperationStatusFilter]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display for the assignment.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetProvisioningStatusRequest AWS API Documentation
    #
    class ListPermissionSetProvisioningStatusRequest < Struct.new(
      :filter,
      :instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] permission_sets_provisioning_status
    #   The status object for the permission set provisioning operation.
    #   @return [Array<Types::PermissionSetProvisioningStatusMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetProvisioningStatusResponse AWS API Documentation
    #
    class ListPermissionSetProvisioningStatusResponse < Struct.new(
      :next_token,
      :permission_sets_provisioning_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The identifier of the Amazon Web Services account from which to list
    #   the assignments.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display for the assignment.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_status
    #   The status object for the permission set provisioning operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetsProvisionedToAccountRequest AWS API Documentation
    #
    class ListPermissionSetsProvisionedToAccountRequest < Struct.new(
      :account_id,
      :instance_arn,
      :max_results,
      :next_token,
      :provisioning_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] permission_sets
    #   Defines the level of access that an Amazon Web Services account has.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetsProvisionedToAccountResponse AWS API Documentation
    #
    class ListPermissionSetsProvisionedToAccountResponse < Struct.new(
      :next_token,
      :permission_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display for the assignment.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetsRequest AWS API Documentation
    #
    class ListPermissionSetsRequest < Struct.new(
      :instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] permission_sets
    #   Defines the level of access on an Amazon Web Services account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetsResponse AWS API Documentation
    #
    class ListPermissionSetsResponse < Struct.new(
      :next_token,
      :permission_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource with the tags to be listed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :instance_arn,
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key-value pairs that are used to manage the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :next_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   Specifies the ARN of the instance of IAM Identity Center with the
    #   trusted token issuer configurations that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the total number of results that you want included in each
    #   response. If additional items exist beyond the number you specify,
    #   the `NextToken` response element is returned with a value (not
    #   null). Include the specified value as the `NextToken` request
    #   parameter in the next call to the operation to get the next set of
    #   results. Note that the service might return fewer results than the
    #   maximum even when there are more results available. You should check
    #   `NextToken` after every operation to ensure that you receive all of
    #   the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListTrustedTokenIssuersRequest AWS API Documentation
    #
    class ListTrustedTokenIssuersRequest < Struct.new(
      :instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, this value indicates that more output is available than
    #   is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`. This indicates
    #   that this is the last page of results.
    #   @return [String]
    #
    # @!attribute [rw] trusted_token_issuers
    #   An array list of the trusted token issuer configurations.
    #   @return [Array<Types::TrustedTokenIssuerMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListTrustedTokenIssuersResponse AWS API Documentation
    #
    class ListTrustedTokenIssuersResponse < Struct.new(
      :next_token,
      :trusted_token_issuers)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes configuration settings for a trusted token
    # issuer that supports OpenID Connect (OIDC) and JSON Web Tokens (JWTs).
    #
    # @!attribute [rw] claim_attribute_path
    #   The path of the source attribute in the JWT from the trusted token
    #   issuer. The attribute mapped by this JMESPath expression is compared
    #   against the attribute mapped by `IdentityStoreAttributePath` when a
    #   trusted token issuer token is exchanged for an IAM Identity Center
    #   token.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_attribute_path
    #   The path of the destination attribute in a JWT from IAM Identity
    #   Center. The attribute mapped by this JMESPath expression is compared
    #   against the attribute mapped by `ClaimAttributePath` when a trusted
    #   token issuer token is exchanged for an IAM Identity Center token.
    #   @return [String]
    #
    # @!attribute [rw] issuer_url
    #   The URL that IAM Identity Center uses for OpenID Discovery. OpenID
    #   Discovery is used to obtain the information required to verify the
    #   tokens that the trusted token issuer generates.
    #   @return [String]
    #
    # @!attribute [rw] jwks_retrieval_option
    #   The method that the trusted token issuer can use to retrieve the
    #   JSON Web Key Set used to verify a JWT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/OidcJwtConfiguration AWS API Documentation
    #
    class OidcJwtConfiguration < Struct.new(
      :claim_attribute_path,
      :identity_store_attribute_path,
      :issuer_url,
      :jwks_retrieval_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes updated configuration settings for a
    # trusted token issuer that supports OpenID Connect (OIDC) and JSON Web
    # Tokens (JWTs).
    #
    # @!attribute [rw] claim_attribute_path
    #   The path of the source attribute in the JWT from the trusted token
    #   issuer. The attribute mapped by this JMESPath expression is compared
    #   against the attribute mapped by `IdentityStoreAttributePath` when a
    #   trusted token issuer token is exchanged for an IAM Identity Center
    #   token.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_attribute_path
    #   The path of the destination attribute in a JWT from IAM Identity
    #   Center. The attribute mapped by this JMESPath expression is compared
    #   against the attribute mapped by `ClaimAttributePath` when a trusted
    #   token issuer token is exchanged for an IAM Identity Center token.
    #   @return [String]
    #
    # @!attribute [rw] jwks_retrieval_option
    #   The method that the trusted token issuer can use to retrieve the
    #   JSON Web Key Set used to verify a JWT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/OidcJwtUpdateConfiguration AWS API Documentation
    #
    class OidcJwtUpdateConfiguration < Struct.new(
      :claim_attribute_path,
      :identity_store_attribute_path,
      :jwks_retrieval_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the operation status list based on the passed attribute value.
    #
    # @!attribute [rw] status
    #   Filters the list operations result based on the status attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/OperationStatusFilter AWS API Documentation
    #
    class OperationStatusFilter < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entity that contains IAM policies.
    #
    # @!attribute [rw] created_date
    #   The date that the permission set was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the PermissionSet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the permission set.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] relay_state
    #   Used to redirect users within the application during the federation
    #   authentication process.
    #   @return [String]
    #
    # @!attribute [rw] session_duration
    #   The length of time that the application user sessions are valid for
    #   in the ISO-8601 standard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PermissionSet AWS API Documentation
    #
    class PermissionSet < Struct.new(
      :created_date,
      :description,
      :name,
      :permission_set_arn,
      :relay_state,
      :session_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that is used to provide the status of the provisioning
    # operation for a specified permission set.
    #
    # @!attribute [rw] account_id
    #   The identifier of the Amazon Web Services account from which to list
    #   the assignments.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the permission set was created.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The message that contains an error or exception in case of an
    #   operation failure.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set that is being provisioned. For more
    #   information about ARNs, see [Amazon Resource Names (ARNs) and Amazon
    #   Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The identifier for tracking the request operation that is generated
    #   by the universally unique identifier (UUID) workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the permission set provisioning process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PermissionSetProvisioningStatus AWS API Documentation
    #
    class PermissionSetProvisioningStatus < Struct.new(
      :account_id,
      :created_date,
      :failure_reason,
      :permission_set_arn,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the permission set provisioning status.
    #
    # @!attribute [rw] created_date
    #   The date that the permission set was created.
    #   @return [Time]
    #
    # @!attribute [rw] request_id
    #   The identifier for tracking the request operation that is generated
    #   by the universally unique identifier (UUID) workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the permission set provisioning process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PermissionSetProvisioningStatusMetadata AWS API Documentation
    #
    class PermissionSetProvisioningStatusMetadata < Struct.new(
      :created_date,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration of the Amazon Web Services managed or
    # customer managed policy that you want to set as a permissions
    # boundary. Specify either `CustomerManagedPolicyReference` to use the
    # name and path of a customer managed policy, or `ManagedPolicyArn` to
    # use the ARN of an Amazon Web Services managed policy. A permissions
    # boundary represents the maximum permissions that any policy can grant
    # your role. For more information, see [Permissions boundaries for IAM
    # entities][1] in the *IAM User Guide*.
    #
    # Policies used as permissions boundaries don't provide permissions.
    # You must also attach an IAM policy to the role. To learn how the
    # effective permissions for a role are evaluated, see [IAM JSON policy
    # evaluation logic][2] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html
    #
    # @!attribute [rw] customer_managed_policy_reference
    #   Specifies the name and path of a customer managed policy. You must
    #   have an IAM policy that matches the name and path in each Amazon Web
    #   Services account where you want to deploy your permission set.
    #   @return [Types::CustomerManagedPolicyReference]
    #
    # @!attribute [rw] managed_policy_arn
    #   The Amazon Web Services managed policy ARN that you want to attach
    #   to a permission set as a permissions boundary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PermissionsBoundary AWS API Documentation
    #
    class PermissionsBoundary < Struct.new(
      :customer_managed_policy_reference,
      :managed_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes the options for the access portal
    # associated with an application.
    #
    # @!attribute [rw] sign_in_options
    #   A structure that describes the sign-in options for the access
    #   portal.
    #   @return [Types::SignInOptions]
    #
    # @!attribute [rw] visibility
    #   Indicates whether this application is visible in the access portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PortalOptions AWS API Documentation
    #
    class PortalOptions < Struct.new(
      :sign_in_options,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   TargetID is an Amazon Web Services account identifier, (For example,
    #   123456789012).
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ProvisionPermissionSetRequest AWS API Documentation
    #
    class ProvisionPermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn,
      :target_id,
      :target_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_set_provisioning_status
    #   The status object for the permission set provisioning operation.
    #   @return [Types::PermissionSetProvisioningStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ProvisionPermissionSetResponse AWS API Documentation
    #
    class ProvisionPermissionSetResponse < Struct.new(
      :permission_set_provisioning_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application with the access scope with the
    #   targets to add or update.
    #   @return [String]
    #
    # @!attribute [rw] authorized_targets
    #   Specifies an array list of ARNs that represent the authorized
    #   targets for this access scope.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   Specifies the name of the access scope to be associated with the
    #   specified targets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutApplicationAccessScopeRequest AWS API Documentation
    #
    class PutApplicationAccessScopeRequest < Struct.new(
      :application_arn,
      :authorized_targets,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application. For more information about
    #   ARNs, see [Amazon Resource Names (ARNs) and Amazon Web Services
    #   Service Namespaces](/general/latest/gr/aws-arns-and-namespaces.html)
    #   in the *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] assignment_required
    #   If `AssignmentsRequired` is `true` (default value), users don’t have
    #   access to the application unless an assignment is created using the
    #   [CreateApplicationAssignment API][1]. If `false`, all users have
    #   access to the application.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutApplicationAssignmentConfigurationRequest AWS API Documentation
    #
    class PutApplicationAssignmentConfigurationRequest < Struct.new(
      :application_arn,
      :assignment_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutApplicationAssignmentConfigurationResponse AWS API Documentation
    #
    class PutApplicationAssignmentConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application with the authentication method
    #   to add or update.
    #   @return [String]
    #
    # @!attribute [rw] authentication_method
    #   Specifies a structure that describes the authentication method to
    #   add or update. The structure type you provide is determined by the
    #   `AuthenticationMethodType` parameter.
    #   @return [Types::AuthenticationMethod]
    #
    # @!attribute [rw] authentication_method_type
    #   Specifies the type of the authentication method that you want to add
    #   or update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutApplicationAuthenticationMethodRequest AWS API Documentation
    #
    class PutApplicationAuthenticationMethodRequest < Struct.new(
      :application_arn,
      :authentication_method,
      :authentication_method_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application to update.
    #   @return [String]
    #
    # @!attribute [rw] grant
    #   Specifies a structure that describes the grant to update.
    #   @return [Types::Grant]
    #
    # @!attribute [rw] grant_type
    #   Specifies the type of grant to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutApplicationGrantRequest AWS API Documentation
    #
    class PutApplicationGrantRequest < Struct.new(
      :application_arn,
      :grant,
      :grant_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inline_policy
    #   The inline policy to attach to a PermissionSet.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutInlinePolicyToPermissionSetRequest AWS API Documentation
    #
    class PutInlinePolicyToPermissionSetRequest < Struct.new(
      :inline_policy,
      :instance_arn,
      :permission_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutInlinePolicyToPermissionSetResponse AWS API Documentation
    #
    class PutInlinePolicyToPermissionSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the `PermissionSet`.
    #   @return [String]
    #
    # @!attribute [rw] permissions_boundary
    #   The permissions boundary that you want to attach to a
    #   `PermissionSet`.
    #   @return [Types::PermissionsBoundary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutPermissionsBoundaryToPermissionSetRequest AWS API Documentation
    #
    class PutPermissionsBoundaryToPermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn,
      :permissions_boundary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutPermissionsBoundaryToPermissionSetResponse AWS API Documentation
    #
    class PutPermissionsBoundaryToPermissionSetResponse < Aws::EmptyStructure; end

    # A structure that defines configuration settings for an application
    # that supports the OAuth 2.0 Refresh Token Grant.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/RefreshTokenGrant AWS API Documentation
    #
    class RefreshTokenGrant < Aws::EmptyStructure; end

    # Indicates that a requested resource is not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes the configuration of a resource server.
    #
    # @!attribute [rw] scopes
    #   A list of the IAM Identity Center access scopes that are associated
    #   with this resource server.
    #   @return [Hash<String,Types::ResourceServerScopeDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ResourceServerConfig AWS API Documentation
    #
    class ResourceServerConfig < Struct.new(
      :scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes details for an IAM Identity Center access
    # scope that is associated with a resource server.
    #
    # @!attribute [rw] detailed_title
    #   The title of an access scope for a resource server.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   The description of an access scope for a resource server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ResourceServerScopeDetails AWS API Documentation
    #
    class ResourceServerScopeDetails < Struct.new(
      :detailed_title,
      :long_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes an IAM Identity Center access scope and its
    # authorized targets.
    #
    # @!attribute [rw] authorized_targets
    #   An array list of ARNs of applications.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   The name of the access scope.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ScopeDetails AWS API Documentation
    #
    class ScopeDetails < Struct.new(
      :authorized_targets,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the principal has crossed the permitted number of
    # resources that can be created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes the sign-in options for an application
    # portal.
    #
    # @!attribute [rw] application_url
    #   The URL that accepts authentication requests for an application.
    #   This is a required parameter if the `Origin` parameter is
    #   `APPLICATION`.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   This determines how IAM Identity Center navigates the user to the
    #   target application. It can be one of the following values:
    #
    #   * `APPLICATION`: IAM Identity Center redirects the customer to the
    #     configured `ApplicationUrl`.
    #
    #   * `IDENTITY_CENTER`: IAM Identity Center uses SAML identity-provider
    #     initiated authentication to sign the customer directly into a
    #     SAML-based application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/SignInOptions AWS API Documentation
    #
    class SignInOptions < Struct.new(
      :application_url,
      :origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of key-value pairs that are used to manage the resource. Tags
    # can only be applied to permission sets and cannot be applied to
    # corresponding roles that IAM Identity Center creates in Amazon Web
    # Services accounts.
    #
    # @!attribute [rw] key
    #   The key for the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource with the tags to be listed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key-value pairs that are used to manage the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :instance_arn,
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Indicates that the principal has crossed the throttling limits of the
    # API operations.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines configuration settings for an application
    # that supports the OAuth 2.0 Token Exchange Grant.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/TokenExchangeGrant AWS API Documentation
    #
    class TokenExchangeGrant < Aws::EmptyStructure; end

    # A structure that describes the configuration of a trusted token
    # issuer. The structure and available settings are determined by the
    # type of the trusted token issuer.
    #
    # @note TrustedTokenIssuerConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TrustedTokenIssuerConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TrustedTokenIssuerConfiguration corresponding to the set member.
    #
    # @!attribute [rw] oidc_jwt_configuration
    #   A structure that describes the settings for a trusted token issuer
    #   that works with OpenID Connect (OIDC) by using JSON Web Tokens
    #   (JWT).
    #   @return [Types::OidcJwtConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/TrustedTokenIssuerConfiguration AWS API Documentation
    #
    class TrustedTokenIssuerConfiguration < Struct.new(
      :oidc_jwt_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OidcJwtConfiguration < TrustedTokenIssuerConfiguration; end
      class Unknown < TrustedTokenIssuerConfiguration; end
    end

    # A structure that describes a trusted token issuer.
    #
    # @!attribute [rw] name
    #   The name of the trusted token issuer configuration in the instance
    #   of IAM Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] trusted_token_issuer_arn
    #   The ARN of the trusted token issuer configuration in the instance of
    #   IAM Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] trusted_token_issuer_type
    #   The type of trusted token issuer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/TrustedTokenIssuerMetadata AWS API Documentation
    #
    class TrustedTokenIssuerMetadata < Struct.new(
      :name,
      :trusted_token_issuer_arn,
      :trusted_token_issuer_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains details to be updated for a trusted token
    # issuer configuration. The structure and settings that you can include
    # depend on the type of the trusted token issuer being updated.
    #
    # @note TrustedTokenIssuerUpdateConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] oidc_jwt_configuration
    #   A structure that describes an updated configuration for a trusted
    #   token issuer that uses OpenID Connect (OIDC) with JSON web tokens
    #   (JWT).
    #   @return [Types::OidcJwtUpdateConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/TrustedTokenIssuerUpdateConfiguration AWS API Documentation
    #
    class TrustedTokenIssuerUpdateConfiguration < Struct.new(
      :oidc_jwt_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OidcJwtConfiguration < TrustedTokenIssuerUpdateConfiguration; end
      class Unknown < TrustedTokenIssuerUpdateConfiguration; end
    end

    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource with the tags to be listed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of tags that are attached to the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :instance_arn,
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # A structure that describes the options for the access portal
    # associated with an application that can be updated.
    #
    # @!attribute [rw] sign_in_options
    #   A structure that describes the sign-in options for an application
    #   portal.
    #   @return [Types::SignInOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateApplicationPortalOptions AWS API Documentation
    #
    class UpdateApplicationPortalOptions < Struct.new(
      :sign_in_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   Specifies the ARN of the application. For more information about
    #   ARNs, see [Amazon Resource Names (ARNs) and Amazon Web Services
    #   Service Namespaces](/general/latest/gr/aws-arns-and-namespaces.html)
    #   in the *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the .
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies the updated name for the application.
    #   @return [String]
    #
    # @!attribute [rw] portal_options
    #   A structure that describes the options for the portal associated
    #   with an application.
    #   @return [Types::UpdateApplicationPortalOptions]
    #
    # @!attribute [rw] status
    #   Specifies whether the application is enabled or disabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_arn,
      :description,
      :name,
      :portal_options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateApplicationResponse AWS API Documentation
    #
    class UpdateApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_access_control_attribute_configuration
    #   Updates the attributes for your ABAC configuration.
    #   @return [Types::InstanceAccessControlAttributeConfiguration]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateInstanceAccessControlAttributeConfigurationRequest AWS API Documentation
    #
    class UpdateInstanceAccessControlAttributeConfigurationRequest < Struct.new(
      :instance_access_control_attribute_configuration,
      :instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateInstanceAccessControlAttributeConfigurationResponse AWS API Documentation
    #
    class UpdateInstanceAccessControlAttributeConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_arn
    #   The ARN of the instance of IAM Identity Center under which the
    #   operation will run. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Updates the instance name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateInstanceRequest AWS API Documentation
    #
    class UpdateInstanceRequest < Struct.new(
      :instance_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateInstanceResponse AWS API Documentation
    #
    class UpdateInstanceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] description
    #   The description of the PermissionSet.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the IAM Identity Center instance under which the
    #   operation will be executed. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and Amazon Web Services Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *Amazon Web Services General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set.
    #   @return [String]
    #
    # @!attribute [rw] relay_state
    #   Used to redirect users within the application during the federation
    #   authentication process.
    #   @return [String]
    #
    # @!attribute [rw] session_duration
    #   The length of time that the application user sessions are valid for
    #   in the ISO-8601 standard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdatePermissionSetRequest AWS API Documentation
    #
    class UpdatePermissionSetRequest < Struct.new(
      :description,
      :instance_arn,
      :permission_set_arn,
      :relay_state,
      :session_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdatePermissionSetResponse AWS API Documentation
    #
    class UpdatePermissionSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   Specifies the updated name to be applied to the trusted token issuer
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] trusted_token_issuer_arn
    #   Specifies the ARN of the trusted token issuer configuration that you
    #   want to update.
    #   @return [String]
    #
    # @!attribute [rw] trusted_token_issuer_configuration
    #   Specifies a structure with settings to apply to the specified
    #   trusted token issuer. The settings that you can provide are
    #   determined by the type of the trusted token issuer that you are
    #   updating.
    #   @return [Types::TrustedTokenIssuerUpdateConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateTrustedTokenIssuerRequest AWS API Documentation
    #
    class UpdateTrustedTokenIssuerRequest < Struct.new(
      :name,
      :trusted_token_issuer_arn,
      :trusted_token_issuer_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdateTrustedTokenIssuerResponse AWS API Documentation
    #
    class UpdateTrustedTokenIssuerResponse < Aws::EmptyStructure; end

    # The request failed because it contains a syntax error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

