# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Connect
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Connect::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Connect::EndpointParameters`'
      ) do |cfg|
        Aws::Connect::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :activate_evaluation_form
            Aws::Connect::Endpoints::ActivateEvaluationForm.build(context)
          when :associate_approved_origin
            Aws::Connect::Endpoints::AssociateApprovedOrigin.build(context)
          when :associate_bot
            Aws::Connect::Endpoints::AssociateBot.build(context)
          when :associate_default_vocabulary
            Aws::Connect::Endpoints::AssociateDefaultVocabulary.build(context)
          when :associate_instance_storage_config
            Aws::Connect::Endpoints::AssociateInstanceStorageConfig.build(context)
          when :associate_lambda_function
            Aws::Connect::Endpoints::AssociateLambdaFunction.build(context)
          when :associate_lex_bot
            Aws::Connect::Endpoints::AssociateLexBot.build(context)
          when :associate_phone_number_contact_flow
            Aws::Connect::Endpoints::AssociatePhoneNumberContactFlow.build(context)
          when :associate_queue_quick_connects
            Aws::Connect::Endpoints::AssociateQueueQuickConnects.build(context)
          when :associate_routing_profile_queues
            Aws::Connect::Endpoints::AssociateRoutingProfileQueues.build(context)
          when :associate_security_key
            Aws::Connect::Endpoints::AssociateSecurityKey.build(context)
          when :claim_phone_number
            Aws::Connect::Endpoints::ClaimPhoneNumber.build(context)
          when :create_agent_status
            Aws::Connect::Endpoints::CreateAgentStatus.build(context)
          when :create_contact_flow
            Aws::Connect::Endpoints::CreateContactFlow.build(context)
          when :create_contact_flow_module
            Aws::Connect::Endpoints::CreateContactFlowModule.build(context)
          when :create_evaluation_form
            Aws::Connect::Endpoints::CreateEvaluationForm.build(context)
          when :create_hours_of_operation
            Aws::Connect::Endpoints::CreateHoursOfOperation.build(context)
          when :create_instance
            Aws::Connect::Endpoints::CreateInstance.build(context)
          when :create_integration_association
            Aws::Connect::Endpoints::CreateIntegrationAssociation.build(context)
          when :create_participant
            Aws::Connect::Endpoints::CreateParticipant.build(context)
          when :create_prompt
            Aws::Connect::Endpoints::CreatePrompt.build(context)
          when :create_queue
            Aws::Connect::Endpoints::CreateQueue.build(context)
          when :create_quick_connect
            Aws::Connect::Endpoints::CreateQuickConnect.build(context)
          when :create_routing_profile
            Aws::Connect::Endpoints::CreateRoutingProfile.build(context)
          when :create_rule
            Aws::Connect::Endpoints::CreateRule.build(context)
          when :create_security_profile
            Aws::Connect::Endpoints::CreateSecurityProfile.build(context)
          when :create_task_template
            Aws::Connect::Endpoints::CreateTaskTemplate.build(context)
          when :create_traffic_distribution_group
            Aws::Connect::Endpoints::CreateTrafficDistributionGroup.build(context)
          when :create_use_case
            Aws::Connect::Endpoints::CreateUseCase.build(context)
          when :create_user
            Aws::Connect::Endpoints::CreateUser.build(context)
          when :create_user_hierarchy_group
            Aws::Connect::Endpoints::CreateUserHierarchyGroup.build(context)
          when :create_vocabulary
            Aws::Connect::Endpoints::CreateVocabulary.build(context)
          when :deactivate_evaluation_form
            Aws::Connect::Endpoints::DeactivateEvaluationForm.build(context)
          when :delete_contact_evaluation
            Aws::Connect::Endpoints::DeleteContactEvaluation.build(context)
          when :delete_contact_flow
            Aws::Connect::Endpoints::DeleteContactFlow.build(context)
          when :delete_contact_flow_module
            Aws::Connect::Endpoints::DeleteContactFlowModule.build(context)
          when :delete_evaluation_form
            Aws::Connect::Endpoints::DeleteEvaluationForm.build(context)
          when :delete_hours_of_operation
            Aws::Connect::Endpoints::DeleteHoursOfOperation.build(context)
          when :delete_instance
            Aws::Connect::Endpoints::DeleteInstance.build(context)
          when :delete_integration_association
            Aws::Connect::Endpoints::DeleteIntegrationAssociation.build(context)
          when :delete_prompt
            Aws::Connect::Endpoints::DeletePrompt.build(context)
          when :delete_queue
            Aws::Connect::Endpoints::DeleteQueue.build(context)
          when :delete_quick_connect
            Aws::Connect::Endpoints::DeleteQuickConnect.build(context)
          when :delete_routing_profile
            Aws::Connect::Endpoints::DeleteRoutingProfile.build(context)
          when :delete_rule
            Aws::Connect::Endpoints::DeleteRule.build(context)
          when :delete_security_profile
            Aws::Connect::Endpoints::DeleteSecurityProfile.build(context)
          when :delete_task_template
            Aws::Connect::Endpoints::DeleteTaskTemplate.build(context)
          when :delete_traffic_distribution_group
            Aws::Connect::Endpoints::DeleteTrafficDistributionGroup.build(context)
          when :delete_use_case
            Aws::Connect::Endpoints::DeleteUseCase.build(context)
          when :delete_user
            Aws::Connect::Endpoints::DeleteUser.build(context)
          when :delete_user_hierarchy_group
            Aws::Connect::Endpoints::DeleteUserHierarchyGroup.build(context)
          when :delete_vocabulary
            Aws::Connect::Endpoints::DeleteVocabulary.build(context)
          when :describe_agent_status
            Aws::Connect::Endpoints::DescribeAgentStatus.build(context)
          when :describe_contact
            Aws::Connect::Endpoints::DescribeContact.build(context)
          when :describe_contact_evaluation
            Aws::Connect::Endpoints::DescribeContactEvaluation.build(context)
          when :describe_contact_flow
            Aws::Connect::Endpoints::DescribeContactFlow.build(context)
          when :describe_contact_flow_module
            Aws::Connect::Endpoints::DescribeContactFlowModule.build(context)
          when :describe_evaluation_form
            Aws::Connect::Endpoints::DescribeEvaluationForm.build(context)
          when :describe_hours_of_operation
            Aws::Connect::Endpoints::DescribeHoursOfOperation.build(context)
          when :describe_instance
            Aws::Connect::Endpoints::DescribeInstance.build(context)
          when :describe_instance_attribute
            Aws::Connect::Endpoints::DescribeInstanceAttribute.build(context)
          when :describe_instance_storage_config
            Aws::Connect::Endpoints::DescribeInstanceStorageConfig.build(context)
          when :describe_phone_number
            Aws::Connect::Endpoints::DescribePhoneNumber.build(context)
          when :describe_prompt
            Aws::Connect::Endpoints::DescribePrompt.build(context)
          when :describe_queue
            Aws::Connect::Endpoints::DescribeQueue.build(context)
          when :describe_quick_connect
            Aws::Connect::Endpoints::DescribeQuickConnect.build(context)
          when :describe_routing_profile
            Aws::Connect::Endpoints::DescribeRoutingProfile.build(context)
          when :describe_rule
            Aws::Connect::Endpoints::DescribeRule.build(context)
          when :describe_security_profile
            Aws::Connect::Endpoints::DescribeSecurityProfile.build(context)
          when :describe_traffic_distribution_group
            Aws::Connect::Endpoints::DescribeTrafficDistributionGroup.build(context)
          when :describe_user
            Aws::Connect::Endpoints::DescribeUser.build(context)
          when :describe_user_hierarchy_group
            Aws::Connect::Endpoints::DescribeUserHierarchyGroup.build(context)
          when :describe_user_hierarchy_structure
            Aws::Connect::Endpoints::DescribeUserHierarchyStructure.build(context)
          when :describe_vocabulary
            Aws::Connect::Endpoints::DescribeVocabulary.build(context)
          when :disassociate_approved_origin
            Aws::Connect::Endpoints::DisassociateApprovedOrigin.build(context)
          when :disassociate_bot
            Aws::Connect::Endpoints::DisassociateBot.build(context)
          when :disassociate_instance_storage_config
            Aws::Connect::Endpoints::DisassociateInstanceStorageConfig.build(context)
          when :disassociate_lambda_function
            Aws::Connect::Endpoints::DisassociateLambdaFunction.build(context)
          when :disassociate_lex_bot
            Aws::Connect::Endpoints::DisassociateLexBot.build(context)
          when :disassociate_phone_number_contact_flow
            Aws::Connect::Endpoints::DisassociatePhoneNumberContactFlow.build(context)
          when :disassociate_queue_quick_connects
            Aws::Connect::Endpoints::DisassociateQueueQuickConnects.build(context)
          when :disassociate_routing_profile_queues
            Aws::Connect::Endpoints::DisassociateRoutingProfileQueues.build(context)
          when :disassociate_security_key
            Aws::Connect::Endpoints::DisassociateSecurityKey.build(context)
          when :dismiss_user_contact
            Aws::Connect::Endpoints::DismissUserContact.build(context)
          when :get_contact_attributes
            Aws::Connect::Endpoints::GetContactAttributes.build(context)
          when :get_current_metric_data
            Aws::Connect::Endpoints::GetCurrentMetricData.build(context)
          when :get_current_user_data
            Aws::Connect::Endpoints::GetCurrentUserData.build(context)
          when :get_federation_token
            Aws::Connect::Endpoints::GetFederationToken.build(context)
          when :get_metric_data
            Aws::Connect::Endpoints::GetMetricData.build(context)
          when :get_metric_data_v2
            Aws::Connect::Endpoints::GetMetricDataV2.build(context)
          when :get_prompt_file
            Aws::Connect::Endpoints::GetPromptFile.build(context)
          when :get_task_template
            Aws::Connect::Endpoints::GetTaskTemplate.build(context)
          when :get_traffic_distribution
            Aws::Connect::Endpoints::GetTrafficDistribution.build(context)
          when :list_agent_statuses
            Aws::Connect::Endpoints::ListAgentStatuses.build(context)
          when :list_approved_origins
            Aws::Connect::Endpoints::ListApprovedOrigins.build(context)
          when :list_bots
            Aws::Connect::Endpoints::ListBots.build(context)
          when :list_contact_evaluations
            Aws::Connect::Endpoints::ListContactEvaluations.build(context)
          when :list_contact_flow_modules
            Aws::Connect::Endpoints::ListContactFlowModules.build(context)
          when :list_contact_flows
            Aws::Connect::Endpoints::ListContactFlows.build(context)
          when :list_contact_references
            Aws::Connect::Endpoints::ListContactReferences.build(context)
          when :list_default_vocabularies
            Aws::Connect::Endpoints::ListDefaultVocabularies.build(context)
          when :list_evaluation_form_versions
            Aws::Connect::Endpoints::ListEvaluationFormVersions.build(context)
          when :list_evaluation_forms
            Aws::Connect::Endpoints::ListEvaluationForms.build(context)
          when :list_hours_of_operations
            Aws::Connect::Endpoints::ListHoursOfOperations.build(context)
          when :list_instance_attributes
            Aws::Connect::Endpoints::ListInstanceAttributes.build(context)
          when :list_instance_storage_configs
            Aws::Connect::Endpoints::ListInstanceStorageConfigs.build(context)
          when :list_instances
            Aws::Connect::Endpoints::ListInstances.build(context)
          when :list_integration_associations
            Aws::Connect::Endpoints::ListIntegrationAssociations.build(context)
          when :list_lambda_functions
            Aws::Connect::Endpoints::ListLambdaFunctions.build(context)
          when :list_lex_bots
            Aws::Connect::Endpoints::ListLexBots.build(context)
          when :list_phone_numbers
            Aws::Connect::Endpoints::ListPhoneNumbers.build(context)
          when :list_phone_numbers_v2
            Aws::Connect::Endpoints::ListPhoneNumbersV2.build(context)
          when :list_prompts
            Aws::Connect::Endpoints::ListPrompts.build(context)
          when :list_queue_quick_connects
            Aws::Connect::Endpoints::ListQueueQuickConnects.build(context)
          when :list_queues
            Aws::Connect::Endpoints::ListQueues.build(context)
          when :list_quick_connects
            Aws::Connect::Endpoints::ListQuickConnects.build(context)
          when :list_routing_profile_queues
            Aws::Connect::Endpoints::ListRoutingProfileQueues.build(context)
          when :list_routing_profiles
            Aws::Connect::Endpoints::ListRoutingProfiles.build(context)
          when :list_rules
            Aws::Connect::Endpoints::ListRules.build(context)
          when :list_security_keys
            Aws::Connect::Endpoints::ListSecurityKeys.build(context)
          when :list_security_profile_permissions
            Aws::Connect::Endpoints::ListSecurityProfilePermissions.build(context)
          when :list_security_profiles
            Aws::Connect::Endpoints::ListSecurityProfiles.build(context)
          when :list_tags_for_resource
            Aws::Connect::Endpoints::ListTagsForResource.build(context)
          when :list_task_templates
            Aws::Connect::Endpoints::ListTaskTemplates.build(context)
          when :list_traffic_distribution_groups
            Aws::Connect::Endpoints::ListTrafficDistributionGroups.build(context)
          when :list_use_cases
            Aws::Connect::Endpoints::ListUseCases.build(context)
          when :list_user_hierarchy_groups
            Aws::Connect::Endpoints::ListUserHierarchyGroups.build(context)
          when :list_users
            Aws::Connect::Endpoints::ListUsers.build(context)
          when :monitor_contact
            Aws::Connect::Endpoints::MonitorContact.build(context)
          when :put_user_status
            Aws::Connect::Endpoints::PutUserStatus.build(context)
          when :release_phone_number
            Aws::Connect::Endpoints::ReleasePhoneNumber.build(context)
          when :replicate_instance
            Aws::Connect::Endpoints::ReplicateInstance.build(context)
          when :resume_contact_recording
            Aws::Connect::Endpoints::ResumeContactRecording.build(context)
          when :search_available_phone_numbers
            Aws::Connect::Endpoints::SearchAvailablePhoneNumbers.build(context)
          when :search_hours_of_operations
            Aws::Connect::Endpoints::SearchHoursOfOperations.build(context)
          when :search_prompts
            Aws::Connect::Endpoints::SearchPrompts.build(context)
          when :search_queues
            Aws::Connect::Endpoints::SearchQueues.build(context)
          when :search_quick_connects
            Aws::Connect::Endpoints::SearchQuickConnects.build(context)
          when :search_resource_tags
            Aws::Connect::Endpoints::SearchResourceTags.build(context)
          when :search_routing_profiles
            Aws::Connect::Endpoints::SearchRoutingProfiles.build(context)
          when :search_security_profiles
            Aws::Connect::Endpoints::SearchSecurityProfiles.build(context)
          when :search_users
            Aws::Connect::Endpoints::SearchUsers.build(context)
          when :search_vocabularies
            Aws::Connect::Endpoints::SearchVocabularies.build(context)
          when :start_chat_contact
            Aws::Connect::Endpoints::StartChatContact.build(context)
          when :start_contact_evaluation
            Aws::Connect::Endpoints::StartContactEvaluation.build(context)
          when :start_contact_recording
            Aws::Connect::Endpoints::StartContactRecording.build(context)
          when :start_contact_streaming
            Aws::Connect::Endpoints::StartContactStreaming.build(context)
          when :start_outbound_voice_contact
            Aws::Connect::Endpoints::StartOutboundVoiceContact.build(context)
          when :start_task_contact
            Aws::Connect::Endpoints::StartTaskContact.build(context)
          when :stop_contact
            Aws::Connect::Endpoints::StopContact.build(context)
          when :stop_contact_recording
            Aws::Connect::Endpoints::StopContactRecording.build(context)
          when :stop_contact_streaming
            Aws::Connect::Endpoints::StopContactStreaming.build(context)
          when :submit_contact_evaluation
            Aws::Connect::Endpoints::SubmitContactEvaluation.build(context)
          when :suspend_contact_recording
            Aws::Connect::Endpoints::SuspendContactRecording.build(context)
          when :tag_resource
            Aws::Connect::Endpoints::TagResource.build(context)
          when :transfer_contact
            Aws::Connect::Endpoints::TransferContact.build(context)
          when :untag_resource
            Aws::Connect::Endpoints::UntagResource.build(context)
          when :update_agent_status
            Aws::Connect::Endpoints::UpdateAgentStatus.build(context)
          when :update_contact
            Aws::Connect::Endpoints::UpdateContact.build(context)
          when :update_contact_attributes
            Aws::Connect::Endpoints::UpdateContactAttributes.build(context)
          when :update_contact_evaluation
            Aws::Connect::Endpoints::UpdateContactEvaluation.build(context)
          when :update_contact_flow_content
            Aws::Connect::Endpoints::UpdateContactFlowContent.build(context)
          when :update_contact_flow_metadata
            Aws::Connect::Endpoints::UpdateContactFlowMetadata.build(context)
          when :update_contact_flow_module_content
            Aws::Connect::Endpoints::UpdateContactFlowModuleContent.build(context)
          when :update_contact_flow_module_metadata
            Aws::Connect::Endpoints::UpdateContactFlowModuleMetadata.build(context)
          when :update_contact_flow_name
            Aws::Connect::Endpoints::UpdateContactFlowName.build(context)
          when :update_contact_schedule
            Aws::Connect::Endpoints::UpdateContactSchedule.build(context)
          when :update_evaluation_form
            Aws::Connect::Endpoints::UpdateEvaluationForm.build(context)
          when :update_hours_of_operation
            Aws::Connect::Endpoints::UpdateHoursOfOperation.build(context)
          when :update_instance_attribute
            Aws::Connect::Endpoints::UpdateInstanceAttribute.build(context)
          when :update_instance_storage_config
            Aws::Connect::Endpoints::UpdateInstanceStorageConfig.build(context)
          when :update_participant_role_config
            Aws::Connect::Endpoints::UpdateParticipantRoleConfig.build(context)
          when :update_phone_number
            Aws::Connect::Endpoints::UpdatePhoneNumber.build(context)
          when :update_prompt
            Aws::Connect::Endpoints::UpdatePrompt.build(context)
          when :update_queue_hours_of_operation
            Aws::Connect::Endpoints::UpdateQueueHoursOfOperation.build(context)
          when :update_queue_max_contacts
            Aws::Connect::Endpoints::UpdateQueueMaxContacts.build(context)
          when :update_queue_name
            Aws::Connect::Endpoints::UpdateQueueName.build(context)
          when :update_queue_outbound_caller_config
            Aws::Connect::Endpoints::UpdateQueueOutboundCallerConfig.build(context)
          when :update_queue_status
            Aws::Connect::Endpoints::UpdateQueueStatus.build(context)
          when :update_quick_connect_config
            Aws::Connect::Endpoints::UpdateQuickConnectConfig.build(context)
          when :update_quick_connect_name
            Aws::Connect::Endpoints::UpdateQuickConnectName.build(context)
          when :update_routing_profile_concurrency
            Aws::Connect::Endpoints::UpdateRoutingProfileConcurrency.build(context)
          when :update_routing_profile_default_outbound_queue
            Aws::Connect::Endpoints::UpdateRoutingProfileDefaultOutboundQueue.build(context)
          when :update_routing_profile_name
            Aws::Connect::Endpoints::UpdateRoutingProfileName.build(context)
          when :update_routing_profile_queues
            Aws::Connect::Endpoints::UpdateRoutingProfileQueues.build(context)
          when :update_rule
            Aws::Connect::Endpoints::UpdateRule.build(context)
          when :update_security_profile
            Aws::Connect::Endpoints::UpdateSecurityProfile.build(context)
          when :update_task_template
            Aws::Connect::Endpoints::UpdateTaskTemplate.build(context)
          when :update_traffic_distribution
            Aws::Connect::Endpoints::UpdateTrafficDistribution.build(context)
          when :update_user_hierarchy
            Aws::Connect::Endpoints::UpdateUserHierarchy.build(context)
          when :update_user_hierarchy_group_name
            Aws::Connect::Endpoints::UpdateUserHierarchyGroupName.build(context)
          when :update_user_hierarchy_structure
            Aws::Connect::Endpoints::UpdateUserHierarchyStructure.build(context)
          when :update_user_identity_info
            Aws::Connect::Endpoints::UpdateUserIdentityInfo.build(context)
          when :update_user_phone_config
            Aws::Connect::Endpoints::UpdateUserPhoneConfig.build(context)
          when :update_user_routing_profile
            Aws::Connect::Endpoints::UpdateUserRoutingProfile.build(context)
          when :update_user_security_profiles
            Aws::Connect::Endpoints::UpdateUserSecurityProfiles.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
