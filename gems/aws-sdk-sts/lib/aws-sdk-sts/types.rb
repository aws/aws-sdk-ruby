# frozen_string_literal: true

# This is generated code!

module Aws::STS
  # This module contains the types returned by client operations.
  module Types

    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to assume.</p>
    #   @return [String]
    # @!attribute role_session_name
    #   <p>An identifier for the assumed role session.</p>
    #            <p>Use the role session name to uniquely identify a session when the same role is assumed
    #            by different principals or for different reasons. In cross-account scenarios, the role
    #            session name is visible to, and can be logged by the account that owns the role. The role
    #            session name is also used in the ARN of the assumed role principal. This means that
    #            subsequent cross-account API requests that use the temporary security credentials will
    #            expose the role session name to the external account in their CloudTrail logs.</p>
    #            <p>For security purposes, administrators can view this field in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html#cloudtrail-integration_signin-tempcreds">CloudTrail logs</a> to help identify who performed an action in Amazon Web Services. Your
    #            administrator might require that you specify your user name as the session name when you
    #            assume the role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_iam-condition-keys.html#ck_rolesessionname">
    #                  <code>sts:RoleSessionName</code>
    #               </a>.</p>
    #            <p>The regex used to validate this parameter is a string of characters 
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can 
    #       also include underscores or any of the following characters: =,.@-</p>
    #   @return [String]
    # @!attribute policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as
    #            managed session policies. The policies must exist in the same account as the role.</p>
    #            <p>This parameter is optional. You can provide up to 10 managed policy ARNs. However, the
    #            plaintext that you use for both inline and managed session policies can't exceed 2,048
    #            characters. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the Amazon Web Services General Reference.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::PolicyDescriptorType>]
    # @!attribute policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>This parameter is optional. Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>For more information about role session permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               policies</a>.</p>
    #   @return [String]
    # @!attribute duration_seconds
    #   <p>The duration, in seconds, of the role session. The value specified can range from 900
    #            seconds (15 minutes) up to the maximum session duration set for the role. The maximum
    #            session duration setting can have a value from 1 hour to 12 hours. If you specify a value
    #            higher than this setting or the administrator setting (whichever is lower), the operation
    #            fails. For example, if you specify a session duration of 12 hours, but your administrator
    #            set the maximum session duration to 6 hours, your operation fails. </p>
    #            <p>Role chaining limits your Amazon Web Services CLI or Amazon Web Services API role session to a maximum of one hour.
    #            When you use the <code>AssumeRole</code> API operation to assume a role, you can specify
    #            the duration of your role session with the <code>DurationSeconds</code> parameter. You can
    #            specify a parameter value of up to 43200 seconds (12 hours), depending on the maximum
    #            session duration setting for your role. However, if you assume a role using role chaining
    #            and provide a <code>DurationSeconds</code> parameter value greater than one hour, the
    #            operation fails. To learn how to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_update-role-settings.html#id_roles_update-session-duration">Update the maximum session duration for a role</a>.</p>
    #            <p>By default, the value is set to <code>3600</code> seconds. </p>
    #            <note>
    #               <p>The <code>DurationSeconds</code> parameter is separate from the duration of a console
    #               session that you might request using the returned credentials. The request to the
    #               federation endpoint for a console sign-in token takes a <code>SessionDuration</code>
    #               parameter that specifies the maximum length of the console session. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating a URL
    #                  that Enables Federated Users to Access the Amazon Web Services Management Console</a> in the
    #                  <i>IAM User Guide</i>.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of session tags that you want to pass. Each session tag consists of a key name
    #            and an associated value. For more information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Tagging Amazon Web Services STS
    #               Sessions</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. You can pass up to 50 session tags. The plaintext session
    #            tag keys can’t exceed 128 characters, and the values can’t exceed 256 characters. For these
    #            and additional limits, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #               and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>You can pass a session tag with the same key as a tag that is already attached to the
    #            role. When you do, session tags override a role tag with the same key. </p>
    #            <p>Tag key–value pairs are not case sensitive, but case is preserved. This means that you
    #            cannot have separate <code>Department</code> and <code>department</code> tag keys. Assume
    #            that the role has the <code>Department</code>=<code>Marketing</code> tag and you pass the
    #               <code>department</code>=<code>engineering</code> session tag. <code>Department</code>
    #            and <code>department</code> are not saved as separate tags, and the session tag passed in
    #            the request takes precedence over the role tag.</p>
    #            <p>Additionally, if you used temporary credentials to perform this operation, the new
    #            session inherits any transitive session tags from the calling session. If you pass a
    #            session tag with the same key as an inherited tag, the operation fails. To view the
    #            inherited tags for a session, see the CloudTrail logs. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_ctlogs">Viewing Session Tags in CloudTrail</a> in the
    #            <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute transitive_tag_keys
    #   <p>A list of keys for session tags that you want to set as transitive. If you set a tag key
    #            as transitive, the corresponding key and value passes to subsequent sessions in a role
    #            chain. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining Roles
    #               with Session Tags</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. The transitive status of a session tag does not impact its
    #            packed binary size.</p>
    #            <p>If you choose not to specify a transitive tag key, then no tags are passed from this
    #            session to any subsequent sessions.</p>
    #   @return [Array<String>]
    # @!attribute external_id
    #   <p>A unique identifier that might be required when you assume a role in another account. If
    #            the administrator of the account to which the role belongs provided you with an external
    #            ID, then provide that value in the <code>ExternalId</code> parameter. This value can be any
    #            string, such as a passphrase or account number. A cross-account role is usually set up to
    #            trust everyone in an account. Therefore, the administrator of the trusting account might
    #            send an external ID to the administrator of the trusted account. That way, only someone
    #            with the ID can assume the role, rather than everyone in the account. For more information
    #            about the external ID, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html">How to Use an External ID
    #               When Granting Access to Your Amazon Web Services Resources to a Third Party</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>The regex used to validate this parameter is a string of 
    #       characters consisting of upper- and lower-case alphanumeric characters with no spaces. 
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The identification number of the MFA device that is associated with the user who is
    #            making the <code>AssumeRole</code> call. Specify this value if the trust policy of the role
    #            being assumed includes a condition that requires MFA authentication. The value is either
    #            the serial number for a hardware device (such as <code>GAHT12345678</code>) or an Amazon
    #            Resource Name (ARN) for a virtual device (such as
    #               <code>arn:aws:iam::123456789012:mfa/user</code>).</p>
    #            <p>The regex used to validate this parameter is a string of characters 
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can 
    #       also include underscores or any of the following characters: =,.@-</p>
    #   @return [String]
    # @!attribute token_code
    #   <p>The value provided by the MFA device, if the trust policy of the role being assumed
    #            requires MFA. (In other words, if the policy includes a condition that tests for MFA). If
    #            the role being assumed requires MFA and if the <code>TokenCode</code> value is missing or
    #            expired, the <code>AssumeRole</code> call returns an "access denied" error.</p>
    #            <p>The format for this parameter, as described by its regex pattern, is a sequence of six
    #            numeric digits.</p>
    #   @return [String]
    # @!attribute source_identity
    #   <p>The source identity specified by the principal that is calling the
    #               <code>AssumeRole</code> operation. The source identity value persists across <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html#iam-term-role-chaining">chained role</a> sessions.</p>
    #            <p>You can require users to specify a source identity when they assume a role. You do this
    #            by using the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceidentity">
    #                  <code>sts:SourceIdentity</code>
    #               </a> condition key in a role trust policy. You
    #            can use source identity information in CloudTrail logs to determine who took actions with a
    #            role. You can use the <code>aws:SourceIdentity</code> condition key to further control
    #            access to Amazon Web Services resources based on the value of source identity. For more information about
    #            using source identity, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html">Monitor and control
    #               actions taken with assumed roles</a> in the
    #            <i>IAM User Guide</i>.</p>
    #            <p>The regex used to validate this parameter is a string of characters consisting of upper-
    #            and lower-case alphanumeric characters with no spaces. You can also include underscores or
    #            any of the following characters: +=,.@-. You cannot use a value that begins with the text
    #               <code>aws:</code>. This prefix is reserved for Amazon Web Services internal use.</p>
    #   @return [String]
    # @!attribute provided_contexts
    #   <p>A list of previously acquired trusted context assertions in the format of a JSON array.
    #            The trusted context assertion is signed and encrypted by Amazon Web Services STS.</p>
    #            <p>The following is an example of a <code>ProvidedContext</code> value that includes a
    #            single trusted context assertion and the ARN of the context provider from which the trusted
    #            context assertion was generated.</p>
    #            <p>
    #               <code>[{"ProviderArn":"arn:aws:iam::aws:contextProvider/IdentityCenter","ContextAssertion":"trusted-context-assertion"}]</code>
    #            </p>
    #   @return [Array<Types::ProvidedContext>]
    class AssumeRoleRequest < Struct.new(
      nil,
      :role_arn,
      :role_session_name,
      :policy_arns,
      :policy,
      :duration_seconds,
      :tags,
      :transitive_tag_keys,
      :external_id,
      :serial_number,
      :token_code,
      :source_identity,
      :provided_contexts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a>AssumeRole</a> request, including
    #       temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests. </p>
    # @!attribute credentials
    #   <p>The temporary security credentials, which include an access key ID, a secret access key,
    #            and a security (or session) token.</p>
    #            <note>
    #               <p>The size of the security token that STS API operations return is not fixed. We
    #           strongly recommend that you make no assumptions about the maximum size.</p>
    #            </note>
    #   @return [Types::Credentials]
    # @!attribute assumed_role_user
    #   <p>The Amazon Resource Name (ARN) and the assumed role ID, which are identifiers that you
    #            can use to refer to the resulting temporary security credentials. For example, you can
    #            reference these credentials as a principal in a resource-based policy by using the ARN or
    #            assumed role ID. The ARN and ID include the <code>RoleSessionName</code> that you specified
    #            when you called <code>AssumeRole</code>. </p>
    #   @return [Types::AssumedRoleUser]
    # @!attribute packed_policy_size
    #   <p>A percentage value that indicates the packed size of the session policies and session 
    #         tags combined passed in the request. The request fails if the packed size is greater than 100 percent, 
    #         which means the policies and tags exceeded the allowed space.</p>
    #   @return [Integer]
    # @!attribute source_identity
    #   <p>The source identity specified by the principal that is calling the
    #               <code>AssumeRole</code> operation.</p>
    #            <p>You can require users to specify a source identity when they assume a role. You do this
    #            by using the <code>sts:SourceIdentity</code> condition key in a role trust policy. You can
    #            use source identity information in CloudTrail logs to determine who took actions with a role.
    #            You can use the <code>aws:SourceIdentity</code> condition key to further control access to
    #            Amazon Web Services resources based on the value of source identity. For more information about using
    #            source identity, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html">Monitor and control
    #               actions taken with assumed roles</a> in the
    #            <i>IAM User Guide</i>.</p>
    #            <p>The regex used to validate this parameter is a string of characters consisting of upper-
    #            and lower-case alphanumeric characters with no spaces. You can also include underscores or
    #            any of the following characters: =,.@-</p>
    #   @return [String]
    class AssumeRoleResponse < Struct.new(
      nil,
      :credentials,
      :assumed_role_user,
      :packed_policy_size,
      :source_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that the caller is assuming.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider in IAM that describes the
    #            IdP.</p>
    #   @return [String]
    # @!attribute saml_assertion
    #   <p>The base64 encoded SAML authentication response provided by the IdP.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/create-role-saml-IdP-tasks.html">Configuring a Relying Party and
    #               Adding Claims</a> in the <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as
    #            managed session policies. The policies must exist in the same account as the role.</p>
    #            <p>This parameter is optional. You can provide up to 10 managed policy ARNs. However, the
    #            plaintext that you use for both inline and managed session policies can't exceed 2,048
    #            characters. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the Amazon Web Services General Reference.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::PolicyDescriptorType>]
    # @!attribute policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>This parameter is optional. Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>. </p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #            <p>For more information about role session permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               policies</a>.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #   @return [String]
    # @!attribute duration_seconds
    #   <p>The duration, in seconds, of the role session. Your role session lasts for the duration
    #            that you specify for the <code>DurationSeconds</code> parameter, or until the time
    #            specified in the SAML authentication response's <code>SessionNotOnOrAfter</code> value,
    #            whichever is shorter. You can provide a <code>DurationSeconds</code> value from 900 seconds
    #            (15 minutes) up to the maximum session duration setting for the role. This setting can have
    #            a value from 1 hour to 12 hours. If you specify a value higher than this setting, the
    #            operation fails. For example, if you specify a session duration of 12 hours, but your
    #            administrator set the maximum session duration to 6 hours, your operation fails. To learn
    #            how to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View the
    #               Maximum Session Duration Setting for a Role</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>By default, the value is set to <code>3600</code> seconds. </p>
    #            <note>
    #               <p>The <code>DurationSeconds</code> parameter is separate from the duration of a console
    #               session that you might request using the returned credentials. The request to the
    #               federation endpoint for a console sign-in token takes a <code>SessionDuration</code>
    #               parameter that specifies the maximum length of the console session. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating a URL
    #                  that Enables Federated Users to Access the Amazon Web Services Management Console</a> in the
    #                  <i>IAM User Guide</i>.</p>
    #            </note>
    #   @return [Integer]
    class AssumeRoleWithSAMLRequest < Struct.new(
      nil,
      :role_arn,
      :principal_arn,
      :saml_assertion,
      :policy_arns,
      :policy,
      :duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a>AssumeRoleWithSAML</a> request,
    #       including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests. </p>
    # @!attribute credentials
    #   <p>The temporary security credentials, which include an access key ID, a secret access key,
    #            and a security (or session) token.</p>
    #            <note>
    #               <p>The size of the security token that STS API operations return is not fixed. We
    #           strongly recommend that you make no assumptions about the maximum size.</p>
    #            </note>
    #   @return [Types::Credentials]
    # @!attribute assumed_role_user
    #   <p>The identifiers for the temporary security credentials that the operation
    #            returns.</p>
    #   @return [Types::AssumedRoleUser]
    # @!attribute packed_policy_size
    #   <p>A percentage value that indicates the packed size of the session policies and session 
    #         tags combined passed in the request. The request fails if the packed size is greater than 100 percent, 
    #         which means the policies and tags exceeded the allowed space.</p>
    #   @return [Integer]
    # @!attribute subject
    #   <p>The value of the <code>NameID</code> element in the <code>Subject</code> element of the
    #            SAML assertion.</p>
    #   @return [String]
    # @!attribute subject_type
    #   <p> The format of the name ID, as defined by the <code>Format</code> attribute in the
    #               <code>NameID</code> element of the SAML assertion. Typical examples of the format are
    #               <code>transient</code> or <code>persistent</code>. </p>
    #            <p> If the format includes the prefix
    #               <code>urn:oasis:names:tc:SAML:2.0:nameid-format</code>, that prefix is removed. For
    #            example, <code>urn:oasis:names:tc:SAML:2.0:nameid-format:transient</code> is returned as
    #               <code>transient</code>. If the format includes any other prefix, the format is returned
    #            with no modifications.</p>
    #   @return [String]
    # @!attribute issuer
    #   <p>The value of the <code>Issuer</code> element of the SAML assertion.</p>
    #   @return [String]
    # @!attribute audience
    #   <p> The value of the <code>Recipient</code> attribute of the
    #               <code>SubjectConfirmationData</code> element of the SAML assertion. </p>
    #   @return [String]
    # @!attribute name_qualifier
    #   <p>A hash value based on the concatenation of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>Issuer</code> response value.</p>
    #               </li>
    #               <li>
    #                  <p>The Amazon Web Services account ID.</p>
    #               </li>
    #               <li>
    #                  <p>The friendly name (the last part of the ARN) of the SAML provider in IAM.</p>
    #               </li>
    #            </ul>
    #            <p>The combination of <code>NameQualifier</code> and <code>Subject</code> can be used to
    #            uniquely identify a user.</p>
    #            <p>The following pseudocode shows how the hash value is calculated:</p>
    #            <p>
    #               <code>BASE64 ( SHA1 ( "https://example.com/saml" + "123456789012" + "/MySAMLIdP" ) )</code>
    #            </p>
    #   @return [String]
    # @!attribute source_identity
    #   <p>The value in the <code>SourceIdentity</code> attribute in the SAML assertion. The source
    #            identity value persists across <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html#iam-term-role-chaining">chained role</a>
    #            sessions.</p>
    #            <p>You can require users to set a source identity value when they assume a role. You do
    #            this by using the <code>sts:SourceIdentity</code> condition key in a role trust policy.
    #            That way, actions that are taken with the role are associated with that user. After the
    #            source identity is set, the value cannot be changed. It is present in the request for all
    #            actions that are taken by the role and persists across <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html#id_roles_terms-and-concepts">chained role</a>
    #            sessions. You can configure your SAML identity provider to use an attribute associated with
    #            your users, like user name or email, as the source identity when calling
    #               <code>AssumeRoleWithSAML</code>. You do this by adding an attribute to the SAML
    #            assertion. For more information about using source identity, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html">Monitor and control
    #               actions taken with assumed roles</a> in the
    #            <i>IAM User Guide</i>.</p>
    #            <p>The regex used to validate this parameter is a string of characters 
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can 
    #       also include underscores or any of the following characters: =,.@-</p>
    #   @return [String]
    class AssumeRoleWithSAMLResponse < Struct.new(
      nil,
      :credentials,
      :assumed_role_user,
      :packed_policy_size,
      :subject,
      :subject_type,
      :issuer,
      :audience,
      :name_qualifier,
      :source_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that the caller is assuming.</p>
    #            <note>
    #               <p>Additional considerations apply to Amazon Cognito identity pools that assume <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies-cross-account-resource-access.html">cross-account IAM roles</a>. The trust policies of these roles must accept the
    #                  <code>cognito-identity.amazonaws.com</code> service principal and must contain the
    #                  <code>cognito-identity.amazonaws.com:aud</code> condition key to restrict role
    #               assumption to users from your intended identity pools. A policy that trusts Amazon Cognito
    #               identity pools without this condition creates a risk that a user from an unintended
    #               identity pool can assume the role. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/iam-roles.html#trust-policies"> Trust policies for
    #                  IAM roles in Basic (Classic) authentication </a> in the <i>Amazon Cognito
    #                  Developer Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute role_session_name
    #   <p>An identifier for the assumed role session. Typically, you pass the name or identifier
    #            that is associated with the user who is using your application. That way, the temporary
    #            security credentials that your application will use are associated with that user. This
    #            session name is included as part of the ARN and assumed role ID in the
    #               <code>AssumedRoleUser</code> response element.</p>
    #            <p>For security purposes, administrators can view this field in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html#cloudtrail-integration_signin-tempcreds">CloudTrail logs</a> to help identify who performed an action in Amazon Web Services. Your
    #            administrator might require that you specify your user name as the session name when you
    #            assume the role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_iam-condition-keys.html#ck_rolesessionname">
    #                  <code>sts:RoleSessionName</code>
    #               </a>.</p>
    #            <p>The regex used to validate this parameter is a string of characters 
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can 
    #       also include underscores or any of the following characters: =,.@-</p>
    #   @return [String]
    # @!attribute web_identity_token
    #   <p>The OAuth 2.0 access token or OpenID Connect ID token that is provided by the identity
    #            provider. Your application must get this token by authenticating the user who is using your
    #            application with a web identity provider before the application makes an
    #               <code>AssumeRoleWithWebIdentity</code> call. Timestamps in the token must be formatted
    #            as either an integer or a long integer. Tokens must be signed using either RSA keys (RS256,
    #            RS384, or RS512) or ECDSA keys (ES256, ES384, or ES512).</p>
    #   @return [String]
    # @!attribute provider_id
    #   <p>The fully qualified host component of the domain name of the OAuth 2.0 identity
    #            provider. Do not specify this value for an OpenID Connect identity provider.</p>
    #            <p>Currently <code>www.amazon.com</code> and <code>graph.facebook.com</code> are the only
    #            supported identity providers for OAuth 2.0 access tokens. Do not include URL schemes and
    #            port numbers.</p>
    #            <p>Do not specify this value for OpenID Connect ID tokens.</p>
    #   @return [String]
    # @!attribute policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as
    #            managed session policies. The policies must exist in the same account as the role.</p>
    #            <p>This parameter is optional. You can provide up to 10 managed policy ARNs. However, the
    #            plaintext that you use for both inline and managed session policies can't exceed 2,048
    #            characters. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the Amazon Web Services General Reference.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::PolicyDescriptorType>]
    # @!attribute policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>This parameter is optional. Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #            <p>For more information about role session permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               policies</a>.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #   @return [String]
    # @!attribute duration_seconds
    #   <p>The duration, in seconds, of the role session. The value can range from 900 seconds (15
    #            minutes) up to the maximum session duration setting for the role. This setting can have a
    #            value from 1 hour to 12 hours. If you specify a value higher than this setting, the
    #            operation fails. For example, if you specify a session duration of 12 hours, but your
    #            administrator set the maximum session duration to 6 hours, your operation fails. To learn
    #            how to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View the
    #               Maximum Session Duration Setting for a Role</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>By default, the value is set to <code>3600</code> seconds. </p>
    #            <note>
    #               <p>The <code>DurationSeconds</code> parameter is separate from the duration of a console
    #               session that you might request using the returned credentials. The request to the
    #               federation endpoint for a console sign-in token takes a <code>SessionDuration</code>
    #               parameter that specifies the maximum length of the console session. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating a URL
    #                  that Enables Federated Users to Access the Amazon Web Services Management Console</a> in the
    #                  <i>IAM User Guide</i>.</p>
    #            </note>
    #   @return [Integer]
    class AssumeRoleWithWebIdentityRequest < Struct.new(
      nil,
      :role_arn,
      :role_session_name,
      :web_identity_token,
      :provider_id,
      :policy_arns,
      :policy,
      :duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a>AssumeRoleWithWebIdentity</a>
    #       request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests. </p>
    # @!attribute credentials
    #   <p>The temporary security credentials, which include an access key ID, a secret access key,
    #            and a security token.</p>
    #            <note>
    #               <p>The size of the security token that STS API operations return is not fixed. We
    #           strongly recommend that you make no assumptions about the maximum size.</p>
    #            </note>
    #   @return [Types::Credentials]
    # @!attribute subject_from_web_identity_token
    #   <p>The unique user identifier that is returned by the identity provider. This identifier is
    #            associated with the <code>WebIdentityToken</code> that was submitted with the
    #               <code>AssumeRoleWithWebIdentity</code> call. The identifier is typically unique to the
    #            user and the application that acquired the <code>WebIdentityToken</code> (pairwise
    #            identifier). For OpenID Connect ID tokens, this field contains the value returned by the
    #            identity provider as the token's <code>sub</code> (Subject) claim. </p>
    #   @return [String]
    # @!attribute assumed_role_user
    #   <p>The Amazon Resource Name (ARN) and the assumed role ID, which are identifiers that you
    #            can use to refer to the resulting temporary security credentials. For example, you can
    #            reference these credentials as a principal in a resource-based policy by using the ARN or
    #            assumed role ID. The ARN and ID include the <code>RoleSessionName</code> that you specified
    #            when you called <code>AssumeRole</code>. </p>
    #   @return [Types::AssumedRoleUser]
    # @!attribute packed_policy_size
    #   <p>A percentage value that indicates the packed size of the session policies and session 
    #         tags combined passed in the request. The request fails if the packed size is greater than 100 percent, 
    #         which means the policies and tags exceeded the allowed space.</p>
    #   @return [Integer]
    # @!attribute provider
    #   <p> The issuing authority of the web identity token presented. For OpenID Connect ID
    #            tokens, this contains the value of the <code>iss</code> field. For OAuth 2.0 access tokens,
    #            this contains the value of the <code>ProviderId</code> parameter that was passed in the
    #               <code>AssumeRoleWithWebIdentity</code> request.</p>
    #   @return [String]
    # @!attribute audience
    #   <p>The intended audience (also known as client ID) of the web identity token. This is
    #            traditionally the client identifier issued to the application that requested the web
    #            identity token.</p>
    #   @return [String]
    # @!attribute source_identity
    #   <p>The value of the source identity that is returned in the JSON web token (JWT) from the
    #            identity provider.</p>
    #            <p>You can require users to set a source identity value when they assume a role. You do
    #            this by using the <code>sts:SourceIdentity</code> condition key in a role trust policy.
    #            That way, actions that are taken with the role are associated with that user. After the
    #            source identity is set, the value cannot be changed. It is present in the request for all
    #            actions that are taken by the role and persists across <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html#id_roles_terms-and-concepts">chained role</a>
    #            sessions. You can configure your identity provider to use an attribute associated with your
    #            users, like user name or email, as the source identity when calling
    #               <code>AssumeRoleWithWebIdentity</code>. You do this by adding a claim to the JSON web
    #            token. To learn more about OIDC tokens and claims, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-tokens-with-identity-providers.html">Using Tokens with User Pools</a> in the <i>Amazon Cognito Developer Guide</i>.
    #            For more information about using source identity, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html">Monitor and control
    #               actions taken with assumed roles</a> in the
    #            <i>IAM User Guide</i>.</p>
    #            <p>The regex used to validate this parameter is a string of characters 
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can 
    #       also include underscores or any of the following characters: =,.@-</p>
    #   @return [String]
    class AssumeRoleWithWebIdentityResponse < Struct.new(
      nil,
      :credentials,
      :subject_from_web_identity_token,
      :assumed_role_user,
      :packed_policy_size,
      :provider,
      :audience,
      :source_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_principal
    #   <p>The member account principal ARN or account ID.</p>
    #   @return [String]
    # @!attribute task_policy_arn
    #   <p>The identity based policy that scopes the session to the privileged tasks that can be
    #            performed. You can use one of following Amazon Web Services managed policies to scope root session
    #            actions.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-IAMAuditRootUserCredentials">IAMAuditRootUserCredentials</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-IAMCreateRootUserPassword">IAMCreateRootUserPassword</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-IAMDeleteRootUserCredentials">IAMDeleteRootUserCredentials</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-S3UnlockBucketPolicy">S3UnlockBucketPolicy</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-SQSUnlockQueuePolicy">SQSUnlockQueuePolicy</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::PolicyDescriptorType]
    # @!attribute duration_seconds
    #   <p>The duration, in seconds, of the privileged session. The value can range from 0 seconds
    #            up to the maximum session duration of 900 seconds (15 minutes). If you specify a value
    #            higher than this setting, the operation fails.</p>
    #            <p>By default, the value is set to <code>900</code> seconds.</p>
    #   @return [Integer]
    class AssumeRootRequest < Struct.new(
      nil,
      :target_principal,
      :task_policy_arn,
      :duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute credentials
    #   <p>The temporary security credentials, which include an access key ID, a secret access key,
    #            and a security token.</p>
    #            <note>
    #               <p>The size of the security token that STS API operations return is not fixed. We
    #           strongly recommend that you make no assumptions about the maximum size.</p>
    #            </note>
    #   @return [Types::Credentials]
    # @!attribute source_identity
    #   <p>The source identity specified by the principal that is calling the
    #               <code>AssumeRoot</code> operation.</p>
    #            <p>You can use the <code>aws:SourceIdentity</code> condition key to control access based on
    #            the value of source identity. For more information about using source identity, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html">Monitor and control
    #               actions taken with assumed roles</a> in the
    #            <i>IAM User Guide</i>.</p>
    #            <p>The regex used to validate this parameter is a string of characters consisting of upper-
    #            and lower-case alphanumeric characters with no spaces. You can also include underscores or
    #            any of the following characters: =,.@-</p>
    #   @return [String]
    class AssumeRootResponse < Struct.new(
      nil,
      :credentials,
      :source_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifiers for the temporary security credentials that the operation
    #          returns.</p>
    # @!attribute assumed_role_id
    #   <p>A unique identifier that contains the role ID and the role session name of the role that
    #            is being assumed. The role ID is generated by Amazon Web Services when the role is created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the temporary security credentials that are returned from the <a>AssumeRole</a> action. For more information about ARNs and how to use them in
    #            policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the
    #               <i>IAM User Guide</i>.</p>
    #   @return [String]
    class AssumedRoleUser < Struct.new(
      nil,
      :assumed_role_id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Web Services credentials for API authentication.</p>
    # @!attribute access_key_id
    #   <p>The access key ID that identifies the temporary security credentials.</p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The secret access key that can be used to sign requests.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The token that users must pass to the service API to use the temporary
    #            credentials.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The date on which the current credentials expire.</p>
    #   @return [Time]
    class Credentials < Struct.new(
      nil,
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encoded_message
    #   <p>The encoded message that was returned with the response.</p>
    #   @return [String]
    class DecodeAuthorizationMessageRequest < Struct.new(
      nil,
      :encoded_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A document that contains additional information about the authorization status of a
    #       request from an encoded message that is returned in response to an Amazon Web Services request.</p>
    # @!attribute decoded_message
    #   <p>The API returns a response with the decoded message.</p>
    #   @return [String]
    class DecodeAuthorizationMessageResponse < Struct.new(
      nil,
      :decoded_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The web identity token that was passed is expired or is not valid. Get a new identity
    #             token from the identity provider and then retry the request.</p>
    # @!attribute message
    #   @return [String]
    class ExpiredTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifiers for the federated user that is associated with the credentials.</p>
    # @!attribute federated_user_id
    #   <p>The string that identifies the federated user associated with the credentials, similar
    #            to the unique ID of an IAM user.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN that specifies the federated user that is associated with the credentials. For
    #            more information about ARNs and how to use them in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #               Identifiers</a> in the <i>IAM User Guide</i>. </p>
    #   @return [String]
    class FederatedUser < Struct.new(
      nil,
      :federated_user_id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_key_id
    #   <p>The identifier of an access key.</p>
    #            <p>This parameter allows (through its regex pattern) a string of characters that can
    #            consist of any upper- or lowercase letter or digit.</p>
    #   @return [String]
    class GetAccessKeyInfoRequest < Struct.new(
      nil,
      :access_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account
    #   <p>The number used to identify the Amazon Web Services account.</p>
    #   @return [String]
    class GetAccessKeyInfoResponse < Struct.new(
      nil,
      :account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetCallerIdentityRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a>GetCallerIdentity</a> request,
    #          including information about the entity making the request.</p>
    # @!attribute user_id
    #   <p>The unique identifier of the calling entity. The exact value depends on the type of
    #            entity that is making the call. The values returned are those listed in the <b>aws:userid</b> column in the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_variables.html#principaltable">Principal
    #               table</a> found on the <b>Policy Variables</b> reference
    #            page in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute account
    #   <p>The Amazon Web Services account ID number of the account that owns or contains the calling
    #            entity.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Web Services ARN associated with the calling entity.</p>
    #   @return [String]
    class GetCallerIdentityResponse < Struct.new(
      nil,
      :user_id,
      :account,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the federated user. The name is used as an identifier for the temporary
    #            security credentials (such as <code>Bob</code>). For example, you can reference the
    #            federated user name in a resource-based policy, such as in an Amazon S3 bucket policy.</p>
    #            <p>The regex used to validate this parameter is a string of characters 
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can 
    #       also include underscores or any of the following characters: =,.@-</p>
    #   @return [String]
    # @!attribute policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>You must pass an inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policy</a> to
    #            this operation. You can pass a single JSON policy document to use as an inline session
    #            policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as
    #            managed session policies.</p>
    #            <p>This parameter is optional. However, if you do not pass any session policies, then the
    #            resulting federated user session has no permissions.</p>
    #            <p>When you pass session policies, the session permissions are the intersection of the
    #               IAM user policies and the session policies that you pass. This gives you
    #            a way to further restrict the permissions for a federated user. You cannot use session
    #            policies to grant more permissions than those that are defined in the permissions policy of
    #            the IAM user. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session Policies</a> in
    #            the <i>IAM User Guide</i>.</p>
    #            <p>The resulting credentials can be used to access a resource that has a resource-based
    #            policy. If that policy specifically references the federated user session in the
    #               <code>Principal</code> element of the policy, the session has the permissions allowed by
    #            the policy. These permissions are granted in addition to the permissions that are granted
    #            by the session policies.</p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #   @return [String]
    # @!attribute policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as a
    #            managed session policy. The policies must exist in the same account as the IAM user that is requesting federated access.</p>
    #            <p>You must pass an inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policy</a> to
    #            this operation. You can pass a single JSON policy document to use as an inline session
    #            policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as
    #            managed session policies. The plaintext that you use for both inline and managed session
    #            policies can't exceed 2,048 characters. You can provide up to 10 managed policy ARNs. For
    #            more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the Amazon Web Services General Reference.</p>
    #            <p>This parameter is optional. However, if you do not pass any session policies, then the
    #            resulting federated user session has no permissions.</p>
    #            <p>When you pass session policies, the session permissions are the intersection of the
    #               IAM user policies and the session policies that you pass. This gives you
    #            a way to further restrict the permissions for a federated user. You cannot use session
    #            policies to grant more permissions than those that are defined in the permissions policy of
    #            the IAM user. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session Policies</a> in
    #            the <i>IAM User Guide</i>.</p>
    #            <p>The resulting credentials can be used to access a resource that has a resource-based
    #            policy. If that policy specifically references the federated user session in the
    #               <code>Principal</code> element of the policy, the session has the permissions allowed by
    #            the policy. These permissions are granted in addition to the permissions that are granted
    #            by the session policies.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #   @return [Array<Types::PolicyDescriptorType>]
    # @!attribute duration_seconds
    #   <p>The duration, in seconds, that the session should last. Acceptable durations for
    #            federation sessions range from 900 seconds (15 minutes) to 129,600 seconds (36 hours), with
    #            43,200 seconds (12 hours) as the default. Sessions obtained using root user
    #            credentials are restricted to a maximum of 3,600 seconds (one hour). If the specified
    #            duration is longer than one hour, the session obtained by using root user
    #            credentials defaults to one hour.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of session tags. Each session tag consists of a key name and an associated value.
    #            For more information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. You can pass up to 50 session tags. The plaintext session
    #            tag keys can’t exceed 128 characters and the values can’t exceed 256 characters. For these
    #            and additional limits, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #               and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>You can pass a session tag with the same key as a tag that is already attached to the
    #            user you are federating. When you do, session tags override a user tag with the same key. </p>
    #            <p>Tag key–value pairs are not case sensitive, but case is preserved. This means that you
    #            cannot have separate <code>Department</code> and <code>department</code> tag keys. Assume
    #            that the role has the <code>Department</code>=<code>Marketing</code> tag and you pass the
    #               <code>department</code>=<code>engineering</code> session tag. <code>Department</code>
    #            and <code>department</code> are not saved as separate tags, and the session tag passed in
    #            the request takes precedence over the role tag.</p>
    #   @return [Array<Types::Tag>]
    class GetFederationTokenRequest < Struct.new(
      nil,
      :name,
      :policy,
      :policy_arns,
      :duration_seconds,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a>GetFederationToken</a> request,
    #       including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests. </p>
    # @!attribute credentials
    #   <p>The temporary security credentials, which include an access key ID, a secret access key,
    #            and a security (or session) token.</p>
    #            <note>
    #               <p>The size of the security token that STS API operations return is not fixed. We
    #           strongly recommend that you make no assumptions about the maximum size.</p>
    #            </note>
    #   @return [Types::Credentials]
    # @!attribute federated_user
    #   <p>Identifiers for the federated user associated with the credentials (such as
    #               <code>arn:aws:sts::123456789012:federated-user/Bob</code> or
    #               <code>123456789012:Bob</code>). You can use the federated user's ARN in your
    #            resource-based policies, such as an Amazon S3 bucket policy. </p>
    #   @return [Types::FederatedUser]
    # @!attribute packed_policy_size
    #   <p>A percentage value that indicates the packed size of the session policies and session 
    #         tags combined passed in the request. The request fails if the packed size is greater than 100 percent, 
    #         which means the policies and tags exceeded the allowed space.</p>
    #   @return [Integer]
    class GetFederationTokenResponse < Struct.new(
      nil,
      :credentials,
      :federated_user,
      :packed_policy_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute duration_seconds
    #   <p>The duration, in seconds, that the credentials should remain valid. Acceptable durations
    #            for IAM user sessions range from 900 seconds (15 minutes) to 129,600 seconds
    #            (36 hours), with 43,200 seconds (12 hours) as the default. Sessions for Amazon Web Services account
    #            owners are restricted to a maximum of 3,600 seconds (one hour). If the duration is longer
    #            than one hour, the session for Amazon Web Services account owners defaults to one hour.</p>
    #   @return [Integer]
    # @!attribute serial_number
    #   <p>The identification number of the MFA device that is associated with the IAM user who is making the <code>GetSessionToken</code> call. Specify this value
    #            if the IAM user has a policy that requires MFA authentication. The value is
    #            either the serial number for a hardware device (such as <code>GAHT12345678</code>) or an
    #            Amazon Resource Name (ARN) for a virtual device (such as
    #               <code>arn:aws:iam::123456789012:mfa/user</code>). You can find the device for an IAM user by going to the Amazon Web Services Management Console and viewing the user's security credentials. </p>
    #            <p>The regex used to validate this parameter is a string of 
    #       characters consisting of upper- and lower-case alphanumeric characters with no spaces. 
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    #   @return [String]
    # @!attribute token_code
    #   <p>The value provided by the MFA device, if MFA is required. If any policy requires the
    #               IAM user to submit an MFA code, specify this value. If MFA authentication
    #            is required, the user must provide a code when requesting a set of temporary security
    #            credentials. A user who fails to provide the code receives an "access denied" response when
    #            requesting resources that require MFA authentication.</p>
    #            <p>The format for this parameter, as described by its regex pattern, is a sequence of six
    #            numeric digits.</p>
    #   @return [String]
    class GetSessionTokenRequest < Struct.new(
      nil,
      :duration_seconds,
      :serial_number,
      :token_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a>GetSessionToken</a> request,
    #       including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests. </p>
    # @!attribute credentials
    #   <p>The temporary security credentials, which include an access key ID, a secret access key,
    #            and a security (or session) token.</p>
    #            <note>
    #               <p>The size of the security token that STS API operations return is not fixed. We
    #           strongly recommend that you make no assumptions about the maximum size.</p>
    #            </note>
    #   @return [Types::Credentials]
    class GetSessionTokenResponse < Struct.new(
      nil,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be fulfilled because the identity provider (IDP) that was asked
    #             to verify the incoming identity token could not be reached. This is often a transient
    #             error caused by network conditions. Retry the request a limited number of times so that
    #             you don't exceed the request rate. If the error persists, the identity provider might be
    #             down or not responding.</p>
    # @!attribute message
    #   @return [String]
    class IDPCommunicationErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identity provider (IdP) reported that authentication failed. This might be because
    #             the claim is invalid.</p>
    #          <p>If this error is returned for the <code>AssumeRoleWithWebIdentity</code> operation, it
    #             can also mean that the claim has expired or has been explicitly revoked. </p>
    # @!attribute message
    #   @return [String]
    class IDPRejectedClaimException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error returned if the message passed to <code>DecodeAuthorizationMessage</code>
    #             was invalid. This can happen if the token contains invalid characters, such as line
    #             breaks, or if the message has expired.</p>
    # @!attribute message
    #   @return [String]
    class InvalidAuthorizationMessageException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The web identity token that was passed could not be validated by Amazon Web Services. Get a new
    #             identity token from the identity provider and then retry the request.</p>
    # @!attribute message
    #   @return [String]
    class InvalidIdentityTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because the policy document was malformed. The error message
    #             describes the specific error.</p>
    # @!attribute message
    #   @return [String]
    class MalformedPolicyDocumentException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because the total packed size of the session policies and
    #             session tags combined was too large. An Amazon Web Services conversion compresses the session policy
    #             document, session policy ARNs, and session tags into a packed binary format that has a
    #             separate limit. The error message indicates by percentage how close the policies and
    #             tags are to the upper size limit. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in
    #             the <i>IAM User Guide</i>.</p>
    #          <p>You could receive this error even though you meet other defined session policy and
    #             session tag limits. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-limits-entity-length">IAM and STS Entity Character Limits</a> in the <i>IAM User
    #                 Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class PackedPolicyTooLargeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to the IAM managed policy that is passed as a session policy for a role
    #          session or a federated user session.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the IAM managed policy to use as a session policy
    #            for the role. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class PolicyDescriptorType < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the provided context. This includes the signed and encrypted
    #          trusted context assertion and the context provider ARN from which the trusted context
    #          assertion was generated.</p>
    # @!attribute provider_arn
    #   <p>The context provider ARN from which the trusted context assertion was generated.</p>
    #   @return [String]
    # @!attribute context_assertion
    #   <p>The signed and encrypted trusted context assertion generated by the context provider.
    #            The trusted context assertion is signed and encrypted by Amazon Web Services STS.</p>
    #   @return [String]
    class ProvidedContext < Struct.new(
      nil,
      :provider_arn,
      :context_assertion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>STS is not activated in the requested region for the account that is being asked to
    #             generate credentials. The account administrator must use the IAM console to activate
    #             STS in that region. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                 Deactivating STS in an Amazon Web Services Region</a> in the <i>IAM User
    #                 Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class RegionDisabledException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can pass custom key-value pair attributes when you assume a role or federate a user.
    #          These are called session tags. You can then use the session tags to control access to
    #          resources. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Tagging Amazon Web Services STS Sessions</a> in the
    #             <i>IAM User Guide</i>.</p>
    # @!attribute key
    #   <p>The key for a session tag.</p>
    #            <p>You can pass up to 50 session tags. The plain text session tag keys can’t exceed 128
    #            characters. For these and additional limits, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #               and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for a session tag.</p>
    #            <p>You can pass up to 50 session tags. The plain text session tag values can’t exceed 256
    #            characters. For these and additional limits, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #               and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
