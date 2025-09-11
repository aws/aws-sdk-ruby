# frozen_string_literal: true

# This is generated code!

module Aws::CloudDirectory
  # This module contains the types returned by client operations.
  module Types

    # <p>Access denied or directory not found. Either you don't have permissions for this directory or the directory does not exist. Try calling <a>ListDirectories</a> and check your permissions.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute schema_facet
    #   <p>Identifiers for the facet that you are adding to the object. See <a>SchemaFacet</a> for details.</p>
    #   @return [Types::SchemaFacet]
    # @!attribute object_attribute_list
    #   <p>Attributes on the facet that you are adding to the object.</p>
    #   @return [Array<Types::AttributeKeyAndValue>]
    # @!attribute object_reference
    #   <p>A reference to the object you are adding the specified facet to.</p>
    #   @return [Types::ObjectReference]
    class AddFacetToObjectRequest < Struct.new(
      :directory_arn,
      :schema_facet,
      :object_attribute_list,
      :object_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AddFacetToObjectResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute published_schema_arn
    #   <p>Published schema Amazon Resource Name (ARN) that needs to be copied. For more
    #         information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         into which the schema is copied. For more information, see <a>arns</a>.</p>
    #   @return [String]
    class ApplySchemaRequest < Struct.new(
      :published_schema_arn,
      :directory_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute applied_schema_arn
    #   <p>The applied schema ARN that is associated with the copied schema in the <a>Directory</a>. You can use this ARN to describe the schema information applied on
    #         this directory. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute directory_arn
    #   <p>The ARN that is associated with the <a>Directory</a>. For more information,
    #         see <a>arns</a>.</p>
    #   @return [String]
    class ApplySchemaResponse < Struct.new(
      :applied_schema_arn,
      :directory_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute parent_reference
    #   <p>The parent object reference.</p>
    #   @return [Types::ObjectReference]
    # @!attribute child_reference
    #   <p>The child object reference to be attached to the object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute link_name
    #   <p>The link name with which the child object is attached to the parent.</p>
    #   @return [String]
    class AttachObjectRequest < Struct.new(
      :directory_arn,
      :parent_reference,
      :child_reference,
      :link_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attached_object_identifier
    #   <p>The attached <code>ObjectIdentifier</code>, which is the child
    #           <code>ObjectIdentifier</code>.</p>
    #   @return [String]
    class AttachObjectResponse < Struct.new(
      :attached_object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute policy_reference
    #   <p>The reference that is associated with the policy object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute object_reference
    #   <p>The reference that identifies the object to which the policy will be
    #         attached.</p>
    #   @return [Types::ObjectReference]
    class AttachPolicyRequest < Struct.new(
      :directory_arn,
      :policy_reference,
      :object_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AttachPolicyResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where the object and index
    #         exist.</p>
    #   @return [String]
    # @!attribute index_reference
    #   <p>A reference to the index that you are attaching the object to.</p>
    #   @return [Types::ObjectReference]
    # @!attribute target_reference
    #   <p>A reference to the object that you are attaching to the index.</p>
    #   @return [Types::ObjectReference]
    class AttachToIndexRequest < Struct.new(
      :directory_arn,
      :index_reference,
      :target_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>
    #   @return [String]
    class AttachToIndexResponse < Struct.new(
      :attached_object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to attach the typed
    #         link.</p>
    #   @return [String]
    # @!attribute source_object_reference
    #   <p>Identifies the source object that the typed link will attach to.</p>
    #   @return [Types::ObjectReference]
    # @!attribute target_object_reference
    #   <p>Identifies the target object that the typed link will attach to.</p>
    #   @return [Types::ObjectReference]
    # @!attribute typed_link_facet
    #   <p>Identifies the typed link facet that is associated with the typed link.</p>
    #   @return [Types::TypedLinkSchemaAndFacetName]
    # @!attribute attributes
    #   <p>A set of attributes that are associated with the typed link.</p>
    #   @return [Array<Types::AttributeNameAndValue>]
    class AttachTypedLinkRequest < Struct.new(
      :directory_arn,
      :source_object_reference,
      :target_object_reference,
      :typed_link_facet,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute typed_link_specifier
    #   <p>Returns a typed link specifier as output.</p>
    #   @return [Types::TypedLinkSpecifier]
    class AttachTypedLinkResponse < Struct.new(
      :typed_link_specifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A unique identifier for an attribute.</p>
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema that contains the facet and
    #         attribute.</p>
    #   @return [String]
    # @!attribute facet_name
    #   <p>The name of the facet that the attribute exists within.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the attribute.</p>
    #   @return [String]
    class AttributeKey < Struct.new(
      :schema_arn,
      :facet_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The combination of an attribute key and an attribute value.</p>
    # @!attribute key
    #   <p>The key of the attribute.</p>
    #   @return [Types::AttributeKey]
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #   @return [Types::TypedAttributeValue]
    class AttributeKeyAndValue < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies the attribute name and value for a typed link.</p>
    # @!attribute attribute_name
    #   <p>The attribute name of the typed link.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the typed link.</p>
    #   @return [Types::TypedAttributeValue]
    class AttributeNameAndValue < Struct.new(
      :attribute_name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a batch add facet to object operation.</p>
    # @!attribute schema_facet
    #   <p>Represents the facet being added to the object.</p>
    #   @return [Types::SchemaFacet]
    # @!attribute object_attribute_list
    #   <p>The attributes to set on the object.</p>
    #   @return [Array<Types::AttributeKeyAndValue>]
    # @!attribute object_reference
    #   <p>A reference to the object being mutated.</p>
    #   @return [Types::ObjectReference]
    class BatchAddFacetToObject < Struct.new(
      :schema_facet,
      :object_attribute_list,
      :object_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a batch add facet to object operation.</p>
    class BatchAddFacetToObjectResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of an <a>AttachObject</a> operation.</p>
    # @!attribute parent_reference
    #   <p>The parent object reference.</p>
    #   @return [Types::ObjectReference]
    # @!attribute child_reference
    #   <p>The child object reference that is to be attached to the object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute link_name
    #   <p>The name of the link.</p>
    #   @return [String]
    class BatchAttachObject < Struct.new(
      :parent_reference,
      :child_reference,
      :link_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output batch <a>AttachObject</a> response operation.</p>
    # @!attribute attached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the object that has been attached.</p>
    #   @return [String]
    class BatchAttachObjectResponse < Struct.new(
      :attached_object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Attaches a policy object to a regular object inside a <a>BatchRead</a> operation. For more information, see <a>AttachPolicy</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute policy_reference
    #   <p>The reference that is associated with the policy object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute object_reference
    #   <p>The reference that identifies the object to which the policy will be
    #          attached.</p>
    #   @return [Types::ObjectReference]
    class BatchAttachPolicy < Struct.new(
      :policy_reference,
      :object_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of an <a>AttachPolicy</a> response
    #       operation.</p>
    class BatchAttachPolicyResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Attaches the specified object to the specified index inside a <a>BatchRead</a> operation. For more information, see <a>AttachToIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute index_reference
    #   <p>A reference to the index that you are attaching the object to.</p>
    #   @return [Types::ObjectReference]
    # @!attribute target_reference
    #   <p>A reference to the object that you are attaching to the index.</p>
    #   @return [Types::ObjectReference]
    class BatchAttachToIndex < Struct.new(
      :index_reference,
      :target_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>AttachToIndex</a> response operation.</p>
    # @!attribute attached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>
    #   @return [String]
    class BatchAttachToIndexResponse < Struct.new(
      :attached_object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Attaches a typed link to a specified source and target object inside a <a>BatchRead</a> operation. For more information, see <a>AttachTypedLink</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute source_object_reference
    #   <p>Identifies the source object that the typed link will attach to.</p>
    #   @return [Types::ObjectReference]
    # @!attribute target_object_reference
    #   <p>Identifies the target object that the typed link will attach to.</p>
    #   @return [Types::ObjectReference]
    # @!attribute typed_link_facet
    #   <p>Identifies the typed link facet that is associated with the typed link.</p>
    #   @return [Types::TypedLinkSchemaAndFacetName]
    # @!attribute attributes
    #   <p>A set of attributes that are associated with the typed link.</p>
    #   @return [Array<Types::AttributeNameAndValue>]
    class BatchAttachTypedLink < Struct.new(
      :source_object_reference,
      :target_object_reference,
      :typed_link_facet,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>AttachTypedLink</a> response operation.</p>
    # @!attribute typed_link_specifier
    #   <p>Returns a typed link specifier as output.</p>
    #   @return [Types::TypedLinkSpecifier]
    class BatchAttachTypedLinkResponse < Struct.new(
      :typed_link_specifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates an index object inside of a <a>BatchRead</a> operation. For more information, see <a>CreateIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute ordered_indexed_attribute_list
    #   <p>Specifies the attributes that should be indexed on. Currently only a single attribute
    #          is supported.</p>
    #   @return [Array<Types::AttributeKey>]
    # @!attribute is_unique
    #   <p>Indicates whether the attribute that is being indexed has unique values or
    #          not.</p>
    #   @return [Boolean]
    # @!attribute parent_reference
    #   <p>A reference to the parent object that contains the index object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute link_name
    #   <p>The name of the link between the parent object and the index object.</p>
    #   @return [String]
    # @!attribute batch_reference_name
    #   <p>The batch reference name. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html">Transaction Support</a> for more information.</p>
    #   @return [String]
    class BatchCreateIndex < Struct.new(
      :ordered_indexed_attribute_list,
      :is_unique,
      :parent_reference,
      :link_name,
      :batch_reference_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_unique] = false unless options.key?(:is_unique)
        super
      end
    end

    # <p>Represents the output of a <a>CreateIndex</a> response operation.</p>
    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>
    #   @return [String]
    class BatchCreateIndexResponse < Struct.new(
      :object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>CreateObject</a> operation.</p>
    # @!attribute schema_facet
    #   <p>A list of <code>FacetArns</code> that will be associated with the object. For more
    #         information, see <a>arns</a>.</p>
    #   @return [Array<Types::SchemaFacet>]
    # @!attribute object_attribute_list
    #   <p>An attribute map, which contains an attribute ARN as the key and attribute value as
    #         the map value.</p>
    #   @return [Array<Types::AttributeKeyAndValue>]
    # @!attribute parent_reference
    #   <p>If specified, the parent reference to which this object will be attached.</p>
    #   @return [Types::ObjectReference]
    # @!attribute link_name
    #   <p>The name of the link.</p>
    #   @return [String]
    # @!attribute batch_reference_name
    #   <p>The batch reference name. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html">Transaction Support</a> for more information.</p>
    #   @return [String]
    class BatchCreateObject < Struct.new(
      :schema_facet,
      :object_attribute_list,
      :parent_reference,
      :link_name,
      :batch_reference_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>CreateObject</a> response operation.</p>
    # @!attribute object_identifier
    #   <p>The ID that is associated with the object.</p>
    #   @return [String]
    class BatchCreateObjectResponse < Struct.new(
      :object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>DeleteObject</a> operation.</p>
    # @!attribute object_reference
    #   <p>The reference that identifies the object.</p>
    #   @return [Types::ObjectReference]
    class BatchDeleteObject < Struct.new(
      :object_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>DeleteObject</a> response operation.</p>
    class BatchDeleteObjectResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detaches the specified object from the specified index inside a <a>BatchRead</a> operation. For more information, see <a>DetachFromIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute index_reference
    #   <p>A reference to the index object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute target_reference
    #   <p>A reference to the object being detached from the index.</p>
    #   @return [Types::ObjectReference]
    class BatchDetachFromIndex < Struct.new(
      :index_reference,
      :target_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>DetachFromIndex</a> response operation.</p>
    # @!attribute detached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>
    #   @return [String]
    class BatchDetachFromIndexResponse < Struct.new(
      :detached_object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>DetachObject</a> operation.</p>
    # @!attribute parent_reference
    #   <p>Parent reference from which the object with the specified link name is
    #         detached.</p>
    #   @return [Types::ObjectReference]
    # @!attribute link_name
    #   <p>The name of the link.</p>
    #   @return [String]
    # @!attribute batch_reference_name
    #   <p>The batch reference name. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html">Transaction Support</a> for more information.</p>
    #   @return [String]
    class BatchDetachObject < Struct.new(
      :parent_reference,
      :link_name,
      :batch_reference_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>DetachObject</a> response operation.</p>
    # @!attribute detached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the detached object.</p>
    #   @return [String]
    class BatchDetachObjectResponse < Struct.new(
      :detached_object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detaches the specified policy from the specified directory inside a <a>BatchWrite</a> operation. For more information, see <a>DetachPolicy</a> and <a>BatchWriteRequest$Operations</a>.</p>
    # @!attribute policy_reference
    #   <p>Reference that identifies the policy object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose policy object will be detached.</p>
    #   @return [Types::ObjectReference]
    class BatchDetachPolicy < Struct.new(
      :policy_reference,
      :object_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>DetachPolicy</a> response operation.</p>
    class BatchDetachPolicyResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detaches a typed link from a specified source and target object inside a <a>BatchRead</a> operation. For more information, see <a>DetachTypedLink</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute typed_link_specifier
    #   <p>Used to accept a typed link specifier as input.</p>
    #   @return [Types::TypedLinkSpecifier]
    class BatchDetachTypedLink < Struct.new(
      :typed_link_specifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>DetachTypedLink</a> response operation.</p>
    class BatchDetachTypedLinkResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Retrieves attributes that are associated with a typed link inside a <a>BatchRead</a> operation. For more information, see <a>GetLinkAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    #   @return [Types::TypedLinkSpecifier]
    # @!attribute attribute_names
    #   <p>A list of attribute names whose values will be retrieved.</p>
    #   @return [Array<String>]
    class BatchGetLinkAttributes < Struct.new(
      :typed_link_specifier,
      :attribute_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>GetLinkAttributes</a> response operation.</p>
    # @!attribute attributes
    #   <p>The attributes that are associated with the typed link.</p>
    #   @return [Array<Types::AttributeKeyAndValue>]
    class BatchGetLinkAttributesResponse < Struct.new(
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Retrieves attributes within a facet that are associated with an object inside an <a>BatchRead</a> operation. For more information, see <a>GetObjectAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose attributes will be retrieved.</p>
    #   @return [Types::ObjectReference]
    # @!attribute schema_facet
    #   <p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>
    #   @return [Types::SchemaFacet]
    # @!attribute attribute_names
    #   <p>List of attribute names whose values will be retrieved.</p>
    #   @return [Array<String>]
    class BatchGetObjectAttributes < Struct.new(
      :object_reference,
      :schema_facet,
      :attribute_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>GetObjectAttributes</a> response operation.</p>
    # @!attribute attributes
    #   <p>The attribute values that are associated with an object.</p>
    #   @return [Array<Types::AttributeKeyAndValue>]
    class BatchGetObjectAttributesResponse < Struct.new(
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Retrieves metadata about an object inside a <a>BatchRead</a> operation. For more information, see <a>GetObjectInformation</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute object_reference
    #   <p>A reference to the object.</p>
    #   @return [Types::ObjectReference]
    class BatchGetObjectInformation < Struct.new(
      :object_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>GetObjectInformation</a> response operation.</p>
    # @!attribute schema_facets
    #   <p>The facets attached to the specified object.</p>
    #   @return [Array<Types::SchemaFacet>]
    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the specified object.</p>
    #   @return [String]
    class BatchGetObjectInformationResponse < Struct.new(
      :schema_facets,
      :object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lists indices attached to an object inside a <a>BatchRead</a> operation. For more information, see <a>ListAttachedIndices</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute target_reference
    #   <p>A reference to the object that has indices attached.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class BatchListAttachedIndices < Struct.new(
      :target_reference,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListAttachedIndices</a> response operation.</p>
    # @!attribute index_attachments
    #   <p>The indices attached to the specified object.</p>
    #   @return [Array<Types::IndexAttachment>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchListAttachedIndicesResponse < Struct.new(
      :index_attachments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a> information for an object inside a <a>BatchRead</a> operation. For more information, see <a>ListIncomingTypedLinks</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #          selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #          range specified are presumed to match the entire range.</p>
    #   @return [Array<Types::TypedLinkAttributeRange>]
    # @!attribute filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes on the typed link facet, not the
    #          order in which they are supplied to any API calls.</p>
    #   @return [Types::TypedLinkSchemaAndFacetName]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class BatchListIncomingTypedLinks < Struct.new(
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListIncomingTypedLinks</a> response operation.</p>
    # @!attribute link_specifiers
    #   <p>Returns one or more typed link specifiers as output.</p>
    #   @return [Array<Types::TypedLinkSpecifier>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchListIncomingTypedLinksResponse < Struct.new(
      :link_specifiers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lists objects attached to the specified index inside a <a>BatchRead</a> operation. For more information, see <a>ListIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute ranges_on_indexed_values
    #   <p>Specifies the ranges of indexed values that you want to query.</p>
    #   @return [Array<Types::ObjectAttributeRange>]
    # @!attribute index_reference
    #   <p>The reference to the index to list.</p>
    #   @return [Types::ObjectReference]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchListIndex < Struct.new(
      :ranges_on_indexed_values,
      :index_reference,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListIndex</a> response operation.</p>
    # @!attribute index_attachments
    #   <p>The objects and indexed values attached to the index.</p>
    #   @return [Array<Types::IndexAttachment>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchListIndexResponse < Struct.new(
      :index_attachments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListObjectAttributes</a> operation.</p>
    # @!attribute object_reference
    #   <p>Reference of the object whose attributes need to be listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #   @return [Integer]
    # @!attribute facet_filter
    #   <p>Used to filter the list of object attributes that are associated with a certain
    #         facet.</p>
    #   @return [Types::SchemaFacet]
    class BatchListObjectAttributes < Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      :facet_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListObjectAttributes</a> response operation.</p>
    # @!attribute attributes
    #   <p>The attributes map that is associated with the object. <code>AttributeArn</code> is the
    #         key; attribute value is the value.</p>
    #   @return [Array<Types::AttributeKeyAndValue>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchListObjectAttributesResponse < Struct.new(
      :attributes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListObjectChildren</a> operation.</p>
    # @!attribute object_reference
    #   <p>Reference of the object for which child objects are being listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of items to be retrieved in a single call. This is an approximate
    #          number.</p>
    #   @return [Integer]
    class BatchListObjectChildren < Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListObjectChildren</a> response operation.</p>
    # @!attribute children
    #   <p>The children structure, which is a map with the key as the <code>LinkName</code> and
    #           <code>ObjectIdentifier</code> as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchListObjectChildrenResponse < Struct.new(
      :children,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects inside a <a>BatchRead</a> operation. For more information, see <a>ListObjectParentPaths</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class BatchListObjectParentPaths < Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListObjectParentPaths</a> response operation.</p>
    # @!attribute path_to_object_identifiers_list
    #   <p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the
    #          directory.</p>
    #   @return [Array<Types::PathToObjectIdentifiers>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchListObjectParentPathsResponse < Struct.new(
      :path_to_object_identifiers_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lists parent objects that are associated with a given object in pagination
    #       fashion.</p>
    # @!attribute object_reference
    #   <p>The reference that identifies an object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #   @return [Integer]
    class BatchListObjectParents < Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListObjectParents</a> response operation.</p>
    # @!attribute parent_links
    #   <p>Returns a list of parent reference and LinkName Tuples.</p>
    #   @return [Array<Types::ObjectIdentifierAndLinkNameTuple>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchListObjectParentsResponse < Struct.new(
      :parent_links,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns policies attached to an object in pagination fashion inside a <a>BatchRead</a> operation. For more information, see <a>ListObjectPolicies</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class BatchListObjectPolicies < Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListObjectPolicies</a> response operation.</p>
    # @!attribute attached_policy_ids
    #   <p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the
    #          object.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchListObjectPoliciesResponse < Struct.new(
      :attached_policy_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a> information for an object inside a <a>BatchRead</a> operation. For more information, see <a>ListOutgoingTypedLinks</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #          selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #          range specified are presumed to match the entire range.</p>
    #   @return [Array<Types::TypedLinkAttributeRange>]
    # @!attribute filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes defined on the typed link facet,
    #          not the order they are supplied to any API calls.</p>
    #   @return [Types::TypedLinkSchemaAndFacetName]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class BatchListOutgoingTypedLinks < Struct.new(
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListOutgoingTypedLinks</a> response operation.</p>
    # @!attribute typed_link_specifiers
    #   <p>Returns a typed link specifier as output.</p>
    #   @return [Array<Types::TypedLinkSpecifier>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchListOutgoingTypedLinksResponse < Struct.new(
      :typed_link_specifiers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached inside a <a>BatchRead</a> operation. For more information, see <a>ListPolicyAttachments</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute policy_reference
    #   <p>The reference that identifies the policy object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class BatchListPolicyAttachments < Struct.new(
      :policy_reference,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>ListPolicyAttachments</a> response operation.</p>
    # @!attribute object_identifiers
    #   <p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchListPolicyAttachmentsResponse < Struct.new(
      :object_identifiers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lists all policies from the root of the Directory to the object specified inside a <a>BatchRead</a> operation. For more information, see <a>LookupPolicy</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose policies will be looked up.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class BatchLookupPolicy < Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>LookupPolicy</a> response operation.</p>
    # @!attribute policy_to_path_list
    #   <p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and
    #          <code>PolicyType</code>. For more
    #          information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
    #   @return [Array<Types::PolicyToPath>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class BatchLookupPolicyResponse < Struct.new(
      :policy_to_path_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The batch read exception structure, which contains the exception type and
    #       message.</p>
    # @!attribute type
    #   <p>A type of exception, such as <code>InvalidArnException</code>.</p>
    #   @return [String]
    # @!attribute message
    #   <p>An exception message that is associated with the failure.</p>
    #   @return [String]
    class BatchReadException < Struct.new(
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchRead</code> operation.</p>
    # @!attribute list_object_attributes
    #   <p>Lists all attributes that are associated with an object.</p>
    #   @return [Types::BatchListObjectAttributes]
    # @!attribute list_object_children
    #   <p>Returns a paginated list of child objects that are associated with a given
    #         object.</p>
    #   @return [Types::BatchListObjectChildren]
    # @!attribute list_attached_indices
    #   <p>Lists indices attached to an object.</p>
    #   @return [Types::BatchListAttachedIndices]
    # @!attribute list_object_parent_paths
    #   <p>Retrieves all available parent paths for any object type such as node, leaf node,
    #          policy node, and index node objects. For more information about objects, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html">Directory Structure</a>.</p>
    #   @return [Types::BatchListObjectParentPaths]
    # @!attribute get_object_information
    #   <p>Retrieves metadata about an object.</p>
    #   @return [Types::BatchGetObjectInformation]
    # @!attribute get_object_attributes
    #   <p>Retrieves attributes within a facet that are associated with an object.</p>
    #   @return [Types::BatchGetObjectAttributes]
    # @!attribute list_object_parents
    #   <p>Lists parent objects that are associated with a given object in pagination
    #         fashion.</p>
    #   @return [Types::BatchListObjectParents]
    # @!attribute list_object_policies
    #   <p>Returns policies attached to an object in pagination fashion.</p>
    #   @return [Types::BatchListObjectPolicies]
    # @!attribute list_policy_attachments
    #   <p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>
    #   @return [Types::BatchListPolicyAttachments]
    # @!attribute lookup_policy
    #   <p>Lists all policies from the root of the <a>Directory</a> to the object
    #          specified. If there are no policies present, an empty list is returned. If policies are
    #          present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code>
    #          for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and
    #          <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more
    #          information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
    #   @return [Types::BatchLookupPolicy]
    # @!attribute list_index
    #   <p>Lists objects attached to the specified index.</p>
    #   @return [Types::BatchListIndex]
    # @!attribute list_outgoing_typed_links
    #   <p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a>
    #          information for an object. It also supports filtering by typed link facet and identity
    #          attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [Types::BatchListOutgoingTypedLinks]
    # @!attribute list_incoming_typed_links
    #   <p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a>
    #          information for an object. It also supports filtering by typed link facet and identity
    #          attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [Types::BatchListIncomingTypedLinks]
    # @!attribute get_link_attributes
    #   <p>Retrieves attributes that are associated with a typed link.</p>
    #   @return [Types::BatchGetLinkAttributes]
    class BatchReadOperation < Struct.new(
      :list_object_attributes,
      :list_object_children,
      :list_attached_indices,
      :list_object_parent_paths,
      :get_object_information,
      :get_object_attributes,
      :list_object_parents,
      :list_object_policies,
      :list_policy_attachments,
      :lookup_policy,
      :list_index,
      :list_outgoing_typed_links,
      :list_incoming_typed_links,
      :get_link_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchRead</code> response operation.</p>
    # @!attribute successful_response
    #   <p>Identifies which operation in a batch has succeeded.</p>
    #   @return [Types::BatchReadSuccessfulResponse]
    # @!attribute exception_response
    #   <p>Identifies which operation in a batch has failed.</p>
    #   @return [Types::BatchReadException]
    class BatchReadOperationResponse < Struct.new(
      :successful_response,
      :exception_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute operations
    #   <p>A list of operations that are part of the batch.</p>
    #   @return [Array<Types::BatchReadOperation>]
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #   @return [String]
    class BatchReadRequest < Struct.new(
      :directory_arn,
      :operations,
      :consistency_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute responses
    #   <p>A list of all the responses for each batch read.</p>
    #   @return [Array<Types::BatchReadOperationResponse>]
    class BatchReadResponse < Struct.new(
      :responses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchRead</code> success response operation.</p>
    # @!attribute list_object_attributes
    #   <p>Lists all attributes that are associated with an object.</p>
    #   @return [Types::BatchListObjectAttributesResponse]
    # @!attribute list_object_children
    #   <p>Returns a paginated list of child objects that are associated with a given
    #         object.</p>
    #   @return [Types::BatchListObjectChildrenResponse]
    # @!attribute get_object_information
    #   <p>Retrieves metadata about an object.</p>
    #   @return [Types::BatchGetObjectInformationResponse]
    # @!attribute get_object_attributes
    #   <p>Retrieves attributes within a facet that are associated with an object.</p>
    #   @return [Types::BatchGetObjectAttributesResponse]
    # @!attribute list_attached_indices
    #   <p>Lists indices attached to an object.</p>
    #   @return [Types::BatchListAttachedIndicesResponse]
    # @!attribute list_object_parent_paths
    #   <p>Retrieves all available parent paths for any object type such as node, leaf node,
    #          policy node, and index node objects. For more information about objects, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html">Directory Structure</a>.</p>
    #   @return [Types::BatchListObjectParentPathsResponse]
    # @!attribute list_object_policies
    #   <p>Returns policies attached to an object in pagination fashion.</p>
    #   @return [Types::BatchListObjectPoliciesResponse]
    # @!attribute list_policy_attachments
    #   <p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>
    #   @return [Types::BatchListPolicyAttachmentsResponse]
    # @!attribute lookup_policy
    #   <p>Lists all policies from the root of the <a>Directory</a> to the object
    #          specified. If there are no policies present, an empty list is returned. If policies are
    #          present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code>
    #          for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and
    #          <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more
    #          information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
    #   @return [Types::BatchLookupPolicyResponse]
    # @!attribute list_index
    #   <p>Lists objects attached to the specified index.</p>
    #   @return [Types::BatchListIndexResponse]
    # @!attribute list_outgoing_typed_links
    #   <p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a>
    #          information for an object. It also supports filtering by typed link facet and identity
    #          attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [Types::BatchListOutgoingTypedLinksResponse]
    # @!attribute list_incoming_typed_links
    #   <p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a>
    #          information for an object. It also supports filtering by typed link facet and identity
    #          attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [Types::BatchListIncomingTypedLinksResponse]
    # @!attribute get_link_attributes
    #   <p>The list of attributes to retrieve from the typed link.</p>
    #   @return [Types::BatchGetLinkAttributesResponse]
    # @!attribute list_object_parents
    #   <p>The list of parent objects to retrieve.</p>
    #   @return [Types::BatchListObjectParentsResponse]
    class BatchReadSuccessfulResponse < Struct.new(
      :list_object_attributes,
      :list_object_children,
      :get_object_information,
      :get_object_attributes,
      :list_attached_indices,
      :list_object_parent_paths,
      :list_object_policies,
      :list_policy_attachments,
      :lookup_policy,
      :list_index,
      :list_outgoing_typed_links,
      :list_incoming_typed_links,
      :get_link_attributes,
      :list_object_parents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A batch operation to remove a facet from an object.</p>
    # @!attribute schema_facet
    #   <p>The facet to remove from the object.</p>
    #   @return [Types::SchemaFacet]
    # @!attribute object_reference
    #   <p>A reference to the object whose facet will be removed.</p>
    #   @return [Types::ObjectReference]
    class BatchRemoveFacetFromObject < Struct.new(
      :schema_facet,
      :object_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An empty result that represents success.</p>
    class BatchRemoveFacetFromObjectResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates a given typed link’s attributes inside a <a>BatchRead</a> operation. Attributes to be updated must not contribute to the typed link’s identity, as defined by its <code>IdentityAttributeOrder</code>. For more information, see <a>UpdateLinkAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>
    # @!attribute typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    #   @return [Types::TypedLinkSpecifier]
    # @!attribute attribute_updates
    #   <p>The attributes update structure.</p>
    #   @return [Array<Types::LinkAttributeUpdate>]
    class BatchUpdateLinkAttributes < Struct.new(
      :typed_link_specifier,
      :attribute_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>UpdateLinkAttributes</a> response operation.</p>
    class BatchUpdateLinkAttributesResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchUpdate</code> operation. </p>
    # @!attribute object_reference
    #   <p>Reference that identifies the object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute attribute_updates
    #   <p>Attributes update structure.</p>
    #   @return [Array<Types::ObjectAttributeUpdate>]
    class BatchUpdateObjectAttributes < Struct.new(
      :object_reference,
      :attribute_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchUpdate</code> response operation.</p>
    # @!attribute object_identifier
    #   <p>ID that is associated with the object.</p>
    #   @return [String]
    class BatchUpdateObjectAttributesResponse < Struct.new(
      :object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>BatchWrite</code> exception has occurred.</p>
    # @!attribute index
    #   @return [Integer]
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class BatchWriteException < Struct.new(
      :index,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:index] = 0 unless options.key?(:index)
        super
      end
    end

    # <p>Represents the output of a <code>BatchWrite</code> operation. </p>
    # @!attribute create_object
    #   <p>Creates an object.</p>
    #   @return [Types::BatchCreateObject]
    # @!attribute attach_object
    #   <p>Attaches an object to a <a>Directory</a>.</p>
    #   @return [Types::BatchAttachObject]
    # @!attribute detach_object
    #   <p>Detaches an object from a <a>Directory</a>.</p>
    #   @return [Types::BatchDetachObject]
    # @!attribute update_object_attributes
    #   <p>Updates a given object's attributes.</p>
    #   @return [Types::BatchUpdateObjectAttributes]
    # @!attribute delete_object
    #   <p>Deletes an object in a <a>Directory</a>.</p>
    #   @return [Types::BatchDeleteObject]
    # @!attribute add_facet_to_object
    #   <p>A batch operation that adds a facet to an object.</p>
    #   @return [Types::BatchAddFacetToObject]
    # @!attribute remove_facet_from_object
    #   <p>A batch operation that removes a facet from an object.</p>
    #   @return [Types::BatchRemoveFacetFromObject]
    # @!attribute attach_policy
    #   <p>Attaches a policy object to a regular object. An object can have a limited number of attached
    #          policies.</p>
    #   @return [Types::BatchAttachPolicy]
    # @!attribute detach_policy
    #   <p>Detaches a policy from a <a>Directory</a>.</p>
    #   @return [Types::BatchDetachPolicy]
    # @!attribute create_index
    #   <p>Creates an index object. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm">Indexing and search</a> for more information.</p>
    #   @return [Types::BatchCreateIndex]
    # @!attribute attach_to_index
    #   <p>Attaches the specified object to the specified index.</p>
    #   @return [Types::BatchAttachToIndex]
    # @!attribute detach_from_index
    #   <p>Detaches the specified object from the specified index.</p>
    #   @return [Types::BatchDetachFromIndex]
    # @!attribute attach_typed_link
    #   <p>Attaches a typed link to a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [Types::BatchAttachTypedLink]
    # @!attribute detach_typed_link
    #   <p>Detaches a typed link from a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [Types::BatchDetachTypedLink]
    # @!attribute update_link_attributes
    #   <p>Updates a given object's attributes.</p>
    #   @return [Types::BatchUpdateLinkAttributes]
    class BatchWriteOperation < Struct.new(
      :create_object,
      :attach_object,
      :detach_object,
      :update_object_attributes,
      :delete_object,
      :add_facet_to_object,
      :remove_facet_from_object,
      :attach_policy,
      :detach_policy,
      :create_index,
      :attach_to_index,
      :detach_from_index,
      :attach_typed_link,
      :detach_typed_link,
      :update_link_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchWrite</code> response operation.</p>
    # @!attribute create_object
    #   <p>Creates an object in a <a>Directory</a>.</p>
    #   @return [Types::BatchCreateObjectResponse]
    # @!attribute attach_object
    #   <p>Attaches an object to a <a>Directory</a>.</p>
    #   @return [Types::BatchAttachObjectResponse]
    # @!attribute detach_object
    #   <p>Detaches an object from a <a>Directory</a>.</p>
    #   @return [Types::BatchDetachObjectResponse]
    # @!attribute update_object_attributes
    #   <p>Updates a given object’s attributes.</p>
    #   @return [Types::BatchUpdateObjectAttributesResponse]
    # @!attribute delete_object
    #   <p>Deletes an object in a <a>Directory</a>.</p>
    #   @return [Types::BatchDeleteObjectResponse]
    # @!attribute add_facet_to_object
    #   <p>The result of an add facet to object batch operation.</p>
    #   @return [Types::BatchAddFacetToObjectResponse]
    # @!attribute remove_facet_from_object
    #   <p>The result of a batch remove facet from object operation.</p>
    #   @return [Types::BatchRemoveFacetFromObjectResponse]
    # @!attribute attach_policy
    #   <p>Attaches a policy object to a regular object. An object can have a limited number of attached
    #          policies.</p>
    #   @return [Types::BatchAttachPolicyResponse]
    # @!attribute detach_policy
    #   <p>Detaches a policy from a <a>Directory</a>.</p>
    #   @return [Types::BatchDetachPolicyResponse]
    # @!attribute create_index
    #   <p>Creates an index object. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm">Indexing and search</a> for more information.</p>
    #   @return [Types::BatchCreateIndexResponse]
    # @!attribute attach_to_index
    #   <p>Attaches the specified object to the specified index.</p>
    #   @return [Types::BatchAttachToIndexResponse]
    # @!attribute detach_from_index
    #   <p>Detaches the specified object from the specified index.</p>
    #   @return [Types::BatchDetachFromIndexResponse]
    # @!attribute attach_typed_link
    #   <p>Attaches a typed link to a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [Types::BatchAttachTypedLinkResponse]
    # @!attribute detach_typed_link
    #   <p>Detaches a typed link from a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [Types::BatchDetachTypedLinkResponse]
    # @!attribute update_link_attributes
    #   <p>Represents the output of a <code>BatchWrite</code> response operation.</p>
    #   @return [Types::BatchUpdateLinkAttributesResponse]
    class BatchWriteOperationResponse < Struct.new(
      :create_object,
      :attach_object,
      :detach_object,
      :update_object_attributes,
      :delete_object,
      :add_facet_to_object,
      :remove_facet_from_object,
      :attach_policy,
      :detach_policy,
      :create_index,
      :attach_to_index,
      :detach_from_index,
      :attach_typed_link,
      :detach_typed_link,
      :update_link_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute operations
    #   <p>A list of operations that are part of the batch.</p>
    #   @return [Array<Types::BatchWriteOperation>]
    class BatchWriteRequest < Struct.new(
      :directory_arn,
      :operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute responses
    #   <p>A list of all the responses for each batch write.</p>
    #   @return [Array<Types::BatchWriteOperationResponse>]
    class BatchWriteResponse < Struct.new(
      :responses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cannot list the parents of a <a>Directory</a> root.</p>
    # @!attribute message
    #   @return [String]
    class CannotListParentOfRootException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the <a>Directory</a>. Should be unique per account, per
    #         region.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the published schema that will be copied into the
    #         data <a>Directory</a>. For more information, see <a>arns</a>.</p>
    #   @return [String]
    class CreateDirectoryRequest < Struct.new(
      :name,
      :schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN that is associated with the <a>Directory</a>. For more information,
    #         see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <a>Directory</a>.</p>
    #   @return [String]
    # @!attribute object_identifier
    #   <p>The root object node of the created directory.</p>
    #   @return [String]
    # @!attribute applied_schema_arn
    #   <p>The ARN of the published schema in the <a>Directory</a>. Once a published
    #         schema is copied into the directory, it has its own ARN, which is referred to applied schema
    #         ARN. For more information, see <a>arns</a>.</p>
    #   @return [String]
    class CreateDirectoryResponse < Struct.new(
      :directory_arn,
      :name,
      :object_identifier,
      :applied_schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The schema ARN in which the new <a>Facet</a> will be created. For more
    #         information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <a>Facet</a>, which is unique for a given schema.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The attributes that are associated with the <a>Facet</a>.</p>
    #   @return [Array<Types::FacetAttribute>]
    # @!attribute object_type
    #   <p>Specifies whether a given object created from this facet is of type node, leaf node,
    #         policy or index.</p>
    #            <ul>
    #               <li>
    #                  <p>Node: Can have multiple children but one parent.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Leaf node: Cannot have children but can have multiple parents.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Policy: Allows you to store a policy document and policy type. For more
    #           information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Index: Can be created with the Index API.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute facet_style
    #   <p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>
    #   @return [String]
    class CreateFacetRequest < Struct.new(
      :schema_arn,
      :name,
      :attributes,
      :object_type,
      :facet_style,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateFacetResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory where the index should be created.</p>
    #   @return [String]
    # @!attribute ordered_indexed_attribute_list
    #   <p>Specifies the attributes that should be indexed on. Currently only a single attribute
    #         is supported.</p>
    #   @return [Array<Types::AttributeKey>]
    # @!attribute is_unique
    #   <p>Indicates whether the attribute that is being indexed has unique values or
    #         not.</p>
    #   @return [Boolean]
    # @!attribute parent_reference
    #   <p>A reference to the parent object that contains the index object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute link_name
    #   <p>The name of the link between the parent object and the index object.</p>
    #   @return [String]
    class CreateIndexRequest < Struct.new(
      :directory_arn,
      :ordered_indexed_attribute_list,
      :is_unique,
      :parent_reference,
      :link_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>
    #   @return [String]
    class CreateIndexResponse < Struct.new(
      :object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         in which the object will be created. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute schema_facets
    #   <p>A list of schema facets to be associated with the object. Do not provide minor version components. See <a>SchemaFacet</a> for details.</p>
    #   @return [Array<Types::SchemaFacet>]
    # @!attribute object_attribute_list
    #   <p>The attribute map whose attribute ARN contains the key and attribute value as the map
    #         value.</p>
    #   @return [Array<Types::AttributeKeyAndValue>]
    # @!attribute parent_reference
    #   <p>If specified, the parent reference to which this object will be attached.</p>
    #   @return [Types::ObjectReference]
    # @!attribute link_name
    #   <p>The name of link that is used to attach this object to a parent.</p>
    #   @return [String]
    class CreateObjectRequest < Struct.new(
      :directory_arn,
      :schema_facets,
      :object_attribute_list,
      :parent_reference,
      :link_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_identifier
    #   <p>The identifier that is associated with the object.</p>
    #   @return [String]
    class CreateObjectResponse < Struct.new(
      :object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name that is associated with the schema. This is unique to each account and in each
    #         region.</p>
    #   @return [String]
    class CreateSchemaRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #   @return [String]
    class CreateSchemaResponse < Struct.new(
      :schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute facet
    #   <p>
    #               <a>Facet</a> structure that is associated with the typed link
    #         facet.</p>
    #   @return [Types::TypedLinkFacet]
    class CreateTypedLinkFacetRequest < Struct.new(
      :schema_arn,
      :facet,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateTypedLinkFacetResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory to delete.</p>
    #   @return [String]
    class DeleteDirectoryRequest < Struct.new(
      :directory_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the deleted directory.</p>
    #   @return [String]
    class DeleteDirectoryResponse < Struct.new(
      :directory_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the facet to delete.</p>
    #   @return [String]
    class DeleteFacetRequest < Struct.new(
      :schema_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteFacetResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>A reference that identifies the object.</p>
    #   @return [Types::ObjectReference]
    class DeleteObjectRequest < Struct.new(
      :directory_arn,
      :object_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteObjectResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the development schema. For more information, see
    #           <a>arns</a>.</p>
    #   @return [String]
    class DeleteSchemaRequest < Struct.new(
      :schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The input ARN that is returned as part of the response. For more information, see
    #           <a>arns</a>.</p>
    #   @return [String]
    class DeleteSchemaResponse < Struct.new(
      :schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique name of the typed link facet.</p>
    #   @return [String]
    class DeleteTypedLinkFacetRequest < Struct.new(
      :schema_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTypedLinkFacetResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory the index and object exist
    #         in.</p>
    #   @return [String]
    # @!attribute index_reference
    #   <p>A reference to the index object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute target_reference
    #   <p>A reference to the object being detached from the index.</p>
    #   @return [Types::ObjectReference]
    class DetachFromIndexRequest < Struct.new(
      :directory_arn,
      :index_reference,
      :target_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>
    #   @return [String]
    class DetachFromIndexResponse < Struct.new(
      :detached_object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute parent_reference
    #   <p>The parent reference from which the object with the specified link name is
    #         detached.</p>
    #   @return [Types::ObjectReference]
    # @!attribute link_name
    #   <p>The link name associated with the object that needs to be detached.</p>
    #   @return [String]
    class DetachObjectRequest < Struct.new(
      :directory_arn,
      :parent_reference,
      :link_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detached_object_identifier
    #   <p>The <code>ObjectIdentifier</code> that was detached from the object.</p>
    #   @return [String]
    class DetachObjectResponse < Struct.new(
      :detached_object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute policy_reference
    #   <p>Reference that identifies the policy object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose policy object will be detached.</p>
    #   @return [Types::ObjectReference]
    class DetachPolicyRequest < Struct.new(
      :directory_arn,
      :policy_reference,
      :object_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DetachPolicyResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to detach the typed
    #         link.</p>
    #   @return [String]
    # @!attribute typed_link_specifier
    #   <p>Used to accept a typed link specifier as input.</p>
    #   @return [Types::TypedLinkSpecifier]
    class DetachTypedLinkRequest < Struct.new(
      :directory_arn,
      :typed_link_specifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Directory structure that includes the directory name and directory ARN.</p>
    # @!attribute name
    #   <p>The name of the directory.</p>
    #   @return [String]
    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the directory. For more
    #         information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the directory. Can be either <code>Enabled</code>, <code>Disabled</code>, or <code>Deleted</code>.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time when the directory was created.</p>
    #   @return [Time]
    class Directory < Struct.new(
      :name,
      :directory_arn,
      :state,
      :creation_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a <a>Directory</a> could not be created due to a naming
    #       conflict. Choose a different name and try again.</p>
    # @!attribute message
    #   @return [String]
    class DirectoryAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A directory that has been deleted and to which access has been attempted. Note: The
    #       requested resource will eventually cease to exist.</p>
    # @!attribute message
    #   @return [String]
    class DirectoryDeletedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An operation can only operate on a disabled directory.</p>
    # @!attribute message
    #   @return [String]
    class DirectoryNotDisabledException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Operations are only permitted on enabled directories.</p>
    # @!attribute message
    #   @return [String]
    class DirectoryNotEnabledException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory to disable.</p>
    #   @return [String]
    class DisableDirectoryRequest < Struct.new(
      :directory_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory that has been disabled.</p>
    #   @return [String]
    class DisableDirectoryResponse < Struct.new(
      :directory_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory to enable.</p>
    #   @return [String]
    class EnableDirectoryRequest < Struct.new(
      :directory_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the enabled directory.</p>
    #   @return [String]
    class EnableDirectoryResponse < Struct.new(
      :directory_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains <code>Name</code>, <code>ARN</code>, <code>Attributes</code>, <code>
    #                <a>Rule</a>s</code>, and
    #       <code>ObjectTypes</code>. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_whatarefacets.html">Facets</a> for more information.</p>
    # @!attribute name
    #   <p>The name of the <a>Facet</a>.</p>
    #   @return [String]
    # @!attribute object_type
    #   <p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>
    #   @return [String]
    # @!attribute facet_style
    #   <p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>
    #   @return [String]
    class Facet < Struct.new(
      :name,
      :object_type,
      :facet_style,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A facet with the same name already exists.</p>
    # @!attribute message
    #   @return [String]
    class FacetAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An attribute that is associated with the <a>Facet</a>.</p>
    # @!attribute name
    #   <p>The name of the facet attribute.</p>
    #   @return [String]
    # @!attribute attribute_definition
    #   <p>A facet attribute consists of either a definition or a reference. This structure
    #         contains the attribute definition. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
    #   @return [Types::FacetAttributeDefinition]
    # @!attribute attribute_reference
    #   <p>An attribute reference that is associated with the attribute. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
    #   @return [Types::FacetAttributeReference]
    # @!attribute required_behavior
    #   <p>The required behavior of the <code>FacetAttribute</code>.</p>
    #   @return [String]
    class FacetAttribute < Struct.new(
      :name,
      :attribute_definition,
      :attribute_reference,
      :required_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A facet attribute definition. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
    # @!attribute type
    #   <p>The type of the attribute.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of the attribute (if configured).</p>
    #   @return [Types::TypedAttributeValue]
    # @!attribute is_immutable
    #   <p>Whether the attribute is mutable or not.</p>
    #   @return [Boolean]
    # @!attribute rules
    #   <p>Validation rules attached to the attribute definition.</p>
    #   @return [Hash<String, Types::Rule>]
    class FacetAttributeDefinition < Struct.new(
      :type,
      :default_value,
      :is_immutable,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_immutable] = false unless options.key?(:is_immutable)
        super
      end
    end

    # <p>The facet attribute reference that specifies the attribute definition that contains the
    #       attribute facet name and attribute name.</p>
    # @!attribute target_facet_name
    #   <p>The target facet name that is associated with the facet reference. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
    #   @return [String]
    # @!attribute target_attribute_name
    #   <p>The target attribute name that is associated with the facet reference. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
    #   @return [String]
    class FacetAttributeReference < Struct.new(
      :target_facet_name,
      :target_attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information used to update an attribute.</p>
    # @!attribute attribute
    #   <p>The attribute to update.</p>
    #   @return [Types::FacetAttribute]
    # @!attribute action
    #   <p>The action to perform when updating the attribute.</p>
    #   @return [String]
    class FacetAttributeUpdate < Struct.new(
      :attribute,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Occurs when deleting a facet that contains an attribute that is a target to an
    #       attribute reference in a different facet.</p>
    # @!attribute message
    #   @return [String]
    class FacetInUseException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified <a>Facet</a> could not be found.</p>
    # @!attribute message
    #   @return [String]
    class FacetNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <a>Facet</a> that you provided was not well formed or could not be
    #       validated with the schema.</p>
    # @!attribute message
    #   @return [String]
    class FacetValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The ARN of the applied schema.</p>
    #   @return [String]
    class GetAppliedSchemaVersionRequest < Struct.new(
      :schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute applied_schema_arn
    #   <p>Current applied schema ARN, including the minor version in use if one was provided.</p>
    #   @return [String]
    class GetAppliedSchemaVersionResponse < Struct.new(
      :applied_schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory.</p>
    #   @return [String]
    class GetDirectoryRequest < Struct.new(
      :directory_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory
    #   <p>Metadata about the directory.</p>
    #   @return [Types::Directory]
    class GetDirectoryResponse < Struct.new(
      :directory,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the facet to retrieve.</p>
    #   @return [String]
    class GetFacetRequest < Struct.new(
      :schema_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute facet
    #   <p>The <a>Facet</a> structure that is associated with the facet.</p>
    #   @return [Types::Facet]
    class GetFacetResponse < Struct.new(
      :facet,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see <a>arns</a> or <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [String]
    # @!attribute typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    #   @return [Types::TypedLinkSpecifier]
    # @!attribute attribute_names
    #   <p>A list of attribute names whose values will be retrieved.</p>
    #   @return [Array<String>]
    # @!attribute consistency_level
    #   <p>The consistency level at which to retrieve the attributes on a typed link.</p>
    #   @return [String]
    class GetLinkAttributesRequest < Struct.new(
      :directory_arn,
      :typed_link_specifier,
      :attribute_names,
      :consistency_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>The attributes that are associated with the typed link.</p>
    #   @return [Array<Types::AttributeKeyAndValue>]
    class GetLinkAttributesResponse < Struct.new(
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose attributes will be retrieved.</p>
    #   @return [Types::ObjectReference]
    # @!attribute consistency_level
    #   <p>The consistency level at which to retrieve the attributes on an object.</p>
    #   @return [String]
    # @!attribute schema_facet
    #   <p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>
    #   @return [Types::SchemaFacet]
    # @!attribute attribute_names
    #   <p>List of attribute names whose values will be retrieved.</p>
    #   @return [Array<String>]
    class GetObjectAttributesRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :consistency_level,
      :schema_facet,
      :attribute_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>The attributes that are associated with the object.</p>
    #   @return [Array<Types::AttributeKeyAndValue>]
    class GetObjectAttributesResponse < Struct.new(
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory being retrieved.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>A reference to the object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute consistency_level
    #   <p>The consistency level at which to retrieve the object information.</p>
    #   @return [String]
    class GetObjectInformationRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :consistency_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_facets
    #   <p>The facets attached to the specified object. Although the response does not include minor version information, the most recently applied minor version of each Facet is in effect. See <a>GetAppliedSchemaVersion</a> for details.</p>
    #   @return [Array<Types::SchemaFacet>]
    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the specified object.</p>
    #   @return [String]
    class GetObjectInformationResponse < Struct.new(
      :schema_facets,
      :object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The ARN of the schema to retrieve.</p>
    #   @return [String]
    class GetSchemaAsJsonRequest < Struct.new(
      :schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the retrieved schema.</p>
    #   @return [String]
    # @!attribute document
    #   <p>The JSON representation of the schema document.</p>
    #   @return [String]
    class GetSchemaAsJsonResponse < Struct.new(
      :name,
      :document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique name of the typed link facet.</p>
    #   @return [String]
    class GetTypedLinkFacetInformationRequest < Struct.new(
      :schema_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_attribute_order
    #   <p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed
    #         links considers the order that the attributes are defined on the typed link facet. When
    #         providing ranges to typed link selection, any inexact ranges must be specified at the end. Any
    #         attributes that do not have a range specified are presumed to match the entire range. Filters
    #         are interpreted in the order of the attributes on the typed link facet, not the order in which
    #         they are supplied to any API calls. For more information about identity attributes, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [Array<String>]
    class GetTypedLinkFacetInformationResponse < Struct.new(
      :identity_attribute_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates a failure occurred while performing a check for backward compatibility between the specified schema and the schema that is currently applied to the directory.</p>
    # @!attribute message
    #   @return [String]
    class IncompatibleSchemaException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an index and an attached object.</p>
    # @!attribute indexed_attributes
    #   <p>The indexed attribute values.</p>
    #   @return [Array<Types::AttributeKeyAndValue>]
    # @!attribute object_identifier
    #   <p>In response to <a>ListIndex</a>, the <code>ObjectIdentifier</code> of the object attached to the index. In response to <a>ListAttachedIndices</a>, the <code>ObjectIdentifier</code> of the index attached to the object. This field will always contain the <code>ObjectIdentifier</code> of the object on the opposite side of the attachment specified in the query.</p>
    #   @return [String]
    class IndexAttachment < Struct.new(
      :indexed_attributes,
      :object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object has been attempted to be attached to an object that does not have the appropriate attribute value.</p>
    # @!attribute message
    #   @return [String]
    class IndexedAttributeMissingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates a problem that must be resolved by Amazon Web Services. This might be a transient error in which case you can retry your request until it succeeds. Otherwise, go to the <a href="http://status.aws.amazon.com/">AWS Service Health Dashboard</a> site to see if there are any operational issues with the service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the provided ARN value is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidArnException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that an attempt to make an attachment was invalid. For example, attaching two nodes 
    #       with a link type that is not applicable to the nodes or attempting to apply a schema to a directory a second time.</p>
    # @!attribute message
    #   @return [String]
    class InvalidAttachmentException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An attempt to modify a <a>Facet</a> resulted in an invalid schema
    #       exception.</p>
    # @!attribute message
    #   @return [String]
    class InvalidFacetUpdateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the <code>NextToken</code> value is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Occurs when any of the rule parameter keys or values are invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRuleException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the provided <code>SchemaDoc</code> value is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSchemaDocException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Can occur for multiple reasons such as when you tag a resource that doesn’t exist or if you specify a higher number of tags for a resource than the allowed limit. Allowed limit is 50 tags per resource.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTaggingRequestException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that limits are exceeded. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html">Limits</a> for more information.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The action to take on a typed link attribute value. Updates are only supported for attributes which don’t contribute to link identity.</p>
    # @!attribute attribute_action_type
    #   <p>A type that can be either <code>UPDATE_OR_CREATE</code> or <code>DELETE</code>.</p>
    #   @return [String]
    # @!attribute attribute_update_value
    #   <p>The value that you want to update to.</p>
    #   @return [Types::TypedAttributeValue]
    class LinkAttributeAction < Struct.new(
      :attribute_action_type,
      :attribute_update_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure that contains attribute update information.</p>
    # @!attribute attribute_key
    #   <p>The key of the attribute being updated.</p>
    #   @return [Types::AttributeKey]
    # @!attribute attribute_action
    #   <p>The action to perform as part of the attribute update.</p>
    #   @return [Types::LinkAttributeAction]
    class LinkAttributeUpdate < Struct.new(
      :attribute_key,
      :attribute_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a link could not be created due to a naming conflict. Choose a different
    #       name and then try again.</p>
    # @!attribute message
    #   @return [String]
    class LinkNameAlreadyInUseException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory you are listing.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The response for <code>ListAppliedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class ListAppliedSchemaArnsRequest < Struct.new(
      :directory_arn,
      :schema_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arns
    #   <p>The ARNs of schemas that are applied to the directory.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListAppliedSchemaArnsResponse < Struct.new(
      :schema_arns,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory.</p>
    #   @return [String]
    # @!attribute target_reference
    #   <p>A reference to the object that has indices attached.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    # @!attribute consistency_level
    #   <p>The consistency level to use for this operation.</p>
    #   @return [String]
    class ListAttachedIndicesRequest < Struct.new(
      :directory_arn,
      :target_reference,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_attachments
    #   <p>The indices attached to the specified object.</p>
    #   @return [Array<Types::IndexAttachment>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListAttachedIndicesResponse < Struct.new(
      :index_attachments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class ListDevelopmentSchemaArnsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arns
    #   <p>The ARNs of retrieved development schemas.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListDevelopmentSchemaArnsResponse < Struct.new(
      :schema_arns,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the directories in the list. Can be either Enabled, Disabled, or
    #         Deleted.</p>
    #   @return [String]
    class ListDirectoriesRequest < Struct.new(
      :next_token,
      :max_results,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directories
    #   <p>Lists all directories that are associated with your account in pagination
    #         fashion.</p>
    #   @return [Array<Types::Directory>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListDirectoriesResponse < Struct.new(
      :directories,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The ARN of the schema where the facet resides.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the facet whose attributes will be retrieved.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class ListFacetAttributesRequest < Struct.new(
      :schema_arn,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>The attributes attached to the facet.</p>
    #   @return [Array<Types::FacetAttribute>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListFacetAttributesResponse < Struct.new(
      :attributes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) to retrieve facet names from.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class ListFacetNamesRequest < Struct.new(
      :schema_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute facet_names
    #   <p>The names of facets that exist within the schema.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListFacetNamesResponse < Struct.new(
      :facet_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed
    #         links.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose attributes will be listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #         selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #         range specified are presumed to match the entire range.</p>
    #   @return [Array<Types::TypedLinkAttributeRange>]
    # @!attribute filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes on the typed link facet, not the
    #         order in which they are supplied to any API calls.</p>
    #   @return [Types::TypedLinkSchemaAndFacetName]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    # @!attribute consistency_level
    #   <p>The consistency level to execute the request at.</p>
    #   @return [String]
    class ListIncomingTypedLinksRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_specifiers
    #   <p>Returns one or more typed link specifiers as output.</p>
    #   @return [Array<Types::TypedLinkSpecifier>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListIncomingTypedLinksResponse < Struct.new(
      :link_specifiers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory that the index exists in.</p>
    #   @return [String]
    # @!attribute ranges_on_indexed_values
    #   <p>Specifies the ranges of indexed values that you want to query.</p>
    #   @return [Array<Types::ObjectAttributeRange>]
    # @!attribute index_reference
    #   <p>The reference to the index to list.</p>
    #   @return [Types::ObjectReference]
    # @!attribute max_results
    #   <p>The maximum number of objects in a single page to retrieve from the index during a request. For more information, see <a href="http://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html">Amazon Cloud Directory Limits</a>.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute consistency_level
    #   <p>The consistency level to execute the request at.</p>
    #   @return [String]
    class ListIndexRequest < Struct.new(
      :directory_arn,
      :ranges_on_indexed_values,
      :index_reference,
      :max_results,
      :next_token,
      :consistency_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_attachments
    #   <p>The objects and indexed values attached to the index.</p>
    #   @return [Array<Types::IndexAttachment>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListIndexResponse < Struct.new(
      :index_attachments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The response for ListManagedSchemaArns. When this parameter is used, all minor version ARNs for a major version are listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class ListManagedSchemaArnsRequest < Struct.new(
      :schema_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arns
    #   <p>The ARNs for all AWS managed schemas.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListManagedSchemaArnsResponse < Struct.new(
      :schema_arns,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #   @return [Integer]
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #   @return [String]
    # @!attribute facet_filter
    #   <p>Used to filter the list of object attributes that are associated with a certain
    #         facet.</p>
    #   @return [Types::SchemaFacet]
    class ListObjectAttributesRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level,
      :facet_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>Attributes map that is associated with the object. <code>AttributeArn</code> is the
    #         key, and attribute value is the value.</p>
    #   @return [Array<Types::AttributeKeyAndValue>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListObjectAttributesResponse < Struct.new(
      :attributes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>The reference that identifies the object for which child objects are being
    #         listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #   @return [Integer]
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #   @return [String]
    class ListObjectChildrenRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute children
    #   <p>Children structure, which is a map with key as the <code>LinkName</code> and
    #           <code>ObjectIdentifier</code> as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListObjectChildrenResponse < Struct.new(
      :children,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory to which the parent path applies.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>The reference that identifies the object whose parent paths are listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #   @return [Integer]
    class ListObjectParentPathsRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute path_to_object_identifiers_list
    #   <p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the
    #         directory.</p>
    #   @return [Array<Types::PathToObjectIdentifiers>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListObjectParentPathsResponse < Struct.new(
      :path_to_object_identifiers_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>The reference that identifies the object for which parent objects are being
    #         listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #   @return [Integer]
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #   @return [String]
    # @!attribute include_all_links_to_each_parent
    #   <p>When set to True, returns all <a>ListObjectParentsResponse$ParentLinks</a>. There could be multiple links between a parent-child pair.</p>
    #   @return [Boolean]
    class ListObjectParentsRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level,
      :include_all_links_to_each_parent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute parents
    #   <p>The parent structure, which is a map with key as the <code>ObjectIdentifier</code> and
    #         LinkName as the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute parent_links
    #   <p>Returns a list of parent reference and LinkName Tuples.</p>
    #   @return [Array<Types::ObjectIdentifierAndLinkNameTuple>]
    class ListObjectParentsResponse < Struct.new(
      :parents,
      :next_token,
      :parent_links,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>Reference that identifies the object for which policies will be listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #   @return [Integer]
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #   @return [String]
    class ListObjectPoliciesRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attached_policy_ids
    #   <p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the
    #         object.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListObjectPoliciesResponse < Struct.new(
      :attached_policy_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed
    #         links.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>A reference that identifies the object whose attributes will be listed.</p>
    #   @return [Types::ObjectReference]
    # @!attribute filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #         selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #         range specified are presumed to match the entire range.</p>
    #   @return [Array<Types::TypedLinkAttributeRange>]
    # @!attribute filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes defined on the typed link facet,
    #         not the order they are supplied to any API calls.</p>
    #   @return [Types::TypedLinkSchemaAndFacetName]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    # @!attribute consistency_level
    #   <p>The consistency level to execute the request at.</p>
    #   @return [String]
    class ListOutgoingTypedLinksRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute typed_link_specifiers
    #   <p>Returns a typed link specifier as output.</p>
    #   @return [Array<Types::TypedLinkSpecifier>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListOutgoingTypedLinksResponse < Struct.new(
      :typed_link_specifiers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute policy_reference
    #   <p>The reference that identifies the policy object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #   @return [Integer]
    # @!attribute consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #   @return [String]
    class ListPolicyAttachmentsRequest < Struct.new(
      :directory_arn,
      :policy_reference,
      :next_token,
      :max_results,
      :consistency_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_identifiers
    #   <p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListPolicyAttachmentsResponse < Struct.new(
      :object_identifiers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The response for <code>ListPublishedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class ListPublishedSchemaArnsRequest < Struct.new(
      :schema_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arns
    #   <p>The ARNs of published schemas.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListPublishedSchemaArnsResponse < Struct.new(
      :schema_arns,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token. This is for future use. Currently pagination is not supported for
    #         tagging.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The <code>MaxResults</code> parameter sets the maximum number of results returned in a
    #         single page. This is for future use and is not supported currently.</p>
    #   @return [Integer]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key value pairs that are associated with the response.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique name of the typed link facet.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class ListTypedLinkFacetAttributesRequest < Struct.new(
      :schema_arn,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>An ordered set of attributes associate with the typed link.</p>
    #   @return [Array<Types::TypedLinkAttributeDefinition>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListTypedLinkFacetAttributesResponse < Struct.new(
      :attributes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve.</p>
    #   @return [Integer]
    class ListTypedLinkFacetNamesRequest < Struct.new(
      :schema_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute facet_names
    #   <p>The names of typed link facets that exist within the schema.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class ListTypedLinkFacetNamesResponse < Struct.new(
      :facet_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>Reference that identifies the object whose policies will be looked up.</p>
    #   @return [Types::ObjectReference]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #   @return [Integer]
    class LookupPolicyRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_to_path_list
    #   <p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and
    #         <code>PolicyType</code>. For more
    #         information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
    #   @return [Array<Types::PolicyToPath>]
    # @!attribute next_token
    #   <p>The pagination token.</p>
    #   @return [String]
    class LookupPolicyResponse < Struct.new(
      :policy_to_path_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the requested operation can only operate on index objects.</p>
    # @!attribute message
    #   @return [String]
    class NotIndexException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Occurs when any invalid operations are performed on an object that is not a node, such
    #       as calling <code>ListObjectChildren</code> for a leaf node object.</p>
    # @!attribute message
    #   @return [String]
    class NotNodeException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the requested operation can only operate on policy objects.</p>
    # @!attribute message
    #   @return [String]
    class NotPolicyException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the object is not attached to the index.</p>
    # @!attribute message
    #   @return [String]
    class ObjectAlreadyDetachedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The action to take on the object attribute.</p>
    # @!attribute object_attribute_action_type
    #   <p>A type that can be either <code>Update</code> or <code>Delete</code>.</p>
    #   @return [String]
    # @!attribute object_attribute_update_value
    #   <p>The value that you want to update to.</p>
    #   @return [Types::TypedAttributeValue]
    class ObjectAttributeAction < Struct.new(
      :object_attribute_action_type,
      :object_attribute_update_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A range of attributes.</p>
    # @!attribute attribute_key
    #   <p>The key of the attribute that the attribute range covers.</p>
    #   @return [Types::AttributeKey]
    # @!attribute range
    #   <p>The range of attribute values being selected.</p>
    #   @return [Types::TypedAttributeValueRange]
    class ObjectAttributeRange < Struct.new(
      :attribute_key,
      :range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure that contains attribute update information.</p>
    # @!attribute object_attribute_key
    #   <p>The key of the attribute being updated.</p>
    #   @return [Types::AttributeKey]
    # @!attribute object_attribute_action
    #   <p>The action to perform as part of the attribute update.</p>
    #   @return [Types::ObjectAttributeAction]
    class ObjectAttributeUpdate < Struct.new(
      :object_attribute_key,
      :object_attribute_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pair of ObjectIdentifier and LinkName.</p>
    # @!attribute object_identifier
    #   <p>The ID that is associated with the object.</p>
    #   @return [String]
    # @!attribute link_name
    #   <p>The name of the link between the parent and the child object.</p>
    #   @return [String]
    class ObjectIdentifierAndLinkNameTuple < Struct.new(
      :object_identifier,
      :link_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the requested operation cannot be completed because the object has not
    #       been detached from the tree.</p>
    # @!attribute message
    #   @return [String]
    class ObjectNotDetachedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The reference that identifies an object.</p>
    # @!attribute selector
    #   <p>A path selector supports easy selection of an object by the parent/child links leading to it from the directory root. Use the link names from each parent/child link to construct the path. Path selectors start with a slash (/) and link names are separated by slashes. For more information about paths, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_access_objects.html">Access Objects</a>. You can identify an object in one of the following ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>$ObjectIdentifier</i> - An object identifier is an opaque string provided by Amazon Cloud Directory. When creating objects, the system will provide you with the identifier of the created object. An object’s identifier is immutable and no two objects will ever share the same object identifier. To identify an object with ObjectIdentifier, the ObjectIdentifier must be wrapped in double quotes. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>/some/path</i> - Identifies the object based on path</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>#SomeBatchReference</i> - Identifies the object in a batch call</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ObjectReference < Struct.new(
      :selector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the path to the <code>ObjectIdentifiers</code> that is associated with the
    #       directory.</p>
    # @!attribute path
    #   <p>The path that is used to identify the object starting from directory root.</p>
    #   @return [String]
    # @!attribute object_identifiers
    #   <p>Lists <code>ObjectIdentifiers</code> starting from directory root to the object in the
    #         request.</p>
    #   @return [Array<String>]
    class PathToObjectIdentifiers < Struct.new(
      :path,
      :object_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the <code>PolicyType</code>, <code>PolicyId</code>, and the <code>ObjectIdentifier</code> to which it is
    #       attached. For more
    #       information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
    # @!attribute policy_id
    #   <p>The ID of <code>PolicyAttachment</code>.</p>
    #   @return [String]
    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> that is associated with
    #         <code>PolicyAttachment</code>.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of policy that can be associated with <code>PolicyAttachment</code>.</p>
    #   @return [String]
    class PolicyAttachment < Struct.new(
      :policy_id,
      :object_identifier,
      :policy_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used when a regular object exists in a <a>Directory</a> and you want to find
    #       all of the policies that are associated with that object and the parent to that
    #       object.</p>
    # @!attribute path
    #   <p>The path that is referenced from the root.</p>
    #   @return [String]
    # @!attribute policies
    #   <p>List of policy objects.</p>
    #   @return [Array<Types::PolicyAttachment>]
    class PolicyToPath < Struct.new(
      :path,
      :policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute development_schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the development schema. For
    #         more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The major version under which the schema will be published. Schemas have both a major and minor version associated with them.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>The minor version under which the schema will be published. This parameter is recommended. Schemas have both a major and minor version associated with them.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name under which the schema will be published. If this is not provided, the
    #         development schema is considered.</p>
    #   @return [String]
    class PublishSchemaRequest < Struct.new(
      :development_schema_arn,
      :version,
      :minor_version,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute published_schema_arn
    #   <p>The ARN that is associated with the published schema. For more information, see <a>arns</a>.</p>
    #   @return [String]
    class PublishSchemaResponse < Struct.new(
      :published_schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The ARN of the schema to update.</p>
    #   @return [String]
    # @!attribute document
    #   <p>The replacement JSON schema.</p>
    #   @return [String]
    class PutSchemaFromJsonRequest < Struct.new(
      :schema_arn,
      :document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the schema to update.</p>
    #   @return [String]
    class PutSchemaFromJsonResponse < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The ARN of the directory in which the object resides.</p>
    #   @return [String]
    # @!attribute schema_facet
    #   <p>The facet to remove. See <a>SchemaFacet</a> for details.</p>
    #   @return [Types::SchemaFacet]
    # @!attribute object_reference
    #   <p>A reference to the object to remove the facet from.</p>
    #   @return [Types::ObjectReference]
    class RemoveFacetFromObjectRequest < Struct.new(
      :directory_arn,
      :schema_facet,
      :object_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RemoveFacetFromObjectResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Occurs when a conflict with a previous successful write is detected. For example, if a write operation occurs on an object and then an attempt is made to read the object using “SERIALIZABLE” consistency, this exception may result. This generally occurs when the previous write did not have time to propagate to the host serving the current request. A retry (with appropriate backoff logic) is the recommended response to this exception.</p>
    # @!attribute message
    #   @return [String]
    class RetryableConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an Amazon Resource Name (ARN) and parameters that are associated with the
    #       rule.</p>
    # @!attribute type
    #   <p>The type of attribute validation rule.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The minimum and maximum parameters that are associated with the rule.</p>
    #   @return [Hash<String, String>]
    class Rule < Struct.new(
      :type,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a schema could not be created due to a naming conflict. Please select a
    #       different name and then try again.</p>
    # @!attribute message
    #   @return [String]
    class SchemaAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a schema is already published.</p>
    # @!attribute message
    #   @return [String]
    class SchemaAlreadyPublishedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A facet.</p>
    # @!attribute schema_arn
    #   <p>The ARN of the schema that contains the facet with no minor component. See <a>arns</a> and <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_inplaceschemaupgrade.html">In-Place Schema Upgrade</a> for a description of when to provide minor versions.
    #        If this value is set, FacetName must also be set.</p>
    #   @return [String]
    # @!attribute facet_name
    #   <p>The name of the facet. If this value is set, SchemaArn must also be set.</p>
    #   @return [String]
    class SchemaFacet < Struct.new(
      :schema_arn,
      :facet_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The object could not be deleted because links still exist. Remove the links and then
    #       try the operation again.</p>
    # @!attribute message
    #   @return [String]
    class StillContainsLinksException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag structure that contains a tag key and value.</p>
    # @!attribute key
    #   <p>The key that is associated with the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that is associated with the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the data for a typed attribute. You can set one, and only one, of the
    #       elements. Each attribute in an item is a name-value pair. Attributes have a single
    #       value.</p>
    # @!attribute string_value
    #   <p>A string data value.</p>
    #   @return [String]
    # @!attribute binary_value
    #   <p>A binary data value.</p>
    #   @return [String]
    # @!attribute boolean_value
    #   <p>A Boolean data value.</p>
    #   @return [Boolean]
    # @!attribute number_value
    #   <p>A number data value.</p>
    #   @return [String]
    # @!attribute datetime_value
    #   <p>A date and time value.</p>
    #   @return [Time]
    class TypedAttributeValue < Struct.new(
      :string_value,
      :binary_value,
      :boolean_value,
      :number_value,
      :datetime_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValue < TypedAttributeValue; end
      class BinaryValue < TypedAttributeValue; end
      class BooleanValue < TypedAttributeValue; end
      class NumberValue < TypedAttributeValue; end
      class DatetimeValue < TypedAttributeValue; end
      class Unknown < TypedAttributeValue; end
    end

    # <p>A range of attribute values. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_range_filters.html">Range Filters</a>.</p>
    # @!attribute start_mode
    #   <p>The inclusive or exclusive range start.</p>
    #   @return [String]
    # @!attribute start_value
    #   <p>The value to start the range at.</p>
    #   @return [Types::TypedAttributeValue]
    # @!attribute end_mode
    #   <p>The inclusive or exclusive range end.</p>
    #   @return [String]
    # @!attribute end_value
    #   <p>The attribute value to terminate the range at.</p>
    #   @return [Types::TypedAttributeValue]
    class TypedAttributeValueRange < Struct.new(
      :start_mode,
      :start_value,
      :end_mode,
      :end_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A typed link attribute definition.</p>
    # @!attribute name
    #   <p>The unique name of the typed link attribute.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the attribute.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of the attribute (if configured).</p>
    #   @return [Types::TypedAttributeValue]
    # @!attribute is_immutable
    #   <p>Whether the attribute is mutable or not.</p>
    #   @return [Boolean]
    # @!attribute rules
    #   <p>Validation rules that are attached to the attribute definition.</p>
    #   @return [Hash<String, Types::Rule>]
    # @!attribute required_behavior
    #   <p>The required behavior of the <code>TypedLinkAttributeDefinition</code>.</p>
    #   @return [String]
    class TypedLinkAttributeDefinition < Struct.new(
      :name,
      :type,
      :default_value,
      :is_immutable,
      :rules,
      :required_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_immutable] = false unless options.key?(:is_immutable)
        super
      end
    end

    # <p>Identifies the range of attributes that are used by a specified filter.</p>
    # @!attribute attribute_name
    #   <p>The unique name of the typed link attribute.</p>
    #   @return [String]
    # @!attribute range
    #   <p>The range of attribute values that are being selected.</p>
    #   @return [Types::TypedAttributeValueRange]
    class TypedLinkAttributeRange < Struct.new(
      :attribute_name,
      :range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the typed links structure and its attributes. To create a typed link facet, use
    #       the <a>CreateTypedLinkFacet</a> API.</p>
    # @!attribute name
    #   <p>The unique name of the typed link facet.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A set of key-value pairs associated with the typed link. Typed link attributes are used when you have data values that are related to the link itself, and not to one of the two objects being linked. Identity attributes also serve to distinguish the link from others of the same type between the same objects.</p>
    #   @return [Array<Types::TypedLinkAttributeDefinition>]
    # @!attribute identity_attribute_order
    #   <p>The set of attributes that distinguish links made from this facet from each other, in the order of significance. Listing typed links can filter on the values of these attributes. See <a>ListOutgoingTypedLinks</a> and <a>ListIncomingTypedLinks</a> for details.</p>
    #   @return [Array<String>]
    class TypedLinkFacet < Struct.new(
      :name,
      :attributes,
      :identity_attribute_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A typed link facet attribute update.</p>
    # @!attribute attribute
    #   <p>The attribute to update.</p>
    #   @return [Types::TypedLinkAttributeDefinition]
    # @!attribute action
    #   <p>The action to perform when updating the attribute.</p>
    #   @return [String]
    class TypedLinkFacetAttributeUpdate < Struct.new(
      :attribute,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies the schema Amazon Resource Name (ARN) and facet name for the typed
    #       link.</p>
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute typed_link_name
    #   <p>The unique name of the typed link facet.</p>
    #   @return [String]
    class TypedLinkSchemaAndFacetName < Struct.new(
      :schema_arn,
      :typed_link_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all the information that is used to uniquely identify a typed link. The
    #       parameters discussed in this topic are used to uniquely specify the typed link being operated
    #       on. The <a>AttachTypedLink</a> API returns a typed link specifier while the <a>DetachTypedLink</a> API accepts one as input. Similarly, the <a>ListIncomingTypedLinks</a> and <a>ListOutgoingTypedLinks</a> API
    #       operations provide typed link specifiers as output. You can also construct a typed link
    #       specifier from scratch.</p>
    # @!attribute typed_link_facet
    #   <p>Identifies the typed link facet that is associated with the typed link.</p>
    #   @return [Types::TypedLinkSchemaAndFacetName]
    # @!attribute source_object_reference
    #   <p>Identifies the source object that the typed link will attach to.</p>
    #   @return [Types::ObjectReference]
    # @!attribute target_object_reference
    #   <p>Identifies the target object that the typed link will attach to.</p>
    #   @return [Types::ObjectReference]
    # @!attribute identity_attribute_values
    #   <p>Identifies the attribute value to update.</p>
    #   @return [Array<Types::AttributeNameAndValue>]
    class TypedLinkSpecifier < Struct.new(
      :typed_link_facet,
      :source_object_reference,
      :target_object_reference,
      :identity_attribute_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that the requested index type is not supported.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedIndexTypeException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Keys of the tag that need to be removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the facet.</p>
    #   @return [String]
    # @!attribute attribute_updates
    #   <p>List of attributes that need to be updated in a given schema <a>Facet</a>.
    #         Each attribute is followed by <code>AttributeAction</code>, which specifies the type of update
    #         operation to perform. </p>
    #   @return [Array<Types::FacetAttributeUpdate>]
    # @!attribute object_type
    #   <p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>
    #   @return [String]
    class UpdateFacetRequest < Struct.new(
      :schema_arn,
      :name,
      :attribute_updates,
      :object_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateFacetResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the Directory where the updated typed link resides. For more information, see <a>arns</a> or <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [String]
    # @!attribute typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    #   @return [Types::TypedLinkSpecifier]
    # @!attribute attribute_updates
    #   <p>The attributes update structure.</p>
    #   @return [Array<Types::LinkAttributeUpdate>]
    class UpdateLinkAttributesRequest < Struct.new(
      :directory_arn,
      :typed_link_specifier,
      :attribute_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateLinkAttributesResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute object_reference
    #   <p>The reference that identifies the object.</p>
    #   @return [Types::ObjectReference]
    # @!attribute attribute_updates
    #   <p>The attributes update structure.</p>
    #   @return [Array<Types::ObjectAttributeUpdate>]
    class UpdateObjectAttributesRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :attribute_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_identifier
    #   <p>The <code>ObjectIdentifier</code> of the updated object.</p>
    #   @return [String]
    class UpdateObjectAttributesResponse < Struct.new(
      :object_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the development schema. For more information, see
    #           <a>arns</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the schema.</p>
    #   @return [String]
    class UpdateSchemaRequest < Struct.new(
      :schema_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The ARN that is associated with the updated schema. For more information, see <a>arns</a>.</p>
    #   @return [String]
    class UpdateSchemaResponse < Struct.new(
      :schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique name of the typed link facet.</p>
    #   @return [String]
    # @!attribute attribute_updates
    #   <p>Attributes update structure.</p>
    #   @return [Array<Types::TypedLinkFacetAttributeUpdate>]
    # @!attribute identity_attribute_order
    #   <p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed
    #         links considers the order that the attributes are defined on the typed link facet.  When
    #         providing ranges to a typed link selection, any inexact ranges must be specified at the end.
    #         Any attributes that do not have a range specified are presumed to match the entire range.
    #         Filters are interpreted in the order of the attributes on the typed link facet, not the order
    #         in which they are supplied to any API calls. For more information about identity attributes, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #   @return [Array<String>]
    class UpdateTypedLinkFacetRequest < Struct.new(
      :schema_arn,
      :name,
      :attribute_updates,
      :identity_attribute_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateTypedLinkFacetResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute published_schema_arn
    #   <p>The revision of the published schema to upgrade the directory to.</p>
    #   @return [String]
    # @!attribute directory_arn
    #   <p>The ARN for the directory to which the upgraded schema will be applied.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.</p>
    #   @return [Boolean]
    class UpgradeAppliedSchemaRequest < Struct.new(
      :published_schema_arn,
      :directory_arn,
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute upgraded_schema_arn
    #   <p>The ARN of the upgraded schema that is returned as part of the response.</p>
    #   @return [String]
    # @!attribute directory_arn
    #   <p>The ARN of the directory that is returned as part of the response.</p>
    #   @return [String]
    class UpgradeAppliedSchemaResponse < Struct.new(
      :upgraded_schema_arn,
      :directory_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute development_schema_arn
    #   <p>The ARN of the development schema with the changes used for the upgrade.</p>
    #   @return [String]
    # @!attribute published_schema_arn
    #   <p>The ARN of the published schema to be upgraded.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>Identifies the minor version of the published schema that will be created. This parameter is NOT optional.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Used for testing whether the Development schema provided is backwards compatible, or not, with the publish schema provided by the user to be upgraded. If schema compatibility fails, an exception would be thrown else the call would succeed. This parameter is optional and defaults to false.</p>
    #   @return [Boolean]
    class UpgradePublishedSchemaRequest < Struct.new(
      :development_schema_arn,
      :published_schema_arn,
      :minor_version,
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute upgraded_schema_arn
    #   <p>The ARN of the upgraded schema that is returned as part of the response.</p>
    #   @return [String]
    class UpgradePublishedSchemaResponse < Struct.new(
      :upgraded_schema_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that your request is malformed in some manner. See the exception
    #       message.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
