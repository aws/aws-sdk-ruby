# frozen_string_literal: true

# This is generated code!

module Aws::SSMQuickSetup
  # This module contains the types returned by client operations.
  module Types

    # <p>The requester has insufficient permissions to perform the operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The definition of a Quick Setup configuration.</p>
    # @!attribute type
    #   <p>The type of the Quick Setup configuration.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of key-value pairs containing the required parameters for the configuration
    #                     type.</p>
    #   @return [Hash<String, String>]
    # @!attribute type_version
    #   <p>The version of the Quick Setup type used.</p>
    #   @return [String]
    # @!attribute local_deployment_execution_role_name
    #   <p>The name of the IAM role used to deploy local
    #                     configurations.</p>
    #   @return [String]
    # @!attribute local_deployment_administration_role_arn
    #   <p>The ARN of the IAM role used to administrate local configuration
    #                     deployments.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the configuration definition.</p>
    #   @return [String]
    class ConfigurationDefinition < Struct.new(
      nil,
      :type,
      :parameters,
      :type_version,
      :local_deployment_execution_role_name,
      :local_deployment_administration_role_arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the preferences and options for a configuration definition.</p>
    # @!attribute type
    #   <p>The type of the Quick Setup configuration.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the configuration definition type. Parameters for configuration
    #                     definitions vary based the configuration type. The following tables outline the
    #                     parameters for each configuration type.</p>
    #            <dl>
    #               <dt>OpsCenter (Type: Amazon Web ServicesQuickSetupType-SSMOpsCenter)</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>DelegatedAccountId</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The ID of the
    #                                                     delegated administrator account.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetOrganizationalUnits</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of organizational units (OUs) you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetRegions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Amazon Web Services Regions you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>Resource Scheduler (Type: Amazon Web ServicesQuickSetupType-Scheduler)</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>TargetTagKey</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The tag key assigned
    #                                                     to the instances you want to target.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetTagValue</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The value of the tag
    #                                                     key assigned to the instances you want to
    #                                                     target.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ICalendarString</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) An iCalendar
    #                                                     formatted string containing the schedule you want
    #                                                     Change Manager to use.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetAccounts</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The ID of the
    #                                                     Amazon Web Services account initiating the
    #                                                     configuration deployment. You only need to provide
    #                                                     a value for this parameter if you want to deploy
    #                                                     the configuration locally. A value must be
    #                                                     provided for either <code>TargetAccounts</code> or
    #                                                     <code>TargetOrganizationalUnits</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetOrganizationalUnits</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A comma separated
    #                                                     list of organizational units (OUs) you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetRegions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Amazon Web Services Regions you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>Default Host Management Configuration (Type: Amazon Web ServicesQuickSetupType-DHMC)</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>UpdateSSMAgent</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether the SSM Agent is updated on the
    #                                                     target instances every 2 weeks. The default value
    #                                                     is "<code>true</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetOrganizationalUnits</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of organizational units (OUs) you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetRegions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Amazon Web Services Regions you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>Resource Explorer (Type: Amazon Web ServicesQuickSetupType-ResourceExplorer)</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>SelectedAggregatorRegion</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The Amazon Web Services Region where you want to create the
    #                                                     aggregator index.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ReplaceExistingAggregator</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A boolean value that
    #                                                     determines whether to demote an existing
    #                                                     aggregator if it is in a Region that differs from
    #                                                     the value you specify for the
    #                                                     <code>SelectedAggregatorRegion</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetOrganizationalUnits</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of organizational units (OUs) you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetRegions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Amazon Web Services Regions you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>Change Manager (Type: Amazon Web ServicesQuickSetupType-SSMChangeMgr)</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>DelegatedAccountId</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The ID of the
    #                                                     delegated administrator account.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>JobFunction</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The name for the
    #                                                     Change Manager job function.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PermissionType</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) Specifies whether
    #                                                     you want to use default administrator permissions
    #                                                     for the job function role, or provide a custom
    #                                                     IAM policy. The valid values are
    #                                                     <code>CustomPermissions</code> and
    #                                                     <code>AdminPermissions</code>. The default value
    #                                                     for the parameter is
    #                                                     <code>CustomerPermissions</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CustomPermissions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A JSON string
    #                                                     containing the IAM policy you want
    #                                                     your job function to use. You must provide a value
    #                                                     for this parameter if you specify
    #                                                     <code>CustomPermissions</code> for the
    #                                                     <code>PermissionType</code> parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetOrganizationalUnits</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of organizational units (OUs) you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetRegions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Amazon Web Services Regions you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>DevOps Guru (Type: Amazon Web ServicesQuickSetupType-DevOpsGuru)</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>AnalyseAllResources</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether DevOps Guru analyzes all
    #                                                     CloudFormation stacks in the account. The
    #                                                     default value is "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>EnableSnsNotifications</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether DevOps Guru sends
    #                                                     notifications when an insight is created. The
    #                                                     default value is "<code>true</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>EnableSsmOpsItems</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether DevOps Guru creates an
    #                                                     OpsCenter OpsItem when an insight is created. The
    #                                                     default value is "<code>true</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>EnableDriftRemediation</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether a drift remediation schedule is
    #                                                     used. The default value is
    #                                                     "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RemediationSchedule</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A rate expression
    #                                                     that defines the schedule for drift remediation.
    #                                                     The valid values are <code>rate(30 days)</code>,
    #                                                     <code>rate(14 days)</code>, <code>rate(1
    #                                                     days)</code>, and <code>none</code>. The default
    #                                                     value is "<code>none</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetAccounts</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The ID of the
    #                                                     Amazon Web Services account initiating the
    #                                                     configuration deployment. You only need to provide
    #                                                     a value for this parameter if you want to deploy
    #                                                     the configuration locally. A value must be
    #                                                     provided for either <code>TargetAccounts</code> or
    #                                                     <code>TargetOrganizationalUnits</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetOrganizationalUnits</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A comma separated
    #                                                     list of organizational units (OUs) you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetRegions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Amazon Web Services Regions you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>Conformance Packs (Type: Amazon Web ServicesQuickSetupType-CFGCPacks)</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>DelegatedAccountId</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The ID of the
    #                                                     delegated administrator account. This parameter is
    #                                                     required for Organization deployments.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RemediationSchedule</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A rate expression
    #                                                     that defines the schedule for drift remediation.
    #                                                     The valid values are <code>rate(30 days)</code>,
    #                                                     <code>rate(14 days)</code>, <code>rate(2
    #                                                     days)</code>, and <code>none</code>. The default
    #                                                     value is "<code>none</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CPackNames</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Config conformance
    #                                                     packs.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetAccounts</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The ID of the
    #                                                     Amazon Web Services account initiating the
    #                                                     configuration deployment. You only need to provide
    #                                                     a value for this parameter if you want to deploy
    #                                                     the configuration locally. A value must be
    #                                                     provided for either <code>TargetAccounts</code> or
    #                                                     <code>TargetOrganizationalUnits</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetOrganizationalUnits</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The ID of the root
    #                                                     of your Organization. This configuration type
    #                                                     doesn't currently support choosing specific OUs.
    #                                                     The configuration will be deployed to all the OUs
    #                                                     in the Organization.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetRegions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Amazon Web Services Regions you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>Config Recording (Type: Amazon Web ServicesQuickSetupType-CFGRecording)</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>RecordAllResources</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether all supported resources are
    #                                                     recorded. The default value is
    #                                                     "<code>true</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ResourceTypesToRecord</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A comma separated
    #                                                     list of resource types you want to record.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RecordGlobalResourceTypes</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether global resources are recorded
    #                                                     with all resource configurations. The default
    #                                                     value is "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>GlobalResourceTypesRegion</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) Determines the
    #                                                     Amazon Web Services Region where global resources
    #                                                     are recorded.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>UseCustomBucket</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether a custom Amazon S3
    #                                                     bucket is used for delivery. The default value is
    #                                                     "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DeliveryBucketName</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The name of the
    #                                                     Amazon S3 bucket you want Config to deliver configuration snapshots and
    #                                                     configuration history files to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DeliveryBucketPrefix</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The key prefix you
    #                                                     want to use in the custom Amazon S3
    #                                                     bucket.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NotificationOptions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) Determines the
    #                                                     notification configuration for the recorder. The
    #                                                     valid values are <code>NoStreaming</code>,
    #                                                     <code>UseExistingTopic</code>, and
    #                                                     <code>CreateTopic</code>. The default value is
    #                                                     <code>NoStreaming</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CustomDeliveryTopicAccountId</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The ID of the
    #                                                     Amazon Web Services account where the Amazon SNS topic you want to use for notifications
    #                                                     resides. You must specify a value for this
    #                                                     parameter if you use the
    #                                                     <code>UseExistingTopic</code> notification
    #                                                     option.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CustomDeliveryTopicName</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The name of the
    #                                                     Amazon SNS topic you want to use for
    #                                                     notifications. You must specify a value for this
    #                                                     parameter if you use the
    #                                                     <code>UseExistingTopic</code> notification
    #                                                     option.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RemediationSchedule</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A rate expression
    #                                                     that defines the schedule for drift remediation.
    #                                                     The valid values are <code>rate(30 days)</code>,
    #                                                     <code>rate(7 days)</code>, <code>rate(1
    #                                                     days)</code>, and <code>none</code>. The default
    #                                                     value is "<code>none</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetAccounts</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The ID of the
    #                                                     Amazon Web Services account initiating the
    #                                                     configuration deployment. You only need to provide
    #                                                     a value for this parameter if you want to deploy
    #                                                     the configuration locally. A value must be
    #                                                     provided for either <code>TargetAccounts</code> or
    #                                                     <code>TargetOrganizationalUnits</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetOrganizationalUnits</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The ID of the root
    #                                                     of your Organization. This configuration type
    #                                                     doesn't currently support choosing specific OUs.
    #                                                     The configuration will be deployed to all the OUs
    #                                                     in the Organization.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetRegions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Amazon Web Services Regions you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>Host Management (Type: Amazon Web ServicesQuickSetupType-SSMHostMgmt)</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>UpdateSSMAgent</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether the SSM Agent is updated on the
    #                                                     target instances every 2 weeks. The default value
    #                                                     is "<code>true</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>UpdateEc2LaunchAgent</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether the EC2 Launch agent is updated
    #                                                     on the target instances every month. The default
    #                                                     value is "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CollectInventory</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether the EC2 Launch agent is updated
    #                                                     on the target instances every month. The default
    #                                                     value is "<code>true</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ScanInstances</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether the target instances are
    #                                                     scanned daily for available patches. The default
    #                                                     value is "<code>true</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>InstallCloudWatchAgent</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether the Amazon CloudWatch agent
    #                                                     is installed on the target instances. The default
    #                                                     value is "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>UpdateCloudWatchAgent</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether the Amazon CloudWatch agent
    #                                                     is updated on the target instances every month.
    #                                                     The default value is "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IsPolicyAttachAllowed</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether Quick Setup attaches policies
    #                                                     to instances profiles already associated with the
    #                                                     target instances. The default value is
    #                                                     "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetType</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) Determines how
    #                                                     instances are targeted for local account
    #                                                     deployments. Don't specify a value for this
    #                                                     parameter if you're deploying to OUs. The valid
    #                                                     values are <code>*</code>,
    #                                                     <code>InstanceIds</code>,
    #                                                     <code>ResourceGroups</code>, and
    #                                                     <code>Tags</code>. Use <code>*</code> to target
    #                                                     all instances in the account.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetInstances</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A comma separated
    #                                                     list of instance IDs. You must provide a value for
    #                                                     this parameter if you specify
    #                                                     <code>InstanceIds</code> for the
    #                                                     <code>TargetType</code> parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetTagKey</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The tag key assigned
    #                                                     to the instances you want to target. You must
    #                                                     provide a value for this parameter if you specify
    #                                                     <code>Tags</code> for the <code>TargetType</code>
    #                                                     parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetTagValue</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The value of the tag
    #                                                     key assigned to the instances you want to target.
    #                                                     You must provide a value for this parameter if you
    #                                                     specify <code>Tags</code> for the
    #                                                     <code>TargetType</code> parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ResourceGroupName</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The name of the
    #                                                     resource group associated with the instances you
    #                                                     want to target. You must provide a value for this
    #                                                     parameter if you specify
    #                                                     <code>ResourceGroups</code> for the
    #                                                     <code>TargetType</code> parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetAccounts</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The ID of the
    #                                                     Amazon Web Services account initiating the
    #                                                     configuration deployment. You only need to provide
    #                                                     a value for this parameter if you want to deploy
    #                                                     the configuration locally. A value must be
    #                                                     provided for either <code>TargetAccounts</code> or
    #                                                     <code>TargetOrganizationalUnits</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetOrganizationalUnits</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A comma separated
    #                                                     list of organizational units (OUs) you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetRegions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Amazon Web Services Regions you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>Distributor (Type: Amazon Web ServicesQuickSetupType-Distributor)</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>PackagesToInstall</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of packages you want to install on the target
    #                                                     instances. The valid values are
    #                                                     <code>AWSEFSTools</code>, <code>AWSCWAgent</code>,
    #                                                     and <code>AWSEC2LaunchAgent</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RemediationSchedule</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A rate expression
    #                                                     that defines the schedule for drift remediation.
    #                                                     The valid values are <code>rate(30 days)</code>,
    #                                                     <code>rate(14 days)</code>, <code>rate(2
    #                                                     days)</code>, and <code>none</code>. The default
    #                                                     value is "<code>rate(30 days)</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IsPolicyAttachAllowed</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether Quick Setup attaches policies
    #                                                     to instances profiles already associated with the
    #                                                     target instances. The default value is
    #                                                     "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetType</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) Determines how
    #                                                     instances are targeted for local account
    #                                                     deployments. Don't specify a value for this
    #                                                     parameter if you're deploying to OUs. The valid
    #                                                     values are <code>*</code>,
    #                                                     <code>InstanceIds</code>,
    #                                                     <code>ResourceGroups</code>, and
    #                                                     <code>Tags</code>. Use <code>*</code> to target
    #                                                     all instances in the account.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetInstances</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A comma separated
    #                                                     list of instance IDs. You must provide a value for
    #                                                     this parameter if you specify
    #                                                     <code>InstanceIds</code> for the
    #                                                     <code>TargetType</code> parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetTagKey</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The tag key assigned
    #                                                     to the instances you want to target. You must
    #                                                     provide a value for this parameter if you specify
    #                                                     <code>Tags</code> for the <code>TargetType</code>
    #                                                     parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetTagValue</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The value of the tag
    #                                                     key assigned to the instances you want to target.
    #                                                     You must provide a value for this parameter if you
    #                                                     specify <code>Tags</code> for the
    #                                                     <code>TargetType</code> parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ResourceGroupName</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The name of the
    #                                                     resource group associated with the instances you
    #                                                     want to target. You must provide a value for this
    #                                                     parameter if you specify
    #                                                     <code>ResourceGroups</code> for the
    #                                                     <code>TargetType</code> parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetAccounts</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The ID of the
    #                                                     Amazon Web Services account initiating the
    #                                                     configuration deployment. You only need to provide
    #                                                     a value for this parameter if you want to deploy
    #                                                     the configuration locally. A value must be
    #                                                     provided for either <code>TargetAccounts</code> or
    #                                                     <code>TargetOrganizationalUnits</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetOrganizationalUnits</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A comma separated
    #                                                     list of organizational units (OUs) you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetRegions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Amazon Web Services Regions you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>Patch Policy (Type: Amazon Web ServicesQuickSetupType-PatchPolicy)</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>PatchPolicyName</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A name for the patch
    #                                                     policy. The value you provide is applied to target
    #                                                     Amazon EC2 instances as a tag.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SelectedPatchBaselines</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) An array of JSON
    #                                                     objects containing the information for the patch
    #                                                     baselines to include in your patch policy.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PatchBaselineUseDefault</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether the selected patch baselines
    #                                                     are all Amazon Web Services provided.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ConfigurationOptionsPatchOperation</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) Determines whether
    #                                                     target instances scan for available patches, or
    #                                                     scan and install available patches. The valid
    #                                                     values are <code>Scan</code> and
    #                                                     <code>ScanAndInstall</code>. The default value for
    #                                                     the parameter is <code>Scan</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ConfigurationOptionsScanValue</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A cron expression
    #                                                     that is used as the schedule for when instances
    #                                                     scan for available patches.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ConfigurationOptionsInstallValue</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A cron expression
    #                                                     that is used as the schedule for when instances
    #                                                     install available patches.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ConfigurationOptionsScanNextInterval</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether instances should scan for
    #                                                     available patches at the next cron interval. The
    #                                                     default value is "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ConfigurationOptionsInstallNextInterval</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether instances should scan for
    #                                                     available patches at the next cron interval. The
    #                                                     default value is "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RebootOption</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) Determines whether
    #                                                     instances are rebooted after patches are
    #                                                     installed. Valid values are
    #                                                     <code>RebootIfNeeded</code> and
    #                                                     <code>NoReboot</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IsPolicyAttachAllowed</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether Quick Setup attaches policies
    #                                                     to instances profiles already associated with the
    #                                                     target instances. The default value is
    #                                                     "<code>false</code>".</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>OutputLogEnableS3</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A boolean value that
    #                                                     determines whether command output logs are sent to
    #                                                     Amazon S3.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>OutputS3Location</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A JSON string
    #                                                     containing information about the Amazon S3
    #                                                     bucket where you want to store the output details
    #                                                     of the request.</p>
    #                              <ul>
    #                                 <li>
    #                                    <p>
    #                                       <code>OutputS3BucketRegion</code>
    #                                    </p>
    #                                    <ul>
    #                                       <li>
    #                                          <p>Description: (Optional) The Amazon Web Services Region where the Amazon S3
    #                                                     bucket you want Config to deliver
    #                                                     command output to is located.</p>
    #                                       </li>
    #                                    </ul>
    #                                 </li>
    #                                 <li>
    #                                    <p>
    #                                       <code>OutputS3BucketName</code>
    #                                    </p>
    #                                    <ul>
    #                                       <li>
    #                                          <p>Description: (Optional) The name of the
    #                                                     Amazon S3 bucket you want Config to deliver command output to.</p>
    #                                       </li>
    #                                    </ul>
    #                                 </li>
    #                                 <li>
    #                                    <p>
    #                                       <code>OutputS3KeyPrefix</code>
    #                                    </p>
    #                                    <ul>
    #                                       <li>
    #                                          <p>Description: (Optional) The key prefix you
    #                                                     want to use in the custom Amazon S3
    #                                                     bucket.</p>
    #                                       </li>
    #                                    </ul>
    #                                 </li>
    #                              </ul>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetType</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) Determines how
    #                                                     instances are targeted for local account
    #                                                     deployments. Don't specify a value for this
    #                                                     parameter if you're deploying to OUs. The valid
    #                                                     values are <code>*</code>,
    #                                                     <code>InstanceIds</code>,
    #                                                     <code>ResourceGroups</code>, and
    #                                                     <code>Tags</code>. Use <code>*</code> to target
    #                                                     all instances in the account.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetInstances</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A comma separated
    #                                                     list of instance IDs. You must provide a value for
    #                                                     this parameter if you specify
    #                                                     <code>InstanceIds</code> for the
    #                                                     <code>TargetType</code> parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetTagKey</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The tag key assigned
    #                                                     to the instances you want to target. You must
    #                                                     provide a value for this parameter if you specify
    #                                                     <code>Tags</code> for the <code>TargetType</code>
    #                                                     parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetTagValue</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The value of the tag
    #                                                     key assigned to the instances you want to target.
    #                                                     You must provide a value for this parameter if you
    #                                                     specify <code>Tags</code> for the
    #                                                     <code>TargetType</code> parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ResourceGroupName</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) The name of the
    #                                                     resource group associated with the instances you
    #                                                     want to target. You must provide a value for this
    #                                                     parameter if you specify
    #                                                     <code>ResourceGroups</code> for the
    #                                                     <code>TargetType</code> parameter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetAccounts</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) The ID of the
    #                                                     Amazon Web Services account initiating the
    #                                                     configuration deployment. You only need to provide
    #                                                     a value for this parameter if you want to deploy
    #                                                     the configuration locally. A value must be
    #                                                     provided for either <code>TargetAccounts</code> or
    #                                                     <code>TargetOrganizationalUnits</code>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetOrganizationalUnits</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Optional) A comma separated
    #                                                     list of organizational units (OUs) you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TargetRegions</code>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>Description: (Required) A comma separated
    #                                                     list of Amazon Web Services Regions you want to
    #                                                     deploy the configuration to.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #   @return [Hash<String, String>]
    # @!attribute type_version
    #   <p>The version of the Quick Setup type to use.</p>
    #   @return [String]
    # @!attribute local_deployment_execution_role_name
    #   <p>The name of the IAM role used to deploy local
    #                     configurations.</p>
    #   @return [String]
    # @!attribute local_deployment_administration_role_arn
    #   <p>The ARN of the IAM role used to administrate local configuration
    #                     deployments.</p>
    #   @return [String]
    class ConfigurationDefinitionInput < Struct.new(
      nil,
      :type,
      :parameters,
      :type_version,
      :local_deployment_execution_role_name,
      :local_deployment_administration_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summarized definition of a Quick Setup configuration definition.</p>
    # @!attribute id
    #   <p>The ID of the configuration definition.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Quick Setup configuration used by the configuration
    #                     definition.</p>
    #   @return [String]
    # @!attribute type_version
    #   <p>The version of the Quick Setup type used by the configuration definition.</p>
    #   @return [String]
    # @!attribute first_class_parameters
    #   <p>The common parameters and values for the configuration definition.</p>
    #   @return [Hash<String, String>]
    class ConfigurationDefinitionSummary < Struct.new(
      nil,
      :id,
      :type,
      :type_version,
      :first_class_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a Quick Setup configuration manager.</p>
    # @!attribute manager_arn
    #   <p>The ARN of the Quick Setup configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration</p>
    #   @return [String]
    # @!attribute status_summaries
    #   <p>Summaries of the state of the configuration manager. These summaries include an
    #                     aggregate of the statuses from the configuration definition associated with the
    #                     configuration manager. This includes deployment statuses, association statuses,
    #                     drift statuses, health checks, and more.</p>
    #   @return [Array<Types::StatusSummary>]
    # @!attribute configuration_definition_summaries
    #   <p>A summary of the Quick Setup configuration definition.</p>
    #   @return [Array<Types::ConfigurationDefinitionSummary>]
    class ConfigurationManagerSummary < Struct.new(
      nil,
      :manager_arn,
      :description,
      :name,
      :status_summaries,
      :configuration_definition_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for a Quick Setup configuration.</p>
    # @!attribute id
    #   <p>A service generated identifier for the configuration.</p>
    #   @return [String]
    # @!attribute manager_arn
    #   <p>The ARN of the configuration manager.</p>
    #   @return [String]
    # @!attribute configuration_definition_id
    #   <p>The ID of the configuration definition.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Quick Setup configuration.</p>
    #   @return [String]
    # @!attribute type_version
    #   <p>The version of the Quick Setup type used.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the configuration was deployed.</p>
    #   @return [String]
    # @!attribute account
    #   <p>The ID of the Amazon Web Services account where the configuration was deployed.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The datetime stamp when the configuration was created.</p>
    #   @return [Time]
    # @!attribute first_class_parameters
    #   <p>The common parameters and values for the configuration definition.</p>
    #   @return [Hash<String, String>]
    # @!attribute status_summaries
    #   <p>A summary of the state of the configuration manager. This includes deployment
    #                     statuses, association statuses, drift statuses, health checks, and more.</p>
    #   @return [Array<Types::StatusSummary>]
    class ConfigurationSummary < Struct.new(
      nil,
      :id,
      :manager_arn,
      :configuration_definition_id,
      :type,
      :type_version,
      :region,
      :account,
      :created_at,
      :first_class_parameters,
      :status_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Another request is being processed. Wait a few minutes and try again.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the configuration manager.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the configuration manager.</p>
    #   @return [String]
    # @!attribute configuration_definitions
    #   <p>The definition of the Quick Setup configuration that the configuration manager
    #                     deploys.</p>
    #   @return [Array<Types::ConfigurationDefinitionInput>]
    # @!attribute tags
    #   <p>Key-value pairs of metadata to assign to the configuration manager.</p>
    #   @return [Hash<String, String>]
    class CreateConfigurationManagerInput < Struct.new(
      nil,
      :name,
      :description,
      :configuration_definitions,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute manager_arn
    #   <p>The ARN for the newly created configuration manager.</p>
    #   @return [String]
    class CreateConfigurationManagerOutput < Struct.new(
      nil,
      :manager_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute manager_arn
    #   <p>The ID of the configuration manager.</p>
    #   @return [String]
    class DeleteConfigurationManagerInput < Struct.new(
      nil,
      :manager_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair to filter results.</p>
    # @!attribute key
    #   <p>The key for the filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values for the filter keys.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      nil,
      :key,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_id
    #   <p>A service generated identifier for the configuration.</p>
    #   @return [String]
    class GetConfigurationInput < Struct.new(
      nil,
      :configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute manager_arn
    #   <p>The ARN of the configuration manager.</p>
    #   @return [String]
    class GetConfigurationManagerInput < Struct.new(
      nil,
      :manager_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute manager_arn
    #   <p>The ARN of the configuration manager.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configuration manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration manager.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The datetime stamp when the configuration manager was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The datetime stamp when the configuration manager was last updated.</p>
    #   @return [Time]
    # @!attribute status_summaries
    #   <p>A summary of the state of the configuration manager. This includes deployment
    #                     statuses, association statuses, drift statuses, health checks, and more.</p>
    #   @return [Array<Types::StatusSummary>]
    # @!attribute configuration_definitions
    #   <p>The configuration definitions association with the configuration manager.</p>
    #   @return [Array<Types::ConfigurationDefinition>]
    # @!attribute tags
    #   <p>Key-value pairs of metadata to assign to the configuration manager.</p>
    #   @return [Hash<String, String>]
    class GetConfigurationManagerOutput < Struct.new(
      nil,
      :manager_arn,
      :description,
      :name,
      :created_at,
      :last_modified_at,
      :status_summaries,
      :configuration_definitions,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A service generated identifier for the configuration.</p>
    #   @return [String]
    # @!attribute manager_arn
    #   <p>The ARN of the configuration manager.</p>
    #   @return [String]
    # @!attribute configuration_definition_id
    #   <p>The ID of the configuration definition.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Quick Setup configuration.</p>
    #   @return [String]
    # @!attribute type_version
    #   <p>The version of the Quick Setup type used.</p>
    #   @return [String]
    # @!attribute account
    #   <p>The ID of the Amazon Web Services account where the configuration was deployed.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the configuration was deployed.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The datetime stamp when the configuration manager was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The datetime stamp when the configuration manager was last updated.</p>
    #   @return [Time]
    # @!attribute status_summaries
    #   <p>A summary of the state of the configuration manager. This includes deployment
    #                     statuses, association statuses, drift statuses, health checks, and more.</p>
    #   @return [Array<Types::StatusSummary>]
    # @!attribute parameters
    #   <p>The parameters for the configuration definition type.</p>
    #   @return [Hash<String, String>]
    class GetConfigurationOutput < Struct.new(
      nil,
      :id,
      :manager_arn,
      :configuration_definition_id,
      :type,
      :type_version,
      :account,
      :region,
      :created_at,
      :last_modified_at,
      :status_summaries,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_settings
    #   <p>Returns details about the settings for Quick Setup in the requesting Amazon Web Services account and Amazon Web Services Region.</p>
    #   @return [Types::ServiceSettings]
    class GetServiceSettingsOutput < Struct.new(
      nil,
      :service_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred on the server side.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute starting_token
    #   <p>The token to use when requesting a specific set of items from a list.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Specifies the maximum number of configuration managers that are returned by the
    #                     request.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Filters the results returned by the request.</p>
    #   @return [Array<Types::Filter>]
    class ListConfigurationManagersInput < Struct.new(
      nil,
      :starting_token,
      :max_items,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_managers_list
    #   <p>The configuration managers returned by the request.</p>
    #   @return [Array<Types::ConfigurationManagerSummary>]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of configuration managers. If there
    #                     are no additional operations to return, the string is empty.</p>
    #   @return [String]
    class ListConfigurationManagersOutput < Struct.new(
      nil,
      :configuration_managers_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute starting_token
    #   <p>The token to use when requesting a specific set of items from a list.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Specifies the maximum number of configurations that are returned by the
    #                     request.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Filters the results returned by the request.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute manager_arn
    #   <p>The ARN of the configuration manager.</p>
    #   @return [String]
    # @!attribute configuration_definition_id
    #   <p>The ID of the configuration definition.</p>
    #   @return [String]
    class ListConfigurationsInput < Struct.new(
      nil,
      :starting_token,
      :max_items,
      :filters,
      :manager_arn,
      :configuration_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configurations_list
    #   <p>An array of configurations.</p>
    #   @return [Array<Types::ConfigurationSummary>]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items. If there are no additional items to
    #                     return, the string is empty.</p>
    #   @return [String]
    class ListConfigurationsOutput < Struct.new(
      nil,
      :configurations_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_setup_type_list
    #   <p>An array of Quick Setup types.</p>
    #   @return [Array<Types::QuickSetupTypeOutput>]
    class ListQuickSetupTypesOutput < Struct.new(
      nil,
      :quick_setup_type_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource the tag is assigned to.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Key-value pairs of metadata assigned to the resource.</p>
    #   @return [Array<Types::TagEntry>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Quick Setup type.</p>
    # @!attribute type
    #   <p>The type of the Quick Setup configuration.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The latest version number of the configuration.</p>
    #   @return [String]
    class QuickSetupTypeOutput < Struct.new(
      nil,
      :type,
      :latest_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource couldn't be found. Check the ID or name and try again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings configured for Quick Setup.</p>
    # @!attribute explorer_enabling_role_arn
    #   <p>The IAM role used to enable Explorer.</p>
    #   @return [String]
    class ServiceSettings < Struct.new(
      nil,
      :explorer_enabling_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summarized description of the status.</p>
    # @!attribute status_type
    #   <p>The type of a status summary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>When applicable, returns an informational message relevant to the current status
    #                     and status type of the status summary object. We don't recommend implementing
    #                     parsing logic around this value since the messages returned can vary in
    #                     format.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The datetime stamp when the status was last updated.</p>
    #   @return [Time]
    # @!attribute status_details
    #   <p>Details about the status.</p>
    #   @return [Hash<String, String>]
    class StatusSummary < Struct.new(
      nil,
      :status_type,
      :status,
      :status_message,
      :last_updated_at,
      :status_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Key-value pairs of metadata.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute key
    #   <p>The key for the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the tag.</p>
    #   @return [String]
    class TagEntry < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs of metadata to assign to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request or operation exceeds the maximum allowed request rate per Amazon Web Services account and Amazon Web Services Region.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute manager_arn
    #   <p>The ARN of the configuration manager associated with the definition to
    #                     update.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the configuration definition you want to update.</p>
    #   @return [String]
    # @!attribute type_version
    #   <p>The version of the Quick Setup type to use.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the configuration definition type.</p>
    #   @return [Hash<String, String>]
    # @!attribute local_deployment_execution_role_name
    #   <p>The name of the IAM role used to deploy local
    #                     configurations.</p>
    #   @return [String]
    # @!attribute local_deployment_administration_role_arn
    #   <p>The ARN of the IAM role used to administrate local configuration
    #                     deployments.</p>
    #   @return [String]
    class UpdateConfigurationDefinitionInput < Struct.new(
      nil,
      :manager_arn,
      :id,
      :type_version,
      :parameters,
      :local_deployment_execution_role_name,
      :local_deployment_administration_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute manager_arn
    #   <p>The ARN of the configuration manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the configuration manager.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the configuration manager.</p>
    #   @return [String]
    class UpdateConfigurationManagerInput < Struct.new(
      nil,
      :manager_arn,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute explorer_enabling_role_arn
    #   <p>The IAM role used to enable Explorer.</p>
    #   @return [String]
    class UpdateServiceSettingsInput < Struct.new(
      nil,
      :explorer_enabling_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is invalid. Verify the values provided for the request parameters are
    #                   accurate.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
