# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSOAdmin
  module Types

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
    # specified AWS account with a specified permission set.
    #
    # <note markdown="1"> The term *principal* here refers to a user or group that is defined in
    # AWS SSO.
    #
    #  </note>
    #
    # @!attribute [rw] account_id
    #   The identifier of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in AWS SSO, such as a user or group.
    #   PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in AWS SSO, see the [AWS SSO Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AccountAssignment AWS API Documentation
    #
    class AccountAssignment < Struct.new(
      :account_id,
      :permission_set_arn,
      :principal_type,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the creation or deletion operation of an assignment that
    # a principal needs to access an account.
    #
    # @!attribute [rw] status
    #   The status of the permission set provisioning process.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The identifier for tracking the request operation that is generated
    #   by the universally unique identifier (UUID) workflow.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The message that contains an error or exception in case of an
    #   operation failure.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   TargetID is an AWS account identifier, typically a 10-12 digit
    #   string (For example, 123456789012).
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in AWS SSO, such as a user or group.
    #   PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in AWS SSO, see the [AWS SSO Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the permission set was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AccountAssignmentOperationStatus AWS API Documentation
    #
    class AccountAssignmentOperationStatus < Struct.new(
      :status,
      :request_id,
      :failure_reason,
      :target_id,
      :target_type,
      :permission_set_arn,
      :principal_type,
      :principal_id,
      :created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the AccountAssignment creation request.
    #
    # @!attribute [rw] status
    #   The status of the permission set provisioning process.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The identifier for tracking the request operation that is generated
    #   by the universally unique identifier (UUID) workflow.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the permission set was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AccountAssignmentOperationStatusMetadata AWS API Documentation
    #
    class AccountAssignmentOperationStatusMetadata < Struct.new(
      :status,
      :request_id,
      :created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachManagedPolicyToPermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #         managed_policy_arn: "ManagedPolicyArn", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the PermissionSet that the managed policy should be
    #   attached to.
    #   @return [String]
    #
    # @!attribute [rw] managed_policy_arn
    #   The IAM managed policy ARN to be attached to a permission set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AttachManagedPolicyToPermissionSetRequest AWS API Documentation
    #
    class AttachManagedPolicyToPermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn,
      :managed_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AttachManagedPolicyToPermissionSetResponse AWS API Documentation
    #
    class AttachManagedPolicyToPermissionSetResponse < Aws::EmptyStructure; end

    # A structure that stores the details of the IAM managed policy.
    #
    # @!attribute [rw] name
    #   The name of the IAM managed policy.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the IAM managed policy. For more information about ARNs,
    #   see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/AttachedManagedPolicy AWS API Documentation
    #
    class AttachedManagedPolicy < Struct.new(
      :name,
      :arn)
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

    # @note When making an API call, you may pass CreateAccountAssignmentRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         target_id: "TargetId", # required
    #         target_type: "AWS_ACCOUNT", # required, accepts AWS_ACCOUNT
    #         permission_set_arn: "PermissionSetArn", # required
    #         principal_type: "USER", # required, accepts USER, GROUP
    #         principal_id: "PrincipalId", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   TargetID is an AWS account identifier, typically a 10-12 digit
    #   string (For example, 123456789012).
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set that the admin wants to grant the
    #   principal access to.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be created.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in AWS SSO, such as a user or group.
    #   PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in AWS SSO, see the [AWS SSO Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreateAccountAssignmentRequest AWS API Documentation
    #
    class CreateAccountAssignmentRequest < Struct.new(
      :instance_arn,
      :target_id,
      :target_type,
      :permission_set_arn,
      :principal_type,
      :principal_id)
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

    # @note When making an API call, you may pass CreatePermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         name: "PermissionSetName", # required
    #         description: "PermissionSetDescription",
    #         instance_arn: "InstanceArn", # required
    #         session_duration: "Duration",
    #         relay_state: "RelayState",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the PermissionSet.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the PermissionSet.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] session_duration
    #   The length of time that the application user sessions are valid in
    #   the ISO-8601 standard.
    #   @return [String]
    #
    # @!attribute [rw] relay_state
    #   Used to redirect users within the application during the federation
    #   authentication process.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the new PermissionSet.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreatePermissionSetRequest AWS API Documentation
    #
    class CreatePermissionSetRequest < Struct.new(
      :name,
      :description,
      :instance_arn,
      :session_duration,
      :relay_state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_set
    #   Defines the level of access on an AWS account.
    #   @return [Types::PermissionSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/CreatePermissionSetResponse AWS API Documentation
    #
    class CreatePermissionSetResponse < Struct.new(
      :permission_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccountAssignmentRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         target_id: "TargetId", # required
    #         target_type: "AWS_ACCOUNT", # required, accepts AWS_ACCOUNT
    #         permission_set_arn: "PermissionSetArn", # required
    #         principal_type: "USER", # required, accepts USER, GROUP
    #         principal_id: "PrincipalId", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   TargetID is an AWS account identifier, typically a 10-12 digit
    #   string (For example, 123456789012).
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The entity type for which the assignment will be deleted.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set that will be used to remove access.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The entity type for which the assignment will be deleted.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   An identifier for an object in AWS SSO, such as a user or group.
    #   PrincipalIds are GUIDs (For example,
    #   f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    #   PrincipalIds in AWS SSO, see the [AWS SSO Identity Store API
    #   Reference](/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DeleteAccountAssignmentRequest AWS API Documentation
    #
    class DeleteAccountAssignmentRequest < Struct.new(
      :instance_arn,
      :target_id,
      :target_type,
      :permission_set_arn,
      :principal_type,
      :principal_id)
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

    # @note When making an API call, you may pass DeleteInlinePolicyFromPermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
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

    # @note When making an API call, you may pass DeletePermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
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

    # @note When making an API call, you may pass DescribeAccountAssignmentCreationStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         account_assignment_creation_request_id: "UUId", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] account_assignment_creation_request_id
    #   The identifier that is used to track the request operation progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeAccountAssignmentCreationStatusRequest AWS API Documentation
    #
    class DescribeAccountAssignmentCreationStatusRequest < Struct.new(
      :instance_arn,
      :account_assignment_creation_request_id)
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

    # @note When making an API call, you may pass DescribeAccountAssignmentDeletionStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         account_assignment_deletion_request_id: "UUId", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] account_assignment_deletion_request_id
    #   The identifier that is used to track the request operation progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribeAccountAssignmentDeletionStatusRequest AWS API Documentation
    #
    class DescribeAccountAssignmentDeletionStatusRequest < Struct.new(
      :instance_arn,
      :account_assignment_deletion_request_id)
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

    # @note When making an API call, you may pass DescribePermissionSetProvisioningStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         provision_permission_set_request_id: "UUId", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
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

    # @note When making an API call, you may pass DescribePermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
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
    #   Describes the level of access on an AWS account.
    #   @return [Types::PermissionSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DescribePermissionSetResponse AWS API Documentation
    #
    class DescribePermissionSetResponse < Struct.new(
      :permission_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachManagedPolicyFromPermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #         managed_policy_arn: "ManagedPolicyArn", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the PermissionSet from which the policy should be
    #   detached.
    #   @return [String]
    #
    # @!attribute [rw] managed_policy_arn
    #   The IAM managed policy ARN to be attached to a permission set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DetachManagedPolicyFromPermissionSetRequest AWS API Documentation
    #
    class DetachManagedPolicyFromPermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn,
      :managed_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/DetachManagedPolicyFromPermissionSetResponse AWS API Documentation
    #
    class DetachManagedPolicyFromPermissionSetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetInlinePolicyForPermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
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
    #   The IAM inline policy that is attached to the permission set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/GetInlinePolicyForPermissionSetResponse AWS API Documentation
    #
    class GetInlinePolicyForPermissionSetResponse < Struct.new(
      :inline_policy)
      SENSITIVE = [:inline_policy]
      include Aws::Structure
    end

    # Provides information about the SSO instance.
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   The identifier of the identity store that is connected to the SSO
    #   instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/InstanceMetadata AWS API Documentation
    #
    class InstanceMetadata < Struct.new(
      :instance_arn,
      :identity_store_id)
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

    # @note When making an API call, you may pass ListAccountAssignmentCreationStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         max_results: 1,
    #         next_token: "Token",
    #         filter: {
    #           status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, SUCCEEDED
    #         },
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
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
    # @!attribute [rw] filter
    #   Filters results based on the passed attribute value.
    #   @return [Types::OperationStatusFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentCreationStatusRequest AWS API Documentation
    #
    class ListAccountAssignmentCreationStatusRequest < Struct.new(
      :instance_arn,
      :max_results,
      :next_token,
      :filter)
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

    # @note When making an API call, you may pass ListAccountAssignmentDeletionStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         max_results: 1,
    #         next_token: "Token",
    #         filter: {
    #           status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, SUCCEEDED
    #         },
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
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
    # @!attribute [rw] filter
    #   Filters results based on the passed attribute value.
    #   @return [Types::OperationStatusFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentDeletionStatusRequest AWS API Documentation
    #
    class ListAccountAssignmentDeletionStatusRequest < Struct.new(
      :instance_arn,
      :max_results,
      :next_token,
      :filter)
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

    # @note When making an API call, you may pass ListAccountAssignmentsRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         account_id: "TargetId", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The identifier of the AWS account from which to list the
    #   assignments.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set from which to list assignments.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountAssignmentsRequest AWS API Documentation
    #
    class ListAccountAssignmentsRequest < Struct.new(
      :instance_arn,
      :account_id,
      :permission_set_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_assignments
    #   The list of assignments that match the input AWS account and
    #   permission set.
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

    # @note When making an API call, you may pass ListAccountsForProvisionedPermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #         provisioning_status: "LATEST_PERMISSION_SET_PROVISIONED", # accepts LATEST_PERMISSION_SET_PROVISIONED, LATEST_PERMISSION_SET_NOT_PROVISIONED
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the PermissionSet from which the associated AWS accounts
    #   will be listed.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_status
    #   The permission set provisioning status for an AWS account.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListAccountsForProvisionedPermissionSetRequest AWS API Documentation
    #
    class ListAccountsForProvisionedPermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn,
      :provisioning_status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The list of AWS `AccountIds`.
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

    # @note When making an API call, you may pass ListInstancesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
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
    #   Lists the SSO instances that the caller has access to.
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

    # @note When making an API call, you may pass ListManagedPoliciesInPermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the PermissionSet whose managed policies will be listed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListManagedPoliciesInPermissionSetRequest AWS API Documentation
    #
    class ListManagedPoliciesInPermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attached_managed_policies
    #   The array of the AttachedManagedPolicy data type object.
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

    # @note When making an API call, you may pass ListPermissionSetProvisioningStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         max_results: 1,
    #         next_token: "Token",
    #         filter: {
    #           status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, SUCCEEDED
    #         },
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
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
    # @!attribute [rw] filter
    #   Filters results based on the passed attribute value.
    #   @return [Types::OperationStatusFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetProvisioningStatusRequest AWS API Documentation
    #
    class ListPermissionSetProvisioningStatusRequest < Struct.new(
      :instance_arn,
      :max_results,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_sets_provisioning_status
    #   The status object for the permission set provisioning operation.
    #   @return [Array<Types::PermissionSetProvisioningStatusMetadata>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetProvisioningStatusResponse AWS API Documentation
    #
    class ListPermissionSetProvisioningStatusResponse < Struct.new(
      :permission_sets_provisioning_status,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPermissionSetsProvisionedToAccountRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         account_id: "AccountId", # required
    #         provisioning_status: "LATEST_PERMISSION_SET_PROVISIONED", # accepts LATEST_PERMISSION_SET_PROVISIONED, LATEST_PERMISSION_SET_NOT_PROVISIONED
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The identifier of the AWS account from which to list the
    #   assignments.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_status
    #   The status object for the permission set provisioning operation.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetsProvisionedToAccountRequest AWS API Documentation
    #
    class ListPermissionSetsProvisionedToAccountRequest < Struct.new(
      :instance_arn,
      :account_id,
      :provisioning_status,
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
    #   Defines the level of access that an AWS account has.
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

    # @note When making an API call, you may pass ListPermissionSetsRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display for the assignment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetsRequest AWS API Documentation
    #
    class ListPermissionSetsRequest < Struct.new(
      :instance_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_sets
    #   Defines the level of access on an AWS account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListPermissionSetsResponse AWS API Documentation
    #
    class ListPermissionSetsResponse < Struct.new(
      :permission_sets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         resource_arn: "GeneralArn", # required
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource with the tags to be listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :instance_arn,
      :resource_arn,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A set of key-value pairs that are used to manage the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the list API. Initially the value is null.
    #   Use the output of previous API calls to make subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters he operation status list based on the passed attribute value.
    #
    # @note When making an API call, you may pass OperationStatusFilter
    #   data as a hash:
    #
    #       {
    #         status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, SUCCEEDED
    #       }
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
    # @!attribute [rw] name
    #   The name of the permission set.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the PermissionSet.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the permission set was created.
    #   @return [Time]
    #
    # @!attribute [rw] session_duration
    #   The length of time that the application user sessions are valid for
    #   in the ISO-8601 standard.
    #   @return [String]
    #
    # @!attribute [rw] relay_state
    #   Used to redirect users within the application during the federation
    #   authentication process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PermissionSet AWS API Documentation
    #
    class PermissionSet < Struct.new(
      :name,
      :permission_set_arn,
      :description,
      :created_date,
      :session_duration,
      :relay_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that is used to provide the status of the provisioning
    # operation for a specified permission set.
    #
    # @!attribute [rw] status
    #   The status of the permission set provisioning process.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The identifier for tracking the request operation that is generated
    #   by the universally unique identifier (UUID) workflow.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The identifier of the AWS account from which to list the
    #   assignments.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set that is being provisioned. For more
    #   information about ARNs, see [Amazon Resource Names (ARNs) and AWS
    #   Service Namespaces](/general/latest/gr/aws-arns-and-namespaces.html)
    #   in the *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The message that contains an error or exception in case of an
    #   operation failure.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the permission set was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PermissionSetProvisioningStatus AWS API Documentation
    #
    class PermissionSetProvisioningStatus < Struct.new(
      :status,
      :request_id,
      :account_id,
      :permission_set_arn,
      :failure_reason,
      :created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the permission set provisioning status.
    #
    # @!attribute [rw] status
    #   The status of the permission set provisioning process.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The identifier for tracking the request operation that is generated
    #   by the universally unique identifier (UUID) workflow.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the permission set was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PermissionSetProvisioningStatusMetadata AWS API Documentation
    #
    class PermissionSetProvisioningStatusMetadata < Struct.new(
      :status,
      :request_id,
      :created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ProvisionPermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #         target_id: "TargetId",
    #         target_type: "AWS_ACCOUNT", # required, accepts AWS_ACCOUNT, ALL_PROVISIONED_ACCOUNTS
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   TargetID is an AWS account identifier, typically a 10-12 digit
    #   string (For example, 123456789012).
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

    # @note When making an API call, you may pass PutInlinePolicyToPermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #         inline_policy: "PermissionSetPolicyDocument", # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set.
    #   @return [String]
    #
    # @!attribute [rw] inline_policy
    #   The IAM inline policy to attach to a PermissionSet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutInlinePolicyToPermissionSetRequest AWS API Documentation
    #
    class PutInlinePolicyToPermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn,
      :inline_policy)
      SENSITIVE = [:inline_policy]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/PutInlinePolicyToPermissionSetResponse AWS API Documentation
    #
    class PutInlinePolicyToPermissionSetResponse < Aws::EmptyStructure; end

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

    # A set of key-value pairs that are used to manage the resource. Tags
    # can only be applied to permission sets and cannot be applied to
    # corresponding roles that AWS SSO creates in AWS accounts.
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         resource_arn: "GeneralArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         resource_arn: "GeneralArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
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

    # @note When making an API call, you may pass UpdatePermissionSetRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         permission_set_arn: "PermissionSetArn", # required
    #         description: "PermissionSetDescription",
    #         session_duration: "Duration",
    #         relay_state: "RelayState",
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The ARN of the SSO instance under which the operation will be
    #   executed. For more information about ARNs, see [Amazon Resource
    #   Names (ARNs) and AWS Service
    #   Namespaces](/general/latest/gr/aws-arns-and-namespaces.html) in the
    #   *AWS General Reference*.
    #   @return [String]
    #
    # @!attribute [rw] permission_set_arn
    #   The ARN of the permission set.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the PermissionSet.
    #   @return [String]
    #
    # @!attribute [rw] session_duration
    #   The length of time that the application user sessions are valid for
    #   in the ISO-8601 standard.
    #   @return [String]
    #
    # @!attribute [rw] relay_state
    #   Used to redirect users within the application during the federation
    #   authentication process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdatePermissionSetRequest AWS API Documentation
    #
    class UpdatePermissionSetRequest < Struct.new(
      :instance_arn,
      :permission_set_arn,
      :description,
      :session_duration,
      :relay_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sso-admin-2020-07-20/UpdatePermissionSetResponse AWS API Documentation
    #
    class UpdatePermissionSetResponse < Aws::EmptyStructure; end

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
