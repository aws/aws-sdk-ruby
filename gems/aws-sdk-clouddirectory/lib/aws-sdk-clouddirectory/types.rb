# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudDirectory
  module Types

    # @note When making an API call, you may pass AddFacetToObjectRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         schema_facet: { # required
    #           schema_arn: "Arn",
    #           facet_name: "FacetName",
    #         },
    #         object_attribute_list: [
    #           {
    #             key: { # required
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             value: { # required
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now,
    #             },
    #           },
    #         ],
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where the object resides. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] schema_facet
    #   Identifiers for the facet that you are adding to the object. See
    #   SchemaFacet for details.
    #   @return [Types::SchemaFacet]
    #
    # @!attribute [rw] object_attribute_list
    #   Attributes on the facet that you are adding to the object.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @!attribute [rw] object_reference
    #   A reference to the object you are adding the specified facet to.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AddFacetToObjectRequest AWS API Documentation
    #
    class AddFacetToObjectRequest < Struct.new(
      :directory_arn,
      :schema_facet,
      :object_attribute_list,
      :object_reference)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AddFacetToObjectResponse AWS API Documentation
    #
    class AddFacetToObjectResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ApplySchemaRequest
    #   data as a hash:
    #
    #       {
    #         published_schema_arn: "Arn", # required
    #         directory_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] published_schema_arn
    #   Published schema Amazon Resource Name (ARN) that needs to be copied.
    #   For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   into which the schema is copied. For more information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ApplySchemaRequest AWS API Documentation
    #
    class ApplySchemaRequest < Struct.new(
      :published_schema_arn,
      :directory_arn)
      include Aws::Structure
    end

    # @!attribute [rw] applied_schema_arn
    #   The applied schema ARN that is associated with the copied schema in
    #   the Directory. You can use this ARN to describe the schema
    #   information applied on this directory. For more information, see
    #   arns.
    #   @return [String]
    #
    # @!attribute [rw] directory_arn
    #   The ARN that is associated with the Directory. For more information,
    #   see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ApplySchemaResponse AWS API Documentation
    #
    class ApplySchemaResponse < Struct.new(
      :applied_schema_arn,
      :directory_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachObjectRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         parent_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         child_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         link_name: "LinkName", # required
    #       }
    #
    # @!attribute [rw] directory_arn
    #   Amazon Resource Name (ARN) that is associated with the Directory
    #   where both objects reside. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] parent_reference
    #   The parent object reference.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] child_reference
    #   The child object reference to be attached to the object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] link_name
    #   The link name with which the child object is attached to the parent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachObjectRequest AWS API Documentation
    #
    class AttachObjectRequest < Struct.new(
      :directory_arn,
      :parent_reference,
      :child_reference,
      :link_name)
      include Aws::Structure
    end

    # @!attribute [rw] attached_object_identifier
    #   The attached `ObjectIdentifier`, which is the child
    #   `ObjectIdentifier`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachObjectResponse AWS API Documentation
    #
    class AttachObjectResponse < Struct.new(
      :attached_object_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachPolicyRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         policy_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where both objects reside. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] policy_reference
    #   The reference that is associated with the policy object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object to which the policy will be
    #   attached.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachPolicyRequest AWS API Documentation
    #
    class AttachPolicyRequest < Struct.new(
      :directory_arn,
      :policy_reference,
      :object_reference)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachPolicyResponse AWS API Documentation
    #
    class AttachPolicyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AttachToIndexRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         index_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         target_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) of the directory where the object and
    #   index exist.
    #   @return [String]
    #
    # @!attribute [rw] index_reference
    #   A reference to the index that you are attaching the object to.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] target_reference
    #   A reference to the object that you are attaching to the index.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachToIndexRequest AWS API Documentation
    #
    class AttachToIndexRequest < Struct.new(
      :directory_arn,
      :index_reference,
      :target_reference)
      include Aws::Structure
    end

    # @!attribute [rw] attached_object_identifier
    #   The `ObjectIdentifier` of the object that was attached to the index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachToIndexResponse AWS API Documentation
    #
    class AttachToIndexResponse < Struct.new(
      :attached_object_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachTypedLinkRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         source_object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         target_object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         typed_link_facet: { # required
    #           schema_arn: "Arn", # required
    #           typed_link_name: "TypedLinkName", # required
    #         },
    #         attributes: [ # required
    #           {
    #             attribute_name: "AttributeName", # required
    #             value: { # required
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) of the directory where you want to
    #   attach the typed link.
    #   @return [String]
    #
    # @!attribute [rw] source_object_reference
    #   Identifies the source object that the typed link will attach to.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] target_object_reference
    #   Identifies the target object that the typed link will attach to.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] typed_link_facet
    #   Identifies the typed link facet that is associated with the typed
    #   link.
    #   @return [Types::TypedLinkSchemaAndFacetName]
    #
    # @!attribute [rw] attributes
    #   A set of attributes that are associated with the typed link.
    #   @return [Array<Types::AttributeNameAndValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachTypedLinkRequest AWS API Documentation
    #
    class AttachTypedLinkRequest < Struct.new(
      :directory_arn,
      :source_object_reference,
      :target_object_reference,
      :typed_link_facet,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] typed_link_specifier
    #   Returns a typed link specifier as output.
    #   @return [Types::TypedLinkSpecifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachTypedLinkResponse AWS API Documentation
    #
    class AttachTypedLinkResponse < Struct.new(
      :typed_link_specifier)
      include Aws::Structure
    end

    # A unique identifier for an attribute.
    #
    # @note When making an API call, you may pass AttributeKey
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         facet_name: "FacetName", # required
    #         name: "AttributeName", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the schema that contains the facet
    #   and attribute.
    #   @return [String]
    #
    # @!attribute [rw] facet_name
    #   The name of the facet that the attribute exists within.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttributeKey AWS API Documentation
    #
    class AttributeKey < Struct.new(
      :schema_arn,
      :facet_name,
      :name)
      include Aws::Structure
    end

    # The combination of an attribute key and an attribute value.
    #
    # @note When making an API call, you may pass AttributeKeyAndValue
    #   data as a hash:
    #
    #       {
    #         key: { # required
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         value: { # required
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] key
    #   The key of the attribute.
    #   @return [Types::AttributeKey]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [Types::TypedAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttributeKeyAndValue AWS API Documentation
    #
    class AttributeKeyAndValue < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Identifies the attribute name and value for a typed link.
    #
    # @note When making an API call, you may pass AttributeNameAndValue
    #   data as a hash:
    #
    #       {
    #         attribute_name: "AttributeName", # required
    #         value: { # required
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] attribute_name
    #   The attribute name of the typed link.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the typed link.
    #   @return [Types::TypedAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttributeNameAndValue AWS API Documentation
    #
    class AttributeNameAndValue < Struct.new(
      :attribute_name,
      :value)
      include Aws::Structure
    end

    # Represents the output of a batch add facet to object operation.
    #
    # @note When making an API call, you may pass BatchAddFacetToObject
    #   data as a hash:
    #
    #       {
    #         schema_facet: { # required
    #           schema_arn: "Arn",
    #           facet_name: "FacetName",
    #         },
    #         object_attribute_list: [ # required
    #           {
    #             key: { # required
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             value: { # required
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now,
    #             },
    #           },
    #         ],
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] schema_facet
    #   Represents the facet being added to the object.
    #   @return [Types::SchemaFacet]
    #
    # @!attribute [rw] object_attribute_list
    #   The attributes to set on the object.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @!attribute [rw] object_reference
    #   A reference to the object being mutated.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchAddFacetToObject AWS API Documentation
    #
    class BatchAddFacetToObject < Struct.new(
      :schema_facet,
      :object_attribute_list,
      :object_reference)
      include Aws::Structure
    end

    # The result of a batch add facet to object operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchAddFacetToObjectResponse AWS API Documentation
    #
    class BatchAddFacetToObjectResponse < Aws::EmptyStructure; end

    # Represents the output of an AttachObject operation.
    #
    # @note When making an API call, you may pass BatchAttachObject
    #   data as a hash:
    #
    #       {
    #         parent_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         child_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         link_name: "LinkName", # required
    #       }
    #
    # @!attribute [rw] parent_reference
    #   The parent object reference.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] child_reference
    #   The child object reference that is to be attached to the object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] link_name
    #   The name of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchAttachObject AWS API Documentation
    #
    class BatchAttachObject < Struct.new(
      :parent_reference,
      :child_reference,
      :link_name)
      include Aws::Structure
    end

    # Represents the output batch AttachObject response operation.
    #
    # @!attribute [rw] attached_object_identifier
    #   The `ObjectIdentifier` of the object that has been attached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchAttachObjectResponse AWS API Documentation
    #
    class BatchAttachObjectResponse < Struct.new(
      :attached_object_identifier)
      include Aws::Structure
    end

    # Attaches a policy object to a regular object inside a BatchRead
    # operation. For more information, see AttachPolicy and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchAttachPolicy
    #   data as a hash:
    #
    #       {
    #         policy_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] policy_reference
    #   The reference that is associated with the policy object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object to which the policy will be
    #   attached.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchAttachPolicy AWS API Documentation
    #
    class BatchAttachPolicy < Struct.new(
      :policy_reference,
      :object_reference)
      include Aws::Structure
    end

    # Represents the output of an AttachPolicy response operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchAttachPolicyResponse AWS API Documentation
    #
    class BatchAttachPolicyResponse < Aws::EmptyStructure; end

    # Attaches the specified object to the specified index inside a
    # BatchRead operation. For more information, see AttachToIndex and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchAttachToIndex
    #   data as a hash:
    #
    #       {
    #         index_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         target_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] index_reference
    #   A reference to the index that you are attaching the object to.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] target_reference
    #   A reference to the object that you are attaching to the index.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchAttachToIndex AWS API Documentation
    #
    class BatchAttachToIndex < Struct.new(
      :index_reference,
      :target_reference)
      include Aws::Structure
    end

    # Represents the output of a AttachToIndex response operation.
    #
    # @!attribute [rw] attached_object_identifier
    #   The `ObjectIdentifier` of the object that was attached to the index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchAttachToIndexResponse AWS API Documentation
    #
    class BatchAttachToIndexResponse < Struct.new(
      :attached_object_identifier)
      include Aws::Structure
    end

    # Attaches a typed link to a specified source and target object inside a
    # BatchRead operation. For more information, see AttachTypedLink and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchAttachTypedLink
    #   data as a hash:
    #
    #       {
    #         source_object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         target_object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         typed_link_facet: { # required
    #           schema_arn: "Arn", # required
    #           typed_link_name: "TypedLinkName", # required
    #         },
    #         attributes: [ # required
    #           {
    #             attribute_name: "AttributeName", # required
    #             value: { # required
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_object_reference
    #   Identifies the source object that the typed link will attach to.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] target_object_reference
    #   Identifies the target object that the typed link will attach to.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] typed_link_facet
    #   Identifies the typed link facet that is associated with the typed
    #   link.
    #   @return [Types::TypedLinkSchemaAndFacetName]
    #
    # @!attribute [rw] attributes
    #   A set of attributes that are associated with the typed link.
    #   @return [Array<Types::AttributeNameAndValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchAttachTypedLink AWS API Documentation
    #
    class BatchAttachTypedLink < Struct.new(
      :source_object_reference,
      :target_object_reference,
      :typed_link_facet,
      :attributes)
      include Aws::Structure
    end

    # Represents the output of a AttachTypedLink response operation.
    #
    # @!attribute [rw] typed_link_specifier
    #   Returns a typed link specifier as output.
    #   @return [Types::TypedLinkSpecifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchAttachTypedLinkResponse AWS API Documentation
    #
    class BatchAttachTypedLinkResponse < Struct.new(
      :typed_link_specifier)
      include Aws::Structure
    end

    # Creates an index object inside of a BatchRead operation. For more
    # information, see CreateIndex and BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchCreateIndex
    #   data as a hash:
    #
    #       {
    #         ordered_indexed_attribute_list: [ # required
    #           {
    #             schema_arn: "Arn", # required
    #             facet_name: "FacetName", # required
    #             name: "AttributeName", # required
    #           },
    #         ],
    #         is_unique: false, # required
    #         parent_reference: {
    #           selector: "SelectorObjectReference",
    #         },
    #         link_name: "LinkName",
    #         batch_reference_name: "BatchReferenceName",
    #       }
    #
    # @!attribute [rw] ordered_indexed_attribute_list
    #   Specifies the attributes that should be indexed on. Currently only a
    #   single attribute is supported.
    #   @return [Array<Types::AttributeKey>]
    #
    # @!attribute [rw] is_unique
    #   Indicates whether the attribute that is being indexed has unique
    #   values or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_reference
    #   A reference to the parent object that contains the index object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] link_name
    #   The name of the link between the parent object and the index object.
    #   @return [String]
    #
    # @!attribute [rw] batch_reference_name
    #   The batch reference name. See [Batches][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#batches
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchCreateIndex AWS API Documentation
    #
    class BatchCreateIndex < Struct.new(
      :ordered_indexed_attribute_list,
      :is_unique,
      :parent_reference,
      :link_name,
      :batch_reference_name)
      include Aws::Structure
    end

    # Represents the output of a CreateIndex response operation.
    #
    # @!attribute [rw] object_identifier
    #   The `ObjectIdentifier` of the index created by this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchCreateIndexResponse AWS API Documentation
    #
    class BatchCreateIndexResponse < Struct.new(
      :object_identifier)
      include Aws::Structure
    end

    # Represents the output of a CreateObject operation.
    #
    # @note When making an API call, you may pass BatchCreateObject
    #   data as a hash:
    #
    #       {
    #         schema_facet: [ # required
    #           {
    #             schema_arn: "Arn",
    #             facet_name: "FacetName",
    #           },
    #         ],
    #         object_attribute_list: [ # required
    #           {
    #             key: { # required
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             value: { # required
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now,
    #             },
    #           },
    #         ],
    #         parent_reference: {
    #           selector: "SelectorObjectReference",
    #         },
    #         link_name: "LinkName",
    #         batch_reference_name: "BatchReferenceName",
    #       }
    #
    # @!attribute [rw] schema_facet
    #   A list of `FacetArns` that will be associated with the object. For
    #   more information, see arns.
    #   @return [Array<Types::SchemaFacet>]
    #
    # @!attribute [rw] object_attribute_list
    #   An attribute map, which contains an attribute ARN as the key and
    #   attribute value as the map value.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @!attribute [rw] parent_reference
    #   If specified, the parent reference to which this object will be
    #   attached.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] link_name
    #   The name of the link.
    #   @return [String]
    #
    # @!attribute [rw] batch_reference_name
    #   The batch reference name. See [Batches][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#batches
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchCreateObject AWS API Documentation
    #
    class BatchCreateObject < Struct.new(
      :schema_facet,
      :object_attribute_list,
      :parent_reference,
      :link_name,
      :batch_reference_name)
      include Aws::Structure
    end

    # Represents the output of a CreateObject response operation.
    #
    # @!attribute [rw] object_identifier
    #   The ID that is associated with the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchCreateObjectResponse AWS API Documentation
    #
    class BatchCreateObjectResponse < Struct.new(
      :object_identifier)
      include Aws::Structure
    end

    # Represents the output of a DeleteObject operation.
    #
    # @note When making an API call, you may pass BatchDeleteObject
    #   data as a hash:
    #
    #       {
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchDeleteObject AWS API Documentation
    #
    class BatchDeleteObject < Struct.new(
      :object_reference)
      include Aws::Structure
    end

    # Represents the output of a DeleteObject response operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchDeleteObjectResponse AWS API Documentation
    #
    class BatchDeleteObjectResponse < Aws::EmptyStructure; end

    # Detaches the specified object from the specified index inside a
    # BatchRead operation. For more information, see DetachFromIndex and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchDetachFromIndex
    #   data as a hash:
    #
    #       {
    #         index_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         target_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] index_reference
    #   A reference to the index object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] target_reference
    #   A reference to the object being detached from the index.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchDetachFromIndex AWS API Documentation
    #
    class BatchDetachFromIndex < Struct.new(
      :index_reference,
      :target_reference)
      include Aws::Structure
    end

    # Represents the output of a DetachFromIndex response operation.
    #
    # @!attribute [rw] detached_object_identifier
    #   The `ObjectIdentifier` of the object that was detached from the
    #   index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchDetachFromIndexResponse AWS API Documentation
    #
    class BatchDetachFromIndexResponse < Struct.new(
      :detached_object_identifier)
      include Aws::Structure
    end

    # Represents the output of a DetachObject operation.
    #
    # @note When making an API call, you may pass BatchDetachObject
    #   data as a hash:
    #
    #       {
    #         parent_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         link_name: "LinkName", # required
    #         batch_reference_name: "BatchReferenceName",
    #       }
    #
    # @!attribute [rw] parent_reference
    #   Parent reference from which the object with the specified link name
    #   is detached.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] link_name
    #   The name of the link.
    #   @return [String]
    #
    # @!attribute [rw] batch_reference_name
    #   The batch reference name. See [Batches][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#batches
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchDetachObject AWS API Documentation
    #
    class BatchDetachObject < Struct.new(
      :parent_reference,
      :link_name,
      :batch_reference_name)
      include Aws::Structure
    end

    # Represents the output of a DetachObject response operation.
    #
    # @!attribute [rw] detached_object_identifier
    #   The `ObjectIdentifier` of the detached object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchDetachObjectResponse AWS API Documentation
    #
    class BatchDetachObjectResponse < Struct.new(
      :detached_object_identifier)
      include Aws::Structure
    end

    # Detaches the specified policy from the specified directory inside a
    # BatchWrite operation. For more information, see DetachPolicy and
    # BatchWriteRequest$Operations.
    #
    # @note When making an API call, you may pass BatchDetachPolicy
    #   data as a hash:
    #
    #       {
    #         policy_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] policy_reference
    #   Reference that identifies the policy object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object whose policy object will be
    #   detached.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchDetachPolicy AWS API Documentation
    #
    class BatchDetachPolicy < Struct.new(
      :policy_reference,
      :object_reference)
      include Aws::Structure
    end

    # Represents the output of a DetachPolicy response operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchDetachPolicyResponse AWS API Documentation
    #
    class BatchDetachPolicyResponse < Aws::EmptyStructure; end

    # Detaches a typed link from a specified source and target object inside
    # a BatchRead operation. For more information, see DetachTypedLink and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchDetachTypedLink
    #   data as a hash:
    #
    #       {
    #         typed_link_specifier: { # required
    #           typed_link_facet: { # required
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           source_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           target_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           identity_attribute_values: [ # required
    #             {
    #               attribute_name: "AttributeName", # required
    #               value: { # required
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] typed_link_specifier
    #   Used to accept a typed link specifier as input.
    #   @return [Types::TypedLinkSpecifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchDetachTypedLink AWS API Documentation
    #
    class BatchDetachTypedLink < Struct.new(
      :typed_link_specifier)
      include Aws::Structure
    end

    # Represents the output of a DetachTypedLink response operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchDetachTypedLinkResponse AWS API Documentation
    #
    class BatchDetachTypedLinkResponse < Aws::EmptyStructure; end

    # Retrieves attributes that are associated with a typed link inside a
    # BatchRead operation. For more information, see GetLinkAttributes and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchGetLinkAttributes
    #   data as a hash:
    #
    #       {
    #         typed_link_specifier: { # required
    #           typed_link_facet: { # required
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           source_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           target_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           identity_attribute_values: [ # required
    #             {
    #               attribute_name: "AttributeName", # required
    #               value: { # required
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           ],
    #         },
    #         attribute_names: ["AttributeName"], # required
    #       }
    #
    # @!attribute [rw] typed_link_specifier
    #   Allows a typed link specifier to be accepted as input.
    #   @return [Types::TypedLinkSpecifier]
    #
    # @!attribute [rw] attribute_names
    #   A list of attribute names whose values will be retrieved.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchGetLinkAttributes AWS API Documentation
    #
    class BatchGetLinkAttributes < Struct.new(
      :typed_link_specifier,
      :attribute_names)
      include Aws::Structure
    end

    # Represents the output of a GetLinkAttributes response operation.
    #
    # @!attribute [rw] attributes
    #   The attributes that are associated with the typed link.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchGetLinkAttributesResponse AWS API Documentation
    #
    class BatchGetLinkAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # Retrieves attributes within a facet that are associated with an object
    # inside an BatchRead operation. For more information, see
    # GetObjectAttributes and BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchGetObjectAttributes
    #   data as a hash:
    #
    #       {
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         schema_facet: { # required
    #           schema_arn: "Arn",
    #           facet_name: "FacetName",
    #         },
    #         attribute_names: ["AttributeName"], # required
    #       }
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object whose attributes will be
    #   retrieved.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] schema_facet
    #   Identifier for the facet whose attributes will be retrieved. See
    #   SchemaFacet for details.
    #   @return [Types::SchemaFacet]
    #
    # @!attribute [rw] attribute_names
    #   List of attribute names whose values will be retrieved.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchGetObjectAttributes AWS API Documentation
    #
    class BatchGetObjectAttributes < Struct.new(
      :object_reference,
      :schema_facet,
      :attribute_names)
      include Aws::Structure
    end

    # Represents the output of a GetObjectAttributes response operation.
    #
    # @!attribute [rw] attributes
    #   The attribute values that are associated with an object.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchGetObjectAttributesResponse AWS API Documentation
    #
    class BatchGetObjectAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # Retrieves metadata about an object inside a BatchRead operation. For
    # more information, see GetObjectInformation and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchGetObjectInformation
    #   data as a hash:
    #
    #       {
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] object_reference
    #   A reference to the object.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchGetObjectInformation AWS API Documentation
    #
    class BatchGetObjectInformation < Struct.new(
      :object_reference)
      include Aws::Structure
    end

    # Represents the output of a GetObjectInformation response operation.
    #
    # @!attribute [rw] schema_facets
    #   The facets attached to the specified object.
    #   @return [Array<Types::SchemaFacet>]
    #
    # @!attribute [rw] object_identifier
    #   The `ObjectIdentifier` of the specified object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchGetObjectInformationResponse AWS API Documentation
    #
    class BatchGetObjectInformationResponse < Struct.new(
      :schema_facets,
      :object_identifier)
      include Aws::Structure
    end

    # Lists indices attached to an object inside a BatchRead operation. For
    # more information, see ListAttachedIndices and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchListAttachedIndices
    #   data as a hash:
    #
    #       {
    #         target_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] target_reference
    #   A reference to the object that has indices attached.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListAttachedIndices AWS API Documentation
    #
    class BatchListAttachedIndices < Struct.new(
      :target_reference,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Represents the output of a ListAttachedIndices response operation.
    #
    # @!attribute [rw] index_attachments
    #   The indices attached to the specified object.
    #   @return [Array<Types::IndexAttachment>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListAttachedIndicesResponse AWS API Documentation
    #
    class BatchListAttachedIndicesResponse < Struct.new(
      :index_attachments,
      :next_token)
      include Aws::Structure
    end

    # Returns a paginated list of all the incoming TypedLinkSpecifier
    # information for an object inside a BatchRead operation. For more
    # information, see ListIncomingTypedLinks and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchListIncomingTypedLinks
    #   data as a hash:
    #
    #       {
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         filter_attribute_ranges: [
    #           {
    #             attribute_name: "AttributeName",
    #             range: { # required
    #               start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               start_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #               end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               end_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #         filter_typed_link: {
    #           schema_arn: "Arn", # required
    #           typed_link_name: "TypedLinkName", # required
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object whose attributes will be
    #   listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] filter_attribute_ranges
    #   Provides range filters for multiple attributes. When providing
    #   ranges to typed link selection, any inexact ranges must be specified
    #   at the end. Any attributes that do not have a range specified are
    #   presumed to match the entire range.
    #   @return [Array<Types::TypedLinkAttributeRange>]
    #
    # @!attribute [rw] filter_typed_link
    #   Filters are interpreted in the order of the attributes on the typed
    #   link facet, not the order in which they are supplied to any API
    #   calls.
    #   @return [Types::TypedLinkSchemaAndFacetName]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListIncomingTypedLinks AWS API Documentation
    #
    class BatchListIncomingTypedLinks < Struct.new(
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Represents the output of a ListIncomingTypedLinks response operation.
    #
    # @!attribute [rw] link_specifiers
    #   Returns one or more typed link specifiers as output.
    #   @return [Array<Types::TypedLinkSpecifier>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListIncomingTypedLinksResponse AWS API Documentation
    #
    class BatchListIncomingTypedLinksResponse < Struct.new(
      :link_specifiers,
      :next_token)
      include Aws::Structure
    end

    # Lists objects attached to the specified index inside a BatchRead
    # operation. For more information, see ListIndex and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchListIndex
    #   data as a hash:
    #
    #       {
    #         ranges_on_indexed_values: [
    #           {
    #             attribute_key: {
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             range: {
    #               start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               start_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #               end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               end_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #         index_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] ranges_on_indexed_values
    #   Specifies the ranges of indexed values that you want to query.
    #   @return [Array<Types::ObjectAttributeRange>]
    #
    # @!attribute [rw] index_reference
    #   The reference to the index to list.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListIndex AWS API Documentation
    #
    class BatchListIndex < Struct.new(
      :ranges_on_indexed_values,
      :index_reference,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Represents the output of a ListIndex response operation.
    #
    # @!attribute [rw] index_attachments
    #   The objects and indexed values attached to the index.
    #   @return [Array<Types::IndexAttachment>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListIndexResponse AWS API Documentation
    #
    class BatchListIndexResponse < Struct.new(
      :index_attachments,
      :next_token)
      include Aws::Structure
    end

    # Represents the output of a ListObjectAttributes operation.
    #
    # @note When making an API call, you may pass BatchListObjectAttributes
    #   data as a hash:
    #
    #       {
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #         facet_filter: {
    #           schema_arn: "Arn",
    #           facet_name: "FacetName",
    #         },
    #       }
    #
    # @!attribute [rw] object_reference
    #   Reference of the object whose attributes need to be listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be retrieved in a single call. This
    #   is an approximate number.
    #   @return [Integer]
    #
    # @!attribute [rw] facet_filter
    #   Used to filter the list of object attributes that are associated
    #   with a certain facet.
    #   @return [Types::SchemaFacet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListObjectAttributes AWS API Documentation
    #
    class BatchListObjectAttributes < Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      :facet_filter)
      include Aws::Structure
    end

    # Represents the output of a ListObjectAttributes response operation.
    #
    # @!attribute [rw] attributes
    #   The attributes map that is associated with the object.
    #   `AttributeArn` is the key; attribute value is the value.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListObjectAttributesResponse AWS API Documentation
    #
    class BatchListObjectAttributesResponse < Struct.new(
      :attributes,
      :next_token)
      include Aws::Structure
    end

    # Represents the output of a ListObjectChildren operation.
    #
    # @note When making an API call, you may pass BatchListObjectChildren
    #   data as a hash:
    #
    #       {
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] object_reference
    #   Reference of the object for which child objects are being listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of items to be retrieved in a single call. This is an
    #   approximate number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListObjectChildren AWS API Documentation
    #
    class BatchListObjectChildren < Struct.new(
      :object_reference,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Represents the output of a ListObjectChildren response operation.
    #
    # @!attribute [rw] children
    #   The children structure, which is a map with the key as the
    #   `LinkName` and `ObjectIdentifier` as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListObjectChildrenResponse AWS API Documentation
    #
    class BatchListObjectChildrenResponse < Struct.new(
      :children,
      :next_token)
      include Aws::Structure
    end

    # Retrieves all available parent paths for any object type such as node,
    # leaf node, policy node, and index node objects inside a BatchRead
    # operation. For more information, see ListObjectParentPaths and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchListObjectParentPaths
    #   data as a hash:
    #
    #       {
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object whose attributes will be
    #   listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListObjectParentPaths AWS API Documentation
    #
    class BatchListObjectParentPaths < Struct.new(
      :object_reference,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Represents the output of a ListObjectParentPaths response operation.
    #
    # @!attribute [rw] path_to_object_identifiers_list
    #   Returns the path to the `ObjectIdentifiers` that are associated with
    #   the directory.
    #   @return [Array<Types::PathToObjectIdentifiers>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListObjectParentPathsResponse AWS API Documentation
    #
    class BatchListObjectParentPathsResponse < Struct.new(
      :path_to_object_identifiers_list,
      :next_token)
      include Aws::Structure
    end

    # Returns policies attached to an object in pagination fashion inside a
    # BatchRead operation. For more information, see ListObjectPolicies and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchListObjectPolicies
    #   data as a hash:
    #
    #       {
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object whose attributes will be
    #   listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListObjectPolicies AWS API Documentation
    #
    class BatchListObjectPolicies < Struct.new(
      :object_reference,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Represents the output of a ListObjectPolicies response operation.
    #
    # @!attribute [rw] attached_policy_ids
    #   A list of policy `ObjectIdentifiers`, that are attached to the
    #   object.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListObjectPoliciesResponse AWS API Documentation
    #
    class BatchListObjectPoliciesResponse < Struct.new(
      :attached_policy_ids,
      :next_token)
      include Aws::Structure
    end

    # Returns a paginated list of all the outgoing TypedLinkSpecifier
    # information for an object inside a BatchRead operation. For more
    # information, see ListOutgoingTypedLinks and
    # BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchListOutgoingTypedLinks
    #   data as a hash:
    #
    #       {
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         filter_attribute_ranges: [
    #           {
    #             attribute_name: "AttributeName",
    #             range: { # required
    #               start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               start_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #               end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               end_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #         filter_typed_link: {
    #           schema_arn: "Arn", # required
    #           typed_link_name: "TypedLinkName", # required
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object whose attributes will be
    #   listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] filter_attribute_ranges
    #   Provides range filters for multiple attributes. When providing
    #   ranges to typed link selection, any inexact ranges must be specified
    #   at the end. Any attributes that do not have a range specified are
    #   presumed to match the entire range.
    #   @return [Array<Types::TypedLinkAttributeRange>]
    #
    # @!attribute [rw] filter_typed_link
    #   Filters are interpreted in the order of the attributes defined on
    #   the typed link facet, not the order they are supplied to any API
    #   calls.
    #   @return [Types::TypedLinkSchemaAndFacetName]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListOutgoingTypedLinks AWS API Documentation
    #
    class BatchListOutgoingTypedLinks < Struct.new(
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Represents the output of a ListOutgoingTypedLinks response operation.
    #
    # @!attribute [rw] typed_link_specifiers
    #   Returns a typed link specifier as output.
    #   @return [Array<Types::TypedLinkSpecifier>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListOutgoingTypedLinksResponse AWS API Documentation
    #
    class BatchListOutgoingTypedLinksResponse < Struct.new(
      :typed_link_specifiers,
      :next_token)
      include Aws::Structure
    end

    # Returns all of the `ObjectIdentifiers` to which a given policy is
    # attached inside a BatchRead operation. For more information, see
    # ListPolicyAttachments and BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchListPolicyAttachments
    #   data as a hash:
    #
    #       {
    #         policy_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] policy_reference
    #   The reference that identifies the policy object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListPolicyAttachments AWS API Documentation
    #
    class BatchListPolicyAttachments < Struct.new(
      :policy_reference,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Represents the output of a ListPolicyAttachments response operation.
    #
    # @!attribute [rw] object_identifiers
    #   A list of `ObjectIdentifiers` to which the policy is attached.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchListPolicyAttachmentsResponse AWS API Documentation
    #
    class BatchListPolicyAttachmentsResponse < Struct.new(
      :object_identifiers,
      :next_token)
      include Aws::Structure
    end

    # Lists all policies from the root of the Directory to the object
    # specified inside a BatchRead operation. For more information, see
    # LookupPolicy and BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchLookupPolicy
    #   data as a hash:
    #
    #       {
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object whose policies will be looked
    #   up.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchLookupPolicy AWS API Documentation
    #
    class BatchLookupPolicy < Struct.new(
      :object_reference,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Represents the output of a LookupPolicy response operation.
    #
    # @!attribute [rw] policy_to_path_list
    #   Provides list of path to policies. Policies contain `PolicyId`,
    #   `ObjectIdentifier`, and `PolicyType`. For more information, see
    #   [Policies][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies
    #   @return [Array<Types::PolicyToPath>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchLookupPolicyResponse AWS API Documentation
    #
    class BatchLookupPolicyResponse < Struct.new(
      :policy_to_path_list,
      :next_token)
      include Aws::Structure
    end

    # The batch read exception structure, which contains the exception type
    # and message.
    #
    # @!attribute [rw] type
    #   A type of exception, such as `InvalidArnException`.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An exception message that is associated with the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchReadException AWS API Documentation
    #
    class BatchReadException < Struct.new(
      :type,
      :message)
      include Aws::Structure
    end

    # Represents the output of a `BatchRead` operation.
    #
    # @note When making an API call, you may pass BatchReadOperation
    #   data as a hash:
    #
    #       {
    #         list_object_attributes: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #           facet_filter: {
    #             schema_arn: "Arn",
    #             facet_name: "FacetName",
    #           },
    #         },
    #         list_object_children: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #         },
    #         list_attached_indices: {
    #           target_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #         },
    #         list_object_parent_paths: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #         },
    #         get_object_information: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #         },
    #         get_object_attributes: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           schema_facet: { # required
    #             schema_arn: "Arn",
    #             facet_name: "FacetName",
    #           },
    #           attribute_names: ["AttributeName"], # required
    #         },
    #         list_object_policies: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #         },
    #         list_policy_attachments: {
    #           policy_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #         },
    #         lookup_policy: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #         },
    #         list_index: {
    #           ranges_on_indexed_values: [
    #             {
    #               attribute_key: {
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               range: {
    #                 start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                 start_value: {
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #                 end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                 end_value: {
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #               },
    #             },
    #           ],
    #           index_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           max_results: 1,
    #           next_token: "NextToken",
    #         },
    #         list_outgoing_typed_links: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           filter_attribute_ranges: [
    #             {
    #               attribute_name: "AttributeName",
    #               range: { # required
    #                 start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                 start_value: {
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #                 end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                 end_value: {
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #               },
    #             },
    #           ],
    #           filter_typed_link: {
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #         },
    #         list_incoming_typed_links: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           filter_attribute_ranges: [
    #             {
    #               attribute_name: "AttributeName",
    #               range: { # required
    #                 start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                 start_value: {
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #                 end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                 end_value: {
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #               },
    #             },
    #           ],
    #           filter_typed_link: {
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #         },
    #         get_link_attributes: {
    #           typed_link_specifier: { # required
    #             typed_link_facet: { # required
    #               schema_arn: "Arn", # required
    #               typed_link_name: "TypedLinkName", # required
    #             },
    #             source_object_reference: { # required
    #               selector: "SelectorObjectReference",
    #             },
    #             target_object_reference: { # required
    #               selector: "SelectorObjectReference",
    #             },
    #             identity_attribute_values: [ # required
    #               {
    #                 attribute_name: "AttributeName", # required
    #                 value: { # required
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #               },
    #             ],
    #           },
    #           attribute_names: ["AttributeName"], # required
    #         },
    #       }
    #
    # @!attribute [rw] list_object_attributes
    #   Lists all attributes that are associated with an object.
    #   @return [Types::BatchListObjectAttributes]
    #
    # @!attribute [rw] list_object_children
    #   Returns a paginated list of child objects that are associated with a
    #   given object.
    #   @return [Types::BatchListObjectChildren]
    #
    # @!attribute [rw] list_attached_indices
    #   Lists indices attached to an object.
    #   @return [Types::BatchListAttachedIndices]
    #
    # @!attribute [rw] list_object_parent_paths
    #   Retrieves all available parent paths for any object type such as
    #   node, leaf node, policy node, and index node objects. For more
    #   information about objects, see [Directory Structure][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#dirstructure
    #   @return [Types::BatchListObjectParentPaths]
    #
    # @!attribute [rw] get_object_information
    #   Retrieves metadata about an object.
    #   @return [Types::BatchGetObjectInformation]
    #
    # @!attribute [rw] get_object_attributes
    #   Retrieves attributes within a facet that are associated with an
    #   object.
    #   @return [Types::BatchGetObjectAttributes]
    #
    # @!attribute [rw] list_object_policies
    #   Returns policies attached to an object in pagination fashion.
    #   @return [Types::BatchListObjectPolicies]
    #
    # @!attribute [rw] list_policy_attachments
    #   Returns all of the `ObjectIdentifiers` to which a given policy is
    #   attached.
    #   @return [Types::BatchListPolicyAttachments]
    #
    # @!attribute [rw] lookup_policy
    #   Lists all policies from the root of the Directory to the object
    #   specified. If there are no policies present, an empty list is
    #   returned. If policies are present, and if some objects don't have
    #   the policies attached, it returns the `ObjectIdentifier` for such
    #   objects. If policies are present, it returns `ObjectIdentifier`,
    #   `policyId`, and `policyType`. Paths that don't lead to the root
    #   from the target object are ignored. For more information, see
    #   [Policies][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies
    #   @return [Types::BatchLookupPolicy]
    #
    # @!attribute [rw] list_index
    #   Lists objects attached to the specified index.
    #   @return [Types::BatchListIndex]
    #
    # @!attribute [rw] list_outgoing_typed_links
    #   Returns a paginated list of all the outgoing TypedLinkSpecifier
    #   information for an object. It also supports filtering by typed link
    #   facet and identity attributes. For more information, see [Typed
    #   link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [Types::BatchListOutgoingTypedLinks]
    #
    # @!attribute [rw] list_incoming_typed_links
    #   Returns a paginated list of all the incoming TypedLinkSpecifier
    #   information for an object. It also supports filtering by typed link
    #   facet and identity attributes. For more information, see [Typed
    #   link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [Types::BatchListIncomingTypedLinks]
    #
    # @!attribute [rw] get_link_attributes
    #   Retrieves attributes that are associated with a typed link.
    #   @return [Types::BatchGetLinkAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchReadOperation AWS API Documentation
    #
    class BatchReadOperation < Struct.new(
      :list_object_attributes,
      :list_object_children,
      :list_attached_indices,
      :list_object_parent_paths,
      :get_object_information,
      :get_object_attributes,
      :list_object_policies,
      :list_policy_attachments,
      :lookup_policy,
      :list_index,
      :list_outgoing_typed_links,
      :list_incoming_typed_links,
      :get_link_attributes)
      include Aws::Structure
    end

    # Represents the output of a `BatchRead` response operation.
    #
    # @!attribute [rw] successful_response
    #   Identifies which operation in a batch has succeeded.
    #   @return [Types::BatchReadSuccessfulResponse]
    #
    # @!attribute [rw] exception_response
    #   Identifies which operation in a batch has failed.
    #   @return [Types::BatchReadException]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchReadOperationResponse AWS API Documentation
    #
    class BatchReadOperationResponse < Struct.new(
      :successful_response,
      :exception_response)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchReadRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         operations: [ # required
    #           {
    #             list_object_attributes: {
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               next_token: "NextToken",
    #               max_results: 1,
    #               facet_filter: {
    #                 schema_arn: "Arn",
    #                 facet_name: "FacetName",
    #               },
    #             },
    #             list_object_children: {
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               next_token: "NextToken",
    #               max_results: 1,
    #             },
    #             list_attached_indices: {
    #               target_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               next_token: "NextToken",
    #               max_results: 1,
    #             },
    #             list_object_parent_paths: {
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               next_token: "NextToken",
    #               max_results: 1,
    #             },
    #             get_object_information: {
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #             },
    #             get_object_attributes: {
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               schema_facet: { # required
    #                 schema_arn: "Arn",
    #                 facet_name: "FacetName",
    #               },
    #               attribute_names: ["AttributeName"], # required
    #             },
    #             list_object_policies: {
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               next_token: "NextToken",
    #               max_results: 1,
    #             },
    #             list_policy_attachments: {
    #               policy_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               next_token: "NextToken",
    #               max_results: 1,
    #             },
    #             lookup_policy: {
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               next_token: "NextToken",
    #               max_results: 1,
    #             },
    #             list_index: {
    #               ranges_on_indexed_values: [
    #                 {
    #                   attribute_key: {
    #                     schema_arn: "Arn", # required
    #                     facet_name: "FacetName", # required
    #                     name: "AttributeName", # required
    #                   },
    #                   range: {
    #                     start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                     start_value: {
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now,
    #                     },
    #                     end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                     end_value: {
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now,
    #                     },
    #                   },
    #                 },
    #               ],
    #               index_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               max_results: 1,
    #               next_token: "NextToken",
    #             },
    #             list_outgoing_typed_links: {
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               filter_attribute_ranges: [
    #                 {
    #                   attribute_name: "AttributeName",
    #                   range: { # required
    #                     start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                     start_value: {
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now,
    #                     },
    #                     end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                     end_value: {
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now,
    #                     },
    #                   },
    #                 },
    #               ],
    #               filter_typed_link: {
    #                 schema_arn: "Arn", # required
    #                 typed_link_name: "TypedLinkName", # required
    #               },
    #               next_token: "NextToken",
    #               max_results: 1,
    #             },
    #             list_incoming_typed_links: {
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               filter_attribute_ranges: [
    #                 {
    #                   attribute_name: "AttributeName",
    #                   range: { # required
    #                     start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                     start_value: {
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now,
    #                     },
    #                     end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #                     end_value: {
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now,
    #                     },
    #                   },
    #                 },
    #               ],
    #               filter_typed_link: {
    #                 schema_arn: "Arn", # required
    #                 typed_link_name: "TypedLinkName", # required
    #               },
    #               next_token: "NextToken",
    #               max_results: 1,
    #             },
    #             get_link_attributes: {
    #               typed_link_specifier: { # required
    #                 typed_link_facet: { # required
    #                   schema_arn: "Arn", # required
    #                   typed_link_name: "TypedLinkName", # required
    #                 },
    #                 source_object_reference: { # required
    #                   selector: "SelectorObjectReference",
    #                 },
    #                 target_object_reference: { # required
    #                   selector: "SelectorObjectReference",
    #                 },
    #                 identity_attribute_values: [ # required
    #                   {
    #                     attribute_name: "AttributeName", # required
    #                     value: { # required
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now,
    #                     },
    #                   },
    #                 ],
    #               },
    #               attribute_names: ["AttributeName"], # required
    #             },
    #           },
    #         ],
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the
    #   Directory. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] operations
    #   A list of operations that are part of the batch.
    #   @return [Array<Types::BatchReadOperation>]
    #
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchReadRequest AWS API Documentation
    #
    class BatchReadRequest < Struct.new(
      :directory_arn,
      :operations,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] responses
    #   A list of all the responses for each batch read.
    #   @return [Array<Types::BatchReadOperationResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchReadResponse AWS API Documentation
    #
    class BatchReadResponse < Struct.new(
      :responses)
      include Aws::Structure
    end

    # Represents the output of a `BatchRead` success response operation.
    #
    # @!attribute [rw] list_object_attributes
    #   Lists all attributes that are associated with an object.
    #   @return [Types::BatchListObjectAttributesResponse]
    #
    # @!attribute [rw] list_object_children
    #   Returns a paginated list of child objects that are associated with a
    #   given object.
    #   @return [Types::BatchListObjectChildrenResponse]
    #
    # @!attribute [rw] get_object_information
    #   Retrieves metadata about an object.
    #   @return [Types::BatchGetObjectInformationResponse]
    #
    # @!attribute [rw] get_object_attributes
    #   Retrieves attributes within a facet that are associated with an
    #   object.
    #   @return [Types::BatchGetObjectAttributesResponse]
    #
    # @!attribute [rw] list_attached_indices
    #   Lists indices attached to an object.
    #   @return [Types::BatchListAttachedIndicesResponse]
    #
    # @!attribute [rw] list_object_parent_paths
    #   Retrieves all available parent paths for any object type such as
    #   node, leaf node, policy node, and index node objects. For more
    #   information about objects, see [Directory Structure][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#dirstructure
    #   @return [Types::BatchListObjectParentPathsResponse]
    #
    # @!attribute [rw] list_object_policies
    #   Returns policies attached to an object in pagination fashion.
    #   @return [Types::BatchListObjectPoliciesResponse]
    #
    # @!attribute [rw] list_policy_attachments
    #   Returns all of the `ObjectIdentifiers` to which a given policy is
    #   attached.
    #   @return [Types::BatchListPolicyAttachmentsResponse]
    #
    # @!attribute [rw] lookup_policy
    #   Lists all policies from the root of the Directory to the object
    #   specified. If there are no policies present, an empty list is
    #   returned. If policies are present, and if some objects don't have
    #   the policies attached, it returns the `ObjectIdentifier` for such
    #   objects. If policies are present, it returns `ObjectIdentifier`,
    #   `policyId`, and `policyType`. Paths that don't lead to the root
    #   from the target object are ignored. For more information, see
    #   [Policies][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies
    #   @return [Types::BatchLookupPolicyResponse]
    #
    # @!attribute [rw] list_index
    #   Lists objects attached to the specified index.
    #   @return [Types::BatchListIndexResponse]
    #
    # @!attribute [rw] list_outgoing_typed_links
    #   Returns a paginated list of all the outgoing TypedLinkSpecifier
    #   information for an object. It also supports filtering by typed link
    #   facet and identity attributes. For more information, see [Typed
    #   link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [Types::BatchListOutgoingTypedLinksResponse]
    #
    # @!attribute [rw] list_incoming_typed_links
    #   Returns a paginated list of all the incoming TypedLinkSpecifier
    #   information for an object. It also supports filtering by typed link
    #   facet and identity attributes. For more information, see [Typed
    #   link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [Types::BatchListIncomingTypedLinksResponse]
    #
    # @!attribute [rw] get_link_attributes
    #   The list of attributes to retrieve from the typed link.
    #   @return [Types::BatchGetLinkAttributesResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchReadSuccessfulResponse AWS API Documentation
    #
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
      :get_link_attributes)
      include Aws::Structure
    end

    # A batch operation to remove a facet from an object.
    #
    # @note When making an API call, you may pass BatchRemoveFacetFromObject
    #   data as a hash:
    #
    #       {
    #         schema_facet: { # required
    #           schema_arn: "Arn",
    #           facet_name: "FacetName",
    #         },
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] schema_facet
    #   The facet to remove from the object.
    #   @return [Types::SchemaFacet]
    #
    # @!attribute [rw] object_reference
    #   A reference to the object whose facet will be removed.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchRemoveFacetFromObject AWS API Documentation
    #
    class BatchRemoveFacetFromObject < Struct.new(
      :schema_facet,
      :object_reference)
      include Aws::Structure
    end

    # An empty result that represents success.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchRemoveFacetFromObjectResponse AWS API Documentation
    #
    class BatchRemoveFacetFromObjectResponse < Aws::EmptyStructure; end

    # Updates a given typed link’s attributes inside a BatchRead operation.
    # Attributes to be updated must not contribute to the typed link’s
    # identity, as defined by its `IdentityAttributeOrder`. For more
    # information, see UpdateLinkAttributes and BatchReadRequest$Operations.
    #
    # @note When making an API call, you may pass BatchUpdateLinkAttributes
    #   data as a hash:
    #
    #       {
    #         typed_link_specifier: { # required
    #           typed_link_facet: { # required
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           source_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           target_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           identity_attribute_values: [ # required
    #             {
    #               attribute_name: "AttributeName", # required
    #               value: { # required
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           ],
    #         },
    #         attribute_updates: [ # required
    #           {
    #             attribute_key: {
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             attribute_action: {
    #               attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #               attribute_update_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] typed_link_specifier
    #   Allows a typed link specifier to be accepted as input.
    #   @return [Types::TypedLinkSpecifier]
    #
    # @!attribute [rw] attribute_updates
    #   The attributes update structure.
    #   @return [Array<Types::LinkAttributeUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchUpdateLinkAttributes AWS API Documentation
    #
    class BatchUpdateLinkAttributes < Struct.new(
      :typed_link_specifier,
      :attribute_updates)
      include Aws::Structure
    end

    # Represents the output of a UpdateLinkAttributes response operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchUpdateLinkAttributesResponse AWS API Documentation
    #
    class BatchUpdateLinkAttributesResponse < Aws::EmptyStructure; end

    # Represents the output of a `BatchUpdate` operation.
    #
    # @note When making an API call, you may pass BatchUpdateObjectAttributes
    #   data as a hash:
    #
    #       {
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         attribute_updates: [ # required
    #           {
    #             object_attribute_key: {
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             object_attribute_action: {
    #               object_attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #               object_attribute_update_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] attribute_updates
    #   Attributes update structure.
    #   @return [Array<Types::ObjectAttributeUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchUpdateObjectAttributes AWS API Documentation
    #
    class BatchUpdateObjectAttributes < Struct.new(
      :object_reference,
      :attribute_updates)
      include Aws::Structure
    end

    # Represents the output of a `BatchUpdate` response operation.
    #
    # @!attribute [rw] object_identifier
    #   ID that is associated with the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchUpdateObjectAttributesResponse AWS API Documentation
    #
    class BatchUpdateObjectAttributesResponse < Struct.new(
      :object_identifier)
      include Aws::Structure
    end

    # Represents the output of a `BatchWrite` operation.
    #
    # @note When making an API call, you may pass BatchWriteOperation
    #   data as a hash:
    #
    #       {
    #         create_object: {
    #           schema_facet: [ # required
    #             {
    #               schema_arn: "Arn",
    #               facet_name: "FacetName",
    #             },
    #           ],
    #           object_attribute_list: [ # required
    #             {
    #               key: { # required
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               value: { # required
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           ],
    #           parent_reference: {
    #             selector: "SelectorObjectReference",
    #           },
    #           link_name: "LinkName",
    #           batch_reference_name: "BatchReferenceName",
    #         },
    #         attach_object: {
    #           parent_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           child_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           link_name: "LinkName", # required
    #         },
    #         detach_object: {
    #           parent_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           link_name: "LinkName", # required
    #           batch_reference_name: "BatchReferenceName",
    #         },
    #         update_object_attributes: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           attribute_updates: [ # required
    #             {
    #               object_attribute_key: {
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               object_attribute_action: {
    #                 object_attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #                 object_attribute_update_value: {
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         delete_object: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #         },
    #         add_facet_to_object: {
    #           schema_facet: { # required
    #             schema_arn: "Arn",
    #             facet_name: "FacetName",
    #           },
    #           object_attribute_list: [ # required
    #             {
    #               key: { # required
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               value: { # required
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           ],
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #         },
    #         remove_facet_from_object: {
    #           schema_facet: { # required
    #             schema_arn: "Arn",
    #             facet_name: "FacetName",
    #           },
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #         },
    #         attach_policy: {
    #           policy_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #         },
    #         detach_policy: {
    #           policy_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #         },
    #         create_index: {
    #           ordered_indexed_attribute_list: [ # required
    #             {
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #           ],
    #           is_unique: false, # required
    #           parent_reference: {
    #             selector: "SelectorObjectReference",
    #           },
    #           link_name: "LinkName",
    #           batch_reference_name: "BatchReferenceName",
    #         },
    #         attach_to_index: {
    #           index_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           target_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #         },
    #         detach_from_index: {
    #           index_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           target_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #         },
    #         attach_typed_link: {
    #           source_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           target_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           typed_link_facet: { # required
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           attributes: [ # required
    #             {
    #               attribute_name: "AttributeName", # required
    #               value: { # required
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           ],
    #         },
    #         detach_typed_link: {
    #           typed_link_specifier: { # required
    #             typed_link_facet: { # required
    #               schema_arn: "Arn", # required
    #               typed_link_name: "TypedLinkName", # required
    #             },
    #             source_object_reference: { # required
    #               selector: "SelectorObjectReference",
    #             },
    #             target_object_reference: { # required
    #               selector: "SelectorObjectReference",
    #             },
    #             identity_attribute_values: [ # required
    #               {
    #                 attribute_name: "AttributeName", # required
    #                 value: { # required
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         update_link_attributes: {
    #           typed_link_specifier: { # required
    #             typed_link_facet: { # required
    #               schema_arn: "Arn", # required
    #               typed_link_name: "TypedLinkName", # required
    #             },
    #             source_object_reference: { # required
    #               selector: "SelectorObjectReference",
    #             },
    #             target_object_reference: { # required
    #               selector: "SelectorObjectReference",
    #             },
    #             identity_attribute_values: [ # required
    #               {
    #                 attribute_name: "AttributeName", # required
    #                 value: { # required
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #               },
    #             ],
    #           },
    #           attribute_updates: [ # required
    #             {
    #               attribute_key: {
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               attribute_action: {
    #                 attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #                 attribute_update_value: {
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] create_object
    #   Creates an object.
    #   @return [Types::BatchCreateObject]
    #
    # @!attribute [rw] attach_object
    #   Attaches an object to a Directory.
    #   @return [Types::BatchAttachObject]
    #
    # @!attribute [rw] detach_object
    #   Detaches an object from a Directory.
    #   @return [Types::BatchDetachObject]
    #
    # @!attribute [rw] update_object_attributes
    #   Updates a given object's attributes.
    #   @return [Types::BatchUpdateObjectAttributes]
    #
    # @!attribute [rw] delete_object
    #   Deletes an object in a Directory.
    #   @return [Types::BatchDeleteObject]
    #
    # @!attribute [rw] add_facet_to_object
    #   A batch operation that adds a facet to an object.
    #   @return [Types::BatchAddFacetToObject]
    #
    # @!attribute [rw] remove_facet_from_object
    #   A batch operation that removes a facet from an object.
    #   @return [Types::BatchRemoveFacetFromObject]
    #
    # @!attribute [rw] attach_policy
    #   Attaches a policy object to a regular object. An object can have a
    #   limited number of attached policies.
    #   @return [Types::BatchAttachPolicy]
    #
    # @!attribute [rw] detach_policy
    #   Detaches a policy from a Directory.
    #   @return [Types::BatchDetachPolicy]
    #
    # @!attribute [rw] create_index
    #   Creates an index object. See [Indexing][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_indexing.html
    #   @return [Types::BatchCreateIndex]
    #
    # @!attribute [rw] attach_to_index
    #   Attaches the specified object to the specified index.
    #   @return [Types::BatchAttachToIndex]
    #
    # @!attribute [rw] detach_from_index
    #   Detaches the specified object from the specified index.
    #   @return [Types::BatchDetachFromIndex]
    #
    # @!attribute [rw] attach_typed_link
    #   Attaches a typed link to a specified source and target object. For
    #   more information, see [Typed link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [Types::BatchAttachTypedLink]
    #
    # @!attribute [rw] detach_typed_link
    #   Detaches a typed link from a specified source and target object. For
    #   more information, see [Typed link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [Types::BatchDetachTypedLink]
    #
    # @!attribute [rw] update_link_attributes
    #   Updates a given object's attributes.
    #   @return [Types::BatchUpdateLinkAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchWriteOperation AWS API Documentation
    #
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
      :update_link_attributes)
      include Aws::Structure
    end

    # Represents the output of a `BatchWrite` response operation.
    #
    # @!attribute [rw] create_object
    #   Creates an object in a Directory.
    #   @return [Types::BatchCreateObjectResponse]
    #
    # @!attribute [rw] attach_object
    #   Attaches an object to a Directory.
    #   @return [Types::BatchAttachObjectResponse]
    #
    # @!attribute [rw] detach_object
    #   Detaches an object from a Directory.
    #   @return [Types::BatchDetachObjectResponse]
    #
    # @!attribute [rw] update_object_attributes
    #   Updates a given object’s attributes.
    #   @return [Types::BatchUpdateObjectAttributesResponse]
    #
    # @!attribute [rw] delete_object
    #   Deletes an object in a Directory.
    #   @return [Types::BatchDeleteObjectResponse]
    #
    # @!attribute [rw] add_facet_to_object
    #   The result of an add facet to object batch operation.
    #   @return [Types::BatchAddFacetToObjectResponse]
    #
    # @!attribute [rw] remove_facet_from_object
    #   The result of a batch remove facet from object operation.
    #   @return [Types::BatchRemoveFacetFromObjectResponse]
    #
    # @!attribute [rw] attach_policy
    #   Attaches a policy object to a regular object. An object can have a
    #   limited number of attached policies.
    #   @return [Types::BatchAttachPolicyResponse]
    #
    # @!attribute [rw] detach_policy
    #   Detaches a policy from a Directory.
    #   @return [Types::BatchDetachPolicyResponse]
    #
    # @!attribute [rw] create_index
    #   Creates an index object. See [Indexing][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_indexing.html
    #   @return [Types::BatchCreateIndexResponse]
    #
    # @!attribute [rw] attach_to_index
    #   Attaches the specified object to the specified index.
    #   @return [Types::BatchAttachToIndexResponse]
    #
    # @!attribute [rw] detach_from_index
    #   Detaches the specified object from the specified index.
    #   @return [Types::BatchDetachFromIndexResponse]
    #
    # @!attribute [rw] attach_typed_link
    #   Attaches a typed link to a specified source and target object. For
    #   more information, see [Typed link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [Types::BatchAttachTypedLinkResponse]
    #
    # @!attribute [rw] detach_typed_link
    #   Detaches a typed link from a specified source and target object. For
    #   more information, see [Typed link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [Types::BatchDetachTypedLinkResponse]
    #
    # @!attribute [rw] update_link_attributes
    #   Represents the output of a `BatchWrite` response operation.
    #   @return [Types::BatchUpdateLinkAttributesResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchWriteOperationResponse AWS API Documentation
    #
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
      :update_link_attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchWriteRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         operations: [ # required
    #           {
    #             create_object: {
    #               schema_facet: [ # required
    #                 {
    #                   schema_arn: "Arn",
    #                   facet_name: "FacetName",
    #                 },
    #               ],
    #               object_attribute_list: [ # required
    #                 {
    #                   key: { # required
    #                     schema_arn: "Arn", # required
    #                     facet_name: "FacetName", # required
    #                     name: "AttributeName", # required
    #                   },
    #                   value: { # required
    #                     string_value: "StringAttributeValue",
    #                     binary_value: "data",
    #                     boolean_value: false,
    #                     number_value: "NumberAttributeValue",
    #                     datetime_value: Time.now,
    #                   },
    #                 },
    #               ],
    #               parent_reference: {
    #                 selector: "SelectorObjectReference",
    #               },
    #               link_name: "LinkName",
    #               batch_reference_name: "BatchReferenceName",
    #             },
    #             attach_object: {
    #               parent_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               child_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               link_name: "LinkName", # required
    #             },
    #             detach_object: {
    #               parent_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               link_name: "LinkName", # required
    #               batch_reference_name: "BatchReferenceName",
    #             },
    #             update_object_attributes: {
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               attribute_updates: [ # required
    #                 {
    #                   object_attribute_key: {
    #                     schema_arn: "Arn", # required
    #                     facet_name: "FacetName", # required
    #                     name: "AttributeName", # required
    #                   },
    #                   object_attribute_action: {
    #                     object_attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #                     object_attribute_update_value: {
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now,
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #             delete_object: {
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #             },
    #             add_facet_to_object: {
    #               schema_facet: { # required
    #                 schema_arn: "Arn",
    #                 facet_name: "FacetName",
    #               },
    #               object_attribute_list: [ # required
    #                 {
    #                   key: { # required
    #                     schema_arn: "Arn", # required
    #                     facet_name: "FacetName", # required
    #                     name: "AttributeName", # required
    #                   },
    #                   value: { # required
    #                     string_value: "StringAttributeValue",
    #                     binary_value: "data",
    #                     boolean_value: false,
    #                     number_value: "NumberAttributeValue",
    #                     datetime_value: Time.now,
    #                   },
    #                 },
    #               ],
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #             },
    #             remove_facet_from_object: {
    #               schema_facet: { # required
    #                 schema_arn: "Arn",
    #                 facet_name: "FacetName",
    #               },
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #             },
    #             attach_policy: {
    #               policy_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #             },
    #             detach_policy: {
    #               policy_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #             },
    #             create_index: {
    #               ordered_indexed_attribute_list: [ # required
    #                 {
    #                   schema_arn: "Arn", # required
    #                   facet_name: "FacetName", # required
    #                   name: "AttributeName", # required
    #                 },
    #               ],
    #               is_unique: false, # required
    #               parent_reference: {
    #                 selector: "SelectorObjectReference",
    #               },
    #               link_name: "LinkName",
    #               batch_reference_name: "BatchReferenceName",
    #             },
    #             attach_to_index: {
    #               index_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               target_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #             },
    #             detach_from_index: {
    #               index_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               target_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #             },
    #             attach_typed_link: {
    #               source_object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               target_object_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               typed_link_facet: { # required
    #                 schema_arn: "Arn", # required
    #                 typed_link_name: "TypedLinkName", # required
    #               },
    #               attributes: [ # required
    #                 {
    #                   attribute_name: "AttributeName", # required
    #                   value: { # required
    #                     string_value: "StringAttributeValue",
    #                     binary_value: "data",
    #                     boolean_value: false,
    #                     number_value: "NumberAttributeValue",
    #                     datetime_value: Time.now,
    #                   },
    #                 },
    #               ],
    #             },
    #             detach_typed_link: {
    #               typed_link_specifier: { # required
    #                 typed_link_facet: { # required
    #                   schema_arn: "Arn", # required
    #                   typed_link_name: "TypedLinkName", # required
    #                 },
    #                 source_object_reference: { # required
    #                   selector: "SelectorObjectReference",
    #                 },
    #                 target_object_reference: { # required
    #                   selector: "SelectorObjectReference",
    #                 },
    #                 identity_attribute_values: [ # required
    #                   {
    #                     attribute_name: "AttributeName", # required
    #                     value: { # required
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now,
    #                     },
    #                   },
    #                 ],
    #               },
    #             },
    #             update_link_attributes: {
    #               typed_link_specifier: { # required
    #                 typed_link_facet: { # required
    #                   schema_arn: "Arn", # required
    #                   typed_link_name: "TypedLinkName", # required
    #                 },
    #                 source_object_reference: { # required
    #                   selector: "SelectorObjectReference",
    #                 },
    #                 target_object_reference: { # required
    #                   selector: "SelectorObjectReference",
    #                 },
    #                 identity_attribute_values: [ # required
    #                   {
    #                     attribute_name: "AttributeName", # required
    #                     value: { # required
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now,
    #                     },
    #                   },
    #                 ],
    #               },
    #               attribute_updates: [ # required
    #                 {
    #                   attribute_key: {
    #                     schema_arn: "Arn", # required
    #                     facet_name: "FacetName", # required
    #                     name: "AttributeName", # required
    #                   },
    #                   attribute_action: {
    #                     attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #                     attribute_update_value: {
    #                       string_value: "StringAttributeValue",
    #                       binary_value: "data",
    #                       boolean_value: false,
    #                       number_value: "NumberAttributeValue",
    #                       datetime_value: Time.now,
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the
    #   Directory. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] operations
    #   A list of operations that are part of the batch.
    #   @return [Array<Types::BatchWriteOperation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchWriteRequest AWS API Documentation
    #
    class BatchWriteRequest < Struct.new(
      :directory_arn,
      :operations)
      include Aws::Structure
    end

    # @!attribute [rw] responses
    #   A list of all the responses for each batch write.
    #   @return [Array<Types::BatchWriteOperationResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchWriteResponse AWS API Documentation
    #
    class BatchWriteResponse < Struct.new(
      :responses)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         name: "DirectoryName", # required
    #         schema_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Directory. Should be unique per account, per region.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the published schema that will be
    #   copied into the data Directory. For more information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateDirectoryRequest AWS API Documentation
    #
    class CreateDirectoryRequest < Struct.new(
      :name,
      :schema_arn)
      include Aws::Structure
    end

    # @!attribute [rw] directory_arn
    #   The ARN that is associated with the Directory. For more information,
    #   see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Directory.
    #   @return [String]
    #
    # @!attribute [rw] object_identifier
    #   The root object node of the created directory.
    #   @return [String]
    #
    # @!attribute [rw] applied_schema_arn
    #   The ARN of the published schema in the Directory. Once a published
    #   schema is copied into the directory, it has its own ARN, which is
    #   referred to applied schema ARN. For more information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateDirectoryResponse AWS API Documentation
    #
    class CreateDirectoryResponse < Struct.new(
      :directory_arn,
      :name,
      :object_identifier,
      :applied_schema_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFacetRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         name: "FacetName", # required
    #         attributes: [
    #           {
    #             name: "AttributeName", # required
    #             attribute_definition: {
    #               type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME, VARIANT
    #               default_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #               is_immutable: false,
    #               rules: {
    #                 "RuleKey" => {
    #                   type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #                   parameters: {
    #                     "RuleParameterKey" => "RuleParameterValue",
    #                   },
    #                 },
    #               },
    #             },
    #             attribute_reference: {
    #               target_facet_name: "FacetName", # required
    #               target_attribute_name: "AttributeName", # required
    #             },
    #             required_behavior: "REQUIRED_ALWAYS", # accepts REQUIRED_ALWAYS, NOT_REQUIRED
    #           },
    #         ],
    #         object_type: "NODE", # accepts NODE, LEAF_NODE, POLICY, INDEX
    #         facet_style: "STATIC", # accepts STATIC, DYNAMIC
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The schema ARN in which the new Facet will be created. For more
    #   information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Facet, which is unique for a given schema.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes that are associated with the Facet.
    #   @return [Array<Types::FacetAttribute>]
    #
    # @!attribute [rw] object_type
    #   Specifies whether a given object created from this facet is of type
    #   node, leaf node, policy or index.
    #
    #   * Node: Can have multiple children but one parent.
    #
    #   ^
    #   ^
    #
    #   * Leaf node: Cannot have children but can have multiple parents.
    #
    #   ^
    #   ^
    #
    #   * Policy: Allows you to store a policy document and policy type. For
    #     more information, see [Policies][1].
    #
    #   ^
    #   ^
    #
    #   * Index: Can be created with the Index API.
    #
    #   ^
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies
    #   @return [String]
    #
    # @!attribute [rw] facet_style
    #   There are two different styles that you can define on any given
    #   facet, `Static` and `Dynamic`. For static facets, all attributes
    #   must be defined in the schema. For dynamic facets, attributes can be
    #   defined during data plane operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateFacetRequest AWS API Documentation
    #
    class CreateFacetRequest < Struct.new(
      :schema_arn,
      :name,
      :attributes,
      :object_type,
      :facet_style)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateFacetResponse AWS API Documentation
    #
    class CreateFacetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateIndexRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         ordered_indexed_attribute_list: [ # required
    #           {
    #             schema_arn: "Arn", # required
    #             facet_name: "FacetName", # required
    #             name: "AttributeName", # required
    #           },
    #         ],
    #         is_unique: false, # required
    #         parent_reference: {
    #           selector: "SelectorObjectReference",
    #         },
    #         link_name: "LinkName",
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory where the index should be created.
    #   @return [String]
    #
    # @!attribute [rw] ordered_indexed_attribute_list
    #   Specifies the attributes that should be indexed on. Currently only a
    #   single attribute is supported.
    #   @return [Array<Types::AttributeKey>]
    #
    # @!attribute [rw] is_unique
    #   Indicates whether the attribute that is being indexed has unique
    #   values or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_reference
    #   A reference to the parent object that contains the index object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] link_name
    #   The name of the link between the parent object and the index object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateIndexRequest AWS API Documentation
    #
    class CreateIndexRequest < Struct.new(
      :directory_arn,
      :ordered_indexed_attribute_list,
      :is_unique,
      :parent_reference,
      :link_name)
      include Aws::Structure
    end

    # @!attribute [rw] object_identifier
    #   The `ObjectIdentifier` of the index created by this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateIndexResponse AWS API Documentation
    #
    class CreateIndexResponse < Struct.new(
      :object_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateObjectRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         schema_facets: [ # required
    #           {
    #             schema_arn: "Arn",
    #             facet_name: "FacetName",
    #           },
    #         ],
    #         object_attribute_list: [
    #           {
    #             key: { # required
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             value: { # required
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now,
    #             },
    #           },
    #         ],
    #         parent_reference: {
    #           selector: "SelectorObjectReference",
    #         },
    #         link_name: "LinkName",
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   in which the object will be created. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] schema_facets
    #   A list of schema facets to be associated with the object. Do not
    #   provide minor version components. See SchemaFacet for details.
    #   @return [Array<Types::SchemaFacet>]
    #
    # @!attribute [rw] object_attribute_list
    #   The attribute map whose attribute ARN contains the key and attribute
    #   value as the map value.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @!attribute [rw] parent_reference
    #   If specified, the parent reference to which this object will be
    #   attached.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] link_name
    #   The name of link that is used to attach this object to a parent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateObjectRequest AWS API Documentation
    #
    class CreateObjectRequest < Struct.new(
      :directory_arn,
      :schema_facets,
      :object_attribute_list,
      :parent_reference,
      :link_name)
      include Aws::Structure
    end

    # @!attribute [rw] object_identifier
    #   The identifier that is associated with the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateObjectResponse AWS API Documentation
    #
    class CreateObjectResponse < Struct.new(
      :object_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSchemaRequest
    #   data as a hash:
    #
    #       {
    #         name: "SchemaName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name that is associated with the schema. This is unique to each
    #   account and in each region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateSchemaRequest AWS API Documentation
    #
    class CreateSchemaRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the schema.
    #   For more information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateSchemaResponse AWS API Documentation
    #
    class CreateSchemaResponse < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTypedLinkFacetRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         facet: { # required
    #           name: "TypedLinkName", # required
    #           attributes: [ # required
    #             {
    #               name: "AttributeName", # required
    #               type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME, VARIANT
    #               default_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #               is_immutable: false,
    #               rules: {
    #                 "RuleKey" => {
    #                   type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #                   parameters: {
    #                     "RuleParameterKey" => "RuleParameterValue",
    #                   },
    #                 },
    #               },
    #               required_behavior: "REQUIRED_ALWAYS", # required, accepts REQUIRED_ALWAYS, NOT_REQUIRED
    #             },
    #           ],
    #           identity_attribute_order: ["AttributeName"], # required
    #         },
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the schema.
    #   For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] facet
    #   Facet structure that is associated with the typed link facet.
    #   @return [Types::TypedLinkFacet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateTypedLinkFacetRequest AWS API Documentation
    #
    class CreateTypedLinkFacetRequest < Struct.new(
      :schema_arn,
      :facet)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateTypedLinkFacetResponse AWS API Documentation
    #
    class CreateTypedLinkFacetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteDirectoryRequest AWS API Documentation
    #
    class DeleteDirectoryRequest < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # @!attribute [rw] directory_arn
    #   The ARN of the deleted directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteDirectoryResponse AWS API Documentation
    #
    class DeleteDirectoryResponse < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFacetRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         name: "FacetName", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the Facet.
    #   For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the facet to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteFacetRequest AWS API Documentation
    #
    class DeleteFacetRequest < Struct.new(
      :schema_arn,
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteFacetResponse AWS API Documentation
    #
    class DeleteFacetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteObjectRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where the object resides. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   A reference that identifies the object.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteObjectRequest AWS API Documentation
    #
    class DeleteObjectRequest < Struct.new(
      :directory_arn,
      :object_reference)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteObjectResponse AWS API Documentation
    #
    class DeleteObjectResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSchemaRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the development schema. For more
    #   information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteSchemaRequest AWS API Documentation
    #
    class DeleteSchemaRequest < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   The input ARN that is returned as part of the response. For more
    #   information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteSchemaResponse AWS API Documentation
    #
    class DeleteSchemaResponse < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTypedLinkFacetRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         name: "TypedLinkName", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the schema.
    #   For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name of the typed link facet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteTypedLinkFacetRequest AWS API Documentation
    #
    class DeleteTypedLinkFacetRequest < Struct.new(
      :schema_arn,
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteTypedLinkFacetResponse AWS API Documentation
    #
    class DeleteTypedLinkFacetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DetachFromIndexRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         index_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         target_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) of the directory the index and object
    #   exist in.
    #   @return [String]
    #
    # @!attribute [rw] index_reference
    #   A reference to the index object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] target_reference
    #   A reference to the object being detached from the index.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DetachFromIndexRequest AWS API Documentation
    #
    class DetachFromIndexRequest < Struct.new(
      :directory_arn,
      :index_reference,
      :target_reference)
      include Aws::Structure
    end

    # @!attribute [rw] detached_object_identifier
    #   The `ObjectIdentifier` of the object that was detached from the
    #   index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DetachFromIndexResponse AWS API Documentation
    #
    class DetachFromIndexResponse < Struct.new(
      :detached_object_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachObjectRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         parent_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         link_name: "LinkName", # required
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where objects reside. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] parent_reference
    #   The parent reference from which the object with the specified link
    #   name is detached.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] link_name
    #   The link name associated with the object that needs to be detached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DetachObjectRequest AWS API Documentation
    #
    class DetachObjectRequest < Struct.new(
      :directory_arn,
      :parent_reference,
      :link_name)
      include Aws::Structure
    end

    # @!attribute [rw] detached_object_identifier
    #   The `ObjectIdentifier` that was detached from the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DetachObjectResponse AWS API Documentation
    #
    class DetachObjectResponse < Struct.new(
      :detached_object_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachPolicyRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         policy_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where both objects reside. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] policy_reference
    #   Reference that identifies the policy object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object whose policy object will be
    #   detached.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DetachPolicyRequest AWS API Documentation
    #
    class DetachPolicyRequest < Struct.new(
      :directory_arn,
      :policy_reference,
      :object_reference)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DetachPolicyResponse AWS API Documentation
    #
    class DetachPolicyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DetachTypedLinkRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         typed_link_specifier: { # required
    #           typed_link_facet: { # required
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           source_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           target_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           identity_attribute_values: [ # required
    #             {
    #               attribute_name: "AttributeName", # required
    #               value: { # required
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) of the directory where you want to
    #   detach the typed link.
    #   @return [String]
    #
    # @!attribute [rw] typed_link_specifier
    #   Used to accept a typed link specifier as input.
    #   @return [Types::TypedLinkSpecifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DetachTypedLinkRequest AWS API Documentation
    #
    class DetachTypedLinkRequest < Struct.new(
      :directory_arn,
      :typed_link_specifier)
      include Aws::Structure
    end

    # Directory structure that includes the directory name and directory
    # ARN.
    #
    # @!attribute [rw] name
    #   The name of the directory.
    #   @return [String]
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the
    #   directory. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the directory. Can be either `Enabled`, `Disabled`, or
    #   `Deleted`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the directory was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/Directory AWS API Documentation
    #
    class Directory < Struct.new(
      :name,
      :directory_arn,
      :state,
      :creation_date_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory to disable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DisableDirectoryRequest AWS API Documentation
    #
    class DisableDirectoryRequest < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # @!attribute [rw] directory_arn
    #   The ARN of the directory that has been disabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DisableDirectoryResponse AWS API Documentation
    #
    class DisableDirectoryResponse < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory to enable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/EnableDirectoryRequest AWS API Documentation
    #
    class EnableDirectoryRequest < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # @!attribute [rw] directory_arn
    #   The ARN of the enabled directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/EnableDirectoryResponse AWS API Documentation
    #
    class EnableDirectoryResponse < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # A structure that contains `Name`, `ARN`, `Attributes`, ` Rules`, and
    # `ObjectTypes`. See [Facets][1] for more information.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/whatarefacets.html
    #
    # @!attribute [rw] name
    #   The name of the Facet.
    #   @return [String]
    #
    # @!attribute [rw] object_type
    #   The object type that is associated with the facet. See
    #   CreateFacetRequest$ObjectType for more details.
    #   @return [String]
    #
    # @!attribute [rw] facet_style
    #   There are two different styles that you can define on any given
    #   facet, `Static` and `Dynamic`. For static facets, all attributes
    #   must be defined in the schema. For dynamic facets, attributes can be
    #   defined during data plane operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/Facet AWS API Documentation
    #
    class Facet < Struct.new(
      :name,
      :object_type,
      :facet_style)
      include Aws::Structure
    end

    # An attribute that is associated with the Facet.
    #
    # @note When making an API call, you may pass FacetAttribute
    #   data as a hash:
    #
    #       {
    #         name: "AttributeName", # required
    #         attribute_definition: {
    #           type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME, VARIANT
    #           default_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #           is_immutable: false,
    #           rules: {
    #             "RuleKey" => {
    #               type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #               parameters: {
    #                 "RuleParameterKey" => "RuleParameterValue",
    #               },
    #             },
    #           },
    #         },
    #         attribute_reference: {
    #           target_facet_name: "FacetName", # required
    #           target_attribute_name: "AttributeName", # required
    #         },
    #         required_behavior: "REQUIRED_ALWAYS", # accepts REQUIRED_ALWAYS, NOT_REQUIRED
    #       }
    #
    # @!attribute [rw] name
    #   The name of the facet attribute.
    #   @return [String]
    #
    # @!attribute [rw] attribute_definition
    #   A facet attribute consists of either a definition or a reference.
    #   This structure contains the attribute definition. See [Attribute
    #   References][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences
    #   @return [Types::FacetAttributeDefinition]
    #
    # @!attribute [rw] attribute_reference
    #   An attribute reference that is associated with the attribute. See
    #   [Attribute References][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences
    #   @return [Types::FacetAttributeReference]
    #
    # @!attribute [rw] required_behavior
    #   The required behavior of the `FacetAttribute`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/FacetAttribute AWS API Documentation
    #
    class FacetAttribute < Struct.new(
      :name,
      :attribute_definition,
      :attribute_reference,
      :required_behavior)
      include Aws::Structure
    end

    # A facet attribute definition. See [Attribute References][1] for more
    # information.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences
    #
    # @note When making an API call, you may pass FacetAttributeDefinition
    #   data as a hash:
    #
    #       {
    #         type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME, VARIANT
    #         default_value: {
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now,
    #         },
    #         is_immutable: false,
    #         rules: {
    #           "RuleKey" => {
    #             type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #             parameters: {
    #               "RuleParameterKey" => "RuleParameterValue",
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The type of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value of the attribute (if configured).
    #   @return [Types::TypedAttributeValue]
    #
    # @!attribute [rw] is_immutable
    #   Whether the attribute is mutable or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] rules
    #   Validation rules attached to the attribute definition.
    #   @return [Hash<String,Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/FacetAttributeDefinition AWS API Documentation
    #
    class FacetAttributeDefinition < Struct.new(
      :type,
      :default_value,
      :is_immutable,
      :rules)
      include Aws::Structure
    end

    # The facet attribute reference that specifies the attribute definition
    # that contains the attribute facet name and attribute name.
    #
    # @note When making an API call, you may pass FacetAttributeReference
    #   data as a hash:
    #
    #       {
    #         target_facet_name: "FacetName", # required
    #         target_attribute_name: "AttributeName", # required
    #       }
    #
    # @!attribute [rw] target_facet_name
    #   The target facet name that is associated with the facet reference.
    #   See [Attribute References][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences
    #   @return [String]
    #
    # @!attribute [rw] target_attribute_name
    #   The target attribute name that is associated with the facet
    #   reference. See [Attribute References][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/FacetAttributeReference AWS API Documentation
    #
    class FacetAttributeReference < Struct.new(
      :target_facet_name,
      :target_attribute_name)
      include Aws::Structure
    end

    # A structure that contains information used to update an attribute.
    #
    # @note When making an API call, you may pass FacetAttributeUpdate
    #   data as a hash:
    #
    #       {
    #         attribute: {
    #           name: "AttributeName", # required
    #           attribute_definition: {
    #             type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME, VARIANT
    #             default_value: {
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now,
    #             },
    #             is_immutable: false,
    #             rules: {
    #               "RuleKey" => {
    #                 type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #                 parameters: {
    #                   "RuleParameterKey" => "RuleParameterValue",
    #                 },
    #               },
    #             },
    #           },
    #           attribute_reference: {
    #             target_facet_name: "FacetName", # required
    #             target_attribute_name: "AttributeName", # required
    #           },
    #           required_behavior: "REQUIRED_ALWAYS", # accepts REQUIRED_ALWAYS, NOT_REQUIRED
    #         },
    #         action: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to update.
    #   @return [Types::FacetAttribute]
    #
    # @!attribute [rw] action
    #   The action to perform when updating the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/FacetAttributeUpdate AWS API Documentation
    #
    class FacetAttributeUpdate < Struct.new(
      :attribute,
      :action)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAppliedSchemaVersionRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the applied schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetAppliedSchemaVersionRequest AWS API Documentation
    #
    class GetAppliedSchemaVersionRequest < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

    # @!attribute [rw] applied_schema_arn
    #   Current applied schema ARN, including the minor version in use if
    #   one was provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetAppliedSchemaVersionResponse AWS API Documentation
    #
    class GetAppliedSchemaVersionResponse < Struct.new(
      :applied_schema_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "DirectoryArn", # required
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetDirectoryRequest AWS API Documentation
    #
    class GetDirectoryRequest < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # @!attribute [rw] directory
    #   Metadata about the directory.
    #   @return [Types::Directory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetDirectoryResponse AWS API Documentation
    #
    class GetDirectoryResponse < Struct.new(
      :directory)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFacetRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         name: "FacetName", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the Facet.
    #   For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the facet to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetFacetRequest AWS API Documentation
    #
    class GetFacetRequest < Struct.new(
      :schema_arn,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] facet
    #   The Facet structure that is associated with the facet.
    #   @return [Types::Facet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetFacetResponse AWS API Documentation
    #
    class GetFacetResponse < Struct.new(
      :facet)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLinkAttributesRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         typed_link_specifier: { # required
    #           typed_link_facet: { # required
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           source_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           target_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           identity_attribute_values: [ # required
    #             {
    #               attribute_name: "AttributeName", # required
    #               value: { # required
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           ],
    #         },
    #         attribute_names: ["AttributeName"], # required
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where the typed link resides. For more information, see arns or
    #   [Typed link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [String]
    #
    # @!attribute [rw] typed_link_specifier
    #   Allows a typed link specifier to be accepted as input.
    #   @return [Types::TypedLinkSpecifier]
    #
    # @!attribute [rw] attribute_names
    #   A list of attribute names whose values will be retrieved.
    #   @return [Array<String>]
    #
    # @!attribute [rw] consistency_level
    #   The consistency level at which to retrieve the attributes on a typed
    #   link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetLinkAttributesRequest AWS API Documentation
    #
    class GetLinkAttributesRequest < Struct.new(
      :directory_arn,
      :typed_link_specifier,
      :attribute_names,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The attributes that are associated with the typed link.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetLinkAttributesResponse AWS API Documentation
    #
    class GetLinkAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetObjectAttributesRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #         schema_facet: { # required
    #           schema_arn: "Arn",
    #           facet_name: "FacetName",
    #         },
    #         attribute_names: ["AttributeName"], # required
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where the object resides.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object whose attributes will be
    #   retrieved.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] consistency_level
    #   The consistency level at which to retrieve the attributes on an
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] schema_facet
    #   Identifier for the facet whose attributes will be retrieved. See
    #   SchemaFacet for details.
    #   @return [Types::SchemaFacet]
    #
    # @!attribute [rw] attribute_names
    #   List of attribute names whose values will be retrieved.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetObjectAttributesRequest AWS API Documentation
    #
    class GetObjectAttributesRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :consistency_level,
      :schema_facet,
      :attribute_names)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The attributes that are associated with the object.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetObjectAttributesResponse AWS API Documentation
    #
    class GetObjectAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetObjectInformationRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory being retrieved.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   A reference to the object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] consistency_level
    #   The consistency level at which to retrieve the object information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetObjectInformationRequest AWS API Documentation
    #
    class GetObjectInformationRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] schema_facets
    #   The facets attached to the specified object. Although the response
    #   does not include minor version information, the most recently
    #   applied minor version of each Facet is in effect. See
    #   GetAppliedSchemaVersion for details.
    #   @return [Array<Types::SchemaFacet>]
    #
    # @!attribute [rw] object_identifier
    #   The `ObjectIdentifier` of the specified object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetObjectInformationResponse AWS API Documentation
    #
    class GetObjectInformationResponse < Struct.new(
      :schema_facets,
      :object_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSchemaAsJsonRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the schema to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetSchemaAsJsonRequest AWS API Documentation
    #
    class GetSchemaAsJsonRequest < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the retrieved schema.
    #   @return [String]
    #
    # @!attribute [rw] document
    #   The JSON representation of the schema document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetSchemaAsJsonResponse AWS API Documentation
    #
    class GetSchemaAsJsonResponse < Struct.new(
      :name,
      :document)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTypedLinkFacetInformationRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         name: "TypedLinkName", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the schema.
    #   For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name of the typed link facet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetTypedLinkFacetInformationRequest AWS API Documentation
    #
    class GetTypedLinkFacetInformationRequest < Struct.new(
      :schema_arn,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] identity_attribute_order
    #   The order of identity attributes for the facet, from most
    #   significant to least significant. The ability to filter typed links
    #   considers the order that the attributes are defined on the typed
    #   link facet. When providing ranges to typed link selection, any
    #   inexact ranges must be specified at the end. Any attributes that do
    #   not have a range specified are presumed to match the entire range.
    #   Filters are interpreted in the order of the attributes on the typed
    #   link facet, not the order in which they are supplied to any API
    #   calls. For more information about identity attributes, see [Typed
    #   link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetTypedLinkFacetInformationResponse AWS API Documentation
    #
    class GetTypedLinkFacetInformationResponse < Struct.new(
      :identity_attribute_order)
      include Aws::Structure
    end

    # Represents an index and an attached object.
    #
    # @!attribute [rw] indexed_attributes
    #   The indexed attribute values.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @!attribute [rw] object_identifier
    #   In response to ListIndex, the `ObjectIdentifier` of the object
    #   attached to the index. In response to ListAttachedIndices, the
    #   `ObjectIdentifier` of the index attached to the object. This field
    #   will always contain the `ObjectIdentifier` of the object on the
    #   opposite side of the attachment specified in the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/IndexAttachment AWS API Documentation
    #
    class IndexAttachment < Struct.new(
      :indexed_attributes,
      :object_identifier)
      include Aws::Structure
    end

    # The action to take on a typed link attribute value. Updates are only
    # supported for attributes which don’t contribute to link identity.
    #
    # @note When making an API call, you may pass LinkAttributeAction
    #   data as a hash:
    #
    #       {
    #         attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #         attribute_update_value: {
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] attribute_action_type
    #   A type that can be either `UPDATE_OR_CREATE` or `DELETE`.
    #   @return [String]
    #
    # @!attribute [rw] attribute_update_value
    #   The value that you want to update to.
    #   @return [Types::TypedAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/LinkAttributeAction AWS API Documentation
    #
    class LinkAttributeAction < Struct.new(
      :attribute_action_type,
      :attribute_update_value)
      include Aws::Structure
    end

    # Structure that contains attribute update information.
    #
    # @note When making an API call, you may pass LinkAttributeUpdate
    #   data as a hash:
    #
    #       {
    #         attribute_key: {
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         attribute_action: {
    #           attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #           attribute_update_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] attribute_key
    #   The key of the attribute being updated.
    #   @return [Types::AttributeKey]
    #
    # @!attribute [rw] attribute_action
    #   The action to perform as part of the attribute update.
    #   @return [Types::LinkAttributeAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/LinkAttributeUpdate AWS API Documentation
    #
    class LinkAttributeUpdate < Struct.new(
      :attribute_key,
      :attribute_action)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAppliedSchemaArnsRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         schema_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory you are listing.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   The response for `ListAppliedSchemaArns` when this parameter is used
    #   will list all minor version ARNs for a major version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListAppliedSchemaArnsRequest AWS API Documentation
    #
    class ListAppliedSchemaArnsRequest < Struct.new(
      :directory_arn,
      :schema_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] schema_arns
    #   The ARNs of schemas that are applied to the directory.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListAppliedSchemaArnsResponse AWS API Documentation
    #
    class ListAppliedSchemaArnsResponse < Struct.new(
      :schema_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAttachedIndicesRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         target_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory.
    #   @return [String]
    #
    # @!attribute [rw] target_reference
    #   A reference to the object that has indices attached.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] consistency_level
    #   The consistency level to use for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListAttachedIndicesRequest AWS API Documentation
    #
    class ListAttachedIndicesRequest < Struct.new(
      :directory_arn,
      :target_reference,
      :next_token,
      :max_results,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] index_attachments
    #   The indices attached to the specified object.
    #   @return [Array<Types::IndexAttachment>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListAttachedIndicesResponse AWS API Documentation
    #
    class ListAttachedIndicesResponse < Struct.new(
      :index_attachments,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDevelopmentSchemaArnsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListDevelopmentSchemaArnsRequest AWS API Documentation
    #
    class ListDevelopmentSchemaArnsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] schema_arns
    #   The ARNs of retrieved development schemas.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListDevelopmentSchemaArnsResponse AWS API Documentation
    #
    class ListDevelopmentSchemaArnsResponse < Struct.new(
      :schema_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDirectoriesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         state: "ENABLED", # accepts ENABLED, DISABLED, DELETED
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the directories in the list. Can be either Enabled,
    #   Disabled, or Deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListDirectoriesRequest AWS API Documentation
    #
    class ListDirectoriesRequest < Struct.new(
      :next_token,
      :max_results,
      :state)
      include Aws::Structure
    end

    # @!attribute [rw] directories
    #   Lists all directories that are associated with your account in
    #   pagination fashion.
    #   @return [Array<Types::Directory>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListDirectoriesResponse AWS API Documentation
    #
    class ListDirectoriesResponse < Struct.new(
      :directories,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFacetAttributesRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         name: "FacetName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the schema where the facet resides.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the facet whose attributes will be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListFacetAttributesRequest AWS API Documentation
    #
    class ListFacetAttributesRequest < Struct.new(
      :schema_arn,
      :name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The attributes attached to the facet.
    #   @return [Array<Types::FacetAttribute>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListFacetAttributesResponse AWS API Documentation
    #
    class ListFacetAttributesResponse < Struct.new(
      :attributes,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFacetNamesRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) to retrieve facet names from.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListFacetNamesRequest AWS API Documentation
    #
    class ListFacetNamesRequest < Struct.new(
      :schema_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] facet_names
    #   The names of facets that exist within the schema.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListFacetNamesResponse AWS API Documentation
    #
    class ListFacetNamesResponse < Struct.new(
      :facet_names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIncomingTypedLinksRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         filter_attribute_ranges: [
    #           {
    #             attribute_name: "AttributeName",
    #             range: { # required
    #               start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               start_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #               end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               end_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #         filter_typed_link: {
    #           schema_arn: "Arn", # required
    #           typed_link_name: "TypedLinkName", # required
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) of the directory where you want to
    #   list the typed links.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object whose attributes will be
    #   listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] filter_attribute_ranges
    #   Provides range filters for multiple attributes. When providing
    #   ranges to typed link selection, any inexact ranges must be specified
    #   at the end. Any attributes that do not have a range specified are
    #   presumed to match the entire range.
    #   @return [Array<Types::TypedLinkAttributeRange>]
    #
    # @!attribute [rw] filter_typed_link
    #   Filters are interpreted in the order of the attributes on the typed
    #   link facet, not the order in which they are supplied to any API
    #   calls.
    #   @return [Types::TypedLinkSchemaAndFacetName]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] consistency_level
    #   The consistency level to execute the request at.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListIncomingTypedLinksRequest AWS API Documentation
    #
    class ListIncomingTypedLinksRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] link_specifiers
    #   Returns one or more typed link specifiers as output.
    #   @return [Array<Types::TypedLinkSpecifier>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListIncomingTypedLinksResponse AWS API Documentation
    #
    class ListIncomingTypedLinksResponse < Struct.new(
      :link_specifiers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIndexRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         ranges_on_indexed_values: [
    #           {
    #             attribute_key: {
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             range: {
    #               start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               start_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #               end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               end_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #         index_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory that the index exists in.
    #   @return [String]
    #
    # @!attribute [rw] ranges_on_indexed_values
    #   Specifies the ranges of indexed values that you want to query.
    #   @return [Array<Types::ObjectAttributeRange>]
    #
    # @!attribute [rw] index_reference
    #   The reference to the index to list.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects in a single page to retrieve from the
    #   index during a request. For more information, see [AWS Directory
    #   Service Limits][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/limits.html#limits_cd
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] consistency_level
    #   The consistency level to execute the request at.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListIndexRequest AWS API Documentation
    #
    class ListIndexRequest < Struct.new(
      :directory_arn,
      :ranges_on_indexed_values,
      :index_reference,
      :max_results,
      :next_token,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] index_attachments
    #   The objects and indexed values attached to the index.
    #   @return [Array<Types::IndexAttachment>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListIndexResponse AWS API Documentation
    #
    class ListIndexResponse < Struct.new(
      :index_attachments,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListManagedSchemaArnsRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The response for ListManagedSchemaArns. When this parameter is used,
    #   all minor version ARNs for a major version are listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListManagedSchemaArnsRequest AWS API Documentation
    #
    class ListManagedSchemaArnsRequest < Struct.new(
      :schema_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] schema_arns
    #   The ARNs for all AWS managed schemas.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListManagedSchemaArnsResponse AWS API Documentation
    #
    class ListManagedSchemaArnsResponse < Struct.new(
      :schema_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListObjectAttributesRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #         facet_filter: {
    #           schema_arn: "Arn",
    #           facet_name: "FacetName",
    #         },
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where the object resides. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object whose attributes will be
    #   listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be retrieved in a single call. This
    #   is an approximate number.
    #   @return [Integer]
    #
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @!attribute [rw] facet_filter
    #   Used to filter the list of object attributes that are associated
    #   with a certain facet.
    #   @return [Types::SchemaFacet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectAttributesRequest AWS API Documentation
    #
    class ListObjectAttributesRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level,
      :facet_filter)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   Attributes map that is associated with the object. `AttributeArn` is
    #   the key, and attribute value is the value.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectAttributesResponse AWS API Documentation
    #
    class ListObjectAttributesResponse < Struct.new(
      :attributes,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListObjectChildrenRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where the object resides. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object for which child objects are
    #   being listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be retrieved in a single call. This
    #   is an approximate number.
    #   @return [Integer]
    #
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectChildrenRequest AWS API Documentation
    #
    class ListObjectChildrenRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] children
    #   Children structure, which is a map with key as the `LinkName` and
    #   `ObjectIdentifier` as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectChildrenResponse AWS API Documentation
    #
    class ListObjectChildrenResponse < Struct.new(
      :children,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListObjectParentPathsRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory to which the parent path applies.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object whose parent paths are
    #   listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be retrieved in a single call. This
    #   is an approximate number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectParentPathsRequest AWS API Documentation
    #
    class ListObjectParentPathsRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] path_to_object_identifiers_list
    #   Returns the path to the `ObjectIdentifiers` that are associated with
    #   the directory.
    #   @return [Array<Types::PathToObjectIdentifiers>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectParentPathsResponse AWS API Documentation
    #
    class ListObjectParentPathsResponse < Struct.new(
      :path_to_object_identifiers_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListObjectParentsRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where the object resides. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object for which parent objects
    #   are being listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be retrieved in a single call. This
    #   is an approximate number.
    #   @return [Integer]
    #
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectParentsRequest AWS API Documentation
    #
    class ListObjectParentsRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] parents
    #   The parent structure, which is a map with key as the
    #   `ObjectIdentifier` and LinkName as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectParentsResponse AWS API Documentation
    #
    class ListObjectParentsResponse < Struct.new(
      :parents,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListObjectPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where objects reside. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object for which policies will be
    #   listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be retrieved in a single call. This
    #   is an approximate number.
    #   @return [Integer]
    #
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectPoliciesRequest AWS API Documentation
    #
    class ListObjectPoliciesRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] attached_policy_ids
    #   A list of policy `ObjectIdentifiers`, that are attached to the
    #   object.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectPoliciesResponse AWS API Documentation
    #
    class ListObjectPoliciesResponse < Struct.new(
      :attached_policy_ids,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOutgoingTypedLinksRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         filter_attribute_ranges: [
    #           {
    #             attribute_name: "AttributeName",
    #             range: { # required
    #               start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               start_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #               end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #               end_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #         filter_typed_link: {
    #           schema_arn: "Arn", # required
    #           typed_link_name: "TypedLinkName", # required
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) of the directory where you want to
    #   list the typed links.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   A reference that identifies the object whose attributes will be
    #   listed.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] filter_attribute_ranges
    #   Provides range filters for multiple attributes. When providing
    #   ranges to typed link selection, any inexact ranges must be specified
    #   at the end. Any attributes that do not have a range specified are
    #   presumed to match the entire range.
    #   @return [Array<Types::TypedLinkAttributeRange>]
    #
    # @!attribute [rw] filter_typed_link
    #   Filters are interpreted in the order of the attributes defined on
    #   the typed link facet, not the order they are supplied to any API
    #   calls.
    #   @return [Types::TypedLinkSchemaAndFacetName]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] consistency_level
    #   The consistency level to execute the request at.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListOutgoingTypedLinksRequest AWS API Documentation
    #
    class ListOutgoingTypedLinksRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :filter_attribute_ranges,
      :filter_typed_link,
      :next_token,
      :max_results,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] typed_link_specifiers
    #   Returns a typed link specifier as output.
    #   @return [Array<Types::TypedLinkSpecifier>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListOutgoingTypedLinksResponse AWS API Documentation
    #
    class ListOutgoingTypedLinksResponse < Struct.new(
      :typed_link_specifiers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPolicyAttachmentsRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         policy_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where objects reside. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] policy_reference
    #   The reference that identifies the policy object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be retrieved in a single call. This
    #   is an approximate number.
    #   @return [Integer]
    #
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListPolicyAttachmentsRequest AWS API Documentation
    #
    class ListPolicyAttachmentsRequest < Struct.new(
      :directory_arn,
      :policy_reference,
      :next_token,
      :max_results,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] object_identifiers
    #   A list of `ObjectIdentifiers` to which the policy is attached.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListPolicyAttachmentsResponse AWS API Documentation
    #
    class ListPolicyAttachmentsResponse < Struct.new(
      :object_identifiers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPublishedSchemaArnsRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The response for `ListPublishedSchemaArns` when this parameter is
    #   used will list all minor version ARNs for a major version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListPublishedSchemaArnsRequest AWS API Documentation
    #
    class ListPublishedSchemaArnsRequest < Struct.new(
      :schema_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] schema_arns
    #   The ARNs of published schemas.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListPublishedSchemaArnsResponse AWS API Documentation
    #
    class ListPublishedSchemaArnsResponse < Struct.new(
      :schema_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. Tagging is only
    #   supported for directories.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token. This is for future use. Currently pagination
    #   is not supported for tagging.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The `MaxResults` parameter sets the maximum number of results
    #   returned in a single page. This is for future use and is not
    #   supported currently.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tag key value pairs that are associated with the response.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTypedLinkFacetAttributesRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         name: "TypedLinkName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the schema.
    #   For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name of the typed link facet.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListTypedLinkFacetAttributesRequest AWS API Documentation
    #
    class ListTypedLinkFacetAttributesRequest < Struct.new(
      :schema_arn,
      :name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   An ordered set of attributes associate with the typed link.
    #   @return [Array<Types::TypedLinkAttributeDefinition>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListTypedLinkFacetAttributesResponse AWS API Documentation
    #
    class ListTypedLinkFacetAttributesResponse < Struct.new(
      :attributes,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTypedLinkFacetNamesRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the schema.
    #   For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListTypedLinkFacetNamesRequest AWS API Documentation
    #
    class ListTypedLinkFacetNamesRequest < Struct.new(
      :schema_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] facet_names
    #   The names of typed link facets that exist within the schema.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListTypedLinkFacetNamesResponse AWS API Documentation
    #
    class ListTypedLinkFacetNamesResponse < Struct.new(
      :facet_names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass LookupPolicyRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the
    #   Directory. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object whose policies will be looked
    #   up.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be retrieved in a single call. This
    #   is an approximate number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/LookupPolicyRequest AWS API Documentation
    #
    class LookupPolicyRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] policy_to_path_list
    #   Provides list of path to policies. Policies contain `PolicyId`,
    #   `ObjectIdentifier`, and `PolicyType`. For more information, see
    #   [Policies][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies
    #   @return [Array<Types::PolicyToPath>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/LookupPolicyResponse AWS API Documentation
    #
    class LookupPolicyResponse < Struct.new(
      :policy_to_path_list,
      :next_token)
      include Aws::Structure
    end

    # The action to take on the object attribute.
    #
    # @note When making an API call, you may pass ObjectAttributeAction
    #   data as a hash:
    #
    #       {
    #         object_attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #         object_attribute_update_value: {
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] object_attribute_action_type
    #   A type that can be either `Update` or `Delete`.
    #   @return [String]
    #
    # @!attribute [rw] object_attribute_update_value
    #   The value that you want to update to.
    #   @return [Types::TypedAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ObjectAttributeAction AWS API Documentation
    #
    class ObjectAttributeAction < Struct.new(
      :object_attribute_action_type,
      :object_attribute_update_value)
      include Aws::Structure
    end

    # A range of attributes.
    #
    # @note When making an API call, you may pass ObjectAttributeRange
    #   data as a hash:
    #
    #       {
    #         attribute_key: {
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         range: {
    #           start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #           start_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #           end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #           end_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] attribute_key
    #   The key of the attribute that the attribute range covers.
    #   @return [Types::AttributeKey]
    #
    # @!attribute [rw] range
    #   The range of attribute values being selected.
    #   @return [Types::TypedAttributeValueRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ObjectAttributeRange AWS API Documentation
    #
    class ObjectAttributeRange < Struct.new(
      :attribute_key,
      :range)
      include Aws::Structure
    end

    # Structure that contains attribute update information.
    #
    # @note When making an API call, you may pass ObjectAttributeUpdate
    #   data as a hash:
    #
    #       {
    #         object_attribute_key: {
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         object_attribute_action: {
    #           object_attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #           object_attribute_update_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] object_attribute_key
    #   The key of the attribute being updated.
    #   @return [Types::AttributeKey]
    #
    # @!attribute [rw] object_attribute_action
    #   The action to perform as part of the attribute update.
    #   @return [Types::ObjectAttributeAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ObjectAttributeUpdate AWS API Documentation
    #
    class ObjectAttributeUpdate < Struct.new(
      :object_attribute_key,
      :object_attribute_action)
      include Aws::Structure
    end

    # The reference that identifies an object.
    #
    # @note When making an API call, you may pass ObjectReference
    #   data as a hash:
    #
    #       {
    #         selector: "SelectorObjectReference",
    #       }
    #
    # @!attribute [rw] selector
    #   A path selector supports easy selection of an object by the
    #   parent/child links leading to it from the directory root. Use the
    #   link names from each parent/child link to construct the path. Path
    #   selectors start with a slash (/) and link names are separated by
    #   slashes. For more information about paths, see [Accessing
    #   Objects][1]. You can identify an object in one of the following
    #   ways:
    #
    #   * *$ObjectIdentifier* - An object identifier is an opaque string
    #     provided by Amazon Cloud Directory. When creating objects, the
    #     system will provide you with the identifier of the created object.
    #     An object’s identifier is immutable and no two objects will ever
    #     share the same object identifier
    #
    #   * */some/path* - Identifies the object based on path
    #
    #   * *#SomeBatchReference* - Identifies the object in a batch call
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#accessingobjects
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ObjectReference AWS API Documentation
    #
    class ObjectReference < Struct.new(
      :selector)
      include Aws::Structure
    end

    # Returns the path to the `ObjectIdentifiers` that is associated with
    # the directory.
    #
    # @!attribute [rw] path
    #   The path that is used to identify the object starting from directory
    #   root.
    #   @return [String]
    #
    # @!attribute [rw] object_identifiers
    #   Lists `ObjectIdentifiers` starting from directory root to the object
    #   in the request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/PathToObjectIdentifiers AWS API Documentation
    #
    class PathToObjectIdentifiers < Struct.new(
      :path,
      :object_identifiers)
      include Aws::Structure
    end

    # Contains the `PolicyType`, `PolicyId`, and the `ObjectIdentifier` to
    # which it is attached. For more information, see [Policies][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies
    #
    # @!attribute [rw] policy_id
    #   The ID of `PolicyAttachment`.
    #   @return [String]
    #
    # @!attribute [rw] object_identifier
    #   The `ObjectIdentifier` that is associated with `PolicyAttachment`.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of policy that can be associated with `PolicyAttachment`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/PolicyAttachment AWS API Documentation
    #
    class PolicyAttachment < Struct.new(
      :policy_id,
      :object_identifier,
      :policy_type)
      include Aws::Structure
    end

    # Used when a regular object exists in a Directory and you want to find
    # all of the policies that are associated with that object and the
    # parent to that object.
    #
    # @!attribute [rw] path
    #   The path that is referenced from the root.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   List of policy objects.
    #   @return [Array<Types::PolicyAttachment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/PolicyToPath AWS API Documentation
    #
    class PolicyToPath < Struct.new(
      :path,
      :policies)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PublishSchemaRequest
    #   data as a hash:
    #
    #       {
    #         development_schema_arn: "Arn", # required
    #         version: "Version", # required
    #         minor_version: "Version",
    #         name: "SchemaName",
    #       }
    #
    # @!attribute [rw] development_schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the
    #   development schema. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The major version under which the schema will be published. Schemas
    #   have both a major and minor version associated with them.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   The minor version under which the schema will be published. This
    #   parameter is recommended. Schemas have both a major and minor
    #   version associated with them.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name under which the schema will be published. If this is
    #   not provided, the development schema is considered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/PublishSchemaRequest AWS API Documentation
    #
    class PublishSchemaRequest < Struct.new(
      :development_schema_arn,
      :version,
      :minor_version,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] published_schema_arn
    #   The ARN that is associated with the published schema. For more
    #   information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/PublishSchemaResponse AWS API Documentation
    #
    class PublishSchemaResponse < Struct.new(
      :published_schema_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutSchemaFromJsonRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         document: "SchemaJsonDocument", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the schema to update.
    #   @return [String]
    #
    # @!attribute [rw] document
    #   The replacement JSON schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/PutSchemaFromJsonRequest AWS API Documentation
    #
    class PutSchemaFromJsonRequest < Struct.new(
      :schema_arn,
      :document)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the schema to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/PutSchemaFromJsonResponse AWS API Documentation
    #
    class PutSchemaFromJsonResponse < Struct.new(
      :arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveFacetFromObjectRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         schema_facet: { # required
    #           schema_arn: "Arn",
    #           facet_name: "FacetName",
    #         },
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory in which the object resides.
    #   @return [String]
    #
    # @!attribute [rw] schema_facet
    #   The facet to remove. See SchemaFacet for details.
    #   @return [Types::SchemaFacet]
    #
    # @!attribute [rw] object_reference
    #   A reference to the object to remove the facet from.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/RemoveFacetFromObjectRequest AWS API Documentation
    #
    class RemoveFacetFromObjectRequest < Struct.new(
      :directory_arn,
      :schema_facet,
      :object_reference)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/RemoveFacetFromObjectResponse AWS API Documentation
    #
    class RemoveFacetFromObjectResponse < Aws::EmptyStructure; end

    # Contains an Amazon Resource Name (ARN) and parameters that are
    # associated with the rule.
    #
    # @note When making an API call, you may pass Rule
    #   data as a hash:
    #
    #       {
    #         type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #         parameters: {
    #           "RuleParameterKey" => "RuleParameterValue",
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The type of attribute validation rule.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The minimum and maximum parameters that are associated with the
    #   rule.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :type,
      :parameters)
      include Aws::Structure
    end

    # A facet.
    #
    # @note When making an API call, you may pass SchemaFacet
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn",
    #         facet_name: "FacetName",
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The ARN of the schema that contains the facet with no minor
    #   component. See arns and [In-Place Schema Upgrade][1] for a
    #   description of when to provide minor versions.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/inplaceschemaupgrade.html
    #   @return [String]
    #
    # @!attribute [rw] facet_name
    #   The name of the facet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/SchemaFacet AWS API Documentation
    #
    class SchemaFacet < Struct.new(
      :schema_arn,
      :facet_name)
      include Aws::Structure
    end

    # The tag structure that contains a tag key and value.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The key that is associated with the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that is associated with the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. Tagging is only
    #   supported for directories.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Represents the data for a typed attribute. You can set one, and only
    # one, of the elements. Each attribute in an item is a name-value pair.
    # Attributes have a single value.
    #
    # @note When making an API call, you may pass TypedAttributeValue
    #   data as a hash:
    #
    #       {
    #         string_value: "StringAttributeValue",
    #         binary_value: "data",
    #         boolean_value: false,
    #         number_value: "NumberAttributeValue",
    #         datetime_value: Time.now,
    #       }
    #
    # @!attribute [rw] string_value
    #   A string data value.
    #   @return [String]
    #
    # @!attribute [rw] binary_value
    #   A binary data value.
    #   @return [String]
    #
    # @!attribute [rw] boolean_value
    #   A Boolean data value.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_value
    #   A number data value.
    #   @return [String]
    #
    # @!attribute [rw] datetime_value
    #   A date and time value.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/TypedAttributeValue AWS API Documentation
    #
    class TypedAttributeValue < Struct.new(
      :string_value,
      :binary_value,
      :boolean_value,
      :number_value,
      :datetime_value)
      include Aws::Structure
    end

    # A range of attribute values. For more information, see [Range
    # Filters][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#rangefilters
    #
    # @note When making an API call, you may pass TypedAttributeValueRange
    #   data as a hash:
    #
    #       {
    #         start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #         start_value: {
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now,
    #         },
    #         end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #         end_value: {
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] start_mode
    #   The inclusive or exclusive range start.
    #   @return [String]
    #
    # @!attribute [rw] start_value
    #   The value to start the range at.
    #   @return [Types::TypedAttributeValue]
    #
    # @!attribute [rw] end_mode
    #   The inclusive or exclusive range end.
    #   @return [String]
    #
    # @!attribute [rw] end_value
    #   The attribute value to terminate the range at.
    #   @return [Types::TypedAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/TypedAttributeValueRange AWS API Documentation
    #
    class TypedAttributeValueRange < Struct.new(
      :start_mode,
      :start_value,
      :end_mode,
      :end_value)
      include Aws::Structure
    end

    # A typed link attribute definition.
    #
    # @note When making an API call, you may pass TypedLinkAttributeDefinition
    #   data as a hash:
    #
    #       {
    #         name: "AttributeName", # required
    #         type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME, VARIANT
    #         default_value: {
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now,
    #         },
    #         is_immutable: false,
    #         rules: {
    #           "RuleKey" => {
    #             type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #             parameters: {
    #               "RuleParameterKey" => "RuleParameterValue",
    #             },
    #           },
    #         },
    #         required_behavior: "REQUIRED_ALWAYS", # required, accepts REQUIRED_ALWAYS, NOT_REQUIRED
    #       }
    #
    # @!attribute [rw] name
    #   The unique name of the typed link attribute.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value of the attribute (if configured).
    #   @return [Types::TypedAttributeValue]
    #
    # @!attribute [rw] is_immutable
    #   Whether the attribute is mutable or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] rules
    #   Validation rules that are attached to the attribute definition.
    #   @return [Hash<String,Types::Rule>]
    #
    # @!attribute [rw] required_behavior
    #   The required behavior of the `TypedLinkAttributeDefinition`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/TypedLinkAttributeDefinition AWS API Documentation
    #
    class TypedLinkAttributeDefinition < Struct.new(
      :name,
      :type,
      :default_value,
      :is_immutable,
      :rules,
      :required_behavior)
      include Aws::Structure
    end

    # Identifies the range of attributes that are used by a specified
    # filter.
    #
    # @note When making an API call, you may pass TypedLinkAttributeRange
    #   data as a hash:
    #
    #       {
    #         attribute_name: "AttributeName",
    #         range: { # required
    #           start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #           start_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #           end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #           end_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] attribute_name
    #   The unique name of the typed link attribute.
    #   @return [String]
    #
    # @!attribute [rw] range
    #   The range of attribute values that are being selected.
    #   @return [Types::TypedAttributeValueRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/TypedLinkAttributeRange AWS API Documentation
    #
    class TypedLinkAttributeRange < Struct.new(
      :attribute_name,
      :range)
      include Aws::Structure
    end

    # Defines the typed links structure and its attributes. To create a
    # typed link facet, use the CreateTypedLinkFacet API.
    #
    # @note When making an API call, you may pass TypedLinkFacet
    #   data as a hash:
    #
    #       {
    #         name: "TypedLinkName", # required
    #         attributes: [ # required
    #           {
    #             name: "AttributeName", # required
    #             type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME, VARIANT
    #             default_value: {
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now,
    #             },
    #             is_immutable: false,
    #             rules: {
    #               "RuleKey" => {
    #                 type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #                 parameters: {
    #                   "RuleParameterKey" => "RuleParameterValue",
    #                 },
    #               },
    #             },
    #             required_behavior: "REQUIRED_ALWAYS", # required, accepts REQUIRED_ALWAYS, NOT_REQUIRED
    #           },
    #         ],
    #         identity_attribute_order: ["AttributeName"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The unique name of the typed link facet.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A set of key-value pairs associated with the typed link. Typed link
    #   attributes are used when you have data values that are related to
    #   the link itself, and not to one of the two objects being linked.
    #   Identity attributes also serve to distinguish the link from others
    #   of the same type between the same objects.
    #   @return [Array<Types::TypedLinkAttributeDefinition>]
    #
    # @!attribute [rw] identity_attribute_order
    #   The set of attributes that distinguish links made from this facet
    #   from each other, in the order of significance. Listing typed links
    #   can filter on the values of these attributes. See
    #   ListOutgoingTypedLinks and ListIncomingTypedLinks for details.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/TypedLinkFacet AWS API Documentation
    #
    class TypedLinkFacet < Struct.new(
      :name,
      :attributes,
      :identity_attribute_order)
      include Aws::Structure
    end

    # A typed link facet attribute update.
    #
    # @note When making an API call, you may pass TypedLinkFacetAttributeUpdate
    #   data as a hash:
    #
    #       {
    #         attribute: { # required
    #           name: "AttributeName", # required
    #           type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME, VARIANT
    #           default_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #           is_immutable: false,
    #           rules: {
    #             "RuleKey" => {
    #               type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #               parameters: {
    #                 "RuleParameterKey" => "RuleParameterValue",
    #               },
    #             },
    #           },
    #           required_behavior: "REQUIRED_ALWAYS", # required, accepts REQUIRED_ALWAYS, NOT_REQUIRED
    #         },
    #         action: "CREATE_OR_UPDATE", # required, accepts CREATE_OR_UPDATE, DELETE
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to update.
    #   @return [Types::TypedLinkAttributeDefinition]
    #
    # @!attribute [rw] action
    #   The action to perform when updating the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/TypedLinkFacetAttributeUpdate AWS API Documentation
    #
    class TypedLinkFacetAttributeUpdate < Struct.new(
      :attribute,
      :action)
      include Aws::Structure
    end

    # Identifies the schema Amazon Resource Name (ARN) and facet name for
    # the typed link.
    #
    # @note When making an API call, you may pass TypedLinkSchemaAndFacetName
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         typed_link_name: "TypedLinkName", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the schema.
    #   For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] typed_link_name
    #   The unique name of the typed link facet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/TypedLinkSchemaAndFacetName AWS API Documentation
    #
    class TypedLinkSchemaAndFacetName < Struct.new(
      :schema_arn,
      :typed_link_name)
      include Aws::Structure
    end

    # Contains all the information that is used to uniquely identify a typed
    # link. The parameters discussed in this topic are used to uniquely
    # specify the typed link being operated on. The AttachTypedLink API
    # returns a typed link specifier while the DetachTypedLink API accepts
    # one as input. Similarly, the ListIncomingTypedLinks and
    # ListOutgoingTypedLinks API operations provide typed link specifiers as
    # output. You can also construct a typed link specifier from scratch.
    #
    # @note When making an API call, you may pass TypedLinkSpecifier
    #   data as a hash:
    #
    #       {
    #         typed_link_facet: { # required
    #           schema_arn: "Arn", # required
    #           typed_link_name: "TypedLinkName", # required
    #         },
    #         source_object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         target_object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         identity_attribute_values: [ # required
    #           {
    #             attribute_name: "AttributeName", # required
    #             value: { # required
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] typed_link_facet
    #   Identifies the typed link facet that is associated with the typed
    #   link.
    #   @return [Types::TypedLinkSchemaAndFacetName]
    #
    # @!attribute [rw] source_object_reference
    #   Identifies the source object that the typed link will attach to.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] target_object_reference
    #   Identifies the target object that the typed link will attach to.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] identity_attribute_values
    #   Identifies the attribute value to update.
    #   @return [Array<Types::AttributeNameAndValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/TypedLinkSpecifier AWS API Documentation
    #
    class TypedLinkSpecifier < Struct.new(
      :typed_link_facet,
      :source_object_reference,
      :target_object_reference,
      :identity_attribute_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. Tagging is only
    #   supported for directories.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys of the tag that need to be removed from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateFacetRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         name: "FacetName", # required
    #         attribute_updates: [
    #           {
    #             attribute: {
    #               name: "AttributeName", # required
    #               attribute_definition: {
    #                 type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME, VARIANT
    #                 default_value: {
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #                 is_immutable: false,
    #                 rules: {
    #                   "RuleKey" => {
    #                     type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #                     parameters: {
    #                       "RuleParameterKey" => "RuleParameterValue",
    #                     },
    #                   },
    #                 },
    #               },
    #               attribute_reference: {
    #                 target_facet_name: "FacetName", # required
    #                 target_attribute_name: "AttributeName", # required
    #               },
    #               required_behavior: "REQUIRED_ALWAYS", # accepts REQUIRED_ALWAYS, NOT_REQUIRED
    #             },
    #             action: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #           },
    #         ],
    #         object_type: "NODE", # accepts NODE, LEAF_NODE, POLICY, INDEX
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the Facet.
    #   For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the facet.
    #   @return [String]
    #
    # @!attribute [rw] attribute_updates
    #   List of attributes that need to be updated in a given schema Facet.
    #   Each attribute is followed by `AttributeAction`, which specifies the
    #   type of update operation to perform.
    #   @return [Array<Types::FacetAttributeUpdate>]
    #
    # @!attribute [rw] object_type
    #   The object type that is associated with the facet. See
    #   CreateFacetRequest$ObjectType for more details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateFacetRequest AWS API Documentation
    #
    class UpdateFacetRequest < Struct.new(
      :schema_arn,
      :name,
      :attribute_updates,
      :object_type)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateFacetResponse AWS API Documentation
    #
    class UpdateFacetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateLinkAttributesRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         typed_link_specifier: { # required
    #           typed_link_facet: { # required
    #             schema_arn: "Arn", # required
    #             typed_link_name: "TypedLinkName", # required
    #           },
    #           source_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           target_object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           identity_attribute_values: [ # required
    #             {
    #               attribute_name: "AttributeName", # required
    #               value: { # required
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           ],
    #         },
    #         attribute_updates: [ # required
    #           {
    #             attribute_key: {
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             attribute_action: {
    #               attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #               attribute_update_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where the updated typed link resides. For more information, see arns
    #   or [Typed link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [String]
    #
    # @!attribute [rw] typed_link_specifier
    #   Allows a typed link specifier to be accepted as input.
    #   @return [Types::TypedLinkSpecifier]
    #
    # @!attribute [rw] attribute_updates
    #   The attributes update structure.
    #   @return [Array<Types::LinkAttributeUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateLinkAttributesRequest AWS API Documentation
    #
    class UpdateLinkAttributesRequest < Struct.new(
      :directory_arn,
      :typed_link_specifier,
      :attribute_updates)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateLinkAttributesResponse AWS API Documentation
    #
    class UpdateLinkAttributesResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateObjectAttributesRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         attribute_updates: [ # required
    #           {
    #             object_attribute_key: {
    #               schema_arn: "Arn", # required
    #               facet_name: "FacetName", # required
    #               name: "AttributeName", # required
    #             },
    #             object_attribute_action: {
    #               object_attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #               object_attribute_update_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The Amazon Resource Name (ARN) that is associated with the Directory
    #   where the object resides. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   The reference that identifies the object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] attribute_updates
    #   The attributes update structure.
    #   @return [Array<Types::ObjectAttributeUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateObjectAttributesRequest AWS API Documentation
    #
    class UpdateObjectAttributesRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :attribute_updates)
      include Aws::Structure
    end

    # @!attribute [rw] object_identifier
    #   The `ObjectIdentifier` of the updated object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateObjectAttributesResponse AWS API Documentation
    #
    class UpdateObjectAttributesResponse < Struct.new(
      :object_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSchemaRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         name: "SchemaName", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) of the development schema. For more
    #   information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateSchemaRequest AWS API Documentation
    #
    class UpdateSchemaRequest < Struct.new(
      :schema_arn,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   The ARN that is associated with the updated schema. For more
    #   information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateSchemaResponse AWS API Documentation
    #
    class UpdateSchemaResponse < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTypedLinkFacetRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #         name: "TypedLinkName", # required
    #         attribute_updates: [ # required
    #           {
    #             attribute: { # required
    #               name: "AttributeName", # required
    #               type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME, VARIANT
    #               default_value: {
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #               is_immutable: false,
    #               rules: {
    #                 "RuleKey" => {
    #                   type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #                   parameters: {
    #                     "RuleParameterKey" => "RuleParameterValue",
    #                   },
    #                 },
    #               },
    #               required_behavior: "REQUIRED_ALWAYS", # required, accepts REQUIRED_ALWAYS, NOT_REQUIRED
    #             },
    #             action: "CREATE_OR_UPDATE", # required, accepts CREATE_OR_UPDATE, DELETE
    #           },
    #         ],
    #         identity_attribute_order: ["AttributeName"], # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   The Amazon Resource Name (ARN) that is associated with the schema.
    #   For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name of the typed link facet.
    #   @return [String]
    #
    # @!attribute [rw] attribute_updates
    #   Attributes update structure.
    #   @return [Array<Types::TypedLinkFacetAttributeUpdate>]
    #
    # @!attribute [rw] identity_attribute_order
    #   The order of identity attributes for the facet, from most
    #   significant to least significant. The ability to filter typed links
    #   considers the order that the attributes are defined on the typed
    #   link facet. When providing ranges to a typed link selection, any
    #   inexact ranges must be specified at the end. Any attributes that do
    #   not have a range specified are presumed to match the entire range.
    #   Filters are interpreted in the order of the attributes on the typed
    #   link facet, not the order in which they are supplied to any API
    #   calls. For more information about identity attributes, see [Typed
    #   link][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateTypedLinkFacetRequest AWS API Documentation
    #
    class UpdateTypedLinkFacetRequest < Struct.new(
      :schema_arn,
      :name,
      :attribute_updates,
      :identity_attribute_order)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateTypedLinkFacetResponse AWS API Documentation
    #
    class UpdateTypedLinkFacetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpgradeAppliedSchemaRequest
    #   data as a hash:
    #
    #       {
    #         published_schema_arn: "Arn", # required
    #         directory_arn: "Arn", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] published_schema_arn
    #   The revision of the published schema to upgrade the directory to.
    #   @return [String]
    #
    # @!attribute [rw] directory_arn
    #   The ARN for the directory to which the upgraded schema will be
    #   applied.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Used for testing whether the major version schemas are backward
    #   compatible or not. If schema compatibility fails, an exception would
    #   be thrown else the call would succeed but no changes will be saved.
    #   This parameter is optional.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpgradeAppliedSchemaRequest AWS API Documentation
    #
    class UpgradeAppliedSchemaRequest < Struct.new(
      :published_schema_arn,
      :directory_arn,
      :dry_run)
      include Aws::Structure
    end

    # @!attribute [rw] upgraded_schema_arn
    #   The ARN of the upgraded schema that is returned as part of the
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory that is returned as part of the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpgradeAppliedSchemaResponse AWS API Documentation
    #
    class UpgradeAppliedSchemaResponse < Struct.new(
      :upgraded_schema_arn,
      :directory_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpgradePublishedSchemaRequest
    #   data as a hash:
    #
    #       {
    #         development_schema_arn: "Arn", # required
    #         published_schema_arn: "Arn", # required
    #         minor_version: "Version", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] development_schema_arn
    #   The ARN of the development schema with the changes used for the
    #   upgrade.
    #   @return [String]
    #
    # @!attribute [rw] published_schema_arn
    #   The ARN of the published schema to be upgraded.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   Identifies the minor version of the published schema that will be
    #   created. This parameter is NOT optional.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Used for testing whether the Development schema provided is
    #   backwards compatible, or not, with the publish schema provided by
    #   the user to be upgraded. If schema compatibility fails, an exception
    #   would be thrown else the call would succeed. This parameter is
    #   optional and defaults to false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpgradePublishedSchemaRequest AWS API Documentation
    #
    class UpgradePublishedSchemaRequest < Struct.new(
      :development_schema_arn,
      :published_schema_arn,
      :minor_version,
      :dry_run)
      include Aws::Structure
    end

    # @!attribute [rw] upgraded_schema_arn
    #   The ARN of the upgraded schema that is returned as part of the
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpgradePublishedSchemaResponse AWS API Documentation
    #
    class UpgradePublishedSchemaResponse < Struct.new(
      :upgraded_schema_arn)
      include Aws::Structure
    end

  end
end
