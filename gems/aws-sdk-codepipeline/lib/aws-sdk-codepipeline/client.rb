# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module CodePipeline
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :codepipeline

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Returns information about a specified job and whether that job has
      # been received by the job worker. Only used for custom actions.
      #
      # <examples />
      # @option params [required, String] :job_id
      #   The unique system-generated ID of the job for which you want to
      #   confirm receipt.
      # @option params [required, String] :nonce
      #   A system-generated random number that AWS CodePipeline uses to ensure
      #   that the job is being worked on by only one job worker. This number
      #   must be returned in the response.
      # @return [Types::AcknowledgeJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AcknowledgeJobOutput#status #status} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.acknowledge_job({
      #     job_id: "JobId", # required
      #     nonce: "Nonce", # required
      #   })
      #
      # @example Response structure
      #   resp.status #=> String, one of "Created", "Queued", "Dispatched", "InProgress", "TimedOut", "Succeeded", "Failed"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def acknowledge_job(params = {}, options = {})
        req = build_request(:acknowledge_job, params)
        req.send_request(options)
      end

      # Confirms a job worker has received the specified job. Only used for
      # partner actions.
      # @option params [required, String] :job_id
      #   The unique system-generated ID of the job.
      # @option params [required, String] :nonce
      #   A system-generated random number that AWS CodePipeline uses to ensure
      #   that the job is being worked on by only one job worker. This number
      #   must be returned in the response.
      # @option params [required, String] :client_token
      #   The clientToken portion of the clientId and clientToken pair used to
      #   verify that the calling entity is allowed access to the job and its
      #   details.
      # @return [Types::AcknowledgeThirdPartyJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AcknowledgeThirdPartyJobOutput#status #status} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.acknowledge_third_party_job({
      #     job_id: "ThirdPartyJobId", # required
      #     nonce: "Nonce", # required
      #     client_token: "ClientToken", # required
      #   })
      #
      # @example Response structure
      #   resp.status #=> String, one of "Created", "Queued", "Dispatched", "InProgress", "TimedOut", "Succeeded", "Failed"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def acknowledge_third_party_job(params = {}, options = {})
        req = build_request(:acknowledge_third_party_job, params)
        req.send_request(options)
      end

      # Creates a new custom action that can be used in all pipelines
      # associated with the AWS account. Only used for custom actions.
      #
      # <examples />
      # @option params [required, String] :category
      #   The category of the custom action, such as a source action or a build
      #   action.
      #
      #   <note>Although Source is listed as a valid value, it is not currently functional. This value is reserved for future use.</note>
      # @option params [required, String] :provider
      #   The provider of the service used in the custom action, such as AWS
      #   CodeDeploy.
      # @option params [required, String] :version
      #   The version number of the custom action.
      # @option params [Types::ActionTypeSettings] :settings
      #   Returns information about the settings for an action type.
      # @option params [Array<Types::ActionConfigurationProperty>] :configuration_properties
      #   The configuration properties for the custom action.
      #
      #   <note>You can refer to a name in the configuration properties of the custom action within the URL templates by following the format of \{Config:*name*\}, as long as the configuration property is both required and not secret. For more information, see [Create a Custom Action for a Pipeline][1].</note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html
      # @option params [required, Types::ArtifactDetails] :input_artifact_details
      #   Returns information about the details of an artifact.
      # @option params [required, Types::ArtifactDetails] :output_artifact_details
      #   Returns information about the details of an artifact.
      # @return [Types::CreateCustomActionTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateCustomActionTypeOutput#action_type #actionType} => Types::ActionType
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_custom_action_type({
      #     category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke
      #     provider: "ActionProvider", # required
      #     version: "Version", # required
      #     settings: {
      #       third_party_configuration_url: "Url",
      #       entity_url_template: "UrlTemplate",
      #       execution_url_template: "UrlTemplate",
      #       revision_url_template: "UrlTemplate",
      #     },
      #     configuration_properties: [
      #       {
      #         name: "ActionConfigurationKey", # required
      #         required: false, # required
      #         key: false, # required
      #         secret: false, # required
      #         queryable: false,
      #         description: "Description",
      #         type: "String", # accepts String, Number, Boolean
      #       },
      #     ],
      #     input_artifact_details: { # required
      #       minimum_count: 1, # required
      #       maximum_count: 1, # required
      #     },
      #     output_artifact_details: { # required
      #       minimum_count: 1, # required
      #       maximum_count: 1, # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.action_type.id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke"
      #   resp.action_type.id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
      #   resp.action_type.id.provider #=> String
      #   resp.action_type.id.version #=> String
      #   resp.action_type.settings.third_party_configuration_url #=> String
      #   resp.action_type.settings.entity_url_template #=> String
      #   resp.action_type.settings.execution_url_template #=> String
      #   resp.action_type.settings.revision_url_template #=> String
      #   resp.action_type.action_configuration_properties #=> Array
      #   resp.action_type.action_configuration_properties[0].name #=> String
      #   resp.action_type.action_configuration_properties[0].required #=> Boolean
      #   resp.action_type.action_configuration_properties[0].key #=> Boolean
      #   resp.action_type.action_configuration_properties[0].secret #=> Boolean
      #   resp.action_type.action_configuration_properties[0].queryable #=> Boolean
      #   resp.action_type.action_configuration_properties[0].description #=> String
      #   resp.action_type.action_configuration_properties[0].type #=> String, one of "String", "Number", "Boolean"
      #   resp.action_type.input_artifact_details.minimum_count #=> Integer
      #   resp.action_type.input_artifact_details.maximum_count #=> Integer
      #   resp.action_type.output_artifact_details.minimum_count #=> Integer
      #   resp.action_type.output_artifact_details.maximum_count #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_custom_action_type(params = {}, options = {})
        req = build_request(:create_custom_action_type, params)
        req.send_request(options)
      end

      # Creates a pipeline.
      #
      # <examples />
      # @option params [required, Types::PipelineDeclaration] :pipeline
      #   Represents the structure of actions and stages to be performed in the
      #   pipeline.
      # @return [Types::CreatePipelineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreatePipelineOutput#pipeline #pipeline} => Types::PipelineDeclaration
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_pipeline({
      #     pipeline: { # required
      #       name: "PipelineName", # required
      #       role_arn: "RoleArn", # required
      #       artifact_store: { # required
      #         type: "S3", # required, accepts S3
      #         location: "ArtifactStoreLocation", # required
      #         encryption_key: {
      #           id: "EncryptionKeyId", # required
      #           type: "KMS", # required, accepts KMS
      #         },
      #       },
      #       stages: [ # required
      #         {
      #           name: "StageName", # required
      #           blockers: [
      #             {
      #               name: "BlockerName", # required
      #               type: "Schedule", # required, accepts Schedule
      #             },
      #           ],
      #           actions: [ # required
      #             {
      #               name: "ActionName", # required
      #               action_type_id: { # required
      #                 category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke
      #                 owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #                 provider: "ActionProvider", # required
      #                 version: "Version", # required
      #               },
      #               run_order: 1,
      #               configuration: {
      #                 "ActionConfigurationKey" => "ActionConfigurationValue",
      #               },
      #               output_artifacts: [
      #                 {
      #                   name: "ArtifactName", # required
      #                 },
      #               ],
      #               input_artifacts: [
      #                 {
      #                   name: "ArtifactName", # required
      #                 },
      #               ],
      #               role_arn: "RoleArn",
      #             },
      #           ],
      #         },
      #       ],
      #       version: 1,
      #     },
      #   })
      #
      # @example Response structure
      #   resp.pipeline.name #=> String
      #   resp.pipeline.role_arn #=> String
      #   resp.pipeline.artifact_store.type #=> String, one of "S3"
      #   resp.pipeline.artifact_store.location #=> String
      #   resp.pipeline.artifact_store.encryption_key.id #=> String
      #   resp.pipeline.artifact_store.encryption_key.type #=> String, one of "KMS"
      #   resp.pipeline.stages #=> Array
      #   resp.pipeline.stages[0].name #=> String
      #   resp.pipeline.stages[0].blockers #=> Array
      #   resp.pipeline.stages[0].blockers[0].name #=> String
      #   resp.pipeline.stages[0].blockers[0].type #=> String, one of "Schedule"
      #   resp.pipeline.stages[0].actions #=> Array
      #   resp.pipeline.stages[0].actions[0].name #=> String
      #   resp.pipeline.stages[0].actions[0].action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke"
      #   resp.pipeline.stages[0].actions[0].action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
      #   resp.pipeline.stages[0].actions[0].action_type_id.provider #=> String
      #   resp.pipeline.stages[0].actions[0].action_type_id.version #=> String
      #   resp.pipeline.stages[0].actions[0].run_order #=> Integer
      #   resp.pipeline.stages[0].actions[0].configuration #=> Hash
      #   resp.pipeline.stages[0].actions[0].configuration["ActionConfigurationKey"] #=> String
      #   resp.pipeline.stages[0].actions[0].output_artifacts #=> Array
      #   resp.pipeline.stages[0].actions[0].output_artifacts[0].name #=> String
      #   resp.pipeline.stages[0].actions[0].input_artifacts #=> Array
      #   resp.pipeline.stages[0].actions[0].input_artifacts[0].name #=> String
      #   resp.pipeline.stages[0].actions[0].role_arn #=> String
      #   resp.pipeline.version #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_pipeline(params = {}, options = {})
        req = build_request(:create_pipeline, params)
        req.send_request(options)
      end

      # Marks a custom action as deleted. PollForJobs for the custom action
      # will fail after the action is marked for deletion. Only used for
      # custom actions.
      #
      # <important markdown="1">You cannot recreate a custom action after it has been deleted unless
      # you increase the version number of the action.
      #
      # </important>
      #
      # <examples />
      # @option params [required, String] :category
      #   The category of the custom action that you want to delete, such as
      #   source or deploy.
      # @option params [required, String] :provider
      #   The provider of the service used in the custom action, such as AWS
      #   CodeDeploy.
      # @option params [required, String] :version
      #   The version of the custom action to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_custom_action_type({
      #     category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke
      #     provider: "ActionProvider", # required
      #     version: "Version", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_custom_action_type(params = {}, options = {})
        req = build_request(:delete_custom_action_type, params)
        req.send_request(options)
      end

      # Deletes the specified pipeline.
      #
      # <examples />
      # @option params [required, String] :name
      #   The name of the pipeline to be deleted.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_pipeline({
      #     name: "PipelineName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_pipeline(params = {}, options = {})
        req = build_request(:delete_pipeline, params)
        req.send_request(options)
      end

      # Prevents artifacts in a pipeline from transitioning to the next stage
      # in the pipeline.
      #
      # <examples />
      # @option params [required, String] :pipeline_name
      #   The name of the pipeline in which you want to disable the flow of
      #   artifacts from one stage to another.
      # @option params [required, String] :stage_name
      #   The name of the stage where you want to disable the inbound or
      #   outbound transition of artifacts.
      # @option params [required, String] :transition_type
      #   Specifies whether artifacts will be prevented from transitioning into
      #   the stage and being processed by the actions in that stage (inbound),
      #   or prevented from transitioning from the stage after they have been
      #   processed by the actions in that stage (outbound).
      # @option params [required, String] :reason
      #   The reason given to the user why a stage is disabled, such as waiting
      #   for manual approval or manual tests. This message is displayed in the
      #   pipeline console UI.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.disable_stage_transition({
      #     pipeline_name: "PipelineName", # required
      #     stage_name: "StageName", # required
      #     transition_type: "Inbound", # required, accepts Inbound, Outbound
      #     reason: "DisabledReason", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def disable_stage_transition(params = {}, options = {})
        req = build_request(:disable_stage_transition, params)
        req.send_request(options)
      end

      # Enables artifacts in a pipeline to transition to a stage in a
      # pipeline.
      #
      # <examples />
      # @option params [required, String] :pipeline_name
      #   The name of the pipeline in which you want to enable the flow of
      #   artifacts from one stage to another.
      # @option params [required, String] :stage_name
      #   The name of the stage where you want to enable the transition of
      #   artifacts, either into the stage (inbound) or from that stage to the
      #   next stage (outbound).
      # @option params [required, String] :transition_type
      #   Specifies whether artifacts will be allowed to enter the stage and be
      #   processed by the actions in that stage (inbound) or whether
      #   already-processed artifacts will be allowed to transition to the next
      #   stage (outbound).
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.enable_stage_transition({
      #     pipeline_name: "PipelineName", # required
      #     stage_name: "StageName", # required
      #     transition_type: "Inbound", # required, accepts Inbound, Outbound
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def enable_stage_transition(params = {}, options = {})
        req = build_request(:enable_stage_transition, params)
        req.send_request(options)
      end

      # Returns information about a job. Only used for custom actions.
      #
      # <important markdown="1">When this API is called, AWS CodePipeline returns temporary
      # credentials for the Amazon S3 bucket used to store artifacts for the
      # pipeline, if the action requires access to that Amazon S3 bucket for
      # input or output artifacts. Additionally, this API returns any secret
      # values defined for the action.
      #
      # </important>
      #
      # <examples />
      # @option params [required, String] :job_id
      #   The unique system-generated ID for the job.
      # @return [Types::GetJobDetailsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetJobDetailsOutput#job_details #jobDetails} => Types::JobDetails
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_job_details({
      #     job_id: "JobId", # required
      #   })
      #
      # @example Response structure
      #   resp.job_details.id #=> String
      #   resp.job_details.data.action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke"
      #   resp.job_details.data.action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
      #   resp.job_details.data.action_type_id.provider #=> String
      #   resp.job_details.data.action_type_id.version #=> String
      #   resp.job_details.data.action_configuration.configuration #=> Hash
      #   resp.job_details.data.action_configuration.configuration["ActionConfigurationKey"] #=> String
      #   resp.job_details.data.pipeline_context.pipeline_name #=> String
      #   resp.job_details.data.pipeline_context.stage.name #=> String
      #   resp.job_details.data.pipeline_context.action.name #=> String
      #   resp.job_details.data.input_artifacts #=> Array
      #   resp.job_details.data.input_artifacts[0].name #=> String
      #   resp.job_details.data.input_artifacts[0].revision #=> String
      #   resp.job_details.data.input_artifacts[0].location.type #=> String, one of "S3"
      #   resp.job_details.data.input_artifacts[0].location.s3_location.bucket_name #=> String
      #   resp.job_details.data.input_artifacts[0].location.s3_location.object_key #=> String
      #   resp.job_details.data.output_artifacts #=> Array
      #   resp.job_details.data.output_artifacts[0].name #=> String
      #   resp.job_details.data.output_artifacts[0].revision #=> String
      #   resp.job_details.data.output_artifacts[0].location.type #=> String, one of "S3"
      #   resp.job_details.data.output_artifacts[0].location.s3_location.bucket_name #=> String
      #   resp.job_details.data.output_artifacts[0].location.s3_location.object_key #=> String
      #   resp.job_details.data.artifact_credentials.access_key_id #=> String
      #   resp.job_details.data.artifact_credentials.secret_access_key #=> String
      #   resp.job_details.data.artifact_credentials.session_token #=> String
      #   resp.job_details.data.continuation_token #=> String
      #   resp.job_details.data.encryption_key.id #=> String
      #   resp.job_details.data.encryption_key.type #=> String, one of "KMS"
      #   resp.job_details.account_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_job_details(params = {}, options = {})
        req = build_request(:get_job_details, params)
        req.send_request(options)
      end

      # Returns the metadata, structure, stages, and actions of a pipeline.
      # Can be used to return the entire structure of a pipeline in JSON
      # format, which can then be modified and used to update the pipeline
      # structure with UpdatePipeline.
      #
      # <examples />
      # @option params [required, String] :name
      #   The name of the pipeline for which you want to get information.
      #   Pipeline names must be unique under an Amazon Web Services (AWS) user
      #   account.
      # @option params [Integer] :version
      #   The version number of the pipeline. If you do not specify a version,
      #   defaults to the most current version.
      # @return [Types::GetPipelineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetPipelineOutput#pipeline #pipeline} => Types::PipelineDeclaration
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_pipeline({
      #     name: "PipelineName", # required
      #     version: 1,
      #   })
      #
      # @example Response structure
      #   resp.pipeline.name #=> String
      #   resp.pipeline.role_arn #=> String
      #   resp.pipeline.artifact_store.type #=> String, one of "S3"
      #   resp.pipeline.artifact_store.location #=> String
      #   resp.pipeline.artifact_store.encryption_key.id #=> String
      #   resp.pipeline.artifact_store.encryption_key.type #=> String, one of "KMS"
      #   resp.pipeline.stages #=> Array
      #   resp.pipeline.stages[0].name #=> String
      #   resp.pipeline.stages[0].blockers #=> Array
      #   resp.pipeline.stages[0].blockers[0].name #=> String
      #   resp.pipeline.stages[0].blockers[0].type #=> String, one of "Schedule"
      #   resp.pipeline.stages[0].actions #=> Array
      #   resp.pipeline.stages[0].actions[0].name #=> String
      #   resp.pipeline.stages[0].actions[0].action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke"
      #   resp.pipeline.stages[0].actions[0].action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
      #   resp.pipeline.stages[0].actions[0].action_type_id.provider #=> String
      #   resp.pipeline.stages[0].actions[0].action_type_id.version #=> String
      #   resp.pipeline.stages[0].actions[0].run_order #=> Integer
      #   resp.pipeline.stages[0].actions[0].configuration #=> Hash
      #   resp.pipeline.stages[0].actions[0].configuration["ActionConfigurationKey"] #=> String
      #   resp.pipeline.stages[0].actions[0].output_artifacts #=> Array
      #   resp.pipeline.stages[0].actions[0].output_artifacts[0].name #=> String
      #   resp.pipeline.stages[0].actions[0].input_artifacts #=> Array
      #   resp.pipeline.stages[0].actions[0].input_artifacts[0].name #=> String
      #   resp.pipeline.stages[0].actions[0].role_arn #=> String
      #   resp.pipeline.version #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_pipeline(params = {}, options = {})
        req = build_request(:get_pipeline, params)
        req.send_request(options)
      end

      # Returns information about the state of a pipeline, including the
      # stages, actions, and details about the last run of the pipeline.
      #
      # <examples />
      # @option params [required, String] :name
      #   The name of the pipeline about which you want to get information.
      # @return [Types::GetPipelineStateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetPipelineStateOutput#pipeline_name #pipelineName} => String
      #   * {Types::GetPipelineStateOutput#pipeline_version #pipelineVersion} => Integer
      #   * {Types::GetPipelineStateOutput#stage_states #stageStates} => Array&lt;Types::StageState&gt;
      #   * {Types::GetPipelineStateOutput#created #created} => Time
      #   * {Types::GetPipelineStateOutput#updated #updated} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_pipeline_state({
      #     name: "PipelineName", # required
      #   })
      #
      # @example Response structure
      #   resp.pipeline_name #=> String
      #   resp.pipeline_version #=> Integer
      #   resp.stage_states #=> Array
      #   resp.stage_states[0].stage_name #=> String
      #   resp.stage_states[0].inbound_transition_state.enabled #=> Boolean
      #   resp.stage_states[0].inbound_transition_state.last_changed_by #=> String
      #   resp.stage_states[0].inbound_transition_state.last_changed_at #=> Time
      #   resp.stage_states[0].inbound_transition_state.disabled_reason #=> String
      #   resp.stage_states[0].action_states #=> Array
      #   resp.stage_states[0].action_states[0].action_name #=> String
      #   resp.stage_states[0].action_states[0].current_revision.revision_id #=> String
      #   resp.stage_states[0].action_states[0].current_revision.revision_change_id #=> String
      #   resp.stage_states[0].action_states[0].current_revision.created #=> Time
      #   resp.stage_states[0].action_states[0].latest_execution.status #=> String, one of "InProgress", "Succeeded", "Failed"
      #   resp.stage_states[0].action_states[0].latest_execution.summary #=> String
      #   resp.stage_states[0].action_states[0].latest_execution.last_status_change #=> Time
      #   resp.stage_states[0].action_states[0].latest_execution.external_execution_id #=> String
      #   resp.stage_states[0].action_states[0].latest_execution.external_execution_url #=> String
      #   resp.stage_states[0].action_states[0].latest_execution.percent_complete #=> Integer
      #   resp.stage_states[0].action_states[0].latest_execution.error_details.code #=> String
      #   resp.stage_states[0].action_states[0].latest_execution.error_details.message #=> String
      #   resp.stage_states[0].action_states[0].entity_url #=> String
      #   resp.stage_states[0].action_states[0].revision_url #=> String
      #   resp.created #=> Time
      #   resp.updated #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_pipeline_state(params = {}, options = {})
        req = build_request(:get_pipeline_state, params)
        req.send_request(options)
      end

      # Requests the details of a job for a third party action. Only used for
      # partner actions.
      #
      # <important markdown="1">When this API is called, AWS CodePipeline returns temporary
      # credentials for the Amazon S3 bucket used to store artifacts for the
      # pipeline, if the action requires access to that Amazon S3 bucket for
      # input or output artifacts. Additionally, this API returns any secret
      # values defined for the action.
      #
      # </important>
      # @option params [required, String] :job_id
      #   The unique system-generated ID used for identifying the job.
      # @option params [required, String] :client_token
      #   The clientToken portion of the clientId and clientToken pair used to
      #   verify that the calling entity is allowed access to the job and its
      #   details.
      # @return [Types::GetThirdPartyJobDetailsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetThirdPartyJobDetailsOutput#job_details #jobDetails} => Types::ThirdPartyJobDetails
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_third_party_job_details({
      #     job_id: "ThirdPartyJobId", # required
      #     client_token: "ClientToken", # required
      #   })
      #
      # @example Response structure
      #   resp.job_details.id #=> String
      #   resp.job_details.data.action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke"
      #   resp.job_details.data.action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
      #   resp.job_details.data.action_type_id.provider #=> String
      #   resp.job_details.data.action_type_id.version #=> String
      #   resp.job_details.data.action_configuration.configuration #=> Hash
      #   resp.job_details.data.action_configuration.configuration["ActionConfigurationKey"] #=> String
      #   resp.job_details.data.pipeline_context.pipeline_name #=> String
      #   resp.job_details.data.pipeline_context.stage.name #=> String
      #   resp.job_details.data.pipeline_context.action.name #=> String
      #   resp.job_details.data.input_artifacts #=> Array
      #   resp.job_details.data.input_artifacts[0].name #=> String
      #   resp.job_details.data.input_artifacts[0].revision #=> String
      #   resp.job_details.data.input_artifacts[0].location.type #=> String, one of "S3"
      #   resp.job_details.data.input_artifacts[0].location.s3_location.bucket_name #=> String
      #   resp.job_details.data.input_artifacts[0].location.s3_location.object_key #=> String
      #   resp.job_details.data.output_artifacts #=> Array
      #   resp.job_details.data.output_artifacts[0].name #=> String
      #   resp.job_details.data.output_artifacts[0].revision #=> String
      #   resp.job_details.data.output_artifacts[0].location.type #=> String, one of "S3"
      #   resp.job_details.data.output_artifacts[0].location.s3_location.bucket_name #=> String
      #   resp.job_details.data.output_artifacts[0].location.s3_location.object_key #=> String
      #   resp.job_details.data.artifact_credentials.access_key_id #=> String
      #   resp.job_details.data.artifact_credentials.secret_access_key #=> String
      #   resp.job_details.data.artifact_credentials.session_token #=> String
      #   resp.job_details.data.continuation_token #=> String
      #   resp.job_details.data.encryption_key.id #=> String
      #   resp.job_details.data.encryption_key.type #=> String, one of "KMS"
      #   resp.job_details.nonce #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_third_party_job_details(params = {}, options = {})
        req = build_request(:get_third_party_job_details, params)
        req.send_request(options)
      end

      # Gets a summary of all AWS CodePipeline action types associated with
      # your account.
      # @option params [String] :action_owner_filter
      #   Filters the list of action types to those created by a specified
      #   entity.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous list action types
      #   call, which can be used to return the next set of action types in the
      #   list.
      # @return [Types::ListActionTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListActionTypesOutput#action_types #actionTypes} => Array&lt;Types::ActionType&gt;
      #   * {Types::ListActionTypesOutput#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_action_types({
      #     action_owner_filter: "AWS", # accepts AWS, ThirdParty, Custom
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.action_types #=> Array
      #   resp.action_types[0].id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke"
      #   resp.action_types[0].id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
      #   resp.action_types[0].id.provider #=> String
      #   resp.action_types[0].id.version #=> String
      #   resp.action_types[0].settings.third_party_configuration_url #=> String
      #   resp.action_types[0].settings.entity_url_template #=> String
      #   resp.action_types[0].settings.execution_url_template #=> String
      #   resp.action_types[0].settings.revision_url_template #=> String
      #   resp.action_types[0].action_configuration_properties #=> Array
      #   resp.action_types[0].action_configuration_properties[0].name #=> String
      #   resp.action_types[0].action_configuration_properties[0].required #=> Boolean
      #   resp.action_types[0].action_configuration_properties[0].key #=> Boolean
      #   resp.action_types[0].action_configuration_properties[0].secret #=> Boolean
      #   resp.action_types[0].action_configuration_properties[0].queryable #=> Boolean
      #   resp.action_types[0].action_configuration_properties[0].description #=> String
      #   resp.action_types[0].action_configuration_properties[0].type #=> String, one of "String", "Number", "Boolean"
      #   resp.action_types[0].input_artifact_details.minimum_count #=> Integer
      #   resp.action_types[0].input_artifact_details.maximum_count #=> Integer
      #   resp.action_types[0].output_artifact_details.minimum_count #=> Integer
      #   resp.action_types[0].output_artifact_details.maximum_count #=> Integer
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_action_types(params = {}, options = {})
        req = build_request(:list_action_types, params)
        req.send_request(options)
      end

      # Gets a summary of all of the pipelines associated with your account.
      #
      # <examples />
      # @option params [String] :next_token
      #   An identifier that was returned from the previous list pipelines call,
      #   which can be used to return the next set of pipelines in the list.
      # @return [Types::ListPipelinesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListPipelinesOutput#pipelines #pipelines} => Array&lt;Types::PipelineSummary&gt;
      #   * {Types::ListPipelinesOutput#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_pipelines({
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.pipelines #=> Array
      #   resp.pipelines[0].name #=> String
      #   resp.pipelines[0].version #=> Integer
      #   resp.pipelines[0].created #=> Time
      #   resp.pipelines[0].updated #=> Time
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_pipelines(params = {}, options = {})
        req = build_request(:list_pipelines, params)
        req.send_request(options)
      end

      # Returns information about any jobs for AWS CodePipeline to act upon.
      #
      # <important markdown="1">When this API is called, AWS CodePipeline returns temporary
      # credentials for the Amazon S3 bucket used to store artifacts for the
      # pipeline, if the action requires access to that Amazon S3 bucket for
      # input or output artifacts. Additionally, this API returns any secret
      # values defined for the action.
      #
      # </important>
      #
      # <examples />
      # @option params [required, Types::ActionTypeId] :action_type_id
      #   Represents information about an action type.
      # @option params [Integer] :max_batch_size
      #   The maximum number of jobs to return in a poll for jobs call.
      # @option params [Hash<String,String>] :query_param
      #   A map of property names and values. For an action type with no
      #   queryable properties, this value must be null or an empty map. For an
      #   action type with a queryable property, you must supply that property
      #   as a key in the map. Only jobs whose action configuration matches the
      #   mapped value will be returned.
      # @return [Types::PollForJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PollForJobsOutput#jobs #jobs} => Array&lt;Types::Job&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.poll_for_jobs({
      #     action_type_id: { # required
      #       category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke
      #       owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #       provider: "ActionProvider", # required
      #       version: "Version", # required
      #     },
      #     max_batch_size: 1,
      #     query_param: {
      #       "ActionConfigurationKey" => "ActionConfigurationQueryableValue",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.jobs #=> Array
      #   resp.jobs[0].id #=> String
      #   resp.jobs[0].data.action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke"
      #   resp.jobs[0].data.action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
      #   resp.jobs[0].data.action_type_id.provider #=> String
      #   resp.jobs[0].data.action_type_id.version #=> String
      #   resp.jobs[0].data.action_configuration.configuration #=> Hash
      #   resp.jobs[0].data.action_configuration.configuration["ActionConfigurationKey"] #=> String
      #   resp.jobs[0].data.pipeline_context.pipeline_name #=> String
      #   resp.jobs[0].data.pipeline_context.stage.name #=> String
      #   resp.jobs[0].data.pipeline_context.action.name #=> String
      #   resp.jobs[0].data.input_artifacts #=> Array
      #   resp.jobs[0].data.input_artifacts[0].name #=> String
      #   resp.jobs[0].data.input_artifacts[0].revision #=> String
      #   resp.jobs[0].data.input_artifacts[0].location.type #=> String, one of "S3"
      #   resp.jobs[0].data.input_artifacts[0].location.s3_location.bucket_name #=> String
      #   resp.jobs[0].data.input_artifacts[0].location.s3_location.object_key #=> String
      #   resp.jobs[0].data.output_artifacts #=> Array
      #   resp.jobs[0].data.output_artifacts[0].name #=> String
      #   resp.jobs[0].data.output_artifacts[0].revision #=> String
      #   resp.jobs[0].data.output_artifacts[0].location.type #=> String, one of "S3"
      #   resp.jobs[0].data.output_artifacts[0].location.s3_location.bucket_name #=> String
      #   resp.jobs[0].data.output_artifacts[0].location.s3_location.object_key #=> String
      #   resp.jobs[0].data.artifact_credentials.access_key_id #=> String
      #   resp.jobs[0].data.artifact_credentials.secret_access_key #=> String
      #   resp.jobs[0].data.artifact_credentials.session_token #=> String
      #   resp.jobs[0].data.continuation_token #=> String
      #   resp.jobs[0].data.encryption_key.id #=> String
      #   resp.jobs[0].data.encryption_key.type #=> String, one of "KMS"
      #   resp.jobs[0].nonce #=> String
      #   resp.jobs[0].account_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def poll_for_jobs(params = {}, options = {})
        req = build_request(:poll_for_jobs, params)
        req.send_request(options)
      end

      # Determines whether there are any third party jobs for a job worker to
      # act on. Only used for partner actions.
      #
      # <important markdown="1">When this API is called, AWS CodePipeline returns temporary
      # credentials for the Amazon S3 bucket used to store artifacts for the
      # pipeline, if the action requires access to that Amazon S3 bucket for
      # input or output artifacts.
      #
      # </important>
      # @option params [required, Types::ActionTypeId] :action_type_id
      #   Represents information about an action type.
      # @option params [Integer] :max_batch_size
      #   The maximum number of jobs to return in a poll for jobs call.
      # @return [Types::PollForThirdPartyJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PollForThirdPartyJobsOutput#jobs #jobs} => Array&lt;Types::ThirdPartyJob&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.poll_for_third_party_jobs({
      #     action_type_id: { # required
      #       category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke
      #       owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #       provider: "ActionProvider", # required
      #       version: "Version", # required
      #     },
      #     max_batch_size: 1,
      #   })
      #
      # @example Response structure
      #   resp.jobs #=> Array
      #   resp.jobs[0].client_id #=> String
      #   resp.jobs[0].job_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def poll_for_third_party_jobs(params = {}, options = {})
        req = build_request(:poll_for_third_party_jobs, params)
        req.send_request(options)
      end

      # Provides information to AWS CodePipeline about new revisions to a
      # source.
      # @option params [required, String] :pipeline_name
      #   The name of the pipeline that will start processing the revision to
      #   the source.
      # @option params [required, String] :stage_name
      #   The name of the stage that contains the action that will act upon the
      #   revision.
      # @option params [required, String] :action_name
      #   The name of the action that will process the revision.
      # @option params [required, Types::ActionRevision] :action_revision
      #   Represents information about the version (or revision) of an action.
      # @return [Types::PutActionRevisionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutActionRevisionOutput#new_revision #newRevision} => Boolean
      #   * {Types::PutActionRevisionOutput#pipeline_execution_id #pipelineExecutionId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_action_revision({
      #     pipeline_name: "PipelineName", # required
      #     stage_name: "StageName", # required
      #     action_name: "ActionName", # required
      #     action_revision: { # required
      #       revision_id: "Revision", # required
      #       revision_change_id: "RevisionChangeIdentifier", # required
      #       created: Time.now, # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.new_revision #=> Boolean
      #   resp.pipeline_execution_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_action_revision(params = {}, options = {})
        req = build_request(:put_action_revision, params)
        req.send_request(options)
      end

      # Represents the failure of a job as returned to the pipeline by a job
      # worker. Only used for custom actions.
      # @option params [required, String] :job_id
      #   The unique system-generated ID of the job that failed. This is the
      #   same ID returned from PollForJobs.
      # @option params [required, Types::FailureDetails] :failure_details
      #   The details about the failure of a job.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_job_failure_result({
      #     job_id: "JobId", # required
      #     failure_details: { # required
      #       type: "JobFailed", # required, accepts JobFailed, ConfigurationError, PermissionError, RevisionOutOfSync, RevisionUnavailable, SystemUnavailable
      #       message: "Message", # required
      #       external_execution_id: "ExecutionId",
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_job_failure_result(params = {}, options = {})
        req = build_request(:put_job_failure_result, params)
        req.send_request(options)
      end

      # Represents the success of a job as returned to the pipeline by a job
      # worker. Only used for custom actions.
      # @option params [required, String] :job_id
      #   The unique system-generated ID of the job that succeeded. This is the
      #   same ID returned from PollForJobs.
      # @option params [Types::CurrentRevision] :current_revision
      #   The ID of the current revision of the artifact successfully worked
      #   upon by the job.
      # @option params [String] :continuation_token
      #   A token generated by a job worker, such as an AWS CodeDeploy
      #   deployment ID, that a successful job provides to identify a custom
      #   action in progress. Future jobs will use this token in order to
      #   identify the running instance of the action. It can be reused to
      #   return additional information about the progress of the custom action.
      #   When the action is complete, no continuation token should be supplied.
      # @option params [Types::ExecutionDetails] :execution_details
      #   The execution details of the successful job, such as the actions taken
      #   by the job worker.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_job_success_result({
      #     job_id: "JobId", # required
      #     current_revision: {
      #       revision: "Revision", # required
      #       change_identifier: "RevisionChangeIdentifier", # required
      #     },
      #     continuation_token: "ContinuationToken",
      #     execution_details: {
      #       summary: "ExecutionSummary",
      #       external_execution_id: "ExecutionId",
      #       percent_complete: 1,
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_job_success_result(params = {}, options = {})
        req = build_request(:put_job_success_result, params)
        req.send_request(options)
      end

      # Represents the failure of a third party job as returned to the
      # pipeline by a job worker. Only used for partner actions.
      # @option params [required, String] :job_id
      #   The ID of the job that failed. This is the same ID returned from
      #   PollForThirdPartyJobs.
      # @option params [required, String] :client_token
      #   The clientToken portion of the clientId and clientToken pair used to
      #   verify that the calling entity is allowed access to the job and its
      #   details.
      # @option params [required, Types::FailureDetails] :failure_details
      #   Represents information about failure details.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_third_party_job_failure_result({
      #     job_id: "ThirdPartyJobId", # required
      #     client_token: "ClientToken", # required
      #     failure_details: { # required
      #       type: "JobFailed", # required, accepts JobFailed, ConfigurationError, PermissionError, RevisionOutOfSync, RevisionUnavailable, SystemUnavailable
      #       message: "Message", # required
      #       external_execution_id: "ExecutionId",
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_third_party_job_failure_result(params = {}, options = {})
        req = build_request(:put_third_party_job_failure_result, params)
        req.send_request(options)
      end

      # Represents the success of a third party job as returned to the
      # pipeline by a job worker. Only used for partner actions.
      # @option params [required, String] :job_id
      #   The ID of the job that successfully completed. This is the same ID
      #   returned from PollForThirdPartyJobs.
      # @option params [required, String] :client_token
      #   The clientToken portion of the clientId and clientToken pair used to
      #   verify that the calling entity is allowed access to the job and its
      #   details.
      # @option params [Types::CurrentRevision] :current_revision
      #   Represents information about a current revision.
      # @option params [String] :continuation_token
      #   A token generated by a job worker, such as an AWS CodeDeploy
      #   deployment ID, that a successful job provides to identify a partner
      #   action in progress. Future jobs will use this token in order to
      #   identify the running instance of the action. It can be reused to
      #   return additional information about the progress of the partner
      #   action. When the action is complete, no continuation token should be
      #   supplied.
      # @option params [Types::ExecutionDetails] :execution_details
      #   The details of the actions taken and results produced on an artifact
      #   as it passes through stages in the pipeline.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_third_party_job_success_result({
      #     job_id: "ThirdPartyJobId", # required
      #     client_token: "ClientToken", # required
      #     current_revision: {
      #       revision: "Revision", # required
      #       change_identifier: "RevisionChangeIdentifier", # required
      #     },
      #     continuation_token: "ContinuationToken",
      #     execution_details: {
      #       summary: "ExecutionSummary",
      #       external_execution_id: "ExecutionId",
      #       percent_complete: 1,
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_third_party_job_success_result(params = {}, options = {})
        req = build_request(:put_third_party_job_success_result, params)
        req.send_request(options)
      end

      # Starts the specified pipeline. Specifically, it begins processing the
      # latest commit to the source location specified as part of the
      # pipeline.
      #
      # <examples />
      # @option params [required, String] :name
      #   The name of the pipeline to start.
      # @return [Types::StartPipelineExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StartPipelineExecutionOutput#pipeline_execution_id #pipelineExecutionId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.start_pipeline_execution({
      #     name: "PipelineName", # required
      #   })
      #
      # @example Response structure
      #   resp.pipeline_execution_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def start_pipeline_execution(params = {}, options = {})
        req = build_request(:start_pipeline_execution, params)
        req.send_request(options)
      end

      # Updates a specified pipeline with edits or changes to its structure.
      # Use a JSON file with the pipeline structure in conjunction with
      # UpdatePipeline to provide the full structure of the pipeline. Updating
      # the pipeline increases the version number of the pipeline by 1.
      #
      # <examples />
      # @option params [required, Types::PipelineDeclaration] :pipeline
      #   The name of the pipeline to be updated.
      # @return [Types::UpdatePipelineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdatePipelineOutput#pipeline #pipeline} => Types::PipelineDeclaration
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_pipeline({
      #     pipeline: { # required
      #       name: "PipelineName", # required
      #       role_arn: "RoleArn", # required
      #       artifact_store: { # required
      #         type: "S3", # required, accepts S3
      #         location: "ArtifactStoreLocation", # required
      #         encryption_key: {
      #           id: "EncryptionKeyId", # required
      #           type: "KMS", # required, accepts KMS
      #         },
      #       },
      #       stages: [ # required
      #         {
      #           name: "StageName", # required
      #           blockers: [
      #             {
      #               name: "BlockerName", # required
      #               type: "Schedule", # required, accepts Schedule
      #             },
      #           ],
      #           actions: [ # required
      #             {
      #               name: "ActionName", # required
      #               action_type_id: { # required
      #                 category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke
      #                 owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #                 provider: "ActionProvider", # required
      #                 version: "Version", # required
      #               },
      #               run_order: 1,
      #               configuration: {
      #                 "ActionConfigurationKey" => "ActionConfigurationValue",
      #               },
      #               output_artifacts: [
      #                 {
      #                   name: "ArtifactName", # required
      #                 },
      #               ],
      #               input_artifacts: [
      #                 {
      #                   name: "ArtifactName", # required
      #                 },
      #               ],
      #               role_arn: "RoleArn",
      #             },
      #           ],
      #         },
      #       ],
      #       version: 1,
      #     },
      #   })
      #
      # @example Response structure
      #   resp.pipeline.name #=> String
      #   resp.pipeline.role_arn #=> String
      #   resp.pipeline.artifact_store.type #=> String, one of "S3"
      #   resp.pipeline.artifact_store.location #=> String
      #   resp.pipeline.artifact_store.encryption_key.id #=> String
      #   resp.pipeline.artifact_store.encryption_key.type #=> String, one of "KMS"
      #   resp.pipeline.stages #=> Array
      #   resp.pipeline.stages[0].name #=> String
      #   resp.pipeline.stages[0].blockers #=> Array
      #   resp.pipeline.stages[0].blockers[0].name #=> String
      #   resp.pipeline.stages[0].blockers[0].type #=> String, one of "Schedule"
      #   resp.pipeline.stages[0].actions #=> Array
      #   resp.pipeline.stages[0].actions[0].name #=> String
      #   resp.pipeline.stages[0].actions[0].action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke"
      #   resp.pipeline.stages[0].actions[0].action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
      #   resp.pipeline.stages[0].actions[0].action_type_id.provider #=> String
      #   resp.pipeline.stages[0].actions[0].action_type_id.version #=> String
      #   resp.pipeline.stages[0].actions[0].run_order #=> Integer
      #   resp.pipeline.stages[0].actions[0].configuration #=> Hash
      #   resp.pipeline.stages[0].actions[0].configuration["ActionConfigurationKey"] #=> String
      #   resp.pipeline.stages[0].actions[0].output_artifacts #=> Array
      #   resp.pipeline.stages[0].actions[0].output_artifacts[0].name #=> String
      #   resp.pipeline.stages[0].actions[0].input_artifacts #=> Array
      #   resp.pipeline.stages[0].actions[0].input_artifacts[0].name #=> String
      #   resp.pipeline.stages[0].actions[0].role_arn #=> String
      #   resp.pipeline.version #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_pipeline(params = {}, options = {})
        req = build_request(:update_pipeline, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
