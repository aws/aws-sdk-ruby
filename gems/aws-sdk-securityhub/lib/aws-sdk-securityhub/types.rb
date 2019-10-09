# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityHub
  module Types

    # @note When making an API call, you may pass AcceptInvitationRequest
    #   data as a hash:
    #
    #       {
    #         master_id: "NonEmptyString", # required
    #         invitation_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] master_id
    #   The account ID of the Security Hub master account that sent the
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The ID of the invitation sent from the Security Hub master account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptInvitationRequest AWS API Documentation
    #
    class AcceptInvitationRequest < Struct.new(
      :master_id,
      :invitation_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptInvitationResponse AWS API Documentation
    #
    class AcceptInvitationResponse < Aws::EmptyStructure; end

    # You don't have permission to perform the action specified in the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # The details of an AWS account.
    #
    # @note When making an API call, you may pass AccountDetails
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId",
    #         email: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] account_id
    #   The ID of an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of an AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AccountDetails AWS API Documentation
    #
    class AccountDetails < Struct.new(
      :account_id,
      :email)
      include Aws::Structure
    end

    # An `ActionTarget` object.
    #
    # @!attribute [rw] action_target_arn
    #   The ARN for the target action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the action target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ActionTarget AWS API Documentation
    #
    class ActionTarget < Struct.new(
      :action_target_arn,
      :name,
      :description)
      include Aws::Structure
    end

    # The details of an Amazon EC2 instance.
    #
    # @note When making an API call, you may pass AwsEc2InstanceDetails
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString",
    #         image_id: "NonEmptyString",
    #         ip_v4_addresses: ["NonEmptyString"],
    #         ip_v6_addresses: ["NonEmptyString"],
    #         key_name: "NonEmptyString",
    #         iam_instance_profile_arn: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #         subnet_id: "NonEmptyString",
    #         launched_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] type
    #   The instance type of the instance.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The Amazon Machine Image (AMI) ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] ip_v4_addresses
    #   The IPv4 addresses associated with the instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_v6_addresses
    #   The IPv6 addresses associated with the instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] key_name
    #   The key name associated with the instance.
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile_arn
    #   The IAM profile ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that the instance was launched in.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The identifier of the subnet that the instance was launched in.
    #   @return [String]
    #
    # @!attribute [rw] launched_at
    #   The date/time the instance was launched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2InstanceDetails AWS API Documentation
    #
    class AwsEc2InstanceDetails < Struct.new(
      :type,
      :image_id,
      :ip_v4_addresses,
      :ip_v6_addresses,
      :key_name,
      :iam_instance_profile_arn,
      :vpc_id,
      :subnet_id,
      :launched_at)
      include Aws::Structure
    end

    # IAM access key details related to a finding.
    #
    # @note When making an API call, you may pass AwsIamAccessKeyDetails
    #   data as a hash:
    #
    #       {
    #         user_name: "NonEmptyString",
    #         status: "Active", # accepts Active, Inactive
    #         created_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] user_name
    #   The user associated with the IAM access key related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the IAM access key related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The creation date/time of the IAM access key related to a finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAccessKeyDetails AWS API Documentation
    #
    class AwsIamAccessKeyDetails < Struct.new(
      :user_name,
      :status,
      :created_at)
      include Aws::Structure
    end

    # The details of an Amazon S3 bucket.
    #
    # @note When making an API call, you may pass AwsS3BucketDetails
    #   data as a hash:
    #
    #       {
    #         owner_id: "NonEmptyString",
    #         owner_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] owner_id
    #   The canonical user ID of the owner of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] owner_name
    #   The display name of the owner of the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketDetails AWS API Documentation
    #
    class AwsS3BucketDetails < Struct.new(
      :owner_id,
      :owner_name)
      include Aws::Structure
    end

    # Provides consistent format for the contents of the Security
    # Hub-aggregated findings. `AwsSecurityFinding` format enables you to
    # share findings between AWS security services and third-party
    # solutions, and compliance checks.
    #
    # <note markdown="1"> A finding is a potential security issue generated either by AWS
    # services (Amazon GuardDuty, Amazon Inspector, and Amazon Macie) or by
    # the integrated third-party solutions and compliance checks.
    #
    #  </note>
    #
    # @note When making an API call, you may pass AwsSecurityFinding
    #   data as a hash:
    #
    #       {
    #         schema_version: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #         generator_id: "NonEmptyString", # required
    #         aws_account_id: "NonEmptyString", # required
    #         types: ["NonEmptyString"], # required
    #         first_observed_at: "NonEmptyString",
    #         last_observed_at: "NonEmptyString",
    #         created_at: "NonEmptyString", # required
    #         updated_at: "NonEmptyString", # required
    #         severity: { # required
    #           product: 1.0,
    #           normalized: 1, # required
    #         },
    #         confidence: 1,
    #         criticality: 1,
    #         title: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #         remediation: {
    #           recommendation: {
    #             text: "NonEmptyString",
    #             url: "NonEmptyString",
    #           },
    #         },
    #         source_url: "NonEmptyString",
    #         product_fields: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         user_defined_fields: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         malware: [
    #           {
    #             name: "NonEmptyString", # required
    #             type: "ADWARE", # accepts ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM
    #             path: "NonEmptyString",
    #             state: "OBSERVED", # accepts OBSERVED, REMOVAL_FAILED, REMOVED
    #           },
    #         ],
    #         network: {
    #           direction: "IN", # accepts IN, OUT
    #           protocol: "NonEmptyString",
    #           source_ip_v4: "NonEmptyString",
    #           source_ip_v6: "NonEmptyString",
    #           source_port: 1,
    #           source_domain: "NonEmptyString",
    #           source_mac: "NonEmptyString",
    #           destination_ip_v4: "NonEmptyString",
    #           destination_ip_v6: "NonEmptyString",
    #           destination_port: 1,
    #           destination_domain: "NonEmptyString",
    #         },
    #         process: {
    #           name: "NonEmptyString",
    #           path: "NonEmptyString",
    #           pid: 1,
    #           parent_pid: 1,
    #           launched_at: "NonEmptyString",
    #           terminated_at: "NonEmptyString",
    #         },
    #         threat_intel_indicators: [
    #           {
    #             type: "DOMAIN", # accepts DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL
    #             value: "NonEmptyString",
    #             category: "BACKDOOR", # accepts BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER
    #             last_observed_at: "NonEmptyString",
    #             source: "NonEmptyString",
    #             source_url: "NonEmptyString",
    #           },
    #         ],
    #         resources: [ # required
    #           {
    #             type: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #             partition: "aws", # accepts aws, aws-cn, aws-us-gov
    #             region: "NonEmptyString",
    #             tags: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             details: {
    #               aws_ec2_instance: {
    #                 type: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 ip_v4_addresses: ["NonEmptyString"],
    #                 ip_v6_addresses: ["NonEmptyString"],
    #                 key_name: "NonEmptyString",
    #                 iam_instance_profile_arn: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 subnet_id: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #               },
    #               aws_s3_bucket: {
    #                 owner_id: "NonEmptyString",
    #                 owner_name: "NonEmptyString",
    #               },
    #               aws_iam_access_key: {
    #                 user_name: "NonEmptyString",
    #                 status: "Active", # accepts Active, Inactive
    #                 created_at: "NonEmptyString",
    #               },
    #               container: {
    #                 name: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 image_name: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #               },
    #               other: {
    #                 "NonEmptyString" => "NonEmptyString",
    #               },
    #             },
    #           },
    #         ],
    #         compliance: {
    #           status: "PASSED", # accepts PASSED, WARNING, FAILED, NOT_AVAILABLE
    #         },
    #         verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #         workflow_state: "NEW", # accepts NEW, ASSIGNED, IN_PROGRESS, DEFERRED, RESOLVED
    #         record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #         related_findings: [
    #           {
    #             product_arn: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #           },
    #         ],
    #         note: {
    #           text: "NonEmptyString", # required
    #           updated_by: "NonEmptyString", # required
    #           updated_at: "NonEmptyString", # required
    #         },
    #       }
    #
    # @!attribute [rw] schema_version
    #   The schema version that a finding is formatted for.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The security findings provider-specific identifier for a finding.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN generated by Security Hub that uniquely identifies a
    #   third-party company (security-findings provider) after this
    #   provider's product (solution that generates findings) is registered
    #   with Security Hub.
    #   @return [String]
    #
    # @!attribute [rw] generator_id
    #   The identifier for the solution-specific component (a discrete unit
    #   of logic) that generated a finding. In various security-findings
    #   providers' solutions, this generator can be called a rule, a check,
    #   a detector, a plug-in, etc.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID that a finding is generated in.
    #   @return [String]
    #
    # @!attribute [rw] types
    #   One or more finding types in the format of
    #   `namespace/category/classifier` that classify a finding.
    #
    #   Valid namespace values are: Software and Configuration Checks \|
    #   TTPs \| Effects \| Unusual Behaviors \| Sensitive Data
    #   Identifications
    #   @return [Array<String>]
    #
    # @!attribute [rw] first_observed_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider first observed the potential security
    #   issue that a finding captured.
    #   @return [String]
    #
    # @!attribute [rw] last_observed_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider most recently observed the potential
    #   security issue that a finding captured.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider created the potential security issue that
    #   a finding captured.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider last updated the finding record.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   A finding's severity.
    #   @return [Types::Severity]
    #
    # @!attribute [rw] confidence
    #   A finding's confidence. Confidence is defined as the likelihood
    #   that a finding accurately identifies the behavior or issue that it
    #   was intended to identify. Confidence is scored on a 0-100 basis
    #   using a ratio scale, where 0 means zero percent confidence and 100
    #   means 100 percent confidence.
    #   @return [Integer]
    #
    # @!attribute [rw] criticality
    #   The level of importance assigned to the resources associated with
    #   the finding. A score of 0 means that the underlying resources have
    #   no criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   A finding's title.
    #
    #   <note markdown="1"> In this release, `Title` is a required property.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A finding's description.
    #
    #   <note markdown="1"> In this release, `Description` is a required property.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   A data type that describes the remediation options for a finding.
    #   @return [Types::Remediation]
    #
    # @!attribute [rw] source_url
    #   A URL that links to a page about the current finding in the
    #   security-findings provider's solution.
    #   @return [String]
    #
    # @!attribute [rw] product_fields
    #   A data type where security-findings providers can include additional
    #   solution-specific details that aren't part of the defined
    #   `AwsSecurityFinding` format.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] malware
    #   A list of malware related to a finding.
    #   @return [Array<Types::Malware>]
    #
    # @!attribute [rw] network
    #   The details of network-related information about a finding.
    #   @return [Types::Network]
    #
    # @!attribute [rw] process
    #   The details of process-related information about a finding.
    #   @return [Types::ProcessDetails]
    #
    # @!attribute [rw] threat_intel_indicators
    #   Threat intel details related to a finding.
    #   @return [Array<Types::ThreatIntelIndicator>]
    #
    # @!attribute [rw] resources
    #   A set of resource data types that describe the resources that the
    #   finding refers to.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] compliance
    #   This data type is exclusive to findings that are generated as the
    #   result of a check run against a specific rule in a supported
    #   standard (for example, CIS AWS Foundations). Contains
    #   compliance-related finding details.
    #   @return [Types::Compliance]
    #
    # @!attribute [rw] verification_state
    #   Indicates the veracity of a finding.
    #   @return [String]
    #
    # @!attribute [rw] workflow_state
    #   The workflow state of a finding.
    #   @return [String]
    #
    # @!attribute [rw] record_state
    #   The record state of a finding.
    #   @return [String]
    #
    # @!attribute [rw] related_findings
    #   A list of related findings.
    #   @return [Array<Types::RelatedFinding>]
    #
    # @!attribute [rw] note
    #   A user-defined note added to a finding.
    #   @return [Types::Note]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecurityFinding AWS API Documentation
    #
    class AwsSecurityFinding < Struct.new(
      :schema_version,
      :id,
      :product_arn,
      :generator_id,
      :aws_account_id,
      :types,
      :first_observed_at,
      :last_observed_at,
      :created_at,
      :updated_at,
      :severity,
      :confidence,
      :criticality,
      :title,
      :description,
      :remediation,
      :source_url,
      :product_fields,
      :user_defined_fields,
      :malware,
      :network,
      :process,
      :threat_intel_indicators,
      :resources,
      :compliance,
      :verification_state,
      :workflow_state,
      :record_state,
      :related_findings,
      :note)
      include Aws::Structure
    end

    # A collection of attributes that are applied to all active Security
    # Hub-aggregated findings and that result in a subset of findings that
    # are included in this insight.
    #
    # @note When making an API call, you may pass AwsSecurityFindingFilters
    #   data as a hash:
    #
    #       {
    #         product_arn: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         aws_account_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         generator_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         first_observed_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         last_observed_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         created_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         updated_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         severity_product: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         severity_normalized: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         severity_label: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         confidence: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         criticality: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         title: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         description: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         recommendation_text: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         source_url: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         product_fields: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS
    #           },
    #         ],
    #         product_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         company_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         user_defined_fields: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS
    #           },
    #         ],
    #         malware_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         malware_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         malware_path: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         malware_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         network_direction: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         network_protocol: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         network_source_ip_v4: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_source_ip_v6: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_source_port: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         network_source_domain: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         network_source_mac: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         network_destination_ip_v4: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_destination_ip_v6: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_destination_port: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         network_destination_domain: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         process_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         process_path: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         process_pid: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         process_parent_pid: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         process_launched_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         process_terminated_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         threat_intel_indicator_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         threat_intel_indicator_value: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         threat_intel_indicator_category: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         threat_intel_indicator_last_observed_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         threat_intel_indicator_source: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         threat_intel_indicator_source_url: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_partition: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_region: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_tags: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS
    #           },
    #         ],
    #         resource_aws_ec2_instance_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_image_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_ip_v4_addresses: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         resource_aws_ec2_instance_ip_v6_addresses: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         resource_aws_ec2_instance_key_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_iam_instance_profile_arn: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_vpc_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_subnet_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_launched_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         resource_aws_s3_bucket_owner_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_s3_bucket_owner_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_iam_access_key_user_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_iam_access_key_status: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_iam_access_key_created_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         resource_container_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_container_image_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_container_image_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_container_launched_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         resource_details_other: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS
    #           },
    #         ],
    #         compliance_status: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         verification_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         workflow_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         record_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         related_findings_product_arn: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         related_findings_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         note_text: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         note_updated_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         note_updated_by: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         keyword: [
    #           {
    #             value: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] product_arn
    #   The ARN generated by Security Hub that uniquely identifies a
    #   third-party company (security findings provider) after this
    #   provider's product (solution that generates findings) is registered
    #   with Security Hub.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID that a finding is generated in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] id
    #   The security findings provider-specific identifier for a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] generator_id
    #   The identifier for the solution-specific component (a discrete unit
    #   of logic) that generated a finding. In various security-findings
    #   providers' solutions, this generator can be called a rule, a check,
    #   a detector, a plug-in, etc.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] type
    #   A finding type in the format of `namespace/category/classifier` that
    #   classifies a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] first_observed_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider first observed the potential security
    #   issue that a finding captured.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] last_observed_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider most recently observed the potential
    #   security issue that a finding captured.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] created_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider captured the potential security issue
    #   that a finding captured.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] updated_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider last updated the finding record.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] severity_product
    #   The native severity as defined by the security-findings provider's
    #   solution that generated the finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] severity_normalized
    #   The normalized severity of a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] severity_label
    #   The label of a finding's severity.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] confidence
    #   A finding's confidence. Confidence is defined as the likelihood
    #   that a finding accurately identifies the behavior or issue that it
    #   was intended to identify. Confidence is scored on a 0-100 basis
    #   using a ratio scale, where 0 means zero percent confidence and 100
    #   means 100 percent confidence.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] criticality
    #   The level of importance assigned to the resources associated with
    #   the finding. A score of 0 means that the underlying resources have
    #   no criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] title
    #   A finding's title.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] description
    #   A finding's description.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] recommendation_text
    #   The recommendation of what to do about the issue described in a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] source_url
    #   A URL that links to a page about the current finding in the
    #   security-findings provider's solution.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] product_fields
    #   A data type where security-findings providers can include additional
    #   solution-specific details that aren't part of the defined
    #   `AwsSecurityFinding` format.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] product_name
    #   The name of the solution (product) that generates findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] company_name
    #   The name of the findings provider (company) that owns the solution
    #   (product) that generates findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] malware_name
    #   The name of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_type
    #   The type of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_path
    #   The filesystem path of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_state
    #   The state of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_direction
    #   Indicates the direction of network traffic associated with a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_protocol
    #   The protocol of network-related information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_source_ip_v4
    #   The source IPv4 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_source_ip_v6
    #   The source IPv6 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_source_port
    #   The source port of network-related information about a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] network_source_domain
    #   The source domain of network-related information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_source_mac
    #   The source media access control (MAC) address of network-related
    #   information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_destination_ip_v4
    #   The destination IPv4 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_destination_ip_v6
    #   The destination IPv6 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_destination_port
    #   The destination port of network-related information about a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] network_destination_domain
    #   The destination domain of network-related information about a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_name
    #   The name of the process.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_path
    #   The path to the process executable.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_pid
    #   The process ID.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] process_parent_pid
    #   The parent process ID.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] process_launched_at
    #   The date/time that the process was launched.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] process_terminated_at
    #   The date/time that the process was terminated.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_type
    #   The type of a threat intel indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_value
    #   The value of a threat intel indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_category
    #   The category of a threat intel indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_last_observed_at
    #   The date/time of the last observation of a threat intel indicator.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_source
    #   The source of the threat intel.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_source_url
    #   The URL for more details from the source of the threat intel.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_type
    #   Specifies the type of the resource that details are provided for.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_id
    #   The canonical identifier for the given resource type.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_partition
    #   The canonical AWS partition name that the Region is assigned to.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_region
    #   The canonical AWS external Region name where this resource is
    #   located.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_tags
    #   A list of AWS tags associated with a resource at the time the
    #   finding was processed.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_type
    #   The instance type of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_image_id
    #   The Amazon Machine Image (AMI) ID of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_ip_v4_addresses
    #   The IPv4 addresses associated with the instance.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_ip_v6_addresses
    #   The IPv6 addresses associated with the instance.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_key_name
    #   The key name associated with the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_iam_instance_profile_arn
    #   The IAM profile ARN of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_vpc_id
    #   The identifier of the VPC that the instance was launched in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_subnet_id
    #   The identifier of the subnet that the instance was launched in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_launched_at
    #   The date/time the instance was launched.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_aws_s3_bucket_owner_id
    #   The canonical user ID of the owner of the S3 bucket.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_s3_bucket_owner_name
    #   The display name of the owner of the S3 bucket.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_user_name
    #   The user associated with the IAM access key related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_status
    #   The status of the IAM access key related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_created_at
    #   The creation date/time of the IAM access key related to a finding.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_container_name
    #   The name of the container related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_image_id
    #   The identifier of the image related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_image_name
    #   The name of the image related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_launched_at
    #   The date/time that the container was started.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_details_other
    #   The details of a resource that doesn't have a specific subfield for
    #   the resource type defined.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] compliance_status
    #   Exclusive to findings that are generated as the result of a check
    #   run against a specific rule in a supported standard (for example,
    #   CIS AWS Foundations). Contains compliance-related finding details.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] verification_state
    #   The veracity of a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] workflow_state
    #   The workflow state of a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] record_state
    #   The updated record state for the finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] related_findings_product_arn
    #   The ARN of the solution that generated a related finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] related_findings_id
    #   The solution-generated identifier for a related finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] note_text
    #   The text of a note.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] note_updated_at
    #   The timestamp of when the note was updated.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] note_updated_by
    #   The principal that created a note.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] keyword
    #   A keyword for a finding.
    #   @return [Array<Types::KeywordFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecurityFindingFilters AWS API Documentation
    #
    class AwsSecurityFindingFilters < Struct.new(
      :product_arn,
      :aws_account_id,
      :id,
      :generator_id,
      :type,
      :first_observed_at,
      :last_observed_at,
      :created_at,
      :updated_at,
      :severity_product,
      :severity_normalized,
      :severity_label,
      :confidence,
      :criticality,
      :title,
      :description,
      :recommendation_text,
      :source_url,
      :product_fields,
      :product_name,
      :company_name,
      :user_defined_fields,
      :malware_name,
      :malware_type,
      :malware_path,
      :malware_state,
      :network_direction,
      :network_protocol,
      :network_source_ip_v4,
      :network_source_ip_v6,
      :network_source_port,
      :network_source_domain,
      :network_source_mac,
      :network_destination_ip_v4,
      :network_destination_ip_v6,
      :network_destination_port,
      :network_destination_domain,
      :process_name,
      :process_path,
      :process_pid,
      :process_parent_pid,
      :process_launched_at,
      :process_terminated_at,
      :threat_intel_indicator_type,
      :threat_intel_indicator_value,
      :threat_intel_indicator_category,
      :threat_intel_indicator_last_observed_at,
      :threat_intel_indicator_source,
      :threat_intel_indicator_source_url,
      :resource_type,
      :resource_id,
      :resource_partition,
      :resource_region,
      :resource_tags,
      :resource_aws_ec2_instance_type,
      :resource_aws_ec2_instance_image_id,
      :resource_aws_ec2_instance_ip_v4_addresses,
      :resource_aws_ec2_instance_ip_v6_addresses,
      :resource_aws_ec2_instance_key_name,
      :resource_aws_ec2_instance_iam_instance_profile_arn,
      :resource_aws_ec2_instance_vpc_id,
      :resource_aws_ec2_instance_subnet_id,
      :resource_aws_ec2_instance_launched_at,
      :resource_aws_s3_bucket_owner_id,
      :resource_aws_s3_bucket_owner_name,
      :resource_aws_iam_access_key_user_name,
      :resource_aws_iam_access_key_status,
      :resource_aws_iam_access_key_created_at,
      :resource_container_name,
      :resource_container_image_id,
      :resource_container_image_name,
      :resource_container_launched_at,
      :resource_details_other,
      :compliance_status,
      :verification_state,
      :workflow_state,
      :record_state,
      :related_findings_product_arn,
      :related_findings_id,
      :note_text,
      :note_updated_at,
      :note_updated_by,
      :keyword)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDisableStandardsRequest
    #   data as a hash:
    #
    #       {
    #         standards_subscription_arns: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] standards_subscription_arns
    #   The ARNs of the standards subscriptions to disable.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDisableStandardsRequest AWS API Documentation
    #
    class BatchDisableStandardsRequest < Struct.new(
      :standards_subscription_arns)
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   The details of the standards subscriptions that were disabled.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDisableStandardsResponse AWS API Documentation
    #
    class BatchDisableStandardsResponse < Struct.new(
      :standards_subscriptions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchEnableStandardsRequest
    #   data as a hash:
    #
    #       {
    #         standards_subscription_requests: [ # required
    #           {
    #             standards_arn: "NonEmptyString", # required
    #             standards_input: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] standards_subscription_requests
    #   The list of standards compliance checks to enable.
    #
    #   In this release, Security Hub supports only the CIS AWS Foundations
    #   standard.
    #
    #    The ARN for the standard is
    #   `arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0`.
    #   @return [Array<Types::StandardsSubscriptionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchEnableStandardsRequest AWS API Documentation
    #
    class BatchEnableStandardsRequest < Struct.new(
      :standards_subscription_requests)
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   The details of the standards subscriptions that were enabled.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchEnableStandardsResponse AWS API Documentation
    #
    class BatchEnableStandardsResponse < Struct.new(
      :standards_subscriptions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchImportFindingsRequest
    #   data as a hash:
    #
    #       {
    #         findings: [ # required
    #           {
    #             schema_version: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #             product_arn: "NonEmptyString", # required
    #             generator_id: "NonEmptyString", # required
    #             aws_account_id: "NonEmptyString", # required
    #             types: ["NonEmptyString"], # required
    #             first_observed_at: "NonEmptyString",
    #             last_observed_at: "NonEmptyString",
    #             created_at: "NonEmptyString", # required
    #             updated_at: "NonEmptyString", # required
    #             severity: { # required
    #               product: 1.0,
    #               normalized: 1, # required
    #             },
    #             confidence: 1,
    #             criticality: 1,
    #             title: "NonEmptyString", # required
    #             description: "NonEmptyString", # required
    #             remediation: {
    #               recommendation: {
    #                 text: "NonEmptyString",
    #                 url: "NonEmptyString",
    #               },
    #             },
    #             source_url: "NonEmptyString",
    #             product_fields: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             user_defined_fields: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             malware: [
    #               {
    #                 name: "NonEmptyString", # required
    #                 type: "ADWARE", # accepts ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM
    #                 path: "NonEmptyString",
    #                 state: "OBSERVED", # accepts OBSERVED, REMOVAL_FAILED, REMOVED
    #               },
    #             ],
    #             network: {
    #               direction: "IN", # accepts IN, OUT
    #               protocol: "NonEmptyString",
    #               source_ip_v4: "NonEmptyString",
    #               source_ip_v6: "NonEmptyString",
    #               source_port: 1,
    #               source_domain: "NonEmptyString",
    #               source_mac: "NonEmptyString",
    #               destination_ip_v4: "NonEmptyString",
    #               destination_ip_v6: "NonEmptyString",
    #               destination_port: 1,
    #               destination_domain: "NonEmptyString",
    #             },
    #             process: {
    #               name: "NonEmptyString",
    #               path: "NonEmptyString",
    #               pid: 1,
    #               parent_pid: 1,
    #               launched_at: "NonEmptyString",
    #               terminated_at: "NonEmptyString",
    #             },
    #             threat_intel_indicators: [
    #               {
    #                 type: "DOMAIN", # accepts DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL
    #                 value: "NonEmptyString",
    #                 category: "BACKDOOR", # accepts BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER
    #                 last_observed_at: "NonEmptyString",
    #                 source: "NonEmptyString",
    #                 source_url: "NonEmptyString",
    #               },
    #             ],
    #             resources: [ # required
    #               {
    #                 type: "NonEmptyString", # required
    #                 id: "NonEmptyString", # required
    #                 partition: "aws", # accepts aws, aws-cn, aws-us-gov
    #                 region: "NonEmptyString",
    #                 tags: {
    #                   "NonEmptyString" => "NonEmptyString",
    #                 },
    #                 details: {
    #                   aws_ec2_instance: {
    #                     type: "NonEmptyString",
    #                     image_id: "NonEmptyString",
    #                     ip_v4_addresses: ["NonEmptyString"],
    #                     ip_v6_addresses: ["NonEmptyString"],
    #                     key_name: "NonEmptyString",
    #                     iam_instance_profile_arn: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                     subnet_id: "NonEmptyString",
    #                     launched_at: "NonEmptyString",
    #                   },
    #                   aws_s3_bucket: {
    #                     owner_id: "NonEmptyString",
    #                     owner_name: "NonEmptyString",
    #                   },
    #                   aws_iam_access_key: {
    #                     user_name: "NonEmptyString",
    #                     status: "Active", # accepts Active, Inactive
    #                     created_at: "NonEmptyString",
    #                   },
    #                   container: {
    #                     name: "NonEmptyString",
    #                     image_id: "NonEmptyString",
    #                     image_name: "NonEmptyString",
    #                     launched_at: "NonEmptyString",
    #                   },
    #                   other: {
    #                     "NonEmptyString" => "NonEmptyString",
    #                   },
    #                 },
    #               },
    #             ],
    #             compliance: {
    #               status: "PASSED", # accepts PASSED, WARNING, FAILED, NOT_AVAILABLE
    #             },
    #             verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #             workflow_state: "NEW", # accepts NEW, ASSIGNED, IN_PROGRESS, DEFERRED, RESOLVED
    #             record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #             related_findings: [
    #               {
    #                 product_arn: "NonEmptyString", # required
    #                 id: "NonEmptyString", # required
    #               },
    #             ],
    #             note: {
    #               text: "NonEmptyString", # required
    #               updated_by: "NonEmptyString", # required
    #               updated_at: "NonEmptyString", # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] findings
    #   A list of findings to import. To successfully import a finding, it
    #   must follow the [AWS Security Finding Format][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html
    #   @return [Array<Types::AwsSecurityFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchImportFindingsRequest AWS API Documentation
    #
    class BatchImportFindingsRequest < Struct.new(
      :findings)
      include Aws::Structure
    end

    # @!attribute [rw] failed_count
    #   The number of findings that failed to import.
    #   @return [Integer]
    #
    # @!attribute [rw] success_count
    #   The number of findings that were successfully imported.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_findings
    #   The list of the findings that failed to import.
    #   @return [Array<Types::ImportFindingsError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchImportFindingsResponse AWS API Documentation
    #
    class BatchImportFindingsResponse < Struct.new(
      :failed_count,
      :success_count,
      :failed_findings)
      include Aws::Structure
    end

    # Exclusive to findings that are generated as the result of a check run
    # against a specific rule in a supported standard (for example, CIS AWS
    # Foundations). Contains compliance-related finding details.
    #
    # @note When making an API call, you may pass Compliance
    #   data as a hash:
    #
    #       {
    #         status: "PASSED", # accepts PASSED, WARNING, FAILED, NOT_AVAILABLE
    #       }
    #
    # @!attribute [rw] status
    #   The result of a compliance check.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Compliance AWS API Documentation
    #
    class Compliance < Struct.new(
      :status)
      include Aws::Structure
    end

    # Container details related to a finding.
    #
    # @note When making an API call, you may pass ContainerDetails
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         image_id: "NonEmptyString",
    #         image_name: "NonEmptyString",
    #         launched_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the container related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The identifier of the image related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] image_name
    #   The name of the image related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] launched_at
    #   The date and time when the container started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ContainerDetails AWS API Documentation
    #
    class ContainerDetails < Struct.new(
      :name,
      :image_id,
      :image_name,
      :launched_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateActionTargetRequest
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom action target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the custom action target.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID for the custom action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateActionTargetRequest AWS API Documentation
    #
    class CreateActionTargetRequest < Struct.new(
      :name,
      :description,
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] action_target_arn
    #   The ARN for the custom action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateActionTargetResponse AWS API Documentation
    #
    class CreateActionTargetResponse < Struct.new(
      :action_target_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInsightRequest
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         filters: { # required
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         group_by_attribute: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom insight to create.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more attributes used to filter the findings included in the
    #   insight. Only findings that match the criteria defined in the
    #   filters are included in the insight.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The attribute used as the aggregator to group related findings for
    #   the insight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateInsightRequest AWS API Documentation
    #
    class CreateInsightRequest < Struct.new(
      :name,
      :filters,
      :group_by_attribute)
      include Aws::Structure
    end

    # @!attribute [rw] insight_arn
    #   The ARN of the insight created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateInsightResponse AWS API Documentation
    #
    class CreateInsightResponse < Struct.new(
      :insight_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_details: [
    #           {
    #             account_id: "AccountId",
    #             email: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_details
    #   A list of account ID and email address pairs of the accounts to
    #   associate with the Security Hub master account.
    #   @return [Array<Types::AccountDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateMembersRequest AWS API Documentation
    #
    class CreateMembersRequest < Struct.new(
      :account_details)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of account ID and email address pairs of the AWS accounts
    #   that weren't processed.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateMembersResponse AWS API Documentation
    #
    class CreateMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # A date filter for querying findings.
    #
    # @note When making an API call, you may pass DateFilter
    #   data as a hash:
    #
    #       {
    #         start: "NonEmptyString",
    #         end: "NonEmptyString",
    #         date_range: {
    #           value: 1,
    #           unit: "DAYS", # accepts DAYS
    #         },
    #       }
    #
    # @!attribute [rw] start
    #   A start date for the date filter.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   An end date for the date filter.
    #   @return [String]
    #
    # @!attribute [rw] date_range
    #   A date range for the date filter.
    #   @return [Types::DateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DateFilter AWS API Documentation
    #
    class DateFilter < Struct.new(
      :start,
      :end,
      :date_range)
      include Aws::Structure
    end

    # A date range for the date filter.
    #
    # @note When making an API call, you may pass DateRange
    #   data as a hash:
    #
    #       {
    #         value: 1,
    #         unit: "DAYS", # accepts DAYS
    #       }
    #
    # @!attribute [rw] value
    #   A date range value for the date filter.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   A date range unit for the date filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DateRange AWS API Documentation
    #
    class DateRange < Struct.new(
      :value,
      :unit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeclineInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs that specify the accounts that invitations to
    #   Security Hub are declined from.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeclineInvitationsRequest AWS API Documentation
    #
    class DeclineInvitationsRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of account ID and email address pairs of the AWS accounts
    #   that weren't processed.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeclineInvitationsResponse AWS API Documentation
    #
    class DeclineInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteActionTargetRequest
    #   data as a hash:
    #
    #       {
    #         action_target_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] action_target_arn
    #   The ARN of the custom action target to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteActionTargetRequest AWS API Documentation
    #
    class DeleteActionTargetRequest < Struct.new(
      :action_target_arn)
      include Aws::Structure
    end

    # @!attribute [rw] action_target_arn
    #   The ARN of the custom action target that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteActionTargetResponse AWS API Documentation
    #
    class DeleteActionTargetResponse < Struct.new(
      :action_target_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInsightRequest
    #   data as a hash:
    #
    #       {
    #         insight_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInsightRequest AWS API Documentation
    #
    class DeleteInsightRequest < Struct.new(
      :insight_arn)
      include Aws::Structure
    end

    # @!attribute [rw] insight_arn
    #   The ARN of the insight that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInsightResponse AWS API Documentation
    #
    class DeleteInsightResponse < Struct.new(
      :insight_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of the account IDs that sent the invitations to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInvitationsRequest AWS API Documentation
    #
    class DeleteInvitationsRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of account ID and email address pairs of the AWS accounts
    #   that invitations weren't deleted for.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInvitationsResponse AWS API Documentation
    #
    class DeleteInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs of the member accounts to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteMembersRequest AWS API Documentation
    #
    class DeleteMembersRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of account ID and email address pairs of the AWS accounts
    #   that weren't deleted.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteMembersResponse AWS API Documentation
    #
    class DeleteMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeActionTargetsRequest
    #   data as a hash:
    #
    #       {
    #         action_target_arns: ["NonEmptyString"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] action_target_arns
    #   A list of custom action target ARNs for the custom action targets to
    #   retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeActionTargetsRequest AWS API Documentation
    #
    class DescribeActionTargetsRequest < Struct.new(
      :action_target_arns,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] action_targets
    #   A list of `ActionTarget` objects. Each object includes the
    #   `ActionTargetArn`, `Description`, and `Name` of a custom action
    #   target available in Security Hub.
    #   @return [Array<Types::ActionTarget>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeActionTargetsResponse AWS API Documentation
    #
    class DescribeActionTargetsResponse < Struct.new(
      :action_targets,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHubRequest
    #   data as a hash:
    #
    #       {
    #         hub_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] hub_arn
    #   The ARN of the Hub resource to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeHubRequest AWS API Documentation
    #
    class DescribeHubRequest < Struct.new(
      :hub_arn)
      include Aws::Structure
    end

    # @!attribute [rw] hub_arn
    #   The ARN of the Hub resource retrieved.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_at
    #   The date and time when Security Hub was enabled in the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeHubResponse AWS API Documentation
    #
    class DescribeHubResponse < Struct.new(
      :hub_arn,
      :subscribed_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProductsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeProductsRequest AWS API Documentation
    #
    class DescribeProductsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] products
    #   A list of products, including details for each product.
    #   @return [Array<Types::Product>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeProductsResponse AWS API Documentation
    #
    class DescribeProductsResponse < Struct.new(
      :products,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableImportFindingsForProductRequest
    #   data as a hash:
    #
    #       {
    #         product_subscription_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] product_subscription_arn
    #   The ARN of the integrated product to disable the integration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableImportFindingsForProductRequest AWS API Documentation
    #
    class DisableImportFindingsForProductRequest < Struct.new(
      :product_subscription_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableImportFindingsForProductResponse AWS API Documentation
    #
    class DisableImportFindingsForProductResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableSecurityHubRequest AWS API Documentation
    #
    class DisableSecurityHubRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableSecurityHubResponse AWS API Documentation
    #
    class DisableSecurityHubResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromMasterAccountRequest AWS API Documentation
    #
    class DisassociateFromMasterAccountRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromMasterAccountResponse AWS API Documentation
    #
    class DisassociateFromMasterAccountResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] account_ids
    #   The account IDs of the member accounts to disassociate from the
    #   master account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateMembersRequest AWS API Documentation
    #
    class DisassociateMembersRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateMembersResponse AWS API Documentation
    #
    class DisassociateMembersResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass EnableImportFindingsForProductRequest
    #   data as a hash:
    #
    #       {
    #         product_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product to enable the integration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableImportFindingsForProductRequest AWS API Documentation
    #
    class EnableImportFindingsForProductRequest < Struct.new(
      :product_arn)
      include Aws::Structure
    end

    # @!attribute [rw] product_subscription_arn
    #   The ARN of your subscription to the product to enable integrations
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableImportFindingsForProductResponse AWS API Documentation
    #
    class EnableImportFindingsForProductResponse < Struct.new(
      :product_subscription_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableSecurityHubRequest
    #   data as a hash:
    #
    #       {
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] tags
    #   The tags to add to the Hub resource when you enable Security Hub.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableSecurityHubRequest AWS API Documentation
    #
    class EnableSecurityHubRequest < Struct.new(
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableSecurityHubResponse AWS API Documentation
    #
    class EnableSecurityHubResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetEnabledStandardsRequest
    #   data as a hash:
    #
    #       {
    #         standards_subscription_arns: ["NonEmptyString"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] standards_subscription_arns
    #   A list of the standards subscription ARNs for the standards to
    #   retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Paginates results. On your first call to the `GetEnabledStandards`
    #   operation, set the value of this parameter to `NULL`. For subsequent
    #   calls to the operation, fill `nextToken` in the request with the
    #   value of `nextToken` from the previous response to continue listing
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetEnabledStandardsRequest AWS API Documentation
    #
    class GetEnabledStandardsRequest < Struct.new(
      :standards_subscription_arns,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   A list of `StandardsSubscriptions` objects that include information
    #   about the enabled standards.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetEnabledStandardsResponse AWS API Documentation
    #
    class GetEnabledStandardsResponse < Struct.new(
      :standards_subscriptions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFindingsRequest
    #   data as a hash:
    #
    #       {
    #         filters: {
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         sort_criteria: [
    #           {
    #             field: "NonEmptyString",
    #             sort_order: "asc", # accepts asc, desc
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   The findings attributes used to define a condition to filter the
    #   findings returned.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] sort_criteria
    #   Findings attributes used to sort the list of findings returned.
    #   @return [Array<Types::SortCriterion>]
    #
    # @!attribute [rw] next_token
    #   Paginates results. On your first call to the `GetFindings`
    #   operation, set the value of this parameter to `NULL`. For subsequent
    #   calls to the operation, fill `nextToken` in the request with the
    #   value of `nextToken` from the previous response to continue listing
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of findings to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingsRequest AWS API Documentation
    #
    class GetFindingsRequest < Struct.new(
      :filters,
      :sort_criteria,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] findings
    #   The findings that matched the filters specified in the request.
    #   @return [Array<Types::AwsSecurityFinding>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingsResponse AWS API Documentation
    #
    class GetFindingsResponse < Struct.new(
      :findings,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInsightResultsRequest
    #   data as a hash:
    #
    #       {
    #         insight_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight whose results you want to see.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightResultsRequest AWS API Documentation
    #
    class GetInsightResultsRequest < Struct.new(
      :insight_arn)
      include Aws::Structure
    end

    # @!attribute [rw] insight_results
    #   The insight results returned by the operation.
    #   @return [Types::InsightResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightResultsResponse AWS API Documentation
    #
    class GetInsightResultsResponse < Struct.new(
      :insight_results)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInsightsRequest
    #   data as a hash:
    #
    #       {
    #         insight_arns: ["NonEmptyString"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] insight_arns
    #   The ARNs of the insights that you want to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Paginates results. On your first call to the `GetInsights`
    #   operation, set the value of this parameter to `NULL`. For subsequent
    #   calls to the operation, fill `nextToken` in the request with the
    #   value of `nextToken` from the previous response to continue listing
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items that you want in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightsRequest AWS API Documentation
    #
    class GetInsightsRequest < Struct.new(
      :insight_arns,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] insights
    #   The insights returned by the operation.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightsResponse AWS API Documentation
    #
    class GetInsightsResponse < Struct.new(
      :insights,
      :next_token)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInvitationsCountRequest AWS API Documentation
    #
    class GetInvitationsCountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] invitations_count
    #   The number of all membership invitations sent to this Security Hub
    #   member account, not including the currently accepted invitation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInvitationsCountResponse AWS API Documentation
    #
    class GetInvitationsCountResponse < Struct.new(
      :invitations_count)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMasterAccountRequest AWS API Documentation
    #
    class GetMasterAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] master
    #   A list of details about the Security Hub master account for the
    #   current member account.
    #   @return [Types::Invitation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMasterAccountResponse AWS API Documentation
    #
    class GetMasterAccountResponse < Struct.new(
      :master)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of account IDs for the Security Hub member accounts that you
    #   want to return the details for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMembersRequest AWS API Documentation
    #
    class GetMembersRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   A list of details about the Security Hub member accounts.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   A list of account ID and email address pairs of the AWS accounts
    #   that couldn't be processed.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMembersResponse AWS API Documentation
    #
    class GetMembersResponse < Struct.new(
      :members,
      :unprocessed_accounts)
      include Aws::Structure
    end

    # Includes details of the list of the findings that can't be imported.
    #
    # @!attribute [rw] id
    #   The ID of the error made during the `BatchImportFindings` operation.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code of the error made during the `BatchImportFindings`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message of the error made during the `BatchImportFindings`
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ImportFindingsError AWS API Documentation
    #
    class ImportFindingsError < Struct.new(
      :id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # Contains information about a Security Hub insight.
    #
    # @!attribute [rw] insight_arn
    #   The ARN of a Security Hub insight.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a Security Hub insight.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more attributes used to filter the findings included in the
    #   insight. Only findings that match the criteria defined in the
    #   filters are included in the insight.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The attribute that the insight's findings are grouped by. This
    #   attribute is used as a findings aggregator for the purposes of
    #   viewing and managing multiple related findings under a single
    #   operand.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Insight AWS API Documentation
    #
    class Insight < Struct.new(
      :insight_arn,
      :name,
      :filters,
      :group_by_attribute)
      include Aws::Structure
    end

    # The insight result values returned by the `GetInsightResults`
    # operation.
    #
    # @!attribute [rw] group_by_attribute_value
    #   The value of the attribute that the findings are grouped by for the
    #   insight whose results are returned by the `GetInsightResults`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of findings returned for each `GroupByAttributeValue`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InsightResultValue AWS API Documentation
    #
    class InsightResultValue < Struct.new(
      :group_by_attribute_value,
      :count)
      include Aws::Structure
    end

    # The insight results returned by the `GetInsightResults` operation.
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight whose results are returned by the
    #   `GetInsightResults` operation.
    #   @return [String]
    #
    # @!attribute [rw] group_by_attribute
    #   The attribute that the findings are grouped by for the insight whose
    #   results are returned by the `GetInsightResults` operation.
    #   @return [String]
    #
    # @!attribute [rw] result_values
    #   The list of insight result values returned by the
    #   `GetInsightResults` operation.
    #   @return [Array<Types::InsightResultValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InsightResults AWS API Documentation
    #
    class InsightResults < Struct.new(
      :insight_arn,
      :group_by_attribute,
      :result_values)
      include Aws::Structure
    end

    # Internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InternalException AWS API Documentation
    #
    class InternalException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # AWS Security Hub isn't enabled for the account used to make this
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InvalidAccessException AWS API Documentation
    #
    class InvalidAccessException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # The request was rejected because you supplied an invalid or
    # out-of-range value for an input parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # Details about an invitation.
    #
    # @!attribute [rw] account_id
    #   The account ID of the Security Hub master account that the
    #   invitation was sent from.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The ID of the invitation sent to the member account.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   The timestamp of when the invitation was sent.
    #   @return [Time]
    #
    # @!attribute [rw] member_status
    #   The current status of the association between member and master
    #   accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Invitation AWS API Documentation
    #
    class Invitation < Struct.new(
      :account_id,
      :invitation_id,
      :invited_at,
      :member_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass InviteMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] account_ids
    #   A list of IDs of the AWS accounts that you want to invite to
    #   Security Hub as members.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InviteMembersRequest AWS API Documentation
    #
    class InviteMembersRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   A list of account ID and email address pairs of the AWS accounts
    #   that couldn't be processed.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InviteMembersResponse AWS API Documentation
    #
    class InviteMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # The IP filter for querying findings.
    #
    # @note When making an API call, you may pass IpFilter
    #   data as a hash:
    #
    #       {
    #         cidr: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cidr
    #   A finding's CIDR value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/IpFilter AWS API Documentation
    #
    class IpFilter < Struct.new(
      :cidr)
      include Aws::Structure
    end

    # A keyword filter for querying findings.
    #
    # @note When making an API call, you may pass KeywordFilter
    #   data as a hash:
    #
    #       {
    #         value: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] value
    #   A value for the keyword.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/KeywordFilter AWS API Documentation
    #
    class KeywordFilter < Struct.new(
      :value)
      include Aws::Structure
    end

    # The request was rejected because it attempted to create resources
    # beyond the current AWS account limits. The error code describes the
    # limit exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnabledProductsForImportRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Paginates results. On your first call to the
    #   `ListEnabledProductsForImport` operation, set the value of this
    #   parameter to `NULL`. For subsequent calls to the operation, fill
    #   `nextToken` in the request with the value of `NextToken` from the
    #   previous response to continue listing data.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items that you want in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListEnabledProductsForImportRequest AWS API Documentation
    #
    class ListEnabledProductsForImportRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] product_subscriptions
    #   A list of ARNs for the resources that represent your subscriptions
    #   to products.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListEnabledProductsForImportResponse AWS API Documentation
    #
    class ListEnabledProductsForImportResponse < Struct.new(
      :product_subscriptions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of items that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Paginates results. On your first call to the `ListInvitations`
    #   operation, set the value of this parameter to `NULL`. For subsequent
    #   calls to the operation, fill `nextToken` in the request with the
    #   value of `NextToken` from the previous response to continue listing
    #   data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListInvitationsRequest AWS API Documentation
    #
    class ListInvitationsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] invitations
    #   The details of the invitations returned by the operation.
    #   @return [Array<Types::Invitation>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListInvitationsResponse AWS API Documentation
    #
    class ListInvitationsResponse < Struct.new(
      :invitations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMembersRequest
    #   data as a hash:
    #
    #       {
    #         only_associated: false,
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] only_associated
    #   Specifies which member accounts the response includes based on their
    #   relationship status with the master account. The default value is
    #   `TRUE`. If `onlyAssociated` is set to `TRUE`, the response includes
    #   member accounts whose relationship status with the master is set to
    #   `ENABLED` or `DISABLED`. If `onlyAssociated` is set to `FALSE`, the
    #   response includes all existing member accounts.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Paginates results. Set the value of this parameter to `NULL` on your
    #   first call to the `ListMembers` operation. For subsequent calls to
    #   the operation, fill `nextToken` in the request with the value of
    #   `nextToken` from the previous response to continue listing data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListMembersRequest AWS API Documentation
    #
    class ListMembersRequest < Struct.new(
      :only_associated,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   Member details returned by the operation.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListMembersResponse AWS API Documentation
    #
    class ListMembersResponse < Struct.new(
      :members,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to retrieve tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # A list of malware related to a finding.
    #
    # @note When making an API call, you may pass Malware
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         type: "ADWARE", # accepts ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM
    #         path: "NonEmptyString",
    #         state: "OBSERVED", # accepts OBSERVED, REMOVAL_FAILED, REMOVED
    #       }
    #
    # @!attribute [rw] name
    #   The name of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The file system path of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the malware that was observed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Malware AWS API Documentation
    #
    class Malware < Struct.new(
      :name,
      :type,
      :path,
      :state)
      include Aws::Structure
    end

    # The map filter for querying findings.
    #
    # @note When making an API call, you may pass MapFilter
    #   data as a hash:
    #
    #       {
    #         key: "NonEmptyString",
    #         value: "NonEmptyString",
    #         comparison: "EQUALS", # accepts EQUALS
    #       }
    #
    # @!attribute [rw] key
    #   The key of the map filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the key in the map filter.
    #   @return [String]
    #
    # @!attribute [rw] comparison
    #   The condition to apply to a key value when querying for findings
    #   with a map filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/MapFilter AWS API Documentation
    #
    class MapFilter < Struct.new(
      :key,
      :value,
      :comparison)
      include Aws::Structure
    end

    # The details about a member account.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the member account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the member account.
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   The AWS account ID of the Security Hub master account associated
    #   with this member account.
    #   @return [String]
    #
    # @!attribute [rw] member_status
    #   The status of the relationship between the member account and its
    #   master account.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   A timestamp for the date and time when the invitation was sent to
    #   the member account.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp for the date and time when the member account was
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Member AWS API Documentation
    #
    class Member < Struct.new(
      :account_id,
      :email,
      :master_id,
      :member_status,
      :invited_at,
      :updated_at)
      include Aws::Structure
    end

    # The details of network-related information about a finding.
    #
    # @note When making an API call, you may pass Network
    #   data as a hash:
    #
    #       {
    #         direction: "IN", # accepts IN, OUT
    #         protocol: "NonEmptyString",
    #         source_ip_v4: "NonEmptyString",
    #         source_ip_v6: "NonEmptyString",
    #         source_port: 1,
    #         source_domain: "NonEmptyString",
    #         source_mac: "NonEmptyString",
    #         destination_ip_v4: "NonEmptyString",
    #         destination_ip_v6: "NonEmptyString",
    #         destination_port: 1,
    #         destination_domain: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] direction
    #   The direction of network traffic associated with a finding.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol of network-related information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] source_ip_v4
    #   The source IPv4 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] source_ip_v6
    #   The source IPv6 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] source_port
    #   The source port of network-related information about a finding.
    #   @return [Integer]
    #
    # @!attribute [rw] source_domain
    #   The source domain of network-related information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] source_mac
    #   The source media access control (MAC) address of network-related
    #   information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_ip_v4
    #   The destination IPv4 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_ip_v6
    #   The destination IPv6 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The destination port of network-related information about a finding.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_domain
    #   The destination domain of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Network AWS API Documentation
    #
    class Network < Struct.new(
      :direction,
      :protocol,
      :source_ip_v4,
      :source_ip_v6,
      :source_port,
      :source_domain,
      :source_mac,
      :destination_ip_v4,
      :destination_ip_v6,
      :destination_port,
      :destination_domain)
      include Aws::Structure
    end

    # A user-defined note added to a finding.
    #
    # @note When making an API call, you may pass Note
    #   data as a hash:
    #
    #       {
    #         text: "NonEmptyString", # required
    #         updated_by: "NonEmptyString", # required
    #         updated_at: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] text
    #   The text of a note.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   The principal that created a note.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the note was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Note AWS API Documentation
    #
    class Note < Struct.new(
      :text,
      :updated_by,
      :updated_at)
      include Aws::Structure
    end

    # The updated note.
    #
    # @note When making an API call, you may pass NoteUpdate
    #   data as a hash:
    #
    #       {
    #         text: "NonEmptyString", # required
    #         updated_by: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] text
    #   The updated note text.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   The principal that updated the note.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NoteUpdate AWS API Documentation
    #
    class NoteUpdate < Struct.new(
      :text,
      :updated_by)
      include Aws::Structure
    end

    # A number filter for querying findings.
    #
    # @note When making an API call, you may pass NumberFilter
    #   data as a hash:
    #
    #       {
    #         gte: 1.0,
    #         lte: 1.0,
    #         eq: 1.0,
    #       }
    #
    # @!attribute [rw] gte
    #   The greater-than-equal condition to be applied to a single field
    #   when querying for findings.
    #   @return [Float]
    #
    # @!attribute [rw] lte
    #   The less-than-equal condition to be applied to a single field when
    #   querying for findings.
    #   @return [Float]
    #
    # @!attribute [rw] eq
    #   The equal-to condition to be applied to a single field when querying
    #   for findings.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NumberFilter AWS API Documentation
    #
    class NumberFilter < Struct.new(
      :gte,
      :lte,
      :eq)
      include Aws::Structure
    end

    # The details of process-related information about a finding.
    #
    # @note When making an API call, you may pass ProcessDetails
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         path: "NonEmptyString",
    #         pid: 1,
    #         parent_pid: 1,
    #         launched_at: "NonEmptyString",
    #         terminated_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the process.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the process executable.
    #   @return [String]
    #
    # @!attribute [rw] pid
    #   The process ID.
    #   @return [Integer]
    #
    # @!attribute [rw] parent_pid
    #   The parent process ID.
    #   @return [Integer]
    #
    # @!attribute [rw] launched_at
    #   The date/time that the process was launched.
    #   @return [String]
    #
    # @!attribute [rw] terminated_at
    #   The date and time when the process was terminated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ProcessDetails AWS API Documentation
    #
    class ProcessDetails < Struct.new(
      :name,
      :path,
      :pid,
      :parent_pid,
      :launched_at,
      :terminated_at)
      include Aws::Structure
    end

    # Contains details about a product.
    #
    # @!attribute [rw] product_arn
    #   The ARN assigned to the product.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The name of the product.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   The name of the company that provides the product.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the product.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The categories assigned to the product.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marketplace_url
    #   The URL for the page that contains more information about the
    #   product.
    #   @return [String]
    #
    # @!attribute [rw] activation_url
    #   The URL used to activate the product.
    #   @return [String]
    #
    # @!attribute [rw] product_subscription_resource_policy
    #   The resource policy associated with the product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Product AWS API Documentation
    #
    class Product < Struct.new(
      :product_arn,
      :product_name,
      :company_name,
      :description,
      :categories,
      :marketplace_url,
      :activation_url,
      :product_subscription_resource_policy)
      include Aws::Structure
    end

    # A recommendation on how to remediate the issue identified in a
    # finding.
    #
    # @note When making an API call, you may pass Recommendation
    #   data as a hash:
    #
    #       {
    #         text: "NonEmptyString",
    #         url: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] text
    #   Describes the recommended steps to take to remediate an issue
    #   identified in a finding.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   A URL to a page or site that contains information about how to
    #   remediate a finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :text,
      :url)
      include Aws::Structure
    end

    # Details about a related finding.
    #
    # @note When making an API call, you may pass RelatedFinding
    #   data as a hash:
    #
    #       {
    #         product_arn: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product that generated a related finding.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The product-generated identifier for a related finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RelatedFinding AWS API Documentation
    #
    class RelatedFinding < Struct.new(
      :product_arn,
      :id)
      include Aws::Structure
    end

    # Details about the remediation steps for a finding.
    #
    # @note When making an API call, you may pass Remediation
    #   data as a hash:
    #
    #       {
    #         recommendation: {
    #           text: "NonEmptyString",
    #           url: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] recommendation
    #   A recommendation on the steps to take to remediate the issue
    #   identified by a finding.
    #   @return [Types::Recommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Remediation AWS API Documentation
    #
    class Remediation < Struct.new(
      :recommendation)
      include Aws::Structure
    end

    # A resource related to a finding.
    #
    # @note When making an API call, you may pass Resource
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #         partition: "aws", # accepts aws, aws-cn, aws-us-gov
    #         region: "NonEmptyString",
    #         tags: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         details: {
    #           aws_ec2_instance: {
    #             type: "NonEmptyString",
    #             image_id: "NonEmptyString",
    #             ip_v4_addresses: ["NonEmptyString"],
    #             ip_v6_addresses: ["NonEmptyString"],
    #             key_name: "NonEmptyString",
    #             iam_instance_profile_arn: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #             subnet_id: "NonEmptyString",
    #             launched_at: "NonEmptyString",
    #           },
    #           aws_s3_bucket: {
    #             owner_id: "NonEmptyString",
    #             owner_name: "NonEmptyString",
    #           },
    #           aws_iam_access_key: {
    #             user_name: "NonEmptyString",
    #             status: "Active", # accepts Active, Inactive
    #             created_at: "NonEmptyString",
    #           },
    #           container: {
    #             name: "NonEmptyString",
    #             image_id: "NonEmptyString",
    #             image_name: "NonEmptyString",
    #             launched_at: "NonEmptyString",
    #           },
    #           other: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The type of the resource that details are provided for.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The canonical identifier for the given resource type.
    #   @return [String]
    #
    # @!attribute [rw] partition
    #   The canonical AWS partition name that the Region is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The canonical AWS external Region name where this resource is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of AWS tags associated with a resource at the time the
    #   finding was processed.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] details
    #   Additional details about the resource related to a finding.
    #   @return [Types::ResourceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :type,
      :id,
      :partition,
      :region,
      :tags,
      :details)
      include Aws::Structure
    end

    # The resource specified in the request conflicts with an existing
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # Additional details about a resource related to a finding.
    #
    # @note When making an API call, you may pass ResourceDetails
    #   data as a hash:
    #
    #       {
    #         aws_ec2_instance: {
    #           type: "NonEmptyString",
    #           image_id: "NonEmptyString",
    #           ip_v4_addresses: ["NonEmptyString"],
    #           ip_v6_addresses: ["NonEmptyString"],
    #           key_name: "NonEmptyString",
    #           iam_instance_profile_arn: "NonEmptyString",
    #           vpc_id: "NonEmptyString",
    #           subnet_id: "NonEmptyString",
    #           launched_at: "NonEmptyString",
    #         },
    #         aws_s3_bucket: {
    #           owner_id: "NonEmptyString",
    #           owner_name: "NonEmptyString",
    #         },
    #         aws_iam_access_key: {
    #           user_name: "NonEmptyString",
    #           status: "Active", # accepts Active, Inactive
    #           created_at: "NonEmptyString",
    #         },
    #         container: {
    #           name: "NonEmptyString",
    #           image_id: "NonEmptyString",
    #           image_name: "NonEmptyString",
    #           launched_at: "NonEmptyString",
    #         },
    #         other: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] aws_ec2_instance
    #   Details about an Amazon EC2 instance related to a finding.
    #   @return [Types::AwsEc2InstanceDetails]
    #
    # @!attribute [rw] aws_s3_bucket
    #   Details about an Amazon S3 Bucket related to a finding.
    #   @return [Types::AwsS3BucketDetails]
    #
    # @!attribute [rw] aws_iam_access_key
    #   Details about an IAM access key related to a finding.
    #   @return [Types::AwsIamAccessKeyDetails]
    #
    # @!attribute [rw] container
    #   Details about a container resource related to a finding.
    #   @return [Types::ContainerDetails]
    #
    # @!attribute [rw] other
    #   Details about a resource that doesn't have a specific type defined.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :aws_ec2_instance,
      :aws_s3_bucket,
      :aws_iam_access_key,
      :container,
      :other)
      include Aws::Structure
    end

    # The request was rejected because we can't find the specified
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # Details about the account that wasn't processed.
    #
    # @!attribute [rw] account_id
    #   An AWS account ID of the account that wasn't be processed.
    #   @return [String]
    #
    # @!attribute [rw] processing_result
    #   The reason that the account wasn't be processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Result AWS API Documentation
    #
    class Result < Struct.new(
      :account_id,
      :processing_result)
      include Aws::Structure
    end

    # The severity of the finding.
    #
    # @note When making an API call, you may pass Severity
    #   data as a hash:
    #
    #       {
    #         product: 1.0,
    #         normalized: 1, # required
    #       }
    #
    # @!attribute [rw] product
    #   The native severity as defined by the AWS service or integrated
    #   partner product that generated the finding.
    #   @return [Float]
    #
    # @!attribute [rw] normalized
    #   The normalized severity of a finding.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Severity AWS API Documentation
    #
    class Severity < Struct.new(
      :product,
      :normalized)
      include Aws::Structure
    end

    # A collection of finding attributes used to sort findings.
    #
    # @note When making an API call, you may pass SortCriterion
    #   data as a hash:
    #
    #       {
    #         field: "NonEmptyString",
    #         sort_order: "asc", # accepts asc, desc
    #       }
    #
    # @!attribute [rw] field
    #   The finding attribute used to sort findings.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order used to sort findings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SortCriterion AWS API Documentation
    #
    class SortCriterion < Struct.new(
      :field,
      :sort_order)
      include Aws::Structure
    end

    # A resource that represents your subscription to a supported standard.
    #
    # @!attribute [rw] standards_subscription_arn
    #   The ARN of a resource that represents your subscription to a
    #   supported standard.
    #   @return [String]
    #
    # @!attribute [rw] standards_arn
    #   The ARN of a standard.
    #
    #   In this release, Security Hub supports only the CIS AWS Foundations
    #   standard, which uses the following ARN:
    #   `arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0.`
    #   @return [String]
    #
    # @!attribute [rw] standards_input
    #   A key-value pair of input for the standard.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] standards_status
    #   The status of the standards subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsSubscription AWS API Documentation
    #
    class StandardsSubscription < Struct.new(
      :standards_subscription_arn,
      :standards_arn,
      :standards_input,
      :standards_status)
      include Aws::Structure
    end

    # The standard that you want to enable.
    #
    # @note When making an API call, you may pass StandardsSubscriptionRequest
    #   data as a hash:
    #
    #       {
    #         standards_arn: "NonEmptyString", # required
    #         standards_input: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] standards_arn
    #   The ARN of the standard that you want to enable.
    #
    #   In this release, Security Hub only supports the CIS AWS Foundations
    #   standard.
    #
    #    Its ARN is
    #   `arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0`.
    #   @return [String]
    #
    # @!attribute [rw] standards_input
    #   A key-value pair of input for the standard.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsSubscriptionRequest AWS API Documentation
    #
    class StandardsSubscriptionRequest < Struct.new(
      :standards_arn,
      :standards_input)
      include Aws::Structure
    end

    # A string filter for querying findings.
    #
    # @note When making an API call, you may pass StringFilter
    #   data as a hash:
    #
    #       {
    #         value: "NonEmptyString",
    #         comparison: "EQUALS", # accepts EQUALS, PREFIX
    #       }
    #
    # @!attribute [rw] value
    #   The string filter value.
    #   @return [String]
    #
    # @!attribute [rw] comparison
    #   The condition to be applied to a string value when querying for
    #   findings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StringFilter AWS API Documentation
    #
    class StringFilter < Struct.new(
      :value,
      :comparison)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to apply the tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Details about the threat intel related to a finding.
    #
    # @note When making an API call, you may pass ThreatIntelIndicator
    #   data as a hash:
    #
    #       {
    #         type: "DOMAIN", # accepts DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL
    #         value: "NonEmptyString",
    #         category: "BACKDOOR", # accepts BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER
    #         last_observed_at: "NonEmptyString",
    #         source: "NonEmptyString",
    #         source_url: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] type
    #   The type of a threat intel indicator.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a threat intel indicator.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of a threat intel indicator.
    #   @return [String]
    #
    # @!attribute [rw] last_observed_at
    #   The date and time when the most recent instance of a threat intel
    #   indicator was observed.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the threat intel indicator.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   The URL to the page or site where you can get more information about
    #   the threat intel indicator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ThreatIntelIndicator AWS API Documentation
    #
    class ThreatIntelIndicator < Struct.new(
      :type,
      :value,
      :category,
      :last_observed_at,
      :source,
      :source_url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to remove the tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys associated with the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateActionTargetRequest
    #   data as a hash:
    #
    #       {
    #         action_target_arn: "NonEmptyString", # required
    #         name: "NonEmptyString",
    #         description: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] action_target_arn
    #   The ARN of the custom action target to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the custom action target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the custom action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateActionTargetRequest AWS API Documentation
    #
    class UpdateActionTargetRequest < Struct.new(
      :action_target_arn,
      :name,
      :description)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateActionTargetResponse AWS API Documentation
    #
    class UpdateActionTargetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateFindingsRequest
    #   data as a hash:
    #
    #       {
    #         filters: { # required
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         note: {
    #           text: "NonEmptyString", # required
    #           updated_by: "NonEmptyString", # required
    #         },
    #         record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #       }
    #
    # @!attribute [rw] filters
    #   A collection of attributes that specify which findings you want to
    #   update.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] note
    #   The updated note for the finding.
    #   @return [Types::NoteUpdate]
    #
    # @!attribute [rw] record_state
    #   The updated record state for the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingsRequest AWS API Documentation
    #
    class UpdateFindingsRequest < Struct.new(
      :filters,
      :note,
      :record_state)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingsResponse AWS API Documentation
    #
    class UpdateFindingsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateInsightRequest
    #   data as a hash:
    #
    #       {
    #         insight_arn: "NonEmptyString", # required
    #         name: "NonEmptyString",
    #         filters: {
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         group_by_attribute: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name for the insight.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The updated filters that define this insight.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The updated `GroupBy` attribute that defines this insight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateInsightRequest AWS API Documentation
    #
    class UpdateInsightRequest < Struct.new(
      :insight_arn,
      :name,
      :filters,
      :group_by_attribute)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateInsightResponse AWS API Documentation
    #
    class UpdateInsightResponse < Aws::EmptyStructure; end

  end
end
