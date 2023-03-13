# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectWisdomService
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for Amazon AppIntegrations to automatically
    # ingest content.
    #
    # @!attribute [rw] app_integration_arn
    #   The Amazon Resource Name (ARN) of the AppIntegrations
    #   DataIntegration to use for ingesting content.
    #
    #   * For [ Salesforce][1], your AppIntegrations DataIntegration must
    #     have an ObjectConfiguration if objectFields is not provided,
    #     including at least `Id`, `ArticleNumber`, `VersionNumber`,
    #     `Title`, `PublishStatus`, and `IsDeleted` as source fields.
    #
    #   * For [ ServiceNow][2], your AppIntegrations DataIntegration must
    #     have an ObjectConfiguration if objectFields is not provided,
    #     including at least `number`, `short_description`, `sys_mod_count`,
    #     `workflow_state`, and `active` as source fields.
    #
    #   * For [ Zendesk][3], your AppIntegrations DataIntegration must have
    #     an ObjectConfiguration if `objectFields` is not provided,
    #     including at least `id`, `title`, `updated_at`, and `draft` as
    #     source fields.
    #
    #   * For [ SharePoint][4], your AppIntegrations DataIntegration must
    #     have a FileConfiguration, including only file extensions that are
    #     among `docx`, `pdf`, `html`, `htm`, and `txt`.
    #
    #
    #
    #   [1]: https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm
    #   [2]: https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api
    #   [3]: https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/
    #   [4]: https://learn.microsoft.com/en-us/sharepoint/dev/sp-add-ins/sharepoint-net-server-csom-jsom-and-rest-api-index
    #   @return [String]
    #
    # @!attribute [rw] object_fields
    #   The fields from the source that are made available to your agents in
    #   Wisdom. Optional if ObjectConfiguration is included in the provided
    #   DataIntegration.
    #
    #   * For [ Salesforce][1], you must include at least `Id`,
    #     `ArticleNumber`, `VersionNumber`, `Title`, `PublishStatus`, and
    #     `IsDeleted`.
    #
    #   * For [ ServiceNow][2], you must include at least `number`,
    #     `short_description`, `sys_mod_count`, `workflow_state`, and
    #     `active`.
    #
    #   * For [ Zendesk][3], you must include at least `id`, `title`,
    #     `updated_at`, and `draft`.
    #
    #   Make sure to include additional fields. These fields are indexed and
    #   used to source recommendations.
    #
    #
    #
    #   [1]: https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm
    #   [2]: https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api
    #   [3]: https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/AppIntegrationsConfiguration AWS API Documentation
    #
    class AppIntegrationsConfiguration < Struct.new(
      :app_integration_arn,
      :object_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the assistant association.
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Wisdom assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_association_arn
    #   The Amazon Resource Name (ARN) of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_association_id
    #   The identifier of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant.
    #   @return [String]
    #
    # @!attribute [rw] association_data
    #   A union type that currently has a single argument, the knowledge
    #   base ID.
    #   @return [Types::AssistantAssociationOutputData]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/AssistantAssociationData AWS API Documentation
    #
    class AssistantAssociationData < Struct.new(
      :assistant_arn,
      :assistant_association_arn,
      :assistant_association_id,
      :assistant_id,
      :association_data,
      :association_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data that is input into Wisdom as a result of the assistant
    # association.
    #
    # @note AssistantAssociationInputData is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/AssistantAssociationInputData AWS API Documentation
    #
    class AssistantAssociationInputData < Struct.new(
      :knowledge_base_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class KnowledgeBaseId < AssistantAssociationInputData; end
      class Unknown < AssistantAssociationInputData; end
    end

    # The data that is output as a result of the assistant association.
    #
    # @note AssistantAssociationOutputData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AssistantAssociationOutputData corresponding to the set member.
    #
    # @!attribute [rw] knowledge_base_association
    #   The knowledge base where output data is sent.
    #   @return [Types::KnowledgeBaseAssociationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/AssistantAssociationOutputData AWS API Documentation
    #
    class AssistantAssociationOutputData < Struct.new(
      :knowledge_base_association,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class KnowledgeBaseAssociation < AssistantAssociationOutputData; end
      class Unknown < AssistantAssociationOutputData; end
    end

    # Summary information about the assistant association.
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Wisdom assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_association_arn
    #   The Amazon Resource Name (ARN) of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_association_id
    #   The identifier of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant.
    #   @return [String]
    #
    # @!attribute [rw] association_data
    #   The association data.
    #   @return [Types::AssistantAssociationOutputData]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/AssistantAssociationSummary AWS API Documentation
    #
    class AssistantAssociationSummary < Struct.new(
      :assistant_arn,
      :assistant_association_arn,
      :assistant_association_id,
      :assistant_id,
      :association_data,
      :association_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assistant data.
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Wisdom assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The KMS key used for encryption.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of assistant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/AssistantData AWS API Documentation
    #
    class AssistantData < Struct.new(
      :assistant_arn,
      :assistant_id,
      :description,
      :name,
      :server_side_encryption_configuration,
      :status,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the assistant.
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Wisdom assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The KMS key used for encryption.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the assistant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/AssistantSummary AWS API Documentation
    #
    class AssistantSummary < Struct.new(
      :assistant_arn,
      :assistant_id,
      :description,
      :name,
      :server_side_encryption_configuration,
      :status,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource. For example, if you're using a `Create` API
    # (such as `CreateAssistant`) that accepts name, a conflicting resource
    # (usually with the same name) is being created or mutated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the content.
    #
    # @!attribute [rw] content_arn
    #   The Amazon Resource Name (ARN) of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The media type of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] link_out_uri
    #   The URI of the content.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Wisdom, you can store an external version
    #   identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of the content.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The identifier of the content revision.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the content.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] title
    #   The title of the content.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the content.
    #   @return [String]
    #
    # @!attribute [rw] url_expiry
    #   The expiration time of the URL as an epoch timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ContentData AWS API Documentation
    #
    class ContentData < Struct.new(
      :content_arn,
      :content_id,
      :content_type,
      :knowledge_base_arn,
      :knowledge_base_id,
      :link_out_uri,
      :metadata,
      :name,
      :revision_id,
      :status,
      :tags,
      :title,
      :url,
      :url_expiry)
      SENSITIVE = [:url]
      include Aws::Structure
    end

    # Reference information about the content.
    #
    # @!attribute [rw] content_arn
    #   The Amazon Resource Name (ARN) of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ContentReference AWS API Documentation
    #
    class ContentReference < Struct.new(
      :content_arn,
      :content_id,
      :knowledge_base_arn,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the content.
    #
    # @!attribute [rw] content_arn
    #   The Amazon Resource Name (ARN) of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The media type of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Wisdom, you can store an external version
    #   identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of the content.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The identifier of the revision of the content.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the content.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] title
    #   The title of the content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ContentSummary AWS API Documentation
    #
    class ContentSummary < Struct.new(
      :content_arn,
      :content_id,
      :content_type,
      :knowledge_base_arn,
      :knowledge_base_id,
      :metadata,
      :name,
      :revision_id,
      :status,
      :tags,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   The identifier of the associated resource.
    #   @return [Types::AssistantAssociationInputData]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateAssistantAssociationRequest AWS API Documentation
    #
    class CreateAssistantAssociationRequest < Struct.new(
      :assistant_id,
      :association,
      :association_type,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_association
    #   The assistant association.
    #   @return [Types::AssistantAssociationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateAssistantAssociationResponse AWS API Documentation
    #
    class CreateAssistantAssociationResponse < Struct.new(
      :assistant_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The KMS key used for encryption.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of assistant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateAssistantRequest AWS API Documentation
    #
    class CreateAssistantRequest < Struct.new(
      :client_token,
      :description,
      :name,
      :server_side_encryption_configuration,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant
    #   Information about the assistant.
    #   @return [Types::AssistantData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateAssistantResponse AWS API Documentation
    #
    class CreateAssistantResponse < Struct.new(
      :assistant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Wisdom, you can store an external version
    #   identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of the content. Each piece of content in a knowledge base
    #   must have a unique name. You can retrieve a piece of content using
    #   only its knowledge base and its name with the [SearchContent][1]
    #   API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_SearchContent.html
    #   @return [String]
    #
    # @!attribute [rw] override_link_out_uri
    #   The URI you want to use for the article. If the knowledge base has a
    #   templateUri, setting this argument overrides it for this piece of
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] title
    #   The title of the content. If not set, the title is equal to the
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateContentRequest AWS API Documentation
    #
    class CreateContentRequest < Struct.new(
      :client_token,
      :knowledge_base_id,
      :metadata,
      :name,
      :override_link_out_uri,
      :tags,
      :title,
      :upload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The content.
    #   @return [Types::ContentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateContentResponse AWS API Documentation
    #
    class CreateContentResponse < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_type
    #   The type of knowledge base. Only CUSTOM knowledge bases allow you to
    #   upload your own content. EXTERNAL knowledge bases support
    #   integrations with third-party systems whose content is synchronized
    #   automatically.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] rendering_configuration
    #   Information about how to render the content.
    #   @return [Types::RenderingConfiguration]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The KMS key used for encryption.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   The source of the knowledge base content. Only set this argument for
    #   EXTERNAL knowledge bases.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateKnowledgeBaseRequest AWS API Documentation
    #
    class CreateKnowledgeBaseRequest < Struct.new(
      :client_token,
      :description,
      :knowledge_base_type,
      :name,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :source_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base
    #   The knowledge base.
    #   @return [Types::KnowledgeBaseData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateKnowledgeBaseResponse AWS API Documentation
    #
    class CreateKnowledgeBaseResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the session.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateSessionRequest AWS API Documentation
    #
    class CreateSessionRequest < Struct.new(
      :assistant_id,
      :client_token,
      :description,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   The session.
    #   @return [Types::SessionData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateSessionResponse AWS API Documentation
    #
    class CreateSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_association_id
    #   The identifier of the assistant association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteAssistantAssociationRequest AWS API Documentation
    #
    class DeleteAssistantAssociationRequest < Struct.new(
      :assistant_association_id,
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteAssistantAssociationResponse AWS API Documentation
    #
    class DeleteAssistantAssociationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteAssistantRequest AWS API Documentation
    #
    class DeleteAssistantRequest < Struct.new(
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteAssistantResponse AWS API Documentation
    #
    class DeleteAssistantResponse < Aws::EmptyStructure; end

    # @!attribute [rw] content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteContentRequest AWS API Documentation
    #
    class DeleteContentRequest < Struct.new(
      :content_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteContentResponse AWS API Documentation
    #
    class DeleteContentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] knowledge_base_id
    #   The knowledge base to delete content from. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteKnowledgeBaseRequest AWS API Documentation
    #
    class DeleteKnowledgeBaseRequest < Struct.new(
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteKnowledgeBaseResponse AWS API Documentation
    #
    class DeleteKnowledgeBaseResponse < Aws::EmptyStructure; end

    # The document.
    #
    # @!attribute [rw] content_reference
    #   A reference to the content resource.
    #   @return [Types::ContentReference]
    #
    # @!attribute [rw] excerpt
    #   The excerpt from the document.
    #   @return [Types::DocumentText]
    #
    # @!attribute [rw] title
    #   The title of the document.
    #   @return [Types::DocumentText]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/Document AWS API Documentation
    #
    class Document < Struct.new(
      :content_reference,
      :excerpt,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # The text of the document.
    #
    # @!attribute [rw] highlights
    #   Highlights in the document text.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] text
    #   Text in the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DocumentText AWS API Documentation
    #
    class DocumentText < Struct.new(
      :highlights,
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # A search filter.
    #
    # @!attribute [rw] field
    #   The field on which to filter.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator to use for comparing the field’s value with the
    #   provided value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The desired field value on which to filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :field,
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_association_id
    #   The identifier of the assistant association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetAssistantAssociationRequest AWS API Documentation
    #
    class GetAssistantAssociationRequest < Struct.new(
      :assistant_association_id,
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_association
    #   The assistant association.
    #   @return [Types::AssistantAssociationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetAssistantAssociationResponse AWS API Documentation
    #
    class GetAssistantAssociationResponse < Struct.new(
      :assistant_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetAssistantRequest AWS API Documentation
    #
    class GetAssistantRequest < Struct.new(
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant
    #   Information about the assistant.
    #   @return [Types::AssistantData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetAssistantResponse AWS API Documentation
    #
    class GetAssistantResponse < Struct.new(
      :assistant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetContentRequest AWS API Documentation
    #
    class GetContentRequest < Struct.new(
      :content_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The content.
    #   @return [Types::ContentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetContentResponse AWS API Documentation
    #
    class GetContentResponse < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetContentSummaryRequest AWS API Documentation
    #
    class GetContentSummaryRequest < Struct.new(
      :content_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_summary
    #   The content summary.
    #   @return [Types::ContentSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetContentSummaryResponse AWS API Documentation
    #
    class GetContentSummaryResponse < Struct.new(
      :content_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetKnowledgeBaseRequest AWS API Documentation
    #
    class GetKnowledgeBaseRequest < Struct.new(
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base
    #   The knowledge base.
    #   @return [Types::KnowledgeBaseData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetKnowledgeBaseResponse AWS API Documentation
    #
    class GetKnowledgeBaseResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] wait_time_seconds
    #   The duration (in seconds) for which the call waits for a
    #   recommendation to be made available before returning. If a
    #   recommendation is available, the call returns sooner than
    #   `WaitTimeSeconds`. If no messages are available and the wait time
    #   expires, the call returns successfully with an empty list.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetRecommendationsRequest AWS API Documentation
    #
    class GetRecommendationsRequest < Struct.new(
      :assistant_id,
      :max_results,
      :session_id,
      :wait_time_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendations
    #   The recommendations.
    #   @return [Array<Types::RecommendationData>]
    #
    # @!attribute [rw] triggers
    #   The triggers corresponding to recommendations.
    #   @return [Array<Types::RecommendationTrigger>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetRecommendationsResponse AWS API Documentation
    #
    class GetRecommendationsResponse < Struct.new(
      :recommendations,
      :triggers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetSessionRequest AWS API Documentation
    #
    class GetSessionRequest < Struct.new(
      :assistant_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   The session.
    #   @return [Types::SessionData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetSessionResponse AWS API Documentation
    #
    class GetSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # Offset specification to describe highlighting of document excerpts for
    # rendering search results and recommendations.
    #
    # @!attribute [rw] begin_offset_inclusive
    #   The offset for the start of the highlight.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_exclusive
    #   The offset for the end of the highlight.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/Highlight AWS API Documentation
    #
    class Highlight < Struct.new(
      :begin_offset_inclusive,
      :end_offset_exclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # Association information about the knowledge base.
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/KnowledgeBaseAssociationData AWS API Documentation
    #
    class KnowledgeBaseAssociationData < Struct.new(
      :knowledge_base_arn,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the knowledge base.
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_type
    #   The type of knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] last_content_modification_time
    #   An epoch timestamp indicating the most recent content modification
    #   inside the knowledge base. If no content exists in a knowledge base,
    #   this value is unset.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] rendering_configuration
    #   Information about how to render the content.
    #   @return [Types::RenderingConfiguration]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The KMS key used for encryption.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   Source configuration information about the knowledge base.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/KnowledgeBaseData AWS API Documentation
    #
    class KnowledgeBaseData < Struct.new(
      :description,
      :knowledge_base_arn,
      :knowledge_base_id,
      :knowledge_base_type,
      :last_content_modification_time,
      :name,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :source_configuration,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the knowledge base.
    #
    # @!attribute [rw] description
    #   The description of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_type
    #   The type of knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] rendering_configuration
    #   Information about how to render the content.
    #   @return [Types::RenderingConfiguration]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The KMS key used for encryption.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   Configuration information about the external data source.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the knowledge base summary.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/KnowledgeBaseSummary AWS API Documentation
    #
    class KnowledgeBaseSummary < Struct.new(
      :description,
      :knowledge_base_arn,
      :knowledge_base_id,
      :knowledge_base_type,
      :name,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :source_configuration,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListAssistantAssociationsRequest AWS API Documentation
    #
    class ListAssistantAssociationsRequest < Struct.new(
      :assistant_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_association_summaries
    #   Summary information about assistant associations.
    #   @return [Array<Types::AssistantAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListAssistantAssociationsResponse AWS API Documentation
    #
    class ListAssistantAssociationsResponse < Struct.new(
      :assistant_association_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListAssistantsRequest AWS API Documentation
    #
    class ListAssistantsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_summaries
    #   Information about the assistants.
    #   @return [Array<Types::AssistantSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListAssistantsResponse AWS API Documentation
    #
    class ListAssistantsResponse < Struct.new(
      :assistant_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListContentsRequest AWS API Documentation
    #
    class ListContentsRequest < Struct.new(
      :knowledge_base_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_summaries
    #   Information about the content.
    #   @return [Array<Types::ContentSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListContentsResponse AWS API Documentation
    #
    class ListContentsResponse < Struct.new(
      :content_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListKnowledgeBasesRequest AWS API Documentation
    #
    class ListKnowledgeBasesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_summaries
    #   Information about the knowledge bases.
    #   @return [Array<Types::KnowledgeBaseSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListKnowledgeBasesResponse AWS API Documentation
    #
    class ListKnowledgeBasesResponse < Struct.new(
      :knowledge_base_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred when creating a recommendation.
    #
    # @!attribute [rw] message
    #   A recommendation is causing an error.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   The identifier of the recommendation that is in error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/NotifyRecommendationsReceivedError AWS API Documentation
    #
    class NotifyRecommendationsReceivedError < Struct.new(
      :message,
      :recommendation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_ids
    #   The identifiers of the recommendations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/NotifyRecommendationsReceivedRequest AWS API Documentation
    #
    class NotifyRecommendationsReceivedRequest < Struct.new(
      :assistant_id,
      :recommendation_ids,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   The identifiers of recommendations that are causing errors.
    #   @return [Array<Types::NotifyRecommendationsReceivedError>]
    #
    # @!attribute [rw] recommendation_ids
    #   The identifiers of the recommendations.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/NotifyRecommendationsReceivedResponse AWS API Documentation
    #
    class NotifyRecommendationsReceivedResponse < Struct.new(
      :errors,
      :recommendation_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided `revisionId` does not match, indicating the content has
    # been modified since it was last read.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/PreconditionFailedException AWS API Documentation
    #
    class PreconditionFailedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] query_text
    #   The text to search for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/QueryAssistantRequest AWS API Documentation
    #
    class QueryAssistantRequest < Struct.new(
      :assistant_id,
      :max_results,
      :next_token,
      :query_text)
      SENSITIVE = [:query_text]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] results
    #   The results of the query.
    #   @return [Array<Types::ResultData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/QueryAssistantResponse AWS API Documentation
    #
    class QueryAssistantResponse < Struct.new(
      :next_token,
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data associated with the QUERY RecommendationTriggerType.
    #
    # @!attribute [rw] text
    #   The text associated with the recommendation trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/QueryRecommendationTriggerData AWS API Documentation
    #
    class QueryRecommendationTriggerData < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Information about the recommendation.
    #
    # @!attribute [rw] document
    #   The recommended document.
    #   @return [Types::Document]
    #
    # @!attribute [rw] recommendation_id
    #   The identifier of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] relevance_level
    #   The relevance level of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] relevance_score
    #   The relevance score of the recommendation.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The type of recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/RecommendationData AWS API Documentation
    #
    class RecommendationData < Struct.new(
      :document,
      :recommendation_id,
      :relevance_level,
      :relevance_score,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A recommendation trigger provides context on the event that produced
    # the referenced recommendations. Recommendations are only referenced in
    # `recommendationIds` by a single RecommendationTrigger.
    #
    # @!attribute [rw] data
    #   A union type containing information related to the trigger.
    #   @return [Types::RecommendationTriggerData]
    #
    # @!attribute [rw] id
    #   The identifier of the recommendation trigger.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_ids
    #   The identifiers of the recommendations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source
    #   The source of the recommendation trigger.
    #
    #   * ISSUE\_DETECTION: The corresponding recommendations were triggered
    #     by a Contact Lens issue.
    #
    #   * RULE\_EVALUATION: The corresponding recommendations were triggered
    #     by a Contact Lens rule.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of recommendation trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/RecommendationTrigger AWS API Documentation
    #
    class RecommendationTrigger < Struct.new(
      :data,
      :id,
      :recommendation_ids,
      :source,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A union type containing information related to the trigger.
    #
    # @note RecommendationTriggerData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RecommendationTriggerData corresponding to the set member.
    #
    # @!attribute [rw] query
    #   Data associated with the QUERY RecommendationTriggerType.
    #   @return [Types::QueryRecommendationTriggerData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/RecommendationTriggerData AWS API Documentation
    #
    class RecommendationTriggerData < Struct.new(
      :query,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Query < RecommendationTriggerData; end
      class Unknown < RecommendationTriggerData; end
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/RemoveKnowledgeBaseTemplateUriRequest AWS API Documentation
    #
    class RemoveKnowledgeBaseTemplateUriRequest < Struct.new(
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/RemoveKnowledgeBaseTemplateUriResponse AWS API Documentation
    #
    class RemoveKnowledgeBaseTemplateUriResponse < Aws::EmptyStructure; end

    # Information about how to render the content.
    #
    # @!attribute [rw] template_uri
    #   A URI template containing exactly one variable in `$\{variableName\}
    #   `format. This can only be set for `EXTERNAL` knowledge bases. For
    #   Salesforce, ServiceNow, and Zendesk, the variable must be one of the
    #   following:
    #
    #   * Salesforce: `Id`, `ArticleNumber`, `VersionNumber`, `Title`,
    #     `PublishStatus`, or `IsDeleted`
    #
    #   * ServiceNow: `number`, `short_description`, `sys_mod_count`,
    #     `workflow_state`, or `active`
    #
    #   * Zendesk: `id`, `title`, `updated_at`, or `draft`
    #
    #   The variable is replaced with the actual value for a piece of
    #   content when calling [GetContent][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetContent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/RenderingConfiguration AWS API Documentation
    #
    class RenderingConfiguration < Struct.new(
      :template_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The specified resource name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the result.
    #
    # @!attribute [rw] document
    #   The document.
    #   @return [Types::Document]
    #
    # @!attribute [rw] relevance_score
    #   The relevance score of the results.
    #   @return [Float]
    #
    # @!attribute [rw] result_id
    #   The identifier of the result data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ResultData AWS API Documentation
    #
    class ResultData < Struct.new(
      :document,
      :relevance_score,
      :result_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] search_expression
    #   The search expression to filter results.
    #   @return [Types::SearchExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/SearchContentRequest AWS API Documentation
    #
    class SearchContentRequest < Struct.new(
      :knowledge_base_id,
      :max_results,
      :next_token,
      :search_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_summaries
    #   Summary information about the content.
    #   @return [Array<Types::ContentSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/SearchContentResponse AWS API Documentation
    #
    class SearchContentResponse < Struct.new(
      :content_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search expression.
    #
    # @!attribute [rw] filters
    #   The search expression filters.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/SearchExpression AWS API Documentation
    #
    class SearchExpression < Struct.new(
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] search_expression
    #   The search expression to filter results.
    #   @return [Types::SearchExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/SearchSessionsRequest AWS API Documentation
    #
    class SearchSessionsRequest < Struct.new(
      :assistant_id,
      :max_results,
      :next_token,
      :search_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] session_summaries
    #   Summary information about the sessions.
    #   @return [Array<Types::SessionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/SearchSessionsResponse AWS API Documentation
    #
    class SearchSessionsResponse < Struct.new(
      :next_token,
      :session_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # The KMS key used for encryption.
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key. For information about valid ID values, see [Key
    #   identifiers (KeyId)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ServerSideEncryptionConfiguration AWS API Documentation
    #
    class ServerSideEncryptionConfiguration < Struct.new(
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've exceeded your service quota. To perform the requested action,
    # remove some of the relevant resources, or use service quotas to
    # request a service quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the session.
    #
    # @!attribute [rw] description
    #   The description of the session.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/SessionData AWS API Documentation
    #
    class SessionData < Struct.new(
      :description,
      :name,
      :session_arn,
      :session_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the session.
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Wisdom assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Wisdom assistant.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/SessionSummary AWS API Documentation
    #
    class SessionSummary < Struct.new(
      :assistant_arn,
      :assistant_id,
      :session_arn,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information about the external data source.
    #
    # @note SourceConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SourceConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SourceConfiguration corresponding to the set member.
    #
    # @!attribute [rw] app_integrations
    #   Configuration information for Amazon AppIntegrations to
    #   automatically ingest content.
    #   @return [Types::AppIntegrationsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/SourceConfiguration AWS API Documentation
    #
    class SourceConfiguration < Struct.new(
      :app_integrations,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AppIntegrations < SourceConfiguration; end
      class Unknown < SourceConfiguration; end
    end

    # @!attribute [rw] content_type
    #   The type of content to upload.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/StartContentUploadRequest AWS API Documentation
    #
    class StartContentUploadRequest < Struct.new(
      :content_type,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] headers_to_include
    #   The headers to include in the upload.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] upload_id
    #   The identifier of the upload.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the upload.
    #   @return [String]
    #
    # @!attribute [rw] url_expiry
    #   The expiration time of the URL as an epoch timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/StartContentUploadResponse AWS API Documentation
    #
    class StartContentUploadResponse < Struct.new(
      :headers_to_include,
      :upload_id,
      :url,
      :url_expiry)
      SENSITIVE = [:url]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Amazon Connect Wisdom throws this exception if you have too many tags
    # in your tag set.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The specified resource name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Wisdom, you can store an external version
    #   identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] override_link_out_uri
    #   The URI for the article. If the knowledge base has a templateUri,
    #   setting this argument overrides it for this piece of content. To
    #   remove an existing `overrideLinkOurUri`, exclude this argument and
    #   set `removeOverrideLinkOutUri` to true.
    #   @return [String]
    #
    # @!attribute [rw] remove_override_link_out_uri
    #   Unset the existing `overrideLinkOutUri` if it exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] revision_id
    #   The `revisionId` of the content resource to update, taken from an
    #   earlier call to `GetContent`, `GetContentSummary`, `SearchContent`,
    #   or `ListContents`. If included, this argument acts as an optimistic
    #   lock to ensure content was not modified since it was last read. If
    #   it has been modified, this API throws a
    #   `PreconditionFailedException`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the content.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/UpdateContentRequest AWS API Documentation
    #
    class UpdateContentRequest < Struct.new(
      :content_id,
      :knowledge_base_id,
      :metadata,
      :override_link_out_uri,
      :remove_override_link_out_uri,
      :revision_id,
      :title,
      :upload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The content.
    #   @return [Types::ContentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/UpdateContentResponse AWS API Documentation
    #
    class UpdateContentResponse < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] template_uri
    #   The template URI to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/UpdateKnowledgeBaseTemplateUriRequest AWS API Documentation
    #
    class UpdateKnowledgeBaseTemplateUriRequest < Struct.new(
      :knowledge_base_id,
      :template_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base
    #   The knowledge base to update.
    #   @return [Types::KnowledgeBaseData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/UpdateKnowledgeBaseTemplateUriResponse AWS API Documentation
    #
    class UpdateKnowledgeBaseTemplateUriResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by a service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
