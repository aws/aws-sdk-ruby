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
    module Types

      # Represents an AWS session credentials object. These credentials are
      # temporary credentials that are issued by AWS Secure Token Service
      # (STS). They can be used to access input and output artifacts in the
      # Amazon S3 bucket used to store artifact for the pipeline in AWS
      # CodePipeline.
      class AWSSessionCredentials < Aws::Structure.new(
        :access_key_id,
        :secret_access_key,
        :session_token)

        # @!attribute [rw] access_key_id
        #   The access key for the session.
        #   @return [String]

        # @!attribute [rw] secret_access_key
        #   The secret access key for the session.
        #   @return [String]

        # @!attribute [rw] session_token
        #   The token for the session.
        #   @return [String]

      end

      # Represents the input of an acknowledge job action.
      # @note When making an API call, pass AcknowledgeJobInput
      #   data as a hash:
      #
      #       {
      #         job_id: "JobId", # required
      #         nonce: "Nonce", # required
      #       }
      class AcknowledgeJobInput < Aws::Structure.new(
        :job_id,
        :nonce)

        # @!attribute [rw] job_id
        #   The unique system-generated ID of the job for which you want to
        #   confirm receipt.
        #   @return [String]

        # @!attribute [rw] nonce
        #   A system-generated random number that AWS CodePipeline uses to
        #   ensure that the job is being worked on by only one job worker. This
        #   number must be returned in the response.
        #   @return [String]

      end

      # Represents the output of an acknowledge job action.
      class AcknowledgeJobOutput < Aws::Structure.new(
        :status)

        # @!attribute [rw] status
        #   Whether the job worker has received the specified job.
        #   @return [String]

      end

      # Represents the input of an acknowledge third party job action.
      # @note When making an API call, pass AcknowledgeThirdPartyJobInput
      #   data as a hash:
      #
      #       {
      #         job_id: "ThirdPartyJobId", # required
      #         nonce: "Nonce", # required
      #         client_token: "ClientToken", # required
      #       }
      class AcknowledgeThirdPartyJobInput < Aws::Structure.new(
        :job_id,
        :nonce,
        :client_token)

        # @!attribute [rw] job_id
        #   The unique system-generated ID of the job.
        #   @return [String]

        # @!attribute [rw] nonce
        #   A system-generated random number that AWS CodePipeline uses to
        #   ensure that the job is being worked on by only one job worker. This
        #   number must be returned in the response.
        #   @return [String]

        # @!attribute [rw] client_token
        #   The clientToken portion of the clientId and clientToken pair used to
        #   verify that the calling entity is allowed access to the job and its
        #   details.
        #   @return [String]

      end

      # Represents the output of an acknowledge third party job action.
      class AcknowledgeThirdPartyJobOutput < Aws::Structure.new(
        :status)

        # @!attribute [rw] status
        #   The status information for the third party job, if any.
        #   @return [String]

      end

      # Represents information about an action configuration.
      class ActionConfiguration < Aws::Structure.new(
        :configuration)

        # @!attribute [rw] configuration
        #   The configuration data for the action.
        #   @return [Hash<String,String>]

      end

      # Represents information about an action configuration property.
      # @note When making an API call, pass ActionConfigurationProperty
      #   data as a hash:
      #
      #       {
      #         name: "ActionConfigurationKey", # required
      #         required: false, # required
      #         key: false, # required
      #         secret: false, # required
      #         queryable: false,
      #         description: "Description",
      #         type: "String", # accepts String, Number, Boolean
      #       }
      class ActionConfigurationProperty < Aws::Structure.new(
        :name,
        :required,
        :key,
        :secret,
        :queryable,
        :description,
        :type)

        # @!attribute [rw] name
        #   The name of the action configuration property.
        #   @return [String]

        # @!attribute [rw] required
        #   Whether the configuration property is a required value.
        #   @return [Boolean]

        # @!attribute [rw] key
        #   Whether the configuration property is a key.
        #   @return [Boolean]

        # @!attribute [rw] secret
        #   Whether the configuration property is secret. Secrets are hidden
        #   from all calls except for GetJobDetails, GetThirdPartyJobDetails,
        #   PollForJobs, and PollForThirdPartyJobs.
        #
        #   When updating a pipeline, passing \* \* \* \* \* without changing
        #   any other values of the action will preserve the prior value of the
        #   secret.
        #   @return [Boolean]

        # @!attribute [rw] queryable
        #   Indicates that the proprety will be used in conjunction with
        #   PollForJobs. When creating a custom action, an action can have up to
        #   one queryable property. If it has one, that property must be both
        #   required and not secret.
        #
        #   If you create a pipeline with a custom action type, and that custom
        #   action contains a queryable property, the value for that
        #   configuration property is subject to additional restrictions. The
        #   value must be less than or equal to twenty (20) characters. The
        #   value can contain only alphanumeric characters, underscores, and
        #   hyphens.
        #   @return [Boolean]

        # @!attribute [rw] description
        #   The description of the action configuration property that will be
        #   displayed to users.
        #   @return [String]

        # @!attribute [rw] type
        #   The type of the configuration property.
        #   @return [String]

      end

      # Represents the context of an action within the stage of a pipeline to
      # a job worker.
      class ActionContext < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   The name of the action within the context of a job.
        #   @return [String]

      end

      # Represents information about an action declaration.
      # @note When making an API call, pass ActionDeclaration
      #   data as a hash:
      #
      #       {
      #         name: "ActionName", # required
      #         action_type_id: { # required
      #           category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval
      #           owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #           provider: "ActionProvider", # required
      #           version: "Version", # required
      #         },
      #         run_order: 1,
      #         configuration: {
      #           "ActionConfigurationKey" => "ActionConfigurationValue",
      #         },
      #         output_artifacts: [
      #           {
      #             name: "ArtifactName", # required
      #           },
      #         ],
      #         input_artifacts: [
      #           {
      #             name: "ArtifactName", # required
      #           },
      #         ],
      #         role_arn: "RoleArn",
      #       }
      class ActionDeclaration < Aws::Structure.new(
        :name,
        :action_type_id,
        :run_order,
        :configuration,
        :output_artifacts,
        :input_artifacts,
        :role_arn)

        # @!attribute [rw] name
        #   The action declaration\'s name.
        #   @return [String]

        # @!attribute [rw] action_type_id
        #   The configuration information for the action type.
        #   @return [Types::ActionTypeId]

        # @!attribute [rw] run_order
        #   The order in which actions are run.
        #   @return [Integer]

        # @!attribute [rw] configuration
        #   The action declaration\'s configuration.
        #   @return [Hash<String,String>]

        # @!attribute [rw] output_artifacts
        #   The name or ID of the result of the action declaration, such as a
        #   test or build artifact.
        #   @return [Array<Types::OutputArtifact>]

        # @!attribute [rw] input_artifacts
        #   The name or ID of the artifact consumed by the action, such as a
        #   test or build artifact.
        #   @return [Array<Types::InputArtifact>]

        # @!attribute [rw] role_arn
        #   The ARN of the IAM service role that will perform the declared
        #   action. This is assumed through the roleArn for the pipeline.
        #   @return [String]

      end

      # Represents information about the run of an action.
      class ActionExecution < Aws::Structure.new(
        :status,
        :summary,
        :last_status_change,
        :token,
        :last_updated_by,
        :external_execution_id,
        :external_execution_url,
        :percent_complete,
        :error_details)

        # @!attribute [rw] status
        #   The status of the action, or for a completed action, the last status
        #   of the action.
        #   @return [String]

        # @!attribute [rw] summary
        #   A summary of the run of the action.
        #   @return [String]

        # @!attribute [rw] last_status_change
        #   The last status change of the action.
        #   @return [Time]

        # @!attribute [rw] token
        #   The system-generated token used to identify a unique approval
        #   request. The token for each open approval request can be obtained
        #   using the GetPipelineState command and is used to validate that the
        #   approval request corresponding to this token is still valid.
        #   @return [String]

        # @!attribute [rw] last_updated_by
        #   The ARN of the user who last changed the pipeline.
        #   @return [String]

        # @!attribute [rw] external_execution_id
        #   The external ID of the run of the action.
        #   @return [String]

        # @!attribute [rw] external_execution_url
        #   The URL of a resource external to AWS that will be used when running
        #   the action, for example an external repository URL.
        #   @return [String]

        # @!attribute [rw] percent_complete
        #   A percentage of completeness of the action as it runs.
        #   @return [Integer]

        # @!attribute [rw] error_details
        #   The details of an error returned by a URL external to AWS.
        #   @return [Types::ErrorDetails]

      end

      # Represents information about the version (or revision) of an action.
      # @note When making an API call, pass ActionRevision
      #   data as a hash:
      #
      #       {
      #         revision_id: "Revision", # required
      #         revision_change_id: "RevisionChangeIdentifier", # required
      #         created: Time.now, # required
      #       }
      class ActionRevision < Aws::Structure.new(
        :revision_id,
        :revision_change_id,
        :created)

        # @!attribute [rw] revision_id
        #   The system-generated unique ID that identifies the revision number
        #   of the action.
        #   @return [String]

        # @!attribute [rw] revision_change_id
        #   The unique identifier of the change that set the state to this
        #   revision, for example a deployment ID or timestamp.
        #   @return [String]

        # @!attribute [rw] created
        #   The date and time when the most recent version of the action was
        #   created, in timestamp format.
        #   @return [Time]

      end

      # Represents information about the state of an action.
      class ActionState < Aws::Structure.new(
        :action_name,
        :current_revision,
        :latest_execution,
        :entity_url,
        :revision_url)

        # @!attribute [rw] action_name
        #   The name of the action.
        #   @return [String]

        # @!attribute [rw] current_revision
        #   Represents information about the version (or revision) of an action.
        #   @return [Types::ActionRevision]

        # @!attribute [rw] latest_execution
        #   Represents information about the run of an action.
        #   @return [Types::ActionExecution]

        # @!attribute [rw] entity_url
        #   A URL link for more information about the state of the action, such
        #   as a deployment group details page.
        #   @return [String]

        # @!attribute [rw] revision_url
        #   A URL link for more information about the revision, such as a commit
        #   details page.
        #   @return [String]

      end

      # Returns information about the details of an action type.
      class ActionType < Aws::Structure.new(
        :id,
        :settings,
        :action_configuration_properties,
        :input_artifact_details,
        :output_artifact_details)

        # @!attribute [rw] id
        #   Represents information about an action type.
        #   @return [Types::ActionTypeId]

        # @!attribute [rw] settings
        #   The settings for the action type.
        #   @return [Types::ActionTypeSettings]

        # @!attribute [rw] action_configuration_properties
        #   The configuration properties for the action type.
        #   @return [Array<Types::ActionConfigurationProperty>]

        # @!attribute [rw] input_artifact_details
        #   The details of the input artifact for the action, such as its commit
        #   ID.
        #   @return [Types::ArtifactDetails]

        # @!attribute [rw] output_artifact_details
        #   The details of the output artifact of the action, such as its commit
        #   ID.
        #   @return [Types::ArtifactDetails]

      end

      # Represents information about an action type.
      # @note When making an API call, pass ActionTypeId
      #   data as a hash:
      #
      #       {
      #         category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval
      #         owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #         provider: "ActionProvider", # required
      #         version: "Version", # required
      #       }
      class ActionTypeId < Aws::Structure.new(
        :category,
        :owner,
        :provider,
        :version)

        # @!attribute [rw] category
        #   A category defines what kind of action can be taken in the stage,
        #   and constrains the provider type for the action. Valid categories
        #   are limited to one of the values below.
        #   @return [String]

        # @!attribute [rw] owner
        #   The creator of the action being called.
        #   @return [String]

        # @!attribute [rw] provider
        #   The provider of the service being called by the action. Valid
        #   providers are determined by the action category. For example, an
        #   action in the Deploy category type might have a provider of AWS
        #   CodeDeploy, which would be specified as CodeDeploy.
        #   @return [String]

        # @!attribute [rw] version
        #   A string that identifies the action type.
        #   @return [String]

      end

      # Returns information about the settings for an action type.
      # @note When making an API call, pass ActionTypeSettings
      #   data as a hash:
      #
      #       {
      #         third_party_configuration_url: "Url",
      #         entity_url_template: "UrlTemplate",
      #         execution_url_template: "UrlTemplate",
      #         revision_url_template: "UrlTemplate",
      #       }
      class ActionTypeSettings < Aws::Structure.new(
        :third_party_configuration_url,
        :entity_url_template,
        :execution_url_template,
        :revision_url_template)

        # @!attribute [rw] third_party_configuration_url
        #   The URL of a sign-up page where users can sign up for an external
        #   service and perform initial configuration of the action provided by
        #   that service.
        #   @return [String]

        # @!attribute [rw] entity_url_template
        #   The URL returned to the AWS CodePipeline console that provides a
        #   deep link to the resources of the external system, such as the
        #   configuration page for an AWS CodeDeploy deployment group. This link
        #   is provided as part of the action display within the pipeline.
        #   @return [String]

        # @!attribute [rw] execution_url_template
        #   The URL returned to the AWS CodePipeline console that contains a
        #   link to the top-level landing page for the external system, such as
        #   console page for AWS CodeDeploy. This link is shown on the pipeline
        #   view page in the AWS CodePipeline console and provides a link to the
        #   execution entity of the external action.
        #   @return [String]

        # @!attribute [rw] revision_url_template
        #   The URL returned to the AWS CodePipeline console that contains a
        #   link to the page where customers can update or change the
        #   configuration of the external action.
        #   @return [String]

      end

      # Represents information about the result of an approval request.
      # @note When making an API call, pass ApprovalResult
      #   data as a hash:
      #
      #       {
      #         summary: "ApprovalSummary", # required
      #         status: "Approved", # required, accepts Approved, Rejected
      #       }
      class ApprovalResult < Aws::Structure.new(
        :summary,
        :status)

        # @!attribute [rw] summary
        #   The summary of the current status of the approval request.
        #   @return [String]

        # @!attribute [rw] status
        #   The response submitted by a reviewer assigned to an approval action
        #   request.
        #   @return [String]

      end

      # Represents information about an artifact that will be worked upon by
      # actions in the pipeline.
      class Artifact < Aws::Structure.new(
        :name,
        :revision,
        :location)

        # @!attribute [rw] name
        #   The artifact\'s name.
        #   @return [String]

        # @!attribute [rw] revision
        #   The artifact\'s revision ID. Depending on the type of object, this
        #   could be a commit ID (GitHub) or a revision ID (Amazon S3).
        #   @return [String]

        # @!attribute [rw] location
        #   The location of an artifact.
        #   @return [Types::ArtifactLocation]

      end

      # Returns information about the details of an artifact.
      # @note When making an API call, pass ArtifactDetails
      #   data as a hash:
      #
      #       {
      #         minimum_count: 1, # required
      #         maximum_count: 1, # required
      #       }
      class ArtifactDetails < Aws::Structure.new(
        :minimum_count,
        :maximum_count)

        # @!attribute [rw] minimum_count
        #   The minimum number of artifacts allowed for the action type.
        #   @return [Integer]

        # @!attribute [rw] maximum_count
        #   The maximum number of artifacts allowed for the action type.
        #   @return [Integer]

      end

      # Represents information about the location of an artifact.
      class ArtifactLocation < Aws::Structure.new(
        :type,
        :s3_location)

        # @!attribute [rw] type
        #   The type of artifact in the location.
        #   @return [String]

        # @!attribute [rw] s3_location
        #   The Amazon S3 bucket that contains the artifact.
        #   @return [Types::S3ArtifactLocation]

      end

      # Represents revision details of an artifact.
      class ArtifactRevision < Aws::Structure.new(
        :name,
        :revision_id,
        :revision_change_identifier,
        :revision_summary,
        :created,
        :revision_url)

        # @!attribute [rw] name
        #   The name of an artifact. This name might be system-generated, such
        #   as \"MyApp\", or might be defined by the user when an action is
        #   created.
        #   @return [String]

        # @!attribute [rw] revision_id
        #   The revision ID of the artifact.
        #   @return [String]

        # @!attribute [rw] revision_change_identifier
        #   An additional identifier for a revision, such as a commit date or,
        #   for artifacts stored in Amazon S3 buckets, the ETag value.
        #   @return [String]

        # @!attribute [rw] revision_summary
        #   Summary information about the most recent revision of the artifact.
        #   For GitHub and AWS CodeCommit repositories, the commit message. For
        #   Amazon S3 buckets or actions, the user-provided content of a
        #   `codepipeline-artifact-revision-summary` key specified in the object
        #   metadata.
        #   @return [String]

        # @!attribute [rw] created
        #   The date and time when the most recent revision of the artifact was
        #   created, in timestamp format.
        #   @return [Time]

        # @!attribute [rw] revision_url
        #   The commit ID for the artifact revision. For artifacts stored in
        #   GitHub or AWS CodeCommit repositories, the commit ID is linked to a
        #   commit details page.
        #   @return [String]

      end

      # The Amazon S3 location where artifacts are stored for the pipeline. If
      # this Amazon S3 bucket is created manually, it must meet the
      # requirements for AWS CodePipeline. For more information, see the
      # [Concepts][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#CPS3Bucket
      # @note When making an API call, pass ArtifactStore
      #   data as a hash:
      #
      #       {
      #         type: "S3", # required, accepts S3
      #         location: "ArtifactStoreLocation", # required
      #         encryption_key: {
      #           id: "EncryptionKeyId", # required
      #           type: "KMS", # required, accepts KMS
      #         },
      #       }
      class ArtifactStore < Aws::Structure.new(
        :type,
        :location,
        :encryption_key)

        # @!attribute [rw] type
        #   The type of the artifact store, such as S3.
        #   @return [String]

        # @!attribute [rw] location
        #   The location for storing the artifacts for a pipeline, such as an S3
        #   bucket or folder.
        #   @return [String]

        # @!attribute [rw] encryption_key
        #   The encryption key used to encrypt the data in the artifact store,
        #   such as an AWS Key Management Service (AWS KMS) key. If this is
        #   undefined, the default key for Amazon S3 is used.
        #   @return [Types::EncryptionKey]

      end

      # Reserved for future use.
      # @note When making an API call, pass BlockerDeclaration
      #   data as a hash:
      #
      #       {
      #         name: "BlockerName", # required
      #         type: "Schedule", # required, accepts Schedule
      #       }
      class BlockerDeclaration < Aws::Structure.new(
        :name,
        :type)

        # @!attribute [rw] name
        #   Reserved for future use.
        #   @return [String]

        # @!attribute [rw] type
        #   Reserved for future use.
        #   @return [String]

      end

      # Represents the input of a create custom action operation.
      # @note When making an API call, pass CreateCustomActionTypeInput
      #   data as a hash:
      #
      #       {
      #         category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval
      #         provider: "ActionProvider", # required
      #         version: "Version", # required
      #         settings: {
      #           third_party_configuration_url: "Url",
      #           entity_url_template: "UrlTemplate",
      #           execution_url_template: "UrlTemplate",
      #           revision_url_template: "UrlTemplate",
      #         },
      #         configuration_properties: [
      #           {
      #             name: "ActionConfigurationKey", # required
      #             required: false, # required
      #             key: false, # required
      #             secret: false, # required
      #             queryable: false,
      #             description: "Description",
      #             type: "String", # accepts String, Number, Boolean
      #           },
      #         ],
      #         input_artifact_details: { # required
      #           minimum_count: 1, # required
      #           maximum_count: 1, # required
      #         },
      #         output_artifact_details: { # required
      #           minimum_count: 1, # required
      #           maximum_count: 1, # required
      #         },
      #       }
      class CreateCustomActionTypeInput < Aws::Structure.new(
        :category,
        :provider,
        :version,
        :settings,
        :configuration_properties,
        :input_artifact_details,
        :output_artifact_details)

        # @!attribute [rw] category
        #   The category of the custom action, such as a source action or a
        #   build action.
        #
        #   <note markdown="1"> Although Source is listed as a valid value, it is not currently
        #   functional. This value is reserved for future use.
        #
        #    </note>
        #   @return [String]

        # @!attribute [rw] provider
        #   The provider of the service used in the custom action, such as AWS
        #   CodeDeploy.
        #   @return [String]

        # @!attribute [rw] version
        #   The version number of the custom action.
        #   @return [String]

        # @!attribute [rw] settings
        #   Returns information about the settings for an action type.
        #   @return [Types::ActionTypeSettings]

        # @!attribute [rw] configuration_properties
        #   The configuration properties for the custom action.
        #
        #   <note markdown="1"> You can refer to a name in the configuration properties of the
        #   custom action within the URL templates by following the format of
        #   \\\{Config:name\\}, as long as the configuration property is both
        #   required and not secret. For more information, see [Create a Custom
        #   Action for a Pipeline][1].
        #
        #    </note>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html
        #   @return [Array<Types::ActionConfigurationProperty>]

        # @!attribute [rw] input_artifact_details
        #   Returns information about the details of an artifact.
        #   @return [Types::ArtifactDetails]

        # @!attribute [rw] output_artifact_details
        #   Returns information about the details of an artifact.
        #   @return [Types::ArtifactDetails]

      end

      # Represents the output of a create custom action operation.
      class CreateCustomActionTypeOutput < Aws::Structure.new(
        :action_type)

        # @!attribute [rw] action_type
        #   Returns information about the details of an action type.
        #   @return [Types::ActionType]

      end

      # Represents the input of a create pipeline action.
      # @note When making an API call, pass CreatePipelineInput
      #   data as a hash:
      #
      #       {
      #         pipeline: { # required
      #           name: "PipelineName", # required
      #           role_arn: "RoleArn", # required
      #           artifact_store: { # required
      #             type: "S3", # required, accepts S3
      #             location: "ArtifactStoreLocation", # required
      #             encryption_key: {
      #               id: "EncryptionKeyId", # required
      #               type: "KMS", # required, accepts KMS
      #             },
      #           },
      #           stages: [ # required
      #             {
      #               name: "StageName", # required
      #               blockers: [
      #                 {
      #                   name: "BlockerName", # required
      #                   type: "Schedule", # required, accepts Schedule
      #                 },
      #               ],
      #               actions: [ # required
      #                 {
      #                   name: "ActionName", # required
      #                   action_type_id: { # required
      #                     category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval
      #                     owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #                     provider: "ActionProvider", # required
      #                     version: "Version", # required
      #                   },
      #                   run_order: 1,
      #                   configuration: {
      #                     "ActionConfigurationKey" => "ActionConfigurationValue",
      #                   },
      #                   output_artifacts: [
      #                     {
      #                       name: "ArtifactName", # required
      #                     },
      #                   ],
      #                   input_artifacts: [
      #                     {
      #                       name: "ArtifactName", # required
      #                     },
      #                   ],
      #                   role_arn: "RoleArn",
      #                 },
      #               ],
      #             },
      #           ],
      #           version: 1,
      #         },
      #       }
      class CreatePipelineInput < Aws::Structure.new(
        :pipeline)

        # @!attribute [rw] pipeline
        #   Represents the structure of actions and stages to be performed in
        #   the pipeline.
        #   @return [Types::PipelineDeclaration]

      end

      # Represents the output of a create pipeline action.
      class CreatePipelineOutput < Aws::Structure.new(
        :pipeline)

        # @!attribute [rw] pipeline
        #   Represents the structure of actions and stages to be performed in
        #   the pipeline.
        #   @return [Types::PipelineDeclaration]

      end

      # Represents information about a current revision.
      # @note When making an API call, pass CurrentRevision
      #   data as a hash:
      #
      #       {
      #         revision: "Revision", # required
      #         change_identifier: "RevisionChangeIdentifier", # required
      #         created: Time.now,
      #         revision_summary: "RevisionSummary",
      #       }
      class CurrentRevision < Aws::Structure.new(
        :revision,
        :change_identifier,
        :created,
        :revision_summary)

        # @!attribute [rw] revision
        #   The revision ID of the current version of an artifact.
        #   @return [String]

        # @!attribute [rw] change_identifier
        #   The change identifier for the current revision.
        #   @return [String]

        # @!attribute [rw] created
        #   The date and time when the most recent revision of the artifact was
        #   created, in timestamp format.
        #   @return [Time]

        # @!attribute [rw] revision_summary
        #   The summary of the most recent revision of the artifact.
        #   @return [String]

      end

      # Represents the input of a delete custom action operation. The custom
      # action will be marked as deleted.
      # @note When making an API call, pass DeleteCustomActionTypeInput
      #   data as a hash:
      #
      #       {
      #         category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval
      #         provider: "ActionProvider", # required
      #         version: "Version", # required
      #       }
      class DeleteCustomActionTypeInput < Aws::Structure.new(
        :category,
        :provider,
        :version)

        # @!attribute [rw] category
        #   The category of the custom action that you want to delete, such as
        #   source or deploy.
        #   @return [String]

        # @!attribute [rw] provider
        #   The provider of the service used in the custom action, such as AWS
        #   CodeDeploy.
        #   @return [String]

        # @!attribute [rw] version
        #   The version of the custom action to delete.
        #   @return [String]

      end

      # Represents the input of a delete pipeline action.
      # @note When making an API call, pass DeletePipelineInput
      #   data as a hash:
      #
      #       {
      #         name: "PipelineName", # required
      #       }
      class DeletePipelineInput < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   The name of the pipeline to be deleted.
        #   @return [String]

      end

      # Represents the input of a disable stage transition input action.
      # @note When making an API call, pass DisableStageTransitionInput
      #   data as a hash:
      #
      #       {
      #         pipeline_name: "PipelineName", # required
      #         stage_name: "StageName", # required
      #         transition_type: "Inbound", # required, accepts Inbound, Outbound
      #         reason: "DisabledReason", # required
      #       }
      class DisableStageTransitionInput < Aws::Structure.new(
        :pipeline_name,
        :stage_name,
        :transition_type,
        :reason)

        # @!attribute [rw] pipeline_name
        #   The name of the pipeline in which you want to disable the flow of
        #   artifacts from one stage to another.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the stage where you want to disable the inbound or
        #   outbound transition of artifacts.
        #   @return [String]

        # @!attribute [rw] transition_type
        #   Specifies whether artifacts will be prevented from transitioning
        #   into the stage and being processed by the actions in that stage
        #   (inbound), or prevented from transitioning from the stage after they
        #   have been processed by the actions in that stage (outbound).
        #   @return [String]

        # @!attribute [rw] reason
        #   The reason given to the user why a stage is disabled, such as
        #   waiting for manual approval or manual tests. This message is
        #   displayed in the pipeline console UI.
        #   @return [String]

      end

      # Represents the input of an enable stage transition action.
      # @note When making an API call, pass EnableStageTransitionInput
      #   data as a hash:
      #
      #       {
      #         pipeline_name: "PipelineName", # required
      #         stage_name: "StageName", # required
      #         transition_type: "Inbound", # required, accepts Inbound, Outbound
      #       }
      class EnableStageTransitionInput < Aws::Structure.new(
        :pipeline_name,
        :stage_name,
        :transition_type)

        # @!attribute [rw] pipeline_name
        #   The name of the pipeline in which you want to enable the flow of
        #   artifacts from one stage to another.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the stage where you want to enable the transition of
        #   artifacts, either into the stage (inbound) or from that stage to the
        #   next stage (outbound).
        #   @return [String]

        # @!attribute [rw] transition_type
        #   Specifies whether artifacts will be allowed to enter the stage and
        #   be processed by the actions in that stage (inbound) or whether
        #   already-processed artifacts will be allowed to transition to the
        #   next stage (outbound).
        #   @return [String]

      end

      # Represents information about the key used to encrypt data in the
      # artifact store, such as an AWS Key Management Service (AWS KMS) key.
      # @note When making an API call, pass EncryptionKey
      #   data as a hash:
      #
      #       {
      #         id: "EncryptionKeyId", # required
      #         type: "KMS", # required, accepts KMS
      #       }
      class EncryptionKey < Aws::Structure.new(
        :id,
        :type)

        # @!attribute [rw] id
        #   The ID used to identify the key. For an AWS KMS key, this is the key
        #   ID or key ARN.
        #   @return [String]

        # @!attribute [rw] type
        #   The type of encryption key, such as an AWS Key Management Service
        #   (AWS KMS) key. When creating or updating a pipeline, the value must
        #   be set to \'KMS\'.
        #   @return [String]

      end

      # Represents information about an error in AWS CodePipeline.
      class ErrorDetails < Aws::Structure.new(
        :code,
        :message)

        # @!attribute [rw] code
        #   The system ID or error number code of the error.
        #   @return [String]

        # @!attribute [rw] message
        #   The text of the error message.
        #   @return [String]

      end

      # The details of the actions taken and results produced on an artifact
      # as it passes through stages in the pipeline.
      # @note When making an API call, pass ExecutionDetails
      #   data as a hash:
      #
      #       {
      #         summary: "ExecutionSummary",
      #         external_execution_id: "ExecutionId",
      #         percent_complete: 1,
      #       }
      class ExecutionDetails < Aws::Structure.new(
        :summary,
        :external_execution_id,
        :percent_complete)

        # @!attribute [rw] summary
        #   The summary of the current status of the actions.
        #   @return [String]

        # @!attribute [rw] external_execution_id
        #   The system-generated unique ID of this action used to identify this
        #   job worker in any external systems, such as AWS CodeDeploy.
        #   @return [String]

        # @!attribute [rw] percent_complete
        #   The percentage of work completed on the action, represented on a
        #   scale of zero to one hundred percent.
        #   @return [Integer]

      end

      # Represents information about failure details.
      # @note When making an API call, pass FailureDetails
      #   data as a hash:
      #
      #       {
      #         type: "JobFailed", # required, accepts JobFailed, ConfigurationError, PermissionError, RevisionOutOfSync, RevisionUnavailable, SystemUnavailable
      #         message: "Message", # required
      #         external_execution_id: "ExecutionId",
      #       }
      class FailureDetails < Aws::Structure.new(
        :type,
        :message,
        :external_execution_id)

        # @!attribute [rw] type
        #   The type of the failure.
        #   @return [String]

        # @!attribute [rw] message
        #   The message about the failure.
        #   @return [String]

        # @!attribute [rw] external_execution_id
        #   The external ID of the run of the action that failed.
        #   @return [String]

      end

      # Represents the input of a get job details action.
      # @note When making an API call, pass GetJobDetailsInput
      #   data as a hash:
      #
      #       {
      #         job_id: "JobId", # required
      #       }
      class GetJobDetailsInput < Aws::Structure.new(
        :job_id)

        # @!attribute [rw] job_id
        #   The unique system-generated ID for the job.
        #   @return [String]

      end

      # Represents the output of a get job details action.
      class GetJobDetailsOutput < Aws::Structure.new(
        :job_details)

        # @!attribute [rw] job_details
        #   The details of the job.
        #
        #   <note markdown="1"> If AWSSessionCredentials is used, a long-running job can call
        #   GetJobDetails again to obtain new credentials.
        #
        #    </note>
        #   @return [Types::JobDetails]

      end

      # Represents the input of a get pipeline execution action.
      # @note When making an API call, pass GetPipelineExecutionInput
      #   data as a hash:
      #
      #       {
      #         pipeline_name: "PipelineName", # required
      #         pipeline_execution_id: "PipelineExecutionId", # required
      #       }
      class GetPipelineExecutionInput < Aws::Structure.new(
        :pipeline_name,
        :pipeline_execution_id)

        # @!attribute [rw] pipeline_name
        #   The name of the pipeline about which you want to get execution
        #   details.
        #   @return [String]

        # @!attribute [rw] pipeline_execution_id
        #   The ID of the pipeline execution about which you want to get
        #   execution details.
        #   @return [String]

      end

      # Represents the output of a get pipeline execution action.
      class GetPipelineExecutionOutput < Aws::Structure.new(
        :pipeline_execution)

        # @!attribute [rw] pipeline_execution
        #   Represents information about the execution of a pipeline.
        #   @return [Types::PipelineExecution]

      end

      # Represents the input of a get pipeline action.
      # @note When making an API call, pass GetPipelineInput
      #   data as a hash:
      #
      #       {
      #         name: "PipelineName", # required
      #         version: 1,
      #       }
      class GetPipelineInput < Aws::Structure.new(
        :name,
        :version)

        # @!attribute [rw] name
        #   The name of the pipeline for which you want to get information.
        #   Pipeline names must be unique under an Amazon Web Services (AWS)
        #   user account.
        #   @return [String]

        # @!attribute [rw] version
        #   The version number of the pipeline. If you do not specify a version,
        #   defaults to the most current version.
        #   @return [Integer]

      end

      # Represents the output of a get pipeline action.
      class GetPipelineOutput < Aws::Structure.new(
        :pipeline)

        # @!attribute [rw] pipeline
        #   Represents the structure of actions and stages to be performed in
        #   the pipeline.
        #   @return [Types::PipelineDeclaration]

      end

      # Represents the input of a get pipeline state action.
      # @note When making an API call, pass GetPipelineStateInput
      #   data as a hash:
      #
      #       {
      #         name: "PipelineName", # required
      #       }
      class GetPipelineStateInput < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   The name of the pipeline about which you want to get information.
        #   @return [String]

      end

      # Represents the output of a get pipeline state action.
      class GetPipelineStateOutput < Aws::Structure.new(
        :pipeline_name,
        :pipeline_version,
        :stage_states,
        :created,
        :updated)

        # @!attribute [rw] pipeline_name
        #   The name of the pipeline for which you want to get the state.
        #   @return [String]

        # @!attribute [rw] pipeline_version
        #   The version number of the pipeline.
        #
        #   <note markdown="1"> A newly-created pipeline is always assigned a version number of `1`.
        #
        #    </note>
        #   @return [Integer]

        # @!attribute [rw] stage_states
        #   A list of the pipeline stage output information, including stage
        #   name, state, most recent run details, whether the stage is disabled,
        #   and other data.
        #   @return [Array<Types::StageState>]

        # @!attribute [rw] created
        #   The date and time the pipeline was created, in timestamp format.
        #   @return [Time]

        # @!attribute [rw] updated
        #   The date and time the pipeline was last updated, in timestamp
        #   format.
        #   @return [Time]

      end

      # Represents the input of a get third party job details action.
      # @note When making an API call, pass GetThirdPartyJobDetailsInput
      #   data as a hash:
      #
      #       {
      #         job_id: "ThirdPartyJobId", # required
      #         client_token: "ClientToken", # required
      #       }
      class GetThirdPartyJobDetailsInput < Aws::Structure.new(
        :job_id,
        :client_token)

        # @!attribute [rw] job_id
        #   The unique system-generated ID used for identifying the job.
        #   @return [String]

        # @!attribute [rw] client_token
        #   The clientToken portion of the clientId and clientToken pair used to
        #   verify that the calling entity is allowed access to the job and its
        #   details.
        #   @return [String]

      end

      # Represents the output of a get third party job details action.
      class GetThirdPartyJobDetailsOutput < Aws::Structure.new(
        :job_details)

        # @!attribute [rw] job_details
        #   The details of the job, including any protected values defined for
        #   the job.
        #   @return [Types::ThirdPartyJobDetails]

      end

      # Represents information about an artifact to be worked on, such as a
      # test or build artifact.
      # @note When making an API call, pass InputArtifact
      #   data as a hash:
      #
      #       {
      #         name: "ArtifactName", # required
      #       }
      class InputArtifact < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   The name of the artifact to be worked on, for example, \"My App\".
        #
        #   The input artifact of an action must exactly match the output
        #   artifact declared in a preceding action, but the input artifact does
        #   not have to be the next action in strict sequence from the action
        #   that provided the output artifact. Actions in parallel can declare
        #   different output artifacts, which are in turn consumed by different
        #   following actions.
        #   @return [String]

      end

      # Represents information about a job.
      class Job < Aws::Structure.new(
        :id,
        :data,
        :nonce,
        :account_id)

        # @!attribute [rw] id
        #   The unique system-generated ID of the job.
        #   @return [String]

        # @!attribute [rw] data
        #   Additional data about a job.
        #   @return [Types::JobData]

        # @!attribute [rw] nonce
        #   A system-generated random number that AWS CodePipeline uses to
        #   ensure that the job is being worked on by only one job worker. This
        #   number must be returned in the response.
        #   @return [String]

        # @!attribute [rw] account_id
        #   The ID of the AWS account to use when performing the job.
        #   @return [String]

      end

      # Represents additional information about a job required for a job
      # worker to complete the job.
      class JobData < Aws::Structure.new(
        :action_type_id,
        :action_configuration,
        :pipeline_context,
        :input_artifacts,
        :output_artifacts,
        :artifact_credentials,
        :continuation_token,
        :encryption_key)

        # @!attribute [rw] action_type_id
        #   Represents information about an action type.
        #   @return [Types::ActionTypeId]

        # @!attribute [rw] action_configuration
        #   Represents information about an action configuration.
        #   @return [Types::ActionConfiguration]

        # @!attribute [rw] pipeline_context
        #   Represents information about a pipeline to a job worker.
        #   @return [Types::PipelineContext]

        # @!attribute [rw] input_artifacts
        #   The artifact supplied to the job.
        #   @return [Array<Types::Artifact>]

        # @!attribute [rw] output_artifacts
        #   The output of the job.
        #   @return [Array<Types::Artifact>]

        # @!attribute [rw] artifact_credentials
        #   Represents an AWS session credentials object. These credentials are
        #   temporary credentials that are issued by AWS Secure Token Service
        #   (STS). They can be used to access input and output artifacts in the
        #   Amazon S3 bucket used to store artifact for the pipeline in AWS
        #   CodePipeline.
        #   @return [Types::AWSSessionCredentials]

        # @!attribute [rw] continuation_token
        #   A system-generated token, such as a AWS CodeDeploy deployment ID,
        #   that a job requires in order to continue the job asynchronously.
        #   @return [String]

        # @!attribute [rw] encryption_key
        #   Represents information about the key used to encrypt data in the
        #   artifact store, such as an AWS Key Management Service (AWS KMS) key.
        #   @return [Types::EncryptionKey]

      end

      # Represents information about the details of a job.
      class JobDetails < Aws::Structure.new(
        :id,
        :data,
        :account_id)

        # @!attribute [rw] id
        #   The unique system-generated ID of the job.
        #   @return [String]

        # @!attribute [rw] data
        #   Represents additional information about a job required for a job
        #   worker to complete the job.
        #   @return [Types::JobData]

        # @!attribute [rw] account_id
        #   The AWS account ID associated with the job.
        #   @return [String]

      end

      # Represents the input of a list action types action.
      # @note When making an API call, pass ListActionTypesInput
      #   data as a hash:
      #
      #       {
      #         action_owner_filter: "AWS", # accepts AWS, ThirdParty, Custom
      #         next_token: "NextToken",
      #       }
      class ListActionTypesInput < Aws::Structure.new(
        :action_owner_filter,
        :next_token)

        # @!attribute [rw] action_owner_filter
        #   Filters the list of action types to those created by a specified
        #   entity.
        #   @return [String]

        # @!attribute [rw] next_token
        #   An identifier that was returned from the previous list action types
        #   call, which can be used to return the next set of action types in
        #   the list.
        #   @return [String]

      end

      # Represents the output of a list action types action.
      class ListActionTypesOutput < Aws::Structure.new(
        :action_types,
        :next_token)

        # @!attribute [rw] action_types
        #   Provides details of the action types.
        #   @return [Array<Types::ActionType>]

        # @!attribute [rw] next_token
        #   If the amount of returned information is significantly large, an
        #   identifier is also returned which can be used in a subsequent list
        #   action types call to return the next set of action types in the
        #   list.
        #   @return [String]

      end

      # Represents the input of a list pipelines action.
      # @note When making an API call, pass ListPipelinesInput
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #       }
      class ListPipelinesInput < Aws::Structure.new(
        :next_token)

        # @!attribute [rw] next_token
        #   An identifier that was returned from the previous list pipelines
        #   call, which can be used to return the next set of pipelines in the
        #   list.
        #   @return [String]

      end

      # Represents the output of a list pipelines action.
      class ListPipelinesOutput < Aws::Structure.new(
        :pipelines,
        :next_token)

        # @!attribute [rw] pipelines
        #   The list of pipelines.
        #   @return [Array<Types::PipelineSummary>]

        # @!attribute [rw] next_token
        #   If the amount of returned information is significantly large, an
        #   identifier is also returned which can be used in a subsequent list
        #   pipelines call to return the next set of pipelines in the list.
        #   @return [String]

      end

      # Represents information about the output of an action.
      # @note When making an API call, pass OutputArtifact
      #   data as a hash:
      #
      #       {
      #         name: "ArtifactName", # required
      #       }
      class OutputArtifact < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   The name of the output of an artifact, such as \"My App\".
        #
        #   The input artifact of an action must exactly match the output
        #   artifact declared in a preceding action, but the input artifact does
        #   not have to be the next action in strict sequence from the action
        #   that provided the output artifact. Actions in parallel can declare
        #   different output artifacts, which are in turn consumed by different
        #   following actions.
        #
        #   Output artifact names must be unique within a pipeline.
        #   @return [String]

      end

      # Represents information about a pipeline to a job worker.
      class PipelineContext < Aws::Structure.new(
        :pipeline_name,
        :stage,
        :action)

        # @!attribute [rw] pipeline_name
        #   The name of the pipeline. This is a user-specified value. Pipeline
        #   names must be unique across all pipeline names under an Amazon Web
        #   Services account.
        #   @return [String]

        # @!attribute [rw] stage
        #   The stage of the pipeline.
        #   @return [Types::StageContext]

        # @!attribute [rw] action
        #   Represents the context of an action within the stage of a pipeline
        #   to a job worker.
        #   @return [Types::ActionContext]

      end

      # Represents the structure of actions and stages to be performed in the
      # pipeline.
      # @note When making an API call, pass PipelineDeclaration
      #   data as a hash:
      #
      #       {
      #         name: "PipelineName", # required
      #         role_arn: "RoleArn", # required
      #         artifact_store: { # required
      #           type: "S3", # required, accepts S3
      #           location: "ArtifactStoreLocation", # required
      #           encryption_key: {
      #             id: "EncryptionKeyId", # required
      #             type: "KMS", # required, accepts KMS
      #           },
      #         },
      #         stages: [ # required
      #           {
      #             name: "StageName", # required
      #             blockers: [
      #               {
      #                 name: "BlockerName", # required
      #                 type: "Schedule", # required, accepts Schedule
      #               },
      #             ],
      #             actions: [ # required
      #               {
      #                 name: "ActionName", # required
      #                 action_type_id: { # required
      #                   category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval
      #                   owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #                   provider: "ActionProvider", # required
      #                   version: "Version", # required
      #                 },
      #                 run_order: 1,
      #                 configuration: {
      #                   "ActionConfigurationKey" => "ActionConfigurationValue",
      #                 },
      #                 output_artifacts: [
      #                   {
      #                     name: "ArtifactName", # required
      #                   },
      #                 ],
      #                 input_artifacts: [
      #                   {
      #                     name: "ArtifactName", # required
      #                   },
      #                 ],
      #                 role_arn: "RoleArn",
      #               },
      #             ],
      #           },
      #         ],
      #         version: 1,
      #       }
      class PipelineDeclaration < Aws::Structure.new(
        :name,
        :role_arn,
        :artifact_store,
        :stages,
        :version)

        # @!attribute [rw] name
        #   The name of the action to be performed.
        #   @return [String]

        # @!attribute [rw] role_arn
        #   The Amazon Resource Name (ARN) for AWS CodePipeline to use to either
        #   perform actions with no actionRoleArn, or to use to assume roles for
        #   actions with an actionRoleArn.
        #   @return [String]

        # @!attribute [rw] artifact_store
        #   The Amazon S3 location where artifacts are stored for the pipeline.
        #   If this Amazon S3 bucket is created manually, it must meet the
        #   requirements for AWS CodePipeline. For more information, see the
        #   [Concepts][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#CPS3Bucket
        #   @return [Types::ArtifactStore]

        # @!attribute [rw] stages
        #   The stage in which to perform the action.
        #   @return [Array<Types::StageDeclaration>]

        # @!attribute [rw] version
        #   The version number of the pipeline. A new pipeline always has a
        #   version number of 1. This number is automatically incremented when a
        #   pipeline is updated.
        #   @return [Integer]

      end

      # Represents information about an execution of a pipeline.
      class PipelineExecution < Aws::Structure.new(
        :pipeline_name,
        :pipeline_version,
        :pipeline_execution_id,
        :status,
        :artifact_revisions)

        # @!attribute [rw] pipeline_name
        #   The name of the pipeline that was executed.
        #   @return [String]

        # @!attribute [rw] pipeline_version
        #   The version number of the pipeline that was executed.
        #   @return [Integer]

        # @!attribute [rw] pipeline_execution_id
        #   The ID of the pipeline execution.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the pipeline execution.
        #
        #   * InProgress: The pipeline execution is currently running.
        #
        #   * Succeeded: The pipeline execution completed successfully.
        #
        #   * Superseded: While this pipeline execution was waiting for the next
        #     stage to be completed, a newer pipeline execution caught up and
        #     continued through the pipeline instead.
        #
        #   * Failed: The pipeline did not complete successfully.
        #   @return [String]

        # @!attribute [rw] artifact_revisions
        #   A list of ArtifactRevision objects included in a pipeline execution.
        #   @return [Array<Types::ArtifactRevision>]

      end

      # Returns a summary of a pipeline.
      class PipelineSummary < Aws::Structure.new(
        :name,
        :version,
        :created,
        :updated)

        # @!attribute [rw] name
        #   The name of the pipeline.
        #   @return [String]

        # @!attribute [rw] version
        #   The version number of the pipeline.
        #   @return [Integer]

        # @!attribute [rw] created
        #   The date and time the pipeline was created, in timestamp format.
        #   @return [Time]

        # @!attribute [rw] updated
        #   The date and time of the last update to the pipeline, in timestamp
        #   format.
        #   @return [Time]

      end

      # Represents the input of a poll for jobs action.
      # @note When making an API call, pass PollForJobsInput
      #   data as a hash:
      #
      #       {
      #         action_type_id: { # required
      #           category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval
      #           owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #           provider: "ActionProvider", # required
      #           version: "Version", # required
      #         },
      #         max_batch_size: 1,
      #         query_param: {
      #           "ActionConfigurationKey" => "ActionConfigurationQueryableValue",
      #         },
      #       }
      class PollForJobsInput < Aws::Structure.new(
        :action_type_id,
        :max_batch_size,
        :query_param)

        # @!attribute [rw] action_type_id
        #   Represents information about an action type.
        #   @return [Types::ActionTypeId]

        # @!attribute [rw] max_batch_size
        #   The maximum number of jobs to return in a poll for jobs call.
        #   @return [Integer]

        # @!attribute [rw] query_param
        #   A map of property names and values. For an action type with no
        #   queryable properties, this value must be null or an empty map. For
        #   an action type with a queryable property, you must supply that
        #   property as a key in the map. Only jobs whose action configuration
        #   matches the mapped value will be returned.
        #   @return [Hash<String,String>]

      end

      # Represents the output of a poll for jobs action.
      class PollForJobsOutput < Aws::Structure.new(
        :jobs)

        # @!attribute [rw] jobs
        #   Information about the jobs to take action on.
        #   @return [Array<Types::Job>]

      end

      # Represents the input of a poll for third party jobs action.
      # @note When making an API call, pass PollForThirdPartyJobsInput
      #   data as a hash:
      #
      #       {
      #         action_type_id: { # required
      #           category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval
      #           owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #           provider: "ActionProvider", # required
      #           version: "Version", # required
      #         },
      #         max_batch_size: 1,
      #       }
      class PollForThirdPartyJobsInput < Aws::Structure.new(
        :action_type_id,
        :max_batch_size)

        # @!attribute [rw] action_type_id
        #   Represents information about an action type.
        #   @return [Types::ActionTypeId]

        # @!attribute [rw] max_batch_size
        #   The maximum number of jobs to return in a poll for jobs call.
        #   @return [Integer]

      end

      # Represents the output of a poll for third party jobs action.
      class PollForThirdPartyJobsOutput < Aws::Structure.new(
        :jobs)

        # @!attribute [rw] jobs
        #   Information about the jobs to take action on.
        #   @return [Array<Types::ThirdPartyJob>]

      end

      # Represents the input of a put action revision action.
      # @note When making an API call, pass PutActionRevisionInput
      #   data as a hash:
      #
      #       {
      #         pipeline_name: "PipelineName", # required
      #         stage_name: "StageName", # required
      #         action_name: "ActionName", # required
      #         action_revision: { # required
      #           revision_id: "Revision", # required
      #           revision_change_id: "RevisionChangeIdentifier", # required
      #           created: Time.now, # required
      #         },
      #       }
      class PutActionRevisionInput < Aws::Structure.new(
        :pipeline_name,
        :stage_name,
        :action_name,
        :action_revision)

        # @!attribute [rw] pipeline_name
        #   The name of the pipeline that will start processing the revision to
        #   the source.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the stage that contains the action that will act upon
        #   the revision.
        #   @return [String]

        # @!attribute [rw] action_name
        #   The name of the action that will process the revision.
        #   @return [String]

        # @!attribute [rw] action_revision
        #   Represents information about the version (or revision) of an action.
        #   @return [Types::ActionRevision]

      end

      # Represents the output of a put action revision action.
      class PutActionRevisionOutput < Aws::Structure.new(
        :new_revision,
        :pipeline_execution_id)

        # @!attribute [rw] new_revision
        #   Indicates whether the artifact revision was previously used in an
        #   execution of the specified pipeline.
        #   @return [Boolean]

        # @!attribute [rw] pipeline_execution_id
        #   The ID of the current workflow state of the pipeline.
        #   @return [String]

      end

      # Represents the input of a put approval result action.
      # @note When making an API call, pass PutApprovalResultInput
      #   data as a hash:
      #
      #       {
      #         pipeline_name: "PipelineName", # required
      #         stage_name: "StageName", # required
      #         action_name: "ActionName", # required
      #         result: { # required
      #           summary: "ApprovalSummary", # required
      #           status: "Approved", # required, accepts Approved, Rejected
      #         },
      #         token: "ApprovalToken", # required
      #       }
      class PutApprovalResultInput < Aws::Structure.new(
        :pipeline_name,
        :stage_name,
        :action_name,
        :result,
        :token)

        # @!attribute [rw] pipeline_name
        #   The name of the pipeline that contains the action.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the stage that contains the action.
        #   @return [String]

        # @!attribute [rw] action_name
        #   The name of the action for which approval is requested.
        #   @return [String]

        # @!attribute [rw] result
        #   Represents information about the result of the approval request.
        #   @return [Types::ApprovalResult]

        # @!attribute [rw] token
        #   The system-generated token used to identify a unique approval
        #   request. The token for each open approval request can be obtained
        #   using the GetPipelineState action and is used to validate that the
        #   approval request corresponding to this token is still valid.
        #   @return [String]

      end

      # Represents the output of a put approval result action.
      class PutApprovalResultOutput < Aws::Structure.new(
        :approved_at)

        # @!attribute [rw] approved_at
        #   The timestamp showing when the approval or rejection was submitted.
        #   @return [Time]

      end

      # Represents the input of a put job failure result action.
      # @note When making an API call, pass PutJobFailureResultInput
      #   data as a hash:
      #
      #       {
      #         job_id: "JobId", # required
      #         failure_details: { # required
      #           type: "JobFailed", # required, accepts JobFailed, ConfigurationError, PermissionError, RevisionOutOfSync, RevisionUnavailable, SystemUnavailable
      #           message: "Message", # required
      #           external_execution_id: "ExecutionId",
      #         },
      #       }
      class PutJobFailureResultInput < Aws::Structure.new(
        :job_id,
        :failure_details)

        # @!attribute [rw] job_id
        #   The unique system-generated ID of the job that failed. This is the
        #   same ID returned from PollForJobs.
        #   @return [String]

        # @!attribute [rw] failure_details
        #   The details about the failure of a job.
        #   @return [Types::FailureDetails]

      end

      # Represents the input of a put job success result action.
      # @note When making an API call, pass PutJobSuccessResultInput
      #   data as a hash:
      #
      #       {
      #         job_id: "JobId", # required
      #         current_revision: {
      #           revision: "Revision", # required
      #           change_identifier: "RevisionChangeIdentifier", # required
      #           created: Time.now,
      #           revision_summary: "RevisionSummary",
      #         },
      #         continuation_token: "ContinuationToken",
      #         execution_details: {
      #           summary: "ExecutionSummary",
      #           external_execution_id: "ExecutionId",
      #           percent_complete: 1,
      #         },
      #       }
      class PutJobSuccessResultInput < Aws::Structure.new(
        :job_id,
        :current_revision,
        :continuation_token,
        :execution_details)

        # @!attribute [rw] job_id
        #   The unique system-generated ID of the job that succeeded. This is
        #   the same ID returned from PollForJobs.
        #   @return [String]

        # @!attribute [rw] current_revision
        #   The ID of the current revision of the artifact successfully worked
        #   upon by the job.
        #   @return [Types::CurrentRevision]

        # @!attribute [rw] continuation_token
        #   A token generated by a job worker, such as an AWS CodeDeploy
        #   deployment ID, that a successful job provides to identify a custom
        #   action in progress. Future jobs will use this token in order to
        #   identify the running instance of the action. It can be reused to
        #   return additional information about the progress of the custom
        #   action. When the action is complete, no continuation token should be
        #   supplied.
        #   @return [String]

        # @!attribute [rw] execution_details
        #   The execution details of the successful job, such as the actions
        #   taken by the job worker.
        #   @return [Types::ExecutionDetails]

      end

      # Represents the input of a third party job failure result action.
      # @note When making an API call, pass PutThirdPartyJobFailureResultInput
      #   data as a hash:
      #
      #       {
      #         job_id: "ThirdPartyJobId", # required
      #         client_token: "ClientToken", # required
      #         failure_details: { # required
      #           type: "JobFailed", # required, accepts JobFailed, ConfigurationError, PermissionError, RevisionOutOfSync, RevisionUnavailable, SystemUnavailable
      #           message: "Message", # required
      #           external_execution_id: "ExecutionId",
      #         },
      #       }
      class PutThirdPartyJobFailureResultInput < Aws::Structure.new(
        :job_id,
        :client_token,
        :failure_details)

        # @!attribute [rw] job_id
        #   The ID of the job that failed. This is the same ID returned from
        #   PollForThirdPartyJobs.
        #   @return [String]

        # @!attribute [rw] client_token
        #   The clientToken portion of the clientId and clientToken pair used to
        #   verify that the calling entity is allowed access to the job and its
        #   details.
        #   @return [String]

        # @!attribute [rw] failure_details
        #   Represents information about failure details.
        #   @return [Types::FailureDetails]

      end

      # Represents the input of a put third party job success result action.
      # @note When making an API call, pass PutThirdPartyJobSuccessResultInput
      #   data as a hash:
      #
      #       {
      #         job_id: "ThirdPartyJobId", # required
      #         client_token: "ClientToken", # required
      #         current_revision: {
      #           revision: "Revision", # required
      #           change_identifier: "RevisionChangeIdentifier", # required
      #           created: Time.now,
      #           revision_summary: "RevisionSummary",
      #         },
      #         continuation_token: "ContinuationToken",
      #         execution_details: {
      #           summary: "ExecutionSummary",
      #           external_execution_id: "ExecutionId",
      #           percent_complete: 1,
      #         },
      #       }
      class PutThirdPartyJobSuccessResultInput < Aws::Structure.new(
        :job_id,
        :client_token,
        :current_revision,
        :continuation_token,
        :execution_details)

        # @!attribute [rw] job_id
        #   The ID of the job that successfully completed. This is the same ID
        #   returned from PollForThirdPartyJobs.
        #   @return [String]

        # @!attribute [rw] client_token
        #   The clientToken portion of the clientId and clientToken pair used to
        #   verify that the calling entity is allowed access to the job and its
        #   details.
        #   @return [String]

        # @!attribute [rw] current_revision
        #   Represents information about a current revision.
        #   @return [Types::CurrentRevision]

        # @!attribute [rw] continuation_token
        #   A token generated by a job worker, such as an AWS CodeDeploy
        #   deployment ID, that a successful job provides to identify a partner
        #   action in progress. Future jobs will use this token in order to
        #   identify the running instance of the action. It can be reused to
        #   return additional information about the progress of the partner
        #   action. When the action is complete, no continuation token should be
        #   supplied.
        #   @return [String]

        # @!attribute [rw] execution_details
        #   The details of the actions taken and results produced on an artifact
        #   as it passes through stages in the pipeline.
        #   @return [Types::ExecutionDetails]

      end

      # Represents the input of a retry stage execution action.
      # @note When making an API call, pass RetryStageExecutionInput
      #   data as a hash:
      #
      #       {
      #         pipeline_name: "PipelineName", # required
      #         stage_name: "StageName", # required
      #         pipeline_execution_id: "PipelineExecutionId", # required
      #         retry_mode: "FAILED_ACTIONS", # required, accepts FAILED_ACTIONS
      #       }
      class RetryStageExecutionInput < Aws::Structure.new(
        :pipeline_name,
        :stage_name,
        :pipeline_execution_id,
        :retry_mode)

        # @!attribute [rw] pipeline_name
        #   The name of the pipeline that contains the failed stage.
        #   @return [String]

        # @!attribute [rw] stage_name
        #   The name of the failed stage to be retried.
        #   @return [String]

        # @!attribute [rw] pipeline_execution_id
        #   The ID of the pipeline execution in the failed stage to be retried.
        #   Use the GetPipelineState action to retrieve the current
        #   pipelineExecutionId of the failed stage
        #   @return [String]

        # @!attribute [rw] retry_mode
        #   The scope of the retry attempt. Currently, the only supported value
        #   is FAILED\_ACTIONS.
        #   @return [String]

      end

      # Represents the output of a retry stage execution action.
      class RetryStageExecutionOutput < Aws::Structure.new(
        :pipeline_execution_id)

        # @!attribute [rw] pipeline_execution_id
        #   The ID of the current workflow execution in the failed stage.
        #   @return [String]

      end

      # The location of the Amazon S3 bucket that contains a revision.
      class S3ArtifactLocation < Aws::Structure.new(
        :bucket_name,
        :object_key)

        # @!attribute [rw] bucket_name
        #   The name of the Amazon S3 bucket.
        #   @return [String]

        # @!attribute [rw] object_key
        #   The key of the object in the Amazon S3 bucket, which uniquely
        #   identifies the object in the bucket.
        #   @return [String]

      end

      # Represents information about a stage to a job worker.
      class StageContext < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   The name of the stage.
        #   @return [String]

      end

      # Represents information about a stage and its definition.
      # @note When making an API call, pass StageDeclaration
      #   data as a hash:
      #
      #       {
      #         name: "StageName", # required
      #         blockers: [
      #           {
      #             name: "BlockerName", # required
      #             type: "Schedule", # required, accepts Schedule
      #           },
      #         ],
      #         actions: [ # required
      #           {
      #             name: "ActionName", # required
      #             action_type_id: { # required
      #               category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval
      #               owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #               provider: "ActionProvider", # required
      #               version: "Version", # required
      #             },
      #             run_order: 1,
      #             configuration: {
      #               "ActionConfigurationKey" => "ActionConfigurationValue",
      #             },
      #             output_artifacts: [
      #               {
      #                 name: "ArtifactName", # required
      #               },
      #             ],
      #             input_artifacts: [
      #               {
      #                 name: "ArtifactName", # required
      #               },
      #             ],
      #             role_arn: "RoleArn",
      #           },
      #         ],
      #       }
      class StageDeclaration < Aws::Structure.new(
        :name,
        :blockers,
        :actions)

        # @!attribute [rw] name
        #   The name of the stage.
        #   @return [String]

        # @!attribute [rw] blockers
        #   Reserved for future use.
        #   @return [Array<Types::BlockerDeclaration>]

        # @!attribute [rw] actions
        #   The actions included in a stage.
        #   @return [Array<Types::ActionDeclaration>]

      end

      # Represents information about the run of a stage.
      class StageExecution < Aws::Structure.new(
        :pipeline_execution_id,
        :status)

        # @!attribute [rw] pipeline_execution_id
        #   The ID of the pipeline execution associated with the stage.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the stage, or for a completed stage, the last status
        #   of the stage.
        #   @return [String]

      end

      # Represents information about the state of the stage.
      class StageState < Aws::Structure.new(
        :stage_name,
        :inbound_transition_state,
        :action_states,
        :latest_execution)

        # @!attribute [rw] stage_name
        #   The name of the stage.
        #   @return [String]

        # @!attribute [rw] inbound_transition_state
        #   The state of the inbound transition, which is either enabled or
        #   disabled.
        #   @return [Types::TransitionState]

        # @!attribute [rw] action_states
        #   The state of the stage.
        #   @return [Array<Types::ActionState>]

        # @!attribute [rw] latest_execution
        #   Information about the latest execution in the stage, including its
        #   ID and status.
        #   @return [Types::StageExecution]

      end

      # Represents the input of a start pipeline execution action.
      # @note When making an API call, pass StartPipelineExecutionInput
      #   data as a hash:
      #
      #       {
      #         name: "PipelineName", # required
      #       }
      class StartPipelineExecutionInput < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   The name of the pipeline to start.
        #   @return [String]

      end

      # Represents the output of a start pipeline execution action.
      class StartPipelineExecutionOutput < Aws::Structure.new(
        :pipeline_execution_id)

        # @!attribute [rw] pipeline_execution_id
        #   The unique system-generated ID of the pipeline execution that was
        #   started.
        #   @return [String]

      end

      # A response to a PollForThirdPartyJobs request returned by AWS
      # CodePipeline when there is a job to be worked upon by a partner
      # action.
      class ThirdPartyJob < Aws::Structure.new(
        :client_id,
        :job_id)

        # @!attribute [rw] client_id
        #   The clientToken portion of the clientId and clientToken pair used to
        #   verify that the calling entity is allowed access to the job and its
        #   details.
        #   @return [String]

        # @!attribute [rw] job_id
        #   The identifier used to identify the job in AWS CodePipeline.
        #   @return [String]

      end

      # Represents information about the job data for a partner action.
      class ThirdPartyJobData < Aws::Structure.new(
        :action_type_id,
        :action_configuration,
        :pipeline_context,
        :input_artifacts,
        :output_artifacts,
        :artifact_credentials,
        :continuation_token,
        :encryption_key)

        # @!attribute [rw] action_type_id
        #   Represents information about an action type.
        #   @return [Types::ActionTypeId]

        # @!attribute [rw] action_configuration
        #   Represents information about an action configuration.
        #   @return [Types::ActionConfiguration]

        # @!attribute [rw] pipeline_context
        #   Represents information about a pipeline to a job worker.
        #   @return [Types::PipelineContext]

        # @!attribute [rw] input_artifacts
        #   The name of the artifact that will be worked upon by the action, if
        #   any. This name might be system-generated, such as \"MyApp\", or
        #   might be defined by the user when the action is created. The input
        #   artifact name must match the name of an output artifact generated by
        #   an action in an earlier action or stage of the pipeline.
        #   @return [Array<Types::Artifact>]

        # @!attribute [rw] output_artifacts
        #   The name of the artifact that will be the result of the action, if
        #   any. This name might be system-generated, such as \"MyBuiltApp\", or
        #   might be defined by the user when the action is created.
        #   @return [Array<Types::Artifact>]

        # @!attribute [rw] artifact_credentials
        #   Represents an AWS session credentials object. These credentials are
        #   temporary credentials that are issued by AWS Secure Token Service
        #   (STS). They can be used to access input and output artifacts in the
        #   Amazon S3 bucket used to store artifact for the pipeline in AWS
        #   CodePipeline.
        #   @return [Types::AWSSessionCredentials]

        # @!attribute [rw] continuation_token
        #   A system-generated token, such as a AWS CodeDeploy deployment ID,
        #   that a job requires in order to continue the job asynchronously.
        #   @return [String]

        # @!attribute [rw] encryption_key
        #   The encryption key used to encrypt and decrypt data in the artifact
        #   store for the pipeline, such as an AWS Key Management Service (AWS
        #   KMS) key. This is optional and might not be present.
        #   @return [Types::EncryptionKey]

      end

      # The details of a job sent in response to a GetThirdPartyJobDetails
      # request.
      class ThirdPartyJobDetails < Aws::Structure.new(
        :id,
        :data,
        :nonce)

        # @!attribute [rw] id
        #   The identifier used to identify the job details in AWS CodePipeline.
        #   @return [String]

        # @!attribute [rw] data
        #   The data to be returned by the third party job worker.
        #   @return [Types::ThirdPartyJobData]

        # @!attribute [rw] nonce
        #   A system-generated random number that AWS CodePipeline uses to
        #   ensure that the job is being worked on by only one job worker. This
        #   number must be returned in the response.
        #   @return [String]

      end

      # Represents information about the state of transitions between one
      # stage and another stage.
      class TransitionState < Aws::Structure.new(
        :enabled,
        :last_changed_by,
        :last_changed_at,
        :disabled_reason)

        # @!attribute [rw] enabled
        #   Whether the transition between stages is enabled (true) or disabled
        #   (false).
        #   @return [Boolean]

        # @!attribute [rw] last_changed_by
        #   The ID of the user who last changed the transition state.
        #   @return [String]

        # @!attribute [rw] last_changed_at
        #   The timestamp when the transition state was last changed.
        #   @return [Time]

        # @!attribute [rw] disabled_reason
        #   The user-specified reason why the transition between two stages of a
        #   pipeline was disabled.
        #   @return [String]

      end

      # Represents the input of an update pipeline action.
      # @note When making an API call, pass UpdatePipelineInput
      #   data as a hash:
      #
      #       {
      #         pipeline: { # required
      #           name: "PipelineName", # required
      #           role_arn: "RoleArn", # required
      #           artifact_store: { # required
      #             type: "S3", # required, accepts S3
      #             location: "ArtifactStoreLocation", # required
      #             encryption_key: {
      #               id: "EncryptionKeyId", # required
      #               type: "KMS", # required, accepts KMS
      #             },
      #           },
      #           stages: [ # required
      #             {
      #               name: "StageName", # required
      #               blockers: [
      #                 {
      #                   name: "BlockerName", # required
      #                   type: "Schedule", # required, accepts Schedule
      #                 },
      #               ],
      #               actions: [ # required
      #                 {
      #                   name: "ActionName", # required
      #                   action_type_id: { # required
      #                     category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval
      #                     owner: "AWS", # required, accepts AWS, ThirdParty, Custom
      #                     provider: "ActionProvider", # required
      #                     version: "Version", # required
      #                   },
      #                   run_order: 1,
      #                   configuration: {
      #                     "ActionConfigurationKey" => "ActionConfigurationValue",
      #                   },
      #                   output_artifacts: [
      #                     {
      #                       name: "ArtifactName", # required
      #                     },
      #                   ],
      #                   input_artifacts: [
      #                     {
      #                       name: "ArtifactName", # required
      #                     },
      #                   ],
      #                   role_arn: "RoleArn",
      #                 },
      #               ],
      #             },
      #           ],
      #           version: 1,
      #         },
      #       }
      class UpdatePipelineInput < Aws::Structure.new(
        :pipeline)

        # @!attribute [rw] pipeline
        #   The name of the pipeline to be updated.
        #   @return [Types::PipelineDeclaration]

      end

      # Represents the output of an update pipeline action.
      class UpdatePipelineOutput < Aws::Structure.new(
        :pipeline)

        # @!attribute [rw] pipeline
        #   The structure of the updated pipeline.
        #   @return [Types::PipelineDeclaration]

      end

    end
  end
end
