# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GameSparks
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource already exists, or another operation is in progress.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a WebSocket connection.
    #
    # @!attribute [rw] created
    #   The date and time when the connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The identifier used to indicate a specific WebSocket connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :created,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A client-defined token. With an active client token in the request,
    #   this action is idempotent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the game.
    #   @return [String]
    #
    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to apply to the game.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/CreateGameRequest AWS API Documentation
    #
    class CreateGameRequest < Struct.new(
      :client_token,
      :description,
      :game_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game
    #   Details about the game that was created.
    #   @return [Types::GameDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/CreateGameResult AWS API Documentation
    #
    class CreateGameResult < Struct.new(
      :game)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/CreateSnapshotRequest AWS API Documentation
    #
    class CreateSnapshotRequest < Struct.new(
      :description,
      :game_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Properties that provide details of the created snapshot.
    #   @return [Types::SnapshotDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/CreateSnapshotResult AWS API Documentation
    #
    class CreateSnapshotResult < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A client-defined token. With an active client token in the request,
    #   this action is idempotent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the role to run the game with.
    #   This role can be a game-defined role or the default role that
    #   GameSparks created.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to apply to the stage.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/CreateStageRequest AWS API Documentation
    #
    class CreateStageRequest < Struct.new(
      :client_token,
      :description,
      :game_name,
      :role,
      :stage_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage
    #   Properties that describe the stage.
    #   @return [Types::StageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/CreateStageResult AWS API Documentation
    #
    class CreateStageResult < Struct.new(
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/DeleteGameRequest AWS API Documentation
    #
    class DeleteGameRequest < Struct.new(
      :game_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/DeleteGameResult AWS API Documentation
    #
    class DeleteGameResult < Aws::EmptyStructure; end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/DeleteStageRequest AWS API Documentation
    #
    class DeleteStageRequest < Struct.new(
      :game_name,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/DeleteStageResult AWS API Documentation
    #
    class DeleteStageResult < Aws::EmptyStructure; end

    # The result of the deployment.
    #
    # @!attribute [rw] message
    #   Details about the deployment result.
    #   @return [String]
    #
    # @!attribute [rw] result_code
    #   The type of deployment result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/DeploymentResult AWS API Documentation
    #
    class DeploymentResult < Struct.new(
      :message,
      :result_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] player_id
    #   The unique identifier representing a player.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/DisconnectPlayerRequest AWS API Documentation
    #
    class DisconnectPlayerRequest < Struct.new(
      :game_name,
      :player_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disconnect_failures
    #   The list of the connection ids that could not be disconnected.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disconnect_successes
    #   The list of the connection ids that were disconnected.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/DisconnectPlayerResult AWS API Documentation
    #
    class DisconnectPlayerResult < Struct.new(
      :disconnect_failures,
      :disconnect_successes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot to export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ExportSnapshotRequest AWS API Documentation
    #
    class ExportSnapshotRequest < Struct.new(
      :game_name,
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_url
    #   The presigned URL for the snapshot data.
    #
    #   This URL will be available for 10 minutes, and can be used to
    #   download the snapshot content. If the URL expires, a new one can be
    #   requested using the same operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ExportSnapshotResult AWS API Documentation
    #
    class ExportSnapshotResult < Struct.new(
      :s3_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the extension.
    #
    # @!attribute [rw] description
    #   The description of the extension.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the extension.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace (qualifier) of the extension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ExtensionDetails AWS API Documentation
    #
    class ExtensionDetails < Struct.new(
      :description,
      :name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the extension version.
    #
    # @!attribute [rw] name
    #   The name of the extension.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace (qualifier) of the extension.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The model that defines the interface for this extension version.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the extension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ExtensionVersionDetails AWS API Documentation
    #
    class ExtensionVersionDetails < Struct.new(
      :name,
      :namespace,
      :schema,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the game configuration.
    #
    # The game configuration is organized into named sections, where the
    # schema of each section is defined by an extension. The schema for
    # these sections can be retrieved using the `GetExtensionVersion`
    # operation.
    #
    # @!attribute [rw] created
    #   The date when the game was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The date when the game was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] sections
    #   Configuration data, organized by section name.
    #   @return [Hash<String,Types::Section>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GameConfigurationDetails AWS API Documentation
    #
    class GameConfigurationDetails < Struct.new(
      :created,
      :last_updated,
      :sections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a game.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of this game.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The date when the game was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the game.
    #   @return [String]
    #
    # @!attribute [rw] enable_termination_protection
    #   Determines if the game can be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_updated
    #   The date when the game was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the game.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the game.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GameDetails AWS API Documentation
    #
    class GameDetails < Struct.new(
      :arn,
      :created,
      :description,
      :enable_termination_protection,
      :last_updated,
      :name,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the properties of a game.
    #
    # @!attribute [rw] description
    #   The description of the game.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the game.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the game.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GameSummary AWS API Documentation
    #
    class GameSummary < Struct.new(
      :description,
      :name,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a generated code job.
    #
    # @!attribute [rw] description
    #   The description of the generated code job.
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   The expiration date and time for the download URL.
    #
    #   The download URL us guaranteed to be available until at least this
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] generated_code_job_id
    #   The identifier for the generated code job.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   A presigned URL that can be used to download the generated code.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the generated code job
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GeneratedCodeJobDetails AWS API Documentation
    #
    class GeneratedCodeJobDetails < Struct.new(
      :description,
      :expiration_time,
      :generated_code_job_id,
      :s3_url,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties that specify the code generator for a generated code job.
    #
    # @!attribute [rw] game_sdk_version
    #   The target version of the GameSparks Game SDK.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The programming language for the generated code.
    #
    #   Not all languages are supported for each platform. For cases where
    #   multiple languages are supported, this parameter specifies the
    #   language to be used. If this value is omitted, the default language
    #   for the target platform will be used.
    #   @return [String]
    #
    # @!attribute [rw] target_platform
    #   The platform that will be used to run the generated code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/Generator AWS API Documentation
    #
    class Generator < Struct.new(
      :game_sdk_version,
      :language,
      :target_platform)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the extension.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace (qualifier) of the extension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetExtensionRequest AWS API Documentation
    #
    class GetExtensionRequest < Struct.new(
      :name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extension
    #   Details about the extension.
    #   @return [Types::ExtensionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetExtensionResult AWS API Documentation
    #
    class GetExtensionResult < Struct.new(
      :extension)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extension_version
    #   The version of the extension.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the extension.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace (qualifier) of the extension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetExtensionVersionRequest AWS API Documentation
    #
    class GetExtensionVersionRequest < Struct.new(
      :extension_version,
      :name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extension_version
    #   The version of the extension.
    #   @return [Types::ExtensionVersionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetExtensionVersionResult AWS API Documentation
    #
    class GetExtensionVersionResult < Struct.new(
      :extension_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] sections
    #   The list of sections to return.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetGameConfigurationRequest AWS API Documentation
    #
    class GetGameConfigurationRequest < Struct.new(
      :game_name,
      :sections)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_configuration
    #   Details about the game configuration.
    #   @return [Types::GameConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetGameConfigurationResult AWS API Documentation
    #
    class GetGameConfigurationResult < Struct.new(
      :game_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetGameRequest AWS API Documentation
    #
    class GetGameRequest < Struct.new(
      :game_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game
    #   The details of the game.
    #   @return [Types::GameDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetGameResult AWS API Documentation
    #
    class GetGameResult < Struct.new(
      :game)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The identifier of the code generation job.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot for the code generation job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetGeneratedCodeJobRequest AWS API Documentation
    #
    class GetGeneratedCodeJobRequest < Struct.new(
      :game_name,
      :job_id,
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] generated_code_job
    #   Details about the generated code job.
    #   @return [Types::GeneratedCodeJobDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetGeneratedCodeJobResult AWS API Documentation
    #
    class GetGeneratedCodeJobResult < Struct.new(
      :generated_code_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] player_id
    #   The unique identifier representing a player.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetPlayerConnectionStatusRequest AWS API Documentation
    #
    class GetPlayerConnectionStatusRequest < Struct.new(
      :game_name,
      :player_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connections
    #   The list of connection ids, one for each connection in use by the
    #   player.
    #   @return [Array<Types::Connection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetPlayerConnectionStatusResult AWS API Documentation
    #
    class GetPlayerConnectionStatusResult < Struct.new(
      :connections)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] sections
    #   The list of game configuration sections to be described.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetSnapshotRequest AWS API Documentation
    #
    class GetSnapshotRequest < Struct.new(
      :game_name,
      :sections,
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Properties that provide details of the snapshot.
    #   @return [Types::SnapshotDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetSnapshotResult AWS API Documentation
    #
    class GetSnapshotResult < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The identifier of the stage deployment. `StartStageDeployment`
    #   returns the identifier that you use here.
    #   @return [String]
    #
    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetStageDeploymentRequest AWS API Documentation
    #
    class GetStageDeploymentRequest < Struct.new(
      :deployment_id,
      :game_name,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_deployment
    #   Properties that provide details of the stage deployment.
    #   @return [Types::StageDeploymentDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetStageDeploymentResult AWS API Documentation
    #
    class GetStageDeploymentResult < Struct.new(
      :stage_deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetStageRequest AWS API Documentation
    #
    class GetStageRequest < Struct.new(
      :game_name,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage
    #   Properties that provide details of the stage.
    #   @return [Types::StageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetStageResult AWS API Documentation
    #
    class GetStageResult < Struct.new(
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] import_source
    #   The source used to import configuration sections.
    #   @return [Types::ImportGameConfigurationSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ImportGameConfigurationRequest AWS API Documentation
    #
    class ImportGameConfigurationRequest < Struct.new(
      :game_name,
      :import_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_configuration
    #   Details about the game configuration.
    #   @return [Types::GameConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ImportGameConfigurationResult AWS API Documentation
    #
    class ImportGameConfigurationResult < Struct.new(
      :game_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source used to import configuration sections.
    #
    # @!attribute [rw] file
    #   The JSON string containing the configuration sections.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ImportGameConfigurationSource AWS API Documentation
    #
    class ImportGameConfigurationSource < Struct.new(
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an internal error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the extension.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace (qualifier) of the extension.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListExtensionVersionsRequest AWS API Documentation
    #
    class ListExtensionVersionsRequest < Struct.new(
      :max_results,
      :name,
      :namespace,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extension_versions
    #   The list of extension versions.
    #   @return [Array<Types::ExtensionVersionDetails>]
    #
    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use this value when making the next call to this operation to
    #   continue where the last one finished.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListExtensionVersionsResult AWS API Documentation
    #
    class ListExtensionVersionsResult < Struct.new(
      :extension_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListExtensionsRequest AWS API Documentation
    #
    class ListExtensionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] extensions
    #   The list of extensions.
    #   @return [Array<Types::ExtensionDetails>]
    #
    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use this value when making the next call to this operation to
    #   continue where the last one finished.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListExtensionsResult AWS API Documentation
    #
    class ListExtensionsResult < Struct.new(
      :extensions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListGamesRequest AWS API Documentation
    #
    class ListGamesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] games
    #   The list of games.
    #   @return [Array<Types::GameSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use this value when making the next call to this operation to
    #   continue where the last one finished.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListGamesResult AWS API Documentation
    #
    class ListGamesResult < Struct.new(
      :games,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListGeneratedCodeJobsRequest AWS API Documentation
    #
    class ListGeneratedCodeJobsRequest < Struct.new(
      :game_name,
      :max_results,
      :next_token,
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] generated_code_jobs
    #   The list of generated code jobs.
    #   @return [Array<Types::GeneratedCodeJobDetails>]
    #
    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use this value when making the next call to this operation to
    #   continue where the last one finished.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListGeneratedCodeJobsResult AWS API Documentation
    #
    class ListGeneratedCodeJobsResult < Struct.new(
      :generated_code_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListSnapshotsRequest AWS API Documentation
    #
    class ListSnapshotsRequest < Struct.new(
      :game_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use this value when making the next call to this operation to
    #   continue where the last one finished.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   A list of snapshot summaries. You can use the returned snapshot IDs
    #   in the `UpdateSnapshot` and `GetSnapshot` operations.
    #   @return [Array<Types::SnapshotSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListSnapshotsResult AWS API Documentation
    #
    class ListSnapshotsResult < Struct.new(
      :next_token,
      :snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListStageDeploymentsRequest AWS API Documentation
    #
    class ListStageDeploymentsRequest < Struct.new(
      :game_name,
      :max_results,
      :next_token,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use this value when making the next call to this operation to
    #   continue where the last one finished.
    #   @return [String]
    #
    # @!attribute [rw] stage_deployments
    #   A list of stage deployment summaries. You can use the deployment IDs
    #   in the `UpdateStageDeployment` and `GetStageDeployment` actions.
    #   @return [Array<Types::StageDeploymentSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListStageDeploymentsResult AWS API Documentation
    #
    class ListStageDeploymentsResult < Struct.new(
      :next_token,
      :stage_deployments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListStagesRequest AWS API Documentation
    #
    class ListStagesRequest < Struct.new(
      :game_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use this value when making the next call to this operation to
    #   continue where the last one finished.
    #   @return [String]
    #
    # @!attribute [rw] stages
    #   A list of stage summaries. You can use the stage names in the
    #   `UpdateStage` and `GetStage` actions.
    #   @return [Array<Types::StageSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListStagesResult AWS API Documentation
    #
    class ListStagesResult < Struct.new(
      :next_token,
      :stages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the GameSparks resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration section.
    #
    # @!attribute [rw] attributes
    #   The content of a configuration section.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] name
    #   The name of the section.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size, in bytes, of the section contents.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/Section AWS API Documentation
    #
    class Section < Struct.new(
      :attributes,
      :name,
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single modification to the configuration section.
    #
    # @!attribute [rw] operation
    #   The operation to be performed on a configuration section.
    #
    #   Content can be added, deleted, or replaced within a section.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path within the section content to be modified.
    #   @return [String]
    #
    # @!attribute [rw] section
    #   The name of the section to be modified.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   For add and replace operations, this is the value that will be used.
    #
    #   This field should be omitted for delete operations.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/SectionModification AWS API Documentation
    #
    class SectionModification < Struct.new(
      :operation,
      :path,
      :section,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would result in exceeding service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties that provide details of a snapshot.
    #
    # @!attribute [rw] created
    #   The timestamp of when the snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The timestamp of when the snapshot was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] sections
    #   The sections in the snapshot.
    #   @return [Hash<String,Types::Section>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/SnapshotDetails AWS API Documentation
    #
    class SnapshotDetails < Struct.new(
      :created,
      :description,
      :id,
      :last_updated,
      :sections)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the properties of a snapshot.
    #
    # @!attribute [rw] created
    #   The timestamp of when the snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   Then timestamp of when the snapshot was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/SnapshotSummary AWS API Documentation
    #
    class SnapshotSummary < Struct.new(
      :created,
      :description,
      :id,
      :last_updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties that provide details of a stage deployment.
    #
    # @!attribute [rw] created
    #   The timestamp of when the stage deployment was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_action
    #   The type of action of the stage deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_result
    #   The result of the deployment.
    #   @return [Types::DeploymentResult]
    #
    # @!attribute [rw] deployment_state
    #   The state of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The timestamp of when the deployment was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot associated with the stage deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/StageDeploymentDetails AWS API Documentation
    #
    class StageDeploymentDetails < Struct.new(
      :created,
      :deployment_action,
      :deployment_id,
      :deployment_result,
      :deployment_state,
      :last_updated,
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the properties of a stage deployment.
    #
    # @!attribute [rw] deployment_action
    #   The type of action of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_result
    #   The result of the deployment.
    #   @return [Types::DeploymentResult]
    #
    # @!attribute [rw] deployment_state
    #   The state of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The timestamp of when the deployment was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot associated with the stage deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/StageDeploymentSummary AWS API Documentation
    #
    class StageDeploymentSummary < Struct.new(
      :deployment_action,
      :deployment_id,
      :deployment_result,
      :deployment_state,
      :last_updated,
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties that provide details of a stage.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the stage.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The timestamp of when the stage was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] game_key
    #   The game key associated with the stage.
    #
    #   The game key is a unique identifier that the game client uses to
    #   connect to the GameSparks backend.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The timestamp of when the stage was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] log_group
    #   The Amazon CloudWatch log group for game runtimes deployed to the
    #   stage.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the role used to run the game
    #   runtimes deployed to the stage.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the stage.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the stage.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/StageDetails AWS API Documentation
    #
    class StageDetails < Struct.new(
      :arn,
      :created,
      :description,
      :game_key,
      :last_updated,
      :log_group,
      :name,
      :role,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the properties of a stage.
    #
    # @!attribute [rw] description
    #   The description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] game_key
    #   The game key associated with the stage.
    #
    #   The game key is a unique identifier that the game client uses to
    #   connect to the GameSparks backend.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the stage.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the stage.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/StageSummary AWS API Documentation
    #
    class StageSummary < Struct.new(
      :description,
      :game_key,
      :name,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] generator
    #   Properties of the generator to use for the job.
    #   @return [Types::Generator]
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot for which to generate code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/StartGeneratedCodeJobRequest AWS API Documentation
    #
    class StartGeneratedCodeJobRequest < Struct.new(
      :game_name,
      :generator,
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] generated_code_job_id
    #   The identifier of the code generation job. You can use this
    #   identifier in the `GetGeneratedCodeJob` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/StartGeneratedCodeJobResult AWS API Documentation
    #
    class StartGeneratedCodeJobResult < Struct.new(
      :generated_code_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A client-defined token. With an active client token in the request,
    #   this action is idempotent.
    #   @return [String]
    #
    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot to deploy.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage to deploy the snapshot onto.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/StartStageDeploymentRequest AWS API Documentation
    #
    class StartStageDeploymentRequest < Struct.new(
      :client_token,
      :game_name,
      :snapshot_id,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage_deployment
    #   Properties that describe the stage deployment.
    #   @return [Types::StageDeploymentDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/StartStageDeploymentResult AWS API Documentation
    #
    class StartStageDeploymentResult < Struct.new(
      :stage_deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add the tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/TagResourceResult AWS API Documentation
    #
    class TagResourceResult < Aws::EmptyStructure; end

    # The request throughput limit was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove the tags
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Aws::EmptyStructure; end

    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] modifications
    #   The list of modifications to make.
    #   @return [Array<Types::SectionModification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateGameConfigurationRequest AWS API Documentation
    #
    class UpdateGameConfigurationRequest < Struct.new(
      :game_name,
      :modifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_configuration
    #   Details about the game configuration.
    #   @return [Types::GameConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateGameConfigurationResult AWS API Documentation
    #
    class UpdateGameConfigurationResult < Struct.new(
      :game_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the game.
    #   @return [String]
    #
    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateGameRequest AWS API Documentation
    #
    class UpdateGameRequest < Struct.new(
      :description,
      :game_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game
    #   The details of the game.
    #   @return [Types::GameDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateGameResult AWS API Documentation
    #
    class UpdateGameResult < Struct.new(
      :game)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateSnapshotRequest AWS API Documentation
    #
    class UpdateSnapshotRequest < Struct.new(
      :description,
      :game_name,
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Properties that provide details of the updated snapshot.
    #   @return [Types::SnapshotDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateSnapshotResult AWS API Documentation
    #
    class UpdateSnapshotResult < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] game_name
    #   The name of the game.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the role to use for the game
    #   snapshots deployed to this stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateStageRequest AWS API Documentation
    #
    class UpdateStageRequest < Struct.new(
      :description,
      :game_name,
      :role,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage
    #   Properties that provide details of the updated stage.
    #   @return [Types::StageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateStageResult AWS API Documentation
    #
    class UpdateStageResult < Struct.new(
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the parameters in the request is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
