# frozen_string_literal: true

# This is generated code!

module Aws::Wisdom
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information for Amazon AppIntegrations to automatically ingest content.</p>
    # @!attribute app_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the AppIntegrations DataIntegration to use for ingesting content.</p>
    #            <ul>
    #               <li>
    #                  <p> For <a href="https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm"> Salesforce</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if
    #             objectFields is not provided, including at least <code>Id</code>,
    #               <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>,
    #               <code>PublishStatus</code>, and <code>IsDeleted</code> as source fields. </p>
    #               </li>
    #               <li>
    #                  <p> For <a href="https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api"> ServiceNow</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if
    #             objectFields is not provided, including at least <code>number</code>,
    #               <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>,
    #             and <code>active</code> as source fields. </p>
    #               </li>
    #               <li>
    #                  <p> For <a href="https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/">
    #               Zendesk</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if
    #               <code>objectFields</code> is not provided, including at least <code>id</code>,
    #               <code>title</code>, <code>updated_at</code>, and <code>draft</code> as source fields.
    #           </p>
    #               </li>
    #               <li>
    #                  <p> For <a href="https://learn.microsoft.com/en-us/sharepoint/dev/sp-add-ins/sharepoint-net-server-csom-jsom-and-rest-api-index">SharePoint</a>, your AppIntegrations DataIntegration must have a FileConfiguration,
    #             including only file extensions that are among <code>docx</code>, <code>pdf</code>,
    #               <code>html</code>, <code>htm</code>, and <code>txt</code>. </p>
    #               </li>
    #               <li>
    #                  <p> For <a href="https://aws.amazon.com/s3/">Amazon S3</a>, the
    #               ObjectConfiguration and FileConfiguration of your AppIntegrations
    #             DataIntegration must be null. The <code>SourceURI</code> of your
    #               DataIntegration must use the following format:
    #               <code>s3://your_s3_bucket_name</code>.</p>
    #                  <important>
    #                     <p>The bucket policy of the corresponding S3 bucket must allow the Amazon Web Services
    #               principal <code>app-integrations.amazonaws.com</code> to perform
    #                 <code>s3:ListBucket</code>, <code>s3:GetObject</code>, and <code>s3:GetBucketLocation</code>
    #               against the bucket.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute object_fields
    #   <p>The fields from the source that are made available to your agents in Wisdom. Optional if
    #         ObjectConfiguration is included in the provided DataIntegration. </p>
    #            <ul>
    #               <li>
    #                  <p> For <a href="https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm"> Salesforce</a>, you must include at least <code>Id</code>,
    #               <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>,
    #               <code>PublishStatus</code>, and <code>IsDeleted</code>. </p>
    #               </li>
    #               <li>
    #                  <p>For <a href="https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api"> ServiceNow</a>, you must include at least <code>number</code>,
    #               <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>,
    #             and <code>active</code>. </p>
    #               </li>
    #               <li>
    #                  <p>For <a href="https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/">
    #               Zendesk</a>, you must include at least <code>id</code>, <code>title</code>,
    #               <code>updated_at</code>, and <code>draft</code>. </p>
    #               </li>
    #            </ul>
    #            <p>Make sure to include additional fields. These fields are indexed and used to source
    #         recommendations. </p>
    #   @return [Array<String>]
    class AppIntegrationsConfiguration < Struct.new(
      nil,
      :app_integration_arn,
      :object_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the assistant association.</p>
    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association.</p>
    #   @return [String]
    # @!attribute assistant_association_arn
    #   <p>The Amazon Resource Name (ARN) of the assistant association.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association.</p>
    #   @return [String]
    # @!attribute association_data
    #   <p>A union type that currently has a single argument, the knowledge base ID.</p>
    #   @return [Types::AssistantAssociationOutputData]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class AssistantAssociationData < Struct.new(
      nil,
      :assistant_association_id,
      :assistant_association_arn,
      :assistant_id,
      :assistant_arn,
      :association_type,
      :association_data,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data that is input into Wisdom as a result of the assistant association.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    class AssistantAssociationInputData < Struct.new(
      :knowledge_base_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class KnowledgeBaseId < AssistantAssociationInputData; end
      class Unknown < AssistantAssociationInputData; end
    end

    # <p>The data that is output as a result of the assistant association.</p>
    # @!attribute knowledge_base_association
    #   <p>The knowledge base where output data is sent.</p>
    #   @return [Types::KnowledgeBaseAssociationData]
    class AssistantAssociationOutputData < Struct.new(
      :knowledge_base_association,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class KnowledgeBaseAssociation < AssistantAssociationOutputData; end
      class Unknown < AssistantAssociationOutputData; end
    end

    # <p>Summary information about the assistant association.</p>
    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association.</p>
    #   @return [String]
    # @!attribute assistant_association_arn
    #   <p>The Amazon Resource Name (ARN) of the assistant association.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association.</p>
    #   @return [String]
    # @!attribute association_data
    #   <p>The association data.</p>
    #   @return [Types::AssistantAssociationOutputData]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class AssistantAssociationSummary < Struct.new(
      nil,
      :assistant_association_id,
      :assistant_association_arn,
      :assistant_id,
      :assistant_arn,
      :association_type,
      :association_data,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The assistant data.</p>
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of assistant.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the assistant.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p>
    #            <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>,
    #         <code>kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key
    #         to invoke Wisdom. To use Wisdom with chat, the key policy must also allow
    #         <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and <code>kms:DescribeKey</code> 
    #         permissions to the <code>connect.amazonaws.com</code> service
    #         principal. </p>
    #            <p>For more information about setting up a customer managed key for Wisdom, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html">Enable Amazon Connect Wisdom
    #           for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute integration_configuration
    #   <p>The configuration information for the Wisdom assistant integration.</p>
    #   @return [Types::AssistantIntegrationConfiguration]
    class AssistantData < Struct.new(
      nil,
      :assistant_id,
      :assistant_arn,
      :name,
      :type,
      :status,
      :description,
      :tags,
      :server_side_encryption_configuration,
      :integration_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information for the Wisdom assistant integration.</p>
    # @!attribute topic_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the integrated Amazon SNS topic used for streaming chat messages.</p>
    #   @return [String]
    class AssistantIntegrationConfiguration < Struct.new(
      nil,
      :topic_integration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the assistant.</p>
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the assistant.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the assistant.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the assistant.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the assistant.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p>
    #            <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>,
    #         <code>kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key
    #         to invoke Wisdom. To use Wisdom with chat, the key policy must also allow
    #           <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and
    #           <code>kms:DescribeKey</code> permissions to the <code>connect.amazonaws.com</code> service
    #         principal. </p>
    #            <p>For more information about setting up a customer managed key for Wisdom, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html">Enable Amazon Connect Wisdom
    #           for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute integration_configuration
    #   <p>The configuration information for the Wisdom assistant integration.</p>
    #   @return [Types::AssistantIntegrationConfiguration]
    class AssistantSummary < Struct.new(
      nil,
      :assistant_id,
      :assistant_arn,
      :name,
      :type,
      :status,
      :description,
      :tags,
      :server_side_encryption_configuration,
      :integration_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information of the external data source.</p>
    # @!attribute connect_configuration
    #   <p>The configuration information of the Amazon Connect data source.</p>
    #   @return [Types::ConnectConfiguration]
    class Configuration < Struct.new(
      :connect_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ConnectConfiguration < Configuration; end
      class Unknown < Configuration; end
    end

    # <p>The request could not be processed because of conflict in the current state of the
    #       resource. For example, if you're using a <code>Create</code> API (such as
    #         <code>CreateAssistant</code>) that accepts name, a conflicting resource (usually with the
    #       same name) is being created or mutated.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information of the Amazon Connect data source.</p>
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #   @return [String]
    class ConnectConfiguration < Struct.new(
      nil,
      :instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the content.</p>
    # @!attribute content_arn
    #   <p>The Amazon Resource Name (ARN) of the content.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the content.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The identifier of the content revision.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the content.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The media type of the content.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the content.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. 
    #   For example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute link_out_uri
    #   <p>The URI of the content.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the content.</p>
    #   @return [String]
    # @!attribute url_expiry
    #   <p>The expiration time of the URL as an epoch timestamp.</p>
    #   @return [Time]
    class ContentData < Struct.new(
      nil,
      :content_arn,
      :content_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :revision_id,
      :title,
      :content_type,
      :status,
      :metadata,
      :tags,
      :link_out_uri,
      :url,
      :url_expiry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Reference information about the content.</p>
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    # @!attribute content_arn
    #   <p>The Amazon Resource Name (ARN) of the content.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    class ContentReference < Struct.new(
      nil,
      :knowledge_base_arn,
      :knowledge_base_id,
      :content_arn,
      :content_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the content.</p>
    # @!attribute content_arn
    #   <p>The Amazon Resource Name (ARN) of the content.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the content.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The identifier of the revision of the content.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the content.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The media type of the content.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the content.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. 
    #   For example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ContentSummary < Struct.new(
      nil,
      :content_arn,
      :content_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :revision_id,
      :title,
      :content_type,
      :status,
      :metadata,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association.</p>
    #   @return [String]
    # @!attribute association
    #   <p>The identifier of the associated resource.</p>
    #   @return [Types::AssistantAssociationInputData]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateAssistantAssociationInput < Struct.new(
      nil,
      :assistant_id,
      :association_type,
      :association,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_association
    #   <p>The assistant association.</p>
    #   @return [Types::AssistantAssociationData]
    class CreateAssistantAssociationOutput < Struct.new(
      nil,
      :assistant_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the assistant.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of assistant.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the assistant.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p>
    #            <p>The customer managed key must have a policy that allows <code>kms:CreateGrant</code>,
    #         <code> kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key
    #         to invoke Wisdom. To use Wisdom with chat, the key policy must also allow
    #           <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and
    #           <code>kms:DescribeKey</code> permissions to the <code>connect.amazonaws.com</code> service
    #         principal. </p>
    #            <p>For more information about setting up a customer managed key for Wisdom, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html">Enable Amazon Connect Wisdom
    #           for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    class CreateAssistantInput < Struct.new(
      nil,
      :client_token,
      :name,
      :type,
      :description,
      :tags,
      :server_side_encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant
    #   <p>Information about the assistant.</p>
    #   @return [Types::AssistantData]
    class CreateAssistantOutput < Struct.new(
      nil,
      :assistant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the content. Each piece of content in a knowledge base must have a unique
    #         name. You can retrieve a piece of content using only its knowledge base and its name with the
    #           <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_SearchContent.html">SearchContent</a> API.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the content. If not set, the title is equal to the name.</p>
    #   @return [String]
    # @!attribute override_link_out_uri
    #   <p>The URI you want to use for the article. If the knowledge base has a templateUri, setting
    #         this argument overrides it for this piece of content.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. 
    #   For example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>
    #   @return [Hash<String, String>]
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateContentInput < Struct.new(
      nil,
      :knowledge_base_id,
      :name,
      :title,
      :override_link_out_uri,
      :metadata,
      :upload_id,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The content.</p>
    #   @return [Types::ContentData]
    class CreateContentOutput < Struct.new(
      nil,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_type
    #   <p>The type of knowledge base. Only CUSTOM knowledge bases allow you to upload your own content.
    #         EXTERNAL knowledge bases support integrations with third-party systems whose content is
    #         synchronized automatically. </p>
    #   @return [String]
    # @!attribute source_configuration
    #   <p>The source of the knowledge base content. Only set this argument for EXTERNAL knowledge
    #         bases.</p>
    #   @return [Types::SourceConfiguration]
    # @!attribute rendering_configuration
    #   <p>Information about how to render the content.</p>
    #   @return [Types::RenderingConfiguration]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p>
    #            <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>,
    #         <code>kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key
    #         to invoke Wisdom.</p>
    #            <p>For more information about setting up a customer managed key for Wisdom, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html">Enable Amazon Connect Wisdom
    #           for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateKnowledgeBaseInput < Struct.new(
      nil,
      :client_token,
      :name,
      :knowledge_base_type,
      :source_configuration,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base
    #   <p>The knowledge base.</p>
    #   @return [Types::KnowledgeBaseData]
    class CreateKnowledgeBaseOutput < Struct.new(
      nil,
      :knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick response.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the quick response.</p>
    #   @return [Types::QuickResponseDataProvider]
    # @!attribute content_type
    #   <p>The media type of the quick response content.</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=plain</code> for a quick response written in plain text.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=markdown</code> for a quick response written in richtext.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The configuration information of the user groups that the quick response is accessible to.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute description
    #   <p>The description of the quick response.</p>
    #   @return [String]
    # @!attribute shortcut_key
    #   <p>The shortcut key of the quick response. The value should be unique across the
    #     knowledge base.
    #       </p>
    #   @return [String]
    # @!attribute is_active
    #   <p>Whether the quick response is active.</p>
    #   @return [Boolean]
    # @!attribute channels
    #   <p>The Amazon Connect channels this quick response applies to.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written.  The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>,
    #     <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>,
    #     <code>zh_CN</code>, <code>zh_TW</code>
    #            </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateQuickResponseRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :name,
      :content,
      :content_type,
      :grouping_configuration,
      :description,
      :shortcut_key,
      :is_active,
      :channels,
      :language,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_response
    #   <p>The quick response.</p>
    #   @return [Types::QuickResponseData]
    class CreateQuickResponseResponse < Struct.new(
      nil,
      :quick_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the session.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateSessionInput < Struct.new(
      nil,
      :client_token,
      :assistant_id,
      :name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session
    #   <p>The session.</p>
    #   @return [Types::SessionData]
    class CreateSessionOutput < Struct.new(
      nil,
      :session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteAssistantAssociationInput < Struct.new(
      nil,
      :assistant_association_id,
      :assistant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAssistantAssociationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteAssistantInput < Struct.new(
      nil,
      :assistant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAssistantOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteContentInput < Struct.new(
      nil,
      :knowledge_base_id,
      :content_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteContentOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    # @!attribute import_job_id
    #   <p>The identifier of the import job to be deleted.</p>
    #   @return [String]
    class DeleteImportJobRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :import_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteImportJobResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The knowledge base to delete content from. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteKnowledgeBaseInput < Struct.new(
      nil,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteKnowledgeBaseOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The knowledge base from which the quick response is deleted. The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    # @!attribute quick_response_id
    #   <p>The identifier of the quick response to delete.</p>
    #   @return [String]
    class DeleteQuickResponseRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :quick_response_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteQuickResponseResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The document.</p>
    # @!attribute content_reference
    #   <p>A reference to the content resource.</p>
    #   @return [Types::ContentReference]
    # @!attribute title
    #   <p>The title of the document.</p>
    #   @return [Types::DocumentText]
    # @!attribute excerpt
    #   <p>The excerpt from the document.</p>
    #   @return [Types::DocumentText]
    class Document < Struct.new(
      nil,
      :content_reference,
      :title,
      :excerpt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The text of the document.</p>
    # @!attribute text
    #   <p>Text in the document.</p>
    #   @return [String]
    # @!attribute highlights
    #   <p>Highlights in the document text.</p>
    #   @return [Array<Types::Highlight>]
    class DocumentText < Struct.new(
      nil,
      :text,
      :highlights,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information of the external data source.</p>
    # @!attribute source
    #   <p>The type of the external data source.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration information of the external data source.</p>
    #   @return [Types::Configuration]
    class ExternalSourceConfiguration < Struct.new(
      nil,
      :source,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A search filter.</p>
    # @!attribute field
    #   <p>The field on which to filter.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator to use for comparing the field’s value with the provided value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The desired field value on which to filter.</p>
    #   @return [String]
    class Filter < Struct.new(
      nil,
      :field,
      :operator,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetAssistantAssociationInput < Struct.new(
      nil,
      :assistant_association_id,
      :assistant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_association
    #   <p>The assistant association.</p>
    #   @return [Types::AssistantAssociationData]
    class GetAssistantAssociationOutput < Struct.new(
      nil,
      :assistant_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetAssistantInput < Struct.new(
      nil,
      :assistant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant
    #   <p>Information about the assistant.</p>
    #   @return [Types::AssistantData]
    class GetAssistantOutput < Struct.new(
      nil,
      :assistant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetContentInput < Struct.new(
      nil,
      :content_id,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The content.</p>
    #   @return [Types::ContentData]
    class GetContentOutput < Struct.new(
      nil,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetContentSummaryInput < Struct.new(
      nil,
      :content_id,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_summary
    #   <p>The content summary.</p>
    #   @return [Types::ContentSummary]
    class GetContentSummaryOutput < Struct.new(
      nil,
      :content_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_job_id
    #   <p>The identifier of the import job to retrieve.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base that the import job belongs to.</p>
    #   @return [String]
    class GetImportJobRequest < Struct.new(
      nil,
      :import_job_id,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_job
    #   <p>The import job.</p>
    #   @return [Types::ImportJobData]
    class GetImportJobResponse < Struct.new(
      nil,
      :import_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetKnowledgeBaseInput < Struct.new(
      nil,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base
    #   <p>The knowledge base.</p>
    #   @return [Types::KnowledgeBaseData]
    class GetKnowledgeBaseOutput < Struct.new(
      nil,
      :knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_response_id
    #   <p>The identifier of the quick response.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should be a QUICK_RESPONSES type knowledge base.</p>
    #   @return [String]
    class GetQuickResponseRequest < Struct.new(
      nil,
      :quick_response_id,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_response
    #   <p>The quick response.</p>
    #   @return [Types::QuickResponseData]
    class GetQuickResponseResponse < Struct.new(
      nil,
      :quick_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute wait_time_seconds
    #   <p>The duration (in seconds) for which the call waits for a recommendation to be made
    #         available before returning. If a recommendation is available, the call returns sooner than
    #           <code>WaitTimeSeconds</code>. If no messages are available and the wait time expires, the
    #         call returns successfully with an empty list.</p>
    #   @return [Integer]
    class GetRecommendationsInput < Struct.new(
      nil,
      :assistant_id,
      :session_id,
      :max_results,
      :wait_time_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendations
    #   <p>The recommendations.</p>
    #   @return [Array<Types::RecommendationData>]
    # @!attribute triggers
    #   <p>The triggers corresponding to recommendations.</p>
    #   @return [Array<Types::RecommendationTrigger>]
    class GetRecommendationsOutput < Struct.new(
      nil,
      :recommendations,
      :triggers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetSessionInput < Struct.new(
      nil,
      :assistant_id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session
    #   <p>The session.</p>
    #   @return [Types::SessionData]
    class GetSessionOutput < Struct.new(
      nil,
      :session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information of the grouping of Wisdom users.</p>
    # @!attribute criteria
    #   <p>The criteria used for grouping Wisdom users.</p>
    #            <p>The following is the list of supported criteria values.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RoutingProfileArn</code>: Grouping the users by their <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_RoutingProfile.html">Amazon Connect routing profile ARN</a>. User should have <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchRoutingProfiles.html">SearchRoutingProfile</a> and
    #               <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeRoutingProfile.html">DescribeRoutingProfile</a> permissions when setting criteria to this value.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>The list of values that define different groups of Wisdom users.</p>
    #            <ul>
    #               <li>
    #                  <p>When setting <code>criteria</code> to <code>RoutingProfileArn</code>, you need to provide a list of
    #               ARNs of <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_RoutingProfile.html">Amazon Connect routing profiles</a> as values of this parameter.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class GroupingConfiguration < Struct.new(
      nil,
      :criteria,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Offset specification to describe highlighting of document excerpts for rendering search
    #       results and recommendations.</p>
    # @!attribute begin_offset_inclusive
    #   <p>The offset for the start of the highlight.</p>
    #   @return [Integer]
    # @!attribute end_offset_exclusive
    #   <p>The offset for the end of the highlight.</p>
    #   @return [Integer]
    class Highlight < Struct.new(
      nil,
      :begin_offset_inclusive,
      :end_offset_exclusive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:begin_offset_inclusive] = 0 unless options.key?(:begin_offset_inclusive)
        options[:end_offset_exclusive] = 0 unless options.key?(:end_offset_exclusive)
        super
      end
    end

    # <p>Summary information about the import job.</p>
    # @!attribute import_job_id
    #   <p>The identifier of the import job.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute import_job_type
    #   <p>The type of the import job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the import job.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The download link to the resource file that is uploaded to the import job.</p>
    #   @return [String]
    # @!attribute failed_record_report
    #   <p>The link to donwload the information of resource data that failed to be imported.</p>
    #   @return [String]
    # @!attribute url_expiry
    #   <p>The expiration time of the URL as an epoch timestamp.</p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The timestamp when the import job was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the import job data was last modified.</p>
    #   @return [Time]
    # @!attribute metadata
    #   <p>The metadata fields of the imported Wisdom resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute external_source_configuration
    #   <p>The configuration information of the external data source.</p>
    #   @return [Types::ExternalSourceConfiguration]
    class ImportJobData < Struct.new(
      nil,
      :import_job_id,
      :knowledge_base_id,
      :upload_id,
      :knowledge_base_arn,
      :import_job_type,
      :status,
      :url,
      :failed_record_report,
      :url_expiry,
      :created_time,
      :last_modified_time,
      :metadata,
      :external_source_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the import job.</p>
    # @!attribute import_job_id
    #   <p>The identifier of the import job.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute import_job_type
    #   <p>The type of import job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the import job.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the import job was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the import job was last modified.</p>
    #   @return [Time]
    # @!attribute metadata
    #   <p>The metadata fields of the imported Wisdom resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute external_source_configuration
    #   <p>The configuration information of the external source that the resource data are imported from.</p>
    #   @return [Types::ExternalSourceConfiguration]
    class ImportJobSummary < Struct.new(
      nil,
      :import_job_id,
      :knowledge_base_id,
      :upload_id,
      :knowledge_base_arn,
      :import_job_type,
      :status,
      :created_time,
      :last_modified_time,
      :metadata,
      :external_source_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Association information about the knowledge base.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    class KnowledgeBaseAssociationData < Struct.new(
      nil,
      :knowledge_base_id,
      :knowledge_base_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the knowledge base.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_type
    #   <p>The type of knowledge base.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the knowledge base.</p>
    #   @return [String]
    # @!attribute last_content_modification_time
    #   <p>An epoch timestamp indicating the most recent content modification inside the knowledge
    #         base. If no content exists in a knowledge base, this value is unset.</p>
    #   @return [Time]
    # @!attribute source_configuration
    #   <p>Source configuration information about the knowledge base.</p>
    #   @return [Types::SourceConfiguration]
    # @!attribute rendering_configuration
    #   <p>Information about how to render the content.</p>
    #   @return [Types::RenderingConfiguration]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p>
    #            <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, 
    #         <code>kms:DescribeKey</code>, and <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key
    #         to invoke Wisdom. </p>
    #            <p>For more information about setting up a customer managed key for Wisdom, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html">Enable Amazon Connect Wisdom
    #           for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class KnowledgeBaseData < Struct.new(
      nil,
      :knowledge_base_id,
      :knowledge_base_arn,
      :name,
      :knowledge_base_type,
      :status,
      :last_content_modification_time,
      :source_configuration,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the knowledge base.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_type
    #   <p>The type of knowledge base.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the knowledge base summary.</p>
    #   @return [String]
    # @!attribute source_configuration
    #   <p>Configuration information about the external data source.</p>
    #   @return [Types::SourceConfiguration]
    # @!attribute rendering_configuration
    #   <p>Information about how to render the content.</p>
    #   @return [Types::RenderingConfiguration]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p>
    #            <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, 
    #         <code>kms:DescribeKey</code>, <code>kms:Decrypt/kms:GenerateDataKey</code> permissions to the IAM identity using the key
    #         to invoke Wisdom. </p>
    #            <p>For more information about setting up a customer managed key for Wisdom, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html">Enable Amazon Connect Wisdom
    #           for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute description
    #   <p>The description of the knowledge base.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class KnowledgeBaseSummary < Struct.new(
      nil,
      :knowledge_base_id,
      :knowledge_base_arn,
      :name,
      :knowledge_base_type,
      :status,
      :source_configuration,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class ListAssistantAssociationsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :assistant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_association_summaries
    #   <p>Summary information about assistant associations.</p>
    #   @return [Array<Types::AssistantAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListAssistantAssociationsOutput < Struct.new(
      nil,
      :assistant_association_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListAssistantsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_summaries
    #   <p>Information about the assistants.</p>
    #   @return [Array<Types::AssistantSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListAssistantsOutput < Struct.new(
      nil,
      :assistant_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class ListContentsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_summaries
    #   <p>Information about the content.</p>
    #   @return [Array<Types::ContentSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListContentsOutput < Struct.new(
      nil,
      :content_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class ListImportJobsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_job_summaries
    #   <p>Summary information about the import jobs.</p>
    #   @return [Array<Types::ImportJobSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListImportJobsResponse < Struct.new(
      nil,
      :import_job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListKnowledgeBasesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_summaries
    #   <p>Information about the knowledge bases.</p>
    #   @return [Array<Types::KnowledgeBaseSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListKnowledgeBasesOutput < Struct.new(
      nil,
      :knowledge_base_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class ListQuickResponsesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_response_summaries
    #   <p>Summary information about the quick responses.</p>
    #   @return [Array<Types::QuickResponseSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListQuickResponsesResponse < Struct.new(
      nil,
      :quick_response_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred when creating a recommendation.</p>
    # @!attribute recommendation_id
    #   <p>The identifier of the recommendation that is in error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A recommendation is causing an error.</p>
    #   @return [String]
    class NotifyRecommendationsReceivedError < Struct.new(
      nil,
      :recommendation_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute recommendation_ids
    #   <p>The identifiers of the recommendations.</p>
    #   @return [Array<String>]
    class NotifyRecommendationsReceivedInput < Struct.new(
      nil,
      :assistant_id,
      :session_id,
      :recommendation_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_ids
    #   <p>The identifiers of the recommendations.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>The identifiers of recommendations that are causing errors.</p>
    #   @return [Array<Types::NotifyRecommendationsReceivedError>]
    class NotifyRecommendationsReceivedOutput < Struct.new(
      nil,
      :recommendation_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided <code>revisionId</code> does not match, indicating the content has been
    #       modified since it was last read.</p>
    # @!attribute message
    #   @return [String]
    class PreconditionFailedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute query_text
    #   <p>The text to search for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class QueryAssistantInput < Struct.new(
      nil,
      :assistant_id,
      :query_text,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The results of the query.</p>
    #   @return [Array<Types::ResultData>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class QueryAssistantOutput < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Data associated with the QUERY RecommendationTriggerType.</p>
    # @!attribute text
    #   <p>The text associated with the recommendation trigger.</p>
    #   @return [String]
    class QueryRecommendationTriggerData < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container quick response content.</p>
    # @!attribute content
    #   <p>The content of the quick response.</p>
    #   @return [String]
    class QuickResponseContentProvider < Struct.new(
      :content,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Content < QuickResponseContentProvider; end
      class Unknown < QuickResponseContentProvider; end
    end

    # <p>The content of the quick response stored in different media types.</p>
    # @!attribute plain_text
    #   <p>The container quick response content.</p>
    #   @return [Types::QuickResponseContentProvider]
    # @!attribute markdown
    #   <p>The container quick response content.</p>
    #   @return [Types::QuickResponseContentProvider]
    class QuickResponseContents < Struct.new(
      nil,
      :plain_text,
      :markdown,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the quick response.</p>
    # @!attribute quick_response_arn
    #   <p>The Amazon Resource Name (ARN) of the quick response.</p>
    #   @return [String]
    # @!attribute quick_response_id
    #   <p>The identifier of the quick response.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick response.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The media type of the quick response content.</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the quick response data.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the quick response was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the quick response data was last modified.</p>
    #   @return [Time]
    # @!attribute contents
    #   <p>The contents of the quick response.</p>
    #   @return [Types::QuickResponseContents]
    # @!attribute description
    #   <p>The description of the quick response.</p>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The configuration information of the user groups that the quick response is accessible to.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute shortcut_key
    #   <p>The shortcut key of the quick response. The value should be unique across the
    #     knowledge base.</p>
    #   @return [String]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the quick response data.</p>
    #   @return [String]
    # @!attribute is_active
    #   <p>Whether the quick response is active.</p>
    #   @return [Boolean]
    # @!attribute channels
    #   <p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class QuickResponseData < Struct.new(
      nil,
      :quick_response_arn,
      :quick_response_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :content_type,
      :status,
      :created_time,
      :last_modified_time,
      :contents,
      :description,
      :grouping_configuration,
      :shortcut_key,
      :last_modified_by,
      :is_active,
      :channels,
      :language,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container of quick response data.</p>
    # @!attribute content
    #   <p>The content of the quick response.</p>
    #   @return [String]
    class QuickResponseDataProvider < Struct.new(
      :content,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Content < QuickResponseDataProvider; end
      class Unknown < QuickResponseDataProvider; end
    end

    # <p>The quick response fields to filter the quick response query results by.</p>
    #          <p>The following is the list of supported field names.</p>
    #          <ul>
    #             <li>
    #                <p>name</p>
    #             </li>
    #             <li>
    #                <p>description</p>
    #             </li>
    #             <li>
    #                <p>shortcutKey</p>
    #             </li>
    #             <li>
    #                <p>isActive</p>
    #             </li>
    #             <li>
    #                <p>channels</p>
    #             </li>
    #             <li>
    #                <p>language</p>
    #             </li>
    #             <li>
    #                <p>contentType</p>
    #             </li>
    #             <li>
    #                <p>createdTime</p>
    #             </li>
    #             <li>
    #                <p>lastModifiedTime</p>
    #             </li>
    #             <li>
    #                <p>lastModifiedBy</p>
    #             </li>
    #             <li>
    #                <p>groupingConfiguration.criteria</p>
    #             </li>
    #             <li>
    #                <p>groupingConfiguration.values</p>
    #             </li>
    #          </ul>
    # @!attribute name
    #   <p>The name of the attribute field to filter the quick responses by.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of attribute field to filter the quick response by.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for filtering.</p>
    #   @return [String]
    # @!attribute include_no_existence
    #   <p>Whether to treat null value as a match for the attribute field.</p>
    #   @return [Boolean]
    class QuickResponseFilterField < Struct.new(
      nil,
      :name,
      :values,
      :operator,
      :include_no_existence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The quick response fields to order the quick response query results by.</p>
    #          <p>The following is the list of supported field names.</p>
    #          <ul>
    #             <li>
    #                <p>name</p>
    #             </li>
    #             <li>
    #                <p>description</p>
    #             </li>
    #             <li>
    #                <p>shortcutKey</p>
    #             </li>
    #             <li>
    #                <p>isActive</p>
    #             </li>
    #             <li>
    #                <p>channels</p>
    #             </li>
    #             <li>
    #                <p>language</p>
    #             </li>
    #             <li>
    #                <p>contentType</p>
    #             </li>
    #             <li>
    #                <p>createdTime</p>
    #             </li>
    #             <li>
    #                <p>lastModifiedTime</p>
    #             </li>
    #             <li>
    #                <p>lastModifiedBy</p>
    #             </li>
    #             <li>
    #                <p>groupingConfiguration.criteria</p>
    #             </li>
    #             <li>
    #                <p>groupingConfiguration.values</p>
    #             </li>
    #          </ul>
    # @!attribute name
    #   <p>The name of the attribute to order the quick response query results by.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order at which the quick responses are sorted by.</p>
    #   @return [String]
    class QuickResponseOrderField < Struct.new(
      nil,
      :name,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The quick response fields to query quick responses by.</p>
    #          <p>The following is the list of supported field names.</p>
    #          <ul>
    #             <li>
    #                <p>content</p>
    #             </li>
    #             <li>
    #                <p>name</p>
    #             </li>
    #             <li>
    #                <p>description</p>
    #             </li>
    #             <li>
    #                <p>shortcutKey</p>
    #             </li>
    #          </ul>
    # @!attribute name
    #   <p>The name of the attribute to query the quick responses by.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the attribute to query the quick responses by.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for matching attribute field values in the query.</p>
    #   @return [String]
    # @!attribute allow_fuzziness
    #   <p>Whether the query expects only exact matches on the attribute field values. The results of the query will only include exact matches if this parameter is set to false.</p>
    #   @return [Boolean]
    # @!attribute priority
    #   <p>The importance of the attribute field when calculating query result relevancy scores.
    #         The value set for this parameter affects the ordering of search results.</p>
    #   @return [String]
    class QuickResponseQueryField < Struct.new(
      nil,
      :name,
      :values,
      :operator,
      :allow_fuzziness,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the import job.</p>
    # @!attribute queries
    #   <p>The quick response query expressions.</p>
    #   @return [Array<Types::QuickResponseQueryField>]
    # @!attribute filters
    #   <p>The configuration of filtering rules applied to quick response query results.</p>
    #   @return [Array<Types::QuickResponseFilterField>]
    # @!attribute order_on_field
    #   <p>The quick response attribute fields on which the query results are ordered.</p>
    #   @return [Types::QuickResponseOrderField]
    class QuickResponseSearchExpression < Struct.new(
      nil,
      :queries,
      :filters,
      :order_on_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of quick response search.</p>
    # @!attribute quick_response_arn
    #   <p>The Amazon Resource Name (ARN) of the quick response.</p>
    #   @return [String]
    # @!attribute quick_response_id
    #   <p>The identifier of the quick response.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick response.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The media type of the quick response content.</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The resource status of the quick response.</p>
    #   @return [String]
    # @!attribute contents
    #   <p>The contents of the quick response.</p>
    #   @return [Types::QuickResponseContents]
    # @!attribute created_time
    #   <p>The timestamp when the quick response was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the quick response search result data was last modified.</p>
    #   @return [Time]
    # @!attribute is_active
    #   <p>Whether the quick response is active.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description of the quick response.</p>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The configuration information of the user groups that the quick response is accessible to.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute shortcut_key
    #   <p>The shortcut key of the quick response. The value should be unique across the
    #     knowledge base.</p>
    #   @return [String]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the quick response search result data.</p>
    #   @return [String]
    # @!attribute channels
    #   <p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written.</p>
    #   @return [String]
    # @!attribute attributes_not_interpolated
    #   <p>The user defined contact attributes that are not resolved when the search result is returned.</p>
    #   @return [Array<String>]
    # @!attribute attributes_interpolated
    #   <p>The user defined contact attributes that are resolved when the search result is returned.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class QuickResponseSearchResultData < Struct.new(
      nil,
      :quick_response_arn,
      :quick_response_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :content_type,
      :status,
      :contents,
      :created_time,
      :last_modified_time,
      :is_active,
      :description,
      :grouping_configuration,
      :shortcut_key,
      :last_modified_by,
      :channels,
      :language,
      :attributes_not_interpolated,
      :attributes_interpolated,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary information about the quick response.</p>
    # @!attribute quick_response_arn
    #   <p>The Amazon Resource Name (ARN) of the quick response.</p>
    #   @return [String]
    # @!attribute quick_response_id
    #   <p>The identifier of the quick response.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick response.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The media type of the quick response content.</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The resource status of the quick response.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the quick response was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the quick response summary was last modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the quick response.</p>
    #   @return [String]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the quick response data.</p>
    #   @return [String]
    # @!attribute is_active
    #   <p>Whether the quick response is active.</p>
    #   @return [Boolean]
    # @!attribute channels
    #   <p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class QuickResponseSummary < Struct.new(
      nil,
      :quick_response_arn,
      :quick_response_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :content_type,
      :status,
      :created_time,
      :last_modified_time,
      :description,
      :last_modified_by,
      :is_active,
      :channels,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the recommendation.</p>
    # @!attribute recommendation_id
    #   <p>The identifier of the recommendation.</p>
    #   @return [String]
    # @!attribute document
    #   <p>The recommended document.</p>
    #   @return [Types::Document]
    # @!attribute relevance_score
    #   <p>The relevance score of the recommendation.</p>
    #   @return [Float]
    # @!attribute relevance_level
    #   <p>The relevance level of the recommendation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of recommendation.</p>
    #   @return [String]
    class RecommendationData < Struct.new(
      nil,
      :recommendation_id,
      :document,
      :relevance_score,
      :relevance_level,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:relevance_score] = 0 unless options.key?(:relevance_score)
        super
      end
    end

    # <p>A recommendation trigger provides context on the event that produced the referenced
    #       recommendations. Recommendations are only referenced in <code>recommendationIds</code> by a
    #       single RecommendationTrigger.</p>
    # @!attribute id
    #   <p>The identifier of the recommendation trigger.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of recommendation trigger.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the recommendation trigger.</p>
    #            <ul>
    #               <li>
    #                  <p>ISSUE_DETECTION: The corresponding recommendations were triggered by a Contact Lens
    #             issue.</p>
    #               </li>
    #               <li>
    #                  <p>RULE_EVALUATION: The corresponding recommendations were triggered by a Contact Lens
    #             rule.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data
    #   <p>A union type containing information related to the trigger.</p>
    #   @return [Types::RecommendationTriggerData]
    # @!attribute recommendation_ids
    #   <p>The identifiers of the recommendations.</p>
    #   @return [Array<String>]
    class RecommendationTrigger < Struct.new(
      nil,
      :id,
      :type,
      :source,
      :data,
      :recommendation_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A union type containing information related to the trigger.</p>
    # @!attribute query
    #   <p>Data associated with the QUERY RecommendationTriggerType.</p>
    #   @return [Types::QueryRecommendationTriggerData]
    class RecommendationTriggerData < Struct.new(
      :query,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Query < RecommendationTriggerData; end
      class Unknown < RecommendationTriggerData; end
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class RemoveKnowledgeBaseTemplateUriInput < Struct.new(
      nil,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RemoveKnowledgeBaseTemplateUriOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how to render the content.</p>
    # @!attribute template_uri
    #   <p>A URI template containing exactly one variable in <code>${variableName} </code>format.
    #         This can only be set for <code>EXTERNAL</code> knowledge bases. For Salesforce, ServiceNow,
    #         and Zendesk, the variable must be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Salesforce: <code>Id</code>, <code>ArticleNumber</code>, <code>VersionNumber</code>,
    #               <code>Title</code>, <code>PublishStatus</code>, or <code>IsDeleted</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ServiceNow: <code>number</code>, <code>short_description</code>,
    #               <code>sys_mod_count</code>, <code>workflow_state</code>, or <code>active</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Zendesk: <code>id</code>, <code>title</code>, <code>updated_at</code>, or
    #               <code>draft</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The variable is replaced with the actual value for a piece of content when calling <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetContent.html">GetContent</a>. </p>
    #   @return [String]
    class RenderingConfiguration < Struct.new(
      nil,
      :template_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request reached the service more than 15 minutes after the date stamp on the request
    #       or more than 15 minutes after the request expiration date (such as for pre-signed URLs), or
    #       the date stamp on the request is more than 15 minutes in the future.</p>
    # @!attribute message
    #   @return [String]
    class RequestTimeoutException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The specified resource name.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the result.</p>
    # @!attribute result_id
    #   <p>The identifier of the result data.</p>
    #   @return [String]
    # @!attribute document
    #   <p>The document.</p>
    #   @return [Types::Document]
    # @!attribute relevance_score
    #   <p>The relevance score of the results.</p>
    #   @return [Float]
    class ResultData < Struct.new(
      nil,
      :result_id,
      :document,
      :relevance_score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:relevance_score] = 0 unless options.key?(:relevance_score)
        super
      end
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute search_expression
    #   <p>The search expression to filter results.</p>
    #   @return [Types::SearchExpression]
    class SearchContentInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :knowledge_base_id,
      :search_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_summaries
    #   <p>Summary information about the content.</p>
    #   @return [Array<Types::ContentSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class SearchContentOutput < Struct.new(
      nil,
      :content_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The search expression.</p>
    # @!attribute filters
    #   <p>The search expression filters.</p>
    #   @return [Array<Types::Filter>]
    class SearchExpression < Struct.new(
      nil,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute search_expression
    #   <p>The search expression for querying the quick response.</p>
    #   @return [Types::QuickResponseSearchExpression]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute attributes
    #   <p>The <a href="https://docs.aws.amazon.com/connect/latest/adminguide/connect-attrib-list.html#user-defined-attributes">user-defined Amazon Connect contact attributes</a> to be resolved when search results are returned.</p>
    #   @return [Hash<String, String>]
    class SearchQuickResponsesRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :search_expression,
      :next_token,
      :max_results,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The results of the quick response search.</p>
    #   @return [Array<Types::QuickResponseSearchResultData>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class SearchQuickResponsesResponse < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute search_expression
    #   <p>The search expression to filter results.</p>
    #   @return [Types::SearchExpression]
    class SearchSessionsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :assistant_id,
      :search_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_summaries
    #   <p>Summary information about the sessions.</p>
    #   @return [Array<Types::SessionSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class SearchSessionsOutput < Struct.new(
      nil,
      :session_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information for the customer managed key used for encryption.</p>
    # @!attribute kms_key_id
    #   <p>The customer managed key used for encryption. For more information about setting up a
    #           customer managed key for Wisdom, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html">Enable Amazon Connect Wisdom for your
    #           instance</a>. For information about valid ID values, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id">Key identifiers (KeyId)</a>.</p>
    #   @return [String]
    class ServerSideEncryptionConfiguration < Struct.new(
      nil,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You've exceeded your service quota. To perform the requested action, remove some of the
    #       relevant resources, or use service quotas to request a service quota increase.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the session.</p>
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the session.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the session.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute integration_configuration
    #   <p>The configuration information for the session integration.</p>
    #   @return [Types::SessionIntegrationConfiguration]
    class SessionData < Struct.new(
      nil,
      :session_arn,
      :session_id,
      :name,
      :description,
      :tags,
      :integration_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information for the session integration.</p>
    # @!attribute topic_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the integrated Amazon SNS topic used for streaming chat messages.</p>
    #   @return [String]
    class SessionIntegrationConfiguration < Struct.new(
      nil,
      :topic_integration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the session.</p>
    # @!attribute session_id
    #   <p>The identifier of the session.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the session.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>
    #   @return [String]
    class SessionSummary < Struct.new(
      nil,
      :session_id,
      :session_arn,
      :assistant_id,
      :assistant_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information about the external data source.</p>
    # @!attribute app_integrations
    #   <p>Configuration information for Amazon AppIntegrations to automatically ingest content.</p>
    #   @return [Types::AppIntegrationsConfiguration]
    class SourceConfiguration < Struct.new(
      :app_integrations,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AppIntegrations < SourceConfiguration; end
      class Unknown < SourceConfiguration; end
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The type of content to upload.</p>
    #   @return [String]
    # @!attribute presigned_url_time_to_live
    #   <p>The expected expiration time of the generated presigned URL, specified in minutes.</p>
    #   @return [Integer]
    class StartContentUploadInput < Struct.new(
      nil,
      :knowledge_base_id,
      :content_type,
      :presigned_url_time_to_live,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute upload_id
    #   <p>The identifier of the upload.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the upload.</p>
    #   @return [String]
    # @!attribute url_expiry
    #   <p>The expiration time of the URL as an epoch timestamp.</p>
    #   @return [Time]
    # @!attribute headers_to_include
    #   <p>The headers to include in the upload.</p>
    #   @return [Hash<String, String>]
    class StartContentUploadOutput < Struct.new(
      nil,
      :upload_id,
      :url,
      :url_expiry,
      :headers_to_include,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #            <ul>
    #               <li>
    #                  <p>For importing Wisdom quick responses, this should be a <code>QUICK_RESPONSES</code> type knowledge base.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute import_job_type
    #   <p>The type of the import job.</p>
    #            <ul>
    #               <li>
    #                  <p>For importing quick response resource, set the value to <code>QUICK_RESPONSES</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata fields of the imported Wisdom resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute external_source_configuration
    #   <p>The configuration information of the external source that the resource data are imported from.</p>
    #   @return [Types::ExternalSourceConfiguration]
    class StartImportJobRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :import_job_type,
      :upload_id,
      :client_token,
      :metadata,
      :external_source_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_job
    #   <p>The import job.</p>
    #   @return [Types::ImportJobData]
    class StartImportJobResponse < Struct.new(
      nil,
      :import_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Connect Wisdom throws this exception if you have too many tags in your tag set.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The specified resource name.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The <code>revisionId</code> of the content resource to update, taken from an earlier call
    #         to <code>GetContent</code>, <code>GetContentSummary</code>, <code>SearchContent</code>, or
    #           <code>ListContents</code>. If included, this argument acts as an optimistic lock to ensure
    #         content was not modified since it was last read. If it has been modified, this API throws a
    #           <code>PreconditionFailedException</code>.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the content.</p>
    #   @return [String]
    # @!attribute override_link_out_uri
    #   <p>The URI for the article. If the knowledge base has a templateUri, setting this argument
    #         overrides it for this piece of content. To remove an existing <code>overrideLinkOurUri</code>,
    #         exclude this argument and set <code>removeOverrideLinkOutUri</code> to true.</p>
    #   @return [String]
    # @!attribute remove_override_link_out_uri
    #   <p>Unset the existing <code>overrideLinkOutUri</code> if it exists.</p>
    #   @return [Boolean]
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. For
    #         example, when synchronizing data between an external system and Wisdom, you can store an
    #         external version identifier as metadata to utilize for determining drift.</p>
    #   @return [Hash<String, String>]
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.
    #       </p>
    #   @return [String]
    class UpdateContentInput < Struct.new(
      nil,
      :knowledge_base_id,
      :content_id,
      :revision_id,
      :title,
      :override_link_out_uri,
      :remove_override_link_out_uri,
      :metadata,
      :upload_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The content.</p>
    #   @return [Types::ContentData]
    class UpdateContentOutput < Struct.new(
      nil,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute template_uri
    #   <p>The template URI to update.</p>
    #   @return [String]
    class UpdateKnowledgeBaseTemplateUriInput < Struct.new(
      nil,
      :knowledge_base_id,
      :template_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base
    #   <p>The knowledge base to update.</p>
    #   @return [Types::KnowledgeBaseData]
    class UpdateKnowledgeBaseTemplateUriOutput < Struct.new(
      nil,
      :knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge 
    #   base if you're storing Wisdom Content resource to it. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute quick_response_id
    #   <p>The identifier of the quick response.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick response.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The updated content of the quick response.</p>
    #   @return [Types::QuickResponseDataProvider]
    # @!attribute content_type
    #   <p>The media type of the quick response content.</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The updated grouping configuration of the quick response.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute remove_grouping_configuration
    #   <p>Whether to remove the grouping configuration of the quick response.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The updated description of the quick response.</p>
    #   @return [String]
    # @!attribute remove_description
    #   <p>Whether to remove the description from the quick response.</p>
    #   @return [Boolean]
    # @!attribute shortcut_key
    #   <p>The shortcut key of the quick response. The value should be unique across the
    #     knowledge base.</p>
    #   @return [String]
    # @!attribute remove_shortcut_key
    #   <p>Whether to remove the shortcut key of the quick response.</p>
    #   @return [Boolean]
    # @!attribute is_active
    #   <p>Whether the quick response is active. </p>
    #   @return [Boolean]
    # @!attribute channels
    #   <p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>,
    #     <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>,
    #     <code>zh_CN</code>, <code>zh_TW</code>
    #            </p>
    #   @return [String]
    class UpdateQuickResponseRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :quick_response_id,
      :name,
      :content,
      :content_type,
      :grouping_configuration,
      :remove_grouping_configuration,
      :description,
      :remove_description,
      :shortcut_key,
      :remove_shortcut_key,
      :is_active,
      :channels,
      :language,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_response
    #   <p>The quick response.</p>
    #   @return [Types::QuickResponseData]
    class UpdateQuickResponseResponse < Struct.new(
      nil,
      :quick_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by a service.</p>
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
