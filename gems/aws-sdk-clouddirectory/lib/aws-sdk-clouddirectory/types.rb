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
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] schema_facet
    #   Identifiers for the facet that you are adding to the object.
    #   @return [Types::SchemaFacet]
    #
    # @!attribute [rw] object_attribute_list
    #   Attributes on the facet you are adding to the object.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @!attribute [rw] object_reference
    #   A reference to the object you are adding the specified facet to.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AddFacetToObjectRequest AWS API Documentation
    #
    class AddFacetToObjectRequest < Struct.new(
      :directory_arn,
      :schema_facet,
      :object_attribute_list,
      :object_reference)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AddFacetToObjectResponse AWS API Documentation
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
    #   Published schema ARN that needs to be copied. For more information,
    #   see arns.
    #   @return [String]
    #
    # @!attribute [rw] directory_arn
    #   ARN associated with the Directory into which the schema is copied.
    #   For more information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ApplySchemaRequest AWS API Documentation
    #
    class ApplySchemaRequest < Struct.new(
      :published_schema_arn,
      :directory_arn)
      include Aws::Structure
    end

    # @!attribute [rw] applied_schema_arn
    #   Applied schema ARN associated with the copied schema in the
    #   Directory. You can use this ARN to describe the schema information
    #   applied on this directory. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] directory_arn
    #   ARN associated with the Directory. For more information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ApplySchemaResponse AWS API Documentation
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
    #   ARN associated with the Directory where both objects reside. For
    #   more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] parent_reference
    #   Parent object reference.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] child_reference
    #   Child object reference to be attached to the object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] link_name
    #   Link name with which the child object is attached to the parent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AttachObjectRequest AWS API Documentation
    #
    class AttachObjectRequest < Struct.new(
      :directory_arn,
      :parent_reference,
      :child_reference,
      :link_name)
      include Aws::Structure
    end

    # @!attribute [rw] attached_object_identifier
    #   Attached `ObjectIdentifier`, which is the child `ObjectIdentifier`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AttachObjectResponse AWS API Documentation
    #
    class AttachObjectResponse < Struct.new(
      :attached_object_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachPolicyRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn",
    #         policy_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         object_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #       }
    #
    # @!attribute [rw] directory_arn
    #   ARN associated with the Directory where both objects reside. For
    #   more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] policy_reference
    #   Reference associated with the policy object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object to which the policy will be
    #   attached.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AttachPolicyRequest AWS API Documentation
    #
    class AttachPolicyRequest < Struct.new(
      :directory_arn,
      :policy_reference,
      :object_reference)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AttachPolicyResponse AWS API Documentation
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
    #   The ARN of the directory where the object and index exist.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AttachToIndexRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AttachToIndexResponse AWS API Documentation
    #
    class AttachToIndexResponse < Struct.new(
      :attached_object_identifier)
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
    #   The ARN of the schema that contains the facet and attribute.
    #   @return [String]
    #
    # @!attribute [rw] facet_name
    #   The name of the facet the attribute exists within.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AttributeKey AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AttributeKeyAndValue AWS API Documentation
    #
    class AttributeKeyAndValue < Struct.new(
      :key,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchAddFacetToObject AWS API Documentation
    #
    class BatchAddFacetToObject < Struct.new(
      :schema_facet,
      :object_attribute_list,
      :object_reference)
      include Aws::Structure
    end

    # The result of a batch add facet to object operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchAddFacetToObjectResponse AWS API Documentation
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
    #   Parent object reference.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] child_reference
    #   Child object reference to be attached to the object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] link_name
    #   The name of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchAttachObject AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchAttachObjectResponse AWS API Documentation
    #
    class BatchAttachObjectResponse < Struct.new(
      :attached_object_identifier)
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
    #         parent_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         link_name: "LinkName", # required
    #         batch_reference_name: "BatchReferenceName", # required
    #       }
    #
    # @!attribute [rw] schema_facet
    #   List of FacetArns that will be associated with the object. For more
    #   information, see arns.
    #   @return [Array<Types::SchemaFacet>]
    #
    # @!attribute [rw] object_attribute_list
    #   Attribute map, which contains an attribute ARN as the key and
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchCreateObject AWS API Documentation
    #
    class BatchCreateObject < Struct.new(
      :schema_facet,
      :object_attribute_list,
      :parent_reference,
      :link_name,
      :batch_reference_name)
      include Aws::Structure
    end

    # Represents the output of a `CreateObject` response operation.
    #
    # @!attribute [rw] object_identifier
    #   ID associated with the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchCreateObjectResponse AWS API Documentation
    #
    class BatchCreateObjectResponse < Struct.new(
      :object_identifier)
      include Aws::Structure
    end

    # Represents the output of a `DeleteObject` operation.
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
    #   Reference that identifies the object.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchDeleteObject AWS API Documentation
    #
    class BatchDeleteObject < Struct.new(
      :object_reference)
      include Aws::Structure
    end

    # Represents the output of a `DeleteObject` response operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchDeleteObjectResponse AWS API Documentation
    #
    class BatchDeleteObjectResponse < Aws::EmptyStructure; end

    # Represents the output of a `DetachObject` operation.
    #
    # @note When making an API call, you may pass BatchDetachObject
    #   data as a hash:
    #
    #       {
    #         parent_reference: { # required
    #           selector: "SelectorObjectReference",
    #         },
    #         link_name: "LinkName", # required
    #         batch_reference_name: "BatchReferenceName", # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchDetachObject AWS API Documentation
    #
    class BatchDetachObject < Struct.new(
      :parent_reference,
      :link_name,
      :batch_reference_name)
      include Aws::Structure
    end

    # Represents the output of a `DetachObject` response operation.
    #
    # @!attribute [rw] detached_object_identifier
    #   The `ObjectIdentifier` of the detached object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchDetachObjectResponse AWS API Documentation
    #
    class BatchDetachObjectResponse < Struct.new(
      :detached_object_identifier)
      include Aws::Structure
    end

    # Represents the output of a `ListObjectAttributes` operation.
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
    #   Maximum number of items to be retrieved in a single call. This is an
    #   approximate number.
    #   @return [Integer]
    #
    # @!attribute [rw] facet_filter
    #   Used to filter the list of object attributes associated with a
    #   certain facet.
    #   @return [Types::SchemaFacet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchListObjectAttributes AWS API Documentation
    #
    class BatchListObjectAttributes < Struct.new(
      :object_reference,
      :next_token,
      :max_results,
      :facet_filter)
      include Aws::Structure
    end

    # Represents the output of a `ListObjectAttributes` response operation.
    #
    # @!attribute [rw] attributes
    #   Attributes map associated with the object. `AttributeArn` is the
    #   key; attribute value is the value.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchListObjectAttributesResponse AWS API Documentation
    #
    class BatchListObjectAttributesResponse < Struct.new(
      :attributes,
      :next_token)
      include Aws::Structure
    end

    # Represents the output of a `ListObjectChildren` operation.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchListObjectChildren AWS API Documentation
    #
    class BatchListObjectChildren < Struct.new(
      :object_reference,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Represents the output of a `ListObjectChildren` response operation.
    #
    # @!attribute [rw] children
    #   Children structure, which is a map with key as the `LinkName` and
    #   `ObjectIdentifier` as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchListObjectChildrenResponse AWS API Documentation
    #
    class BatchListObjectChildrenResponse < Struct.new(
      :children,
      :next_token)
      include Aws::Structure
    end

    # Batch Read Exception structure, which contains exception type and
    # message.
    #
    # @!attribute [rw] type
    #   Type of exception, such as `InvalidArnException`.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Exception message associated with the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchReadException AWS API Documentation
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
    #       }
    #
    # @!attribute [rw] list_object_attributes
    #   Lists all attributes associated with an object.
    #   @return [Types::BatchListObjectAttributes]
    #
    # @!attribute [rw] list_object_children
    #   Returns a paginated list of child objects that are associated with a
    #   given object.
    #   @return [Types::BatchListObjectChildren]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchReadOperation AWS API Documentation
    #
    class BatchReadOperation < Struct.new(
      :list_object_attributes,
      :list_object_children)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchReadOperationResponse AWS API Documentation
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
    #           },
    #         ],
    #         consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #       }
    #
    # @!attribute [rw] directory_arn
    #   ARN associated with the Directory. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] operations
    #   List of operations that are part of the batch.
    #   @return [Array<Types::BatchReadOperation>]
    #
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchReadRequest AWS API Documentation
    #
    class BatchReadRequest < Struct.new(
      :directory_arn,
      :operations,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] responses
    #   List of all the responses for each batch read.
    #   @return [Array<Types::BatchReadOperationResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchReadResponse AWS API Documentation
    #
    class BatchReadResponse < Struct.new(
      :responses)
      include Aws::Structure
    end

    # Represents the output of a `BatchRead` success response operation.
    #
    # @!attribute [rw] list_object_attributes
    #   Lists all attributes associated with an object.
    #   @return [Types::BatchListObjectAttributesResponse]
    #
    # @!attribute [rw] list_object_children
    #   Returns a paginated list of child objects associated with a given
    #   object.
    #   @return [Types::BatchListObjectChildrenResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchReadSuccessfulResponse AWS API Documentation
    #
    class BatchReadSuccessfulResponse < Struct.new(
      :list_object_attributes,
      :list_object_children)
      include Aws::Structure
    end

    # Batch operation to remove a facet from an object.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchRemoveFacetFromObject AWS API Documentation
    #
    class BatchRemoveFacetFromObject < Struct.new(
      :schema_facet,
      :object_reference)
      include Aws::Structure
    end

    # Empty result representing success.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchRemoveFacetFromObjectResponse AWS API Documentation
    #
    class BatchRemoveFacetFromObjectResponse < Aws::EmptyStructure; end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchUpdateObjectAttributes AWS API Documentation
    #
    class BatchUpdateObjectAttributes < Struct.new(
      :object_reference,
      :attribute_updates)
      include Aws::Structure
    end

    # Represents the output of a `BatchUpdate` response operation.
    #
    # @!attribute [rw] object_identifier
    #   ID associated with the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchUpdateObjectAttributesResponse AWS API Documentation
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
    #           parent_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           link_name: "LinkName", # required
    #           batch_reference_name: "BatchReferenceName", # required
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
    #           batch_reference_name: "BatchReferenceName", # required
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
    #   Update a given object's attributes.
    #   @return [Types::BatchUpdateObjectAttributes]
    #
    # @!attribute [rw] delete_object
    #   Deletes an object in a Directory.
    #   @return [Types::BatchDeleteObject]
    #
    # @!attribute [rw] add_facet_to_object
    #   Batch operation adding a facet to an object.
    #   @return [Types::BatchAddFacetToObject]
    #
    # @!attribute [rw] remove_facet_from_object
    #   Batch operation removing a facet from an object.
    #   @return [Types::BatchRemoveFacetFromObject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchWriteOperation AWS API Documentation
    #
    class BatchWriteOperation < Struct.new(
      :create_object,
      :attach_object,
      :detach_object,
      :update_object_attributes,
      :delete_object,
      :add_facet_to_object,
      :remove_facet_from_object)
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
    #   Result of an add facet to object batch operation.
    #   @return [Types::BatchAddFacetToObjectResponse]
    #
    # @!attribute [rw] remove_facet_from_object
    #   Result of a batch remove facet from object operation.
    #   @return [Types::BatchRemoveFacetFromObjectResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchWriteOperationResponse AWS API Documentation
    #
    class BatchWriteOperationResponse < Struct.new(
      :create_object,
      :attach_object,
      :detach_object,
      :update_object_attributes,
      :delete_object,
      :add_facet_to_object,
      :remove_facet_from_object)
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
    #               parent_reference: { # required
    #                 selector: "SelectorObjectReference",
    #               },
    #               link_name: "LinkName", # required
    #               batch_reference_name: "BatchReferenceName", # required
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
    #               batch_reference_name: "BatchReferenceName", # required
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
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] directory_arn
    #   ARN associated with the Directory. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] operations
    #   List of operations that are part of the batch.
    #   @return [Array<Types::BatchWriteOperation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchWriteRequest AWS API Documentation
    #
    class BatchWriteRequest < Struct.new(
      :directory_arn,
      :operations)
      include Aws::Structure
    end

    # @!attribute [rw] responses
    #   List of all the responses for each batch write.
    #   @return [Array<Types::BatchWriteOperationResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchWriteResponse AWS API Documentation
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
    #   Name of the Directory. Should be unique per account, per region.
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   ARN of the published schema that will be copied into the data
    #   Directory. For more information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateDirectoryRequest AWS API Documentation
    #
    class CreateDirectoryRequest < Struct.new(
      :name,
      :schema_arn)
      include Aws::Structure
    end

    # @!attribute [rw] directory_arn
    #   ARN associated with the Directory. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the Directory.
    #   @return [String]
    #
    # @!attribute [rw] object_identifier
    #   The root object node of the created directory.
    #   @return [String]
    #
    # @!attribute [rw] applied_schema_arn
    #   ARN of the published schema in the Directory. Once a published
    #   schema is copied into the directory, it has its own ARN which is
    #   referred to applied schema ARN. For more information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateDirectoryResponse AWS API Documentation
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
    #               type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME
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
    #         object_type: "NODE", # required, accepts NODE, LEAF_NODE, POLICY, INDEX
    #       }
    #
    # @!attribute [rw] schema_arn
    #   Schema ARN in which the new Facet will be created. For more
    #   information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the Facet, which is unique for a given schema.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Attributes associated with the Facet.e
    #   @return [Array<Types::FacetAttribute>]
    #
    # @!attribute [rw] object_type
    #   Specifies whether a given object created from this facet is of type
    #   Node, Leaf Node, Policy or Index.
    #
    #   * Node: Can have multiple children but one parent.
    #
    #   ^
    #   ^
    #
    #   * Leaf Node: Cannot have children but can have multiple parents.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateFacetRequest AWS API Documentation
    #
    class CreateFacetRequest < Struct.new(
      :schema_arn,
      :name,
      :attributes,
      :object_type)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateFacetResponse AWS API Documentation
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
    #   Specifies the Attributes that should be indexed on. Currently only a
    #   single attribute is supported.
    #   @return [Array<Types::AttributeKey>]
    #
    # @!attribute [rw] is_unique
    #   Indicates whether objects with the same indexed attribute value can
    #   be added to the index.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateIndexRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateIndexResponse AWS API Documentation
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
    #   ARN associated with the Directory in which the object will be
    #   created. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] schema_facets
    #   List of facet ARNs to be associated with the object. For more
    #   information, see arns.
    #   @return [Array<Types::SchemaFacet>]
    #
    # @!attribute [rw] object_attribute_list
    #   Attribute map whose attribute ARN contains the key and attribute
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateObjectRequest AWS API Documentation
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
    #   Identifier associated with the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateObjectResponse AWS API Documentation
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
    #   Name associated with the schema. This is unique to each account and
    #   in each region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateSchemaRequest AWS API Documentation
    #
    class CreateSchemaRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   ARN associated with the schema. For more information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateSchemaResponse AWS API Documentation
    #
    class CreateSchemaResponse < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteDirectoryRequest AWS API Documentation
    #
    class DeleteDirectoryRequest < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # @!attribute [rw] directory_arn
    #   The ARN of the deleted directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteDirectoryResponse AWS API Documentation
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
    #   ARN associated with the Facet. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the facet to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteFacetRequest AWS API Documentation
    #
    class DeleteFacetRequest < Struct.new(
      :schema_arn,
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteFacetResponse AWS API Documentation
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
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteObjectRequest AWS API Documentation
    #
    class DeleteObjectRequest < Struct.new(
      :directory_arn,
      :object_reference)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteObjectResponse AWS API Documentation
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
    #   ARN of the development schema. For more information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteSchemaRequest AWS API Documentation
    #
    class DeleteSchemaRequest < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   Input ARN that is returned as part of the response. For more
    #   information, see arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteSchemaResponse AWS API Documentation
    #
    class DeleteSchemaResponse < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

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
    #   The ARN of the directory the index and object exist in.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DetachFromIndexRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DetachFromIndexResponse AWS API Documentation
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
    #   ARN associated with the Directory where objects reside. For more
    #   information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] parent_reference
    #   Parent reference from which the object with the specified link name
    #   is detached.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] link_name
    #   Link name associated with the object that needs to be detached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DetachObjectRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DetachObjectResponse AWS API Documentation
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
    #   ARN associated with the Directory where both objects reside. For
    #   more information, see arns.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DetachPolicyRequest AWS API Documentation
    #
    class DetachPolicyRequest < Struct.new(
      :directory_arn,
      :policy_reference,
      :object_reference)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DetachPolicyResponse AWS API Documentation
    #
    class DetachPolicyResponse < Aws::EmptyStructure; end

    # Directory structure that includes the directory name and directory
    # ARN.
    #
    # @!attribute [rw] name
    #   The name of the directory.
    #   @return [String]
    #
    # @!attribute [rw] directory_arn
    #   ARN associated with the directory. For more information, see arns.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/Directory AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DisableDirectoryRequest AWS API Documentation
    #
    class DisableDirectoryRequest < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # @!attribute [rw] directory_arn
    #   The ARN of the directory that has been disabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DisableDirectoryResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/EnableDirectoryRequest AWS API Documentation
    #
    class EnableDirectoryRequest < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # @!attribute [rw] directory_arn
    #   The ARN of the enabled directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/EnableDirectoryResponse AWS API Documentation
    #
    class EnableDirectoryResponse < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # A structure that contains `Name`, `ARN`, `Attributes`, Rules, and
    # `ObjectTypes`.
    #
    # @!attribute [rw] name
    #   The name of the Facet.
    #   @return [String]
    #
    # @!attribute [rw] object_type
    #   Object type associated with the facet. See
    #   CreateFacetRequest$ObjectType for more details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/Facet AWS API Documentation
    #
    class Facet < Struct.new(
      :name,
      :object_type)
      include Aws::Structure
    end

    # Attribute associated with the Facet.
    #
    # @note When making an API call, you may pass FacetAttribute
    #   data as a hash:
    #
    #       {
    #         name: "AttributeName", # required
    #         attribute_definition: {
    #           type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME
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
    #   Attribute reference associated with the attribute. See [Attribute
    #   References][1] for more information.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/FacetAttribute AWS API Documentation
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
    #         type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/FacetAttributeDefinition AWS API Documentation
    #
    class FacetAttributeDefinition < Struct.new(
      :type,
      :default_value,
      :is_immutable,
      :rules)
      include Aws::Structure
    end

    # Facet attribute reference that specifies the attribute definition
    # which contains attribute facet name and attribute name.
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
    #   Target facet name associated with the facet reference. See
    #   [Attribute References][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences
    #   @return [String]
    #
    # @!attribute [rw] target_attribute_name
    #   Target attribute name associated with the facet reference. See
    #   [Attribute References][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/FacetAttributeReference AWS API Documentation
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
    #             type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/FacetAttributeUpdate AWS API Documentation
    #
    class FacetAttributeUpdate < Struct.new(
      :attribute,
      :action)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetDirectoryRequest AWS API Documentation
    #
    class GetDirectoryRequest < Struct.new(
      :directory_arn)
      include Aws::Structure
    end

    # @!attribute [rw] directory
    #   Metadata about the directory.
    #   @return [Types::Directory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetDirectoryResponse AWS API Documentation
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
    #   ARN associated with the Facet. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the facet to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetFacetRequest AWS API Documentation
    #
    class GetFacetRequest < Struct.new(
      :schema_arn,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] facet
    #   Facet structure associated with the facet.
    #   @return [Types::Facet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetFacetResponse AWS API Documentation
    #
    class GetFacetResponse < Struct.new(
      :facet)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetObjectInformationRequest AWS API Documentation
    #
    class GetObjectInformationRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :consistency_level)
      include Aws::Structure
    end

    # @!attribute [rw] schema_facets
    #   The facets attached to the specified object.
    #   @return [Array<Types::SchemaFacet>]
    #
    # @!attribute [rw] object_identifier
    #   The `ObjectIdentifier` of the specified object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetObjectInformationResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetSchemaAsJsonRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetSchemaAsJsonResponse AWS API Documentation
    #
    class GetSchemaAsJsonResponse < Struct.new(
      :name,
      :document)
      include Aws::Structure
    end

    # Represents an index and an attached object.
    #
    # @!attribute [rw] indexed_attributes
    #   The indexed attribute values.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @!attribute [rw] object_identifier
    #   The `ObjectIdentifier` of the object attached to the index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/IndexAttachment AWS API Documentation
    #
    class IndexAttachment < Struct.new(
      :indexed_attributes,
      :object_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAppliedSchemaArnsRequest
    #   data as a hash:
    #
    #       {
    #         directory_arn: "Arn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] directory_arn
    #   The ARN of the directory you are listing.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListAppliedSchemaArnsRequest AWS API Documentation
    #
    class ListAppliedSchemaArnsRequest < Struct.new(
      :directory_arn,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListAppliedSchemaArnsResponse AWS API Documentation
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
    #   A reference to the object to that has indices attached.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListAttachedIndicesRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListAttachedIndicesResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListDevelopmentSchemaArnsRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListDevelopmentSchemaArnsResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListDirectoriesRequest AWS API Documentation
    #
    class ListDirectoriesRequest < Struct.new(
      :next_token,
      :max_results,
      :state)
      include Aws::Structure
    end

    # @!attribute [rw] directories
    #   Lists all directories associated with your account in pagination
    #   fashion.
    #   @return [Array<Types::Directory>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListDirectoriesResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListFacetAttributesRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListFacetAttributesResponse AWS API Documentation
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
    #   The ARN to retrieve facet names from.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to retrieve
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListFacetNamesRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListFacetNamesResponse AWS API Documentation
    #
    class ListFacetNamesResponse < Struct.new(
      :facet_names,
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
    #   The maximum number of results to retrieve from the index.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListIndexRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListIndexResponse AWS API Documentation
    #
    class ListIndexResponse < Struct.new(
      :index_attachments,
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
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object whose attributes will be
    #   listed.
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
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @!attribute [rw] facet_filter
    #   Used to filter the list of object attributes associated with a
    #   certain facet.
    #   @return [Types::SchemaFacet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectAttributesRequest AWS API Documentation
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
    #   Attributes map associated with the object. AttributeArn is the key,
    #   and attribute value is the value.
    #   @return [Array<Types::AttributeKeyAndValue>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectAttributesResponse AWS API Documentation
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
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object for which child objects are
    #   being listed.
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
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectChildrenRequest AWS API Documentation
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
    #   Children structure, which is a map with key as the LinkName and
    #   `ObjectIdentifier` as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectChildrenResponse AWS API Documentation
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
    #   Reference that identifies the object whose parent paths are listed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectParentPathsRequest AWS API Documentation
    #
    class ListObjectParentPathsRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] path_to_object_identifiers_list
    #   Returns the path to the `ObjectIdentifiers` associated with the
    #   directory.
    #   @return [Array<Types::PathToObjectIdentifiers>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectParentPathsResponse AWS API Documentation
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
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object for which parent objects are
    #   being listed.
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
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectParentsRequest AWS API Documentation
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
    #   Parent structure, which is a map with key as the `ObjectIdentifier`
    #   and LinkName as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectParentsResponse AWS API Documentation
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
    #   ARN associated with the Directory where objects reside. For more
    #   information, see arns.
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
    #   Maximum number of items to be retrieved in a single call. This is an
    #   approximate number.
    #   @return [Integer]
    #
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectPoliciesRequest AWS API Documentation
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
    #   List of policy `ObjectIdentifiers`, that are attached to the object.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectPoliciesResponse AWS API Documentation
    #
    class ListObjectPoliciesResponse < Struct.new(
      :attached_policy_ids,
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
    #   ARN associated with the Directory where objects reside. For more
    #   information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] policy_reference
    #   Reference that identifies the policy object.
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
    # @!attribute [rw] consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListPolicyAttachmentsRequest AWS API Documentation
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
    #   List of `ObjectIdentifiers` to which the policy is attached.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListPolicyAttachmentsResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListPublishedSchemaArnsRequest AWS API Documentation
    #
    class ListPublishedSchemaArnsRequest < Struct.new(
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListPublishedSchemaArnsResponse AWS API Documentation
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
    #   ARN of the resource. Tagging is only supported for directories.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token. This is for future use. Currently pagination
    #   is not supported for tagging.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The MaxResults parameter sets the maximum number of results returned
    #   in a single page. This is for future use and is not supported
    #   currently.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   List of tag key value pairs associated with the response.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
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
    #   ARN associated with the Directory. For more information, see arns.
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
    #   Maximum number of items to be retrieved in a single call. This is an
    #   approximate number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/LookupPolicyRequest AWS API Documentation
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
    #   `ObjectIdentifier`, and `PolicyType`.
    #   @return [Array<Types::PolicyToPath>]
    #
    # @!attribute [rw] next_token
    #   The pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/LookupPolicyResponse AWS API Documentation
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
    #   Type can be either Update or Delete.
    #   @return [String]
    #
    # @!attribute [rw] object_attribute_update_value
    #   The value that you want to update to.
    #   @return [Types::TypedAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ObjectAttributeAction AWS API Documentation
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
    #   The key of the attribute the attribute range covers.
    #   @return [Types::AttributeKey]
    #
    # @!attribute [rw] range
    #   The range of attribute values being selected.
    #   @return [Types::TypedAttributeValueRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ObjectAttributeRange AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ObjectAttributeUpdate AWS API Documentation
    #
    class ObjectAttributeUpdate < Struct.new(
      :object_attribute_key,
      :object_attribute_action)
      include Aws::Structure
    end

    # Reference that identifies an object.
    #
    # @note When making an API call, you may pass ObjectReference
    #   data as a hash:
    #
    #       {
    #         selector: "SelectorObjectReference",
    #       }
    #
    # @!attribute [rw] selector
    #   Allows you to specify an object. You can identify an object in one
    #   of the following ways:
    #
    #   * *$ObjectIdentifier* - Identifies the object by `ObjectIdentifier`
    #
    #   * */some/path* - Identifies the object based on path
    #
    #   * *#SomeBatchReference* - Identifies the object in a batch call
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ObjectReference AWS API Documentation
    #
    class ObjectReference < Struct.new(
      :selector)
      include Aws::Structure
    end

    # Returns the path to the `ObjectIdentifiers` associated with the
    # directory.
    #
    # @!attribute [rw] path
    #   The path used to identify the object starting from directory root.
    #   @return [String]
    #
    # @!attribute [rw] object_identifiers
    #   Lists `ObjectIdentifiers` starting from directory root to the object
    #   in the request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/PathToObjectIdentifiers AWS API Documentation
    #
    class PathToObjectIdentifiers < Struct.new(
      :path,
      :object_identifiers)
      include Aws::Structure
    end

    # Contains the `PolicyType`, `PolicyId`, and the `ObjectIdentifier` to
    # which it is attached.
    #
    # @!attribute [rw] policy_id
    #   The ID of `PolicyAttachment`.
    #   @return [String]
    #
    # @!attribute [rw] object_identifier
    #   The `ObjectIdentifier` associated with `PolicyAttachment`.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of policy that can be associated with `PolicyAttachment`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/PolicyAttachment AWS API Documentation
    #
    class PolicyAttachment < Struct.new(
      :policy_id,
      :object_identifier,
      :policy_type)
      include Aws::Structure
    end

    # Used when a regular object exists in a Directory and you want to find
    # all of the policies associated with that object and the parent to that
    # object.
    #
    # @!attribute [rw] path
    #   The path that is referenced from the root.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   List of policy objects.
    #   @return [Array<Types::PolicyAttachment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/PolicyToPath AWS API Documentation
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
    #         name: "SchemaName",
    #       }
    #
    # @!attribute [rw] development_schema_arn
    #   ARN associated with the development schema. For more information,
    #   see arns.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version under which the schema will be published.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   New name under which the schema will be published. If this is not
    #   provided, the development schema is considered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/PublishSchemaRequest AWS API Documentation
    #
    class PublishSchemaRequest < Struct.new(
      :development_schema_arn,
      :version,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] published_schema_arn
    #   ARN associated with the published schema. For more information, see
    #   arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/PublishSchemaResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/PutSchemaFromJsonRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/PutSchemaFromJsonResponse AWS API Documentation
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
    #   The facet to remove.
    #   @return [Types::SchemaFacet]
    #
    # @!attribute [rw] object_reference
    #   A reference to the object to remove the facet from.
    #   @return [Types::ObjectReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/RemoveFacetFromObjectRequest AWS API Documentation
    #
    class RemoveFacetFromObjectRequest < Struct.new(
      :directory_arn,
      :schema_facet,
      :object_reference)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/RemoveFacetFromObjectResponse AWS API Documentation
    #
    class RemoveFacetFromObjectResponse < Aws::EmptyStructure; end

    # Contains an ARN and parameters associated with the rule.
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
    #   Min and max parameters associated with the rule.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/Rule AWS API Documentation
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
    #   The ARN of the schema that contains the facet.
    #   @return [String]
    #
    # @!attribute [rw] facet_name
    #   The name of the facet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/SchemaFacet AWS API Documentation
    #
    class SchemaFacet < Struct.new(
      :schema_arn,
      :facet_name)
      include Aws::Structure
    end

    # Tag structure which contains tag key and value.
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
    #   Key associated with the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value associated with the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/Tag AWS API Documentation
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
    #   ARN of the resource. Tagging is only supported for directories.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   List of tag key value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/TagResourceResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/TypedAttributeValue AWS API Documentation
    #
    class TypedAttributeValue < Struct.new(
      :string_value,
      :binary_value,
      :boolean_value,
      :number_value,
      :datetime_value)
      include Aws::Structure
    end

    # A range of attribute values.
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
    #   Inclusive or exclusive range start.
    #   @return [String]
    #
    # @!attribute [rw] start_value
    #   The value to start the range at.
    #   @return [Types::TypedAttributeValue]
    #
    # @!attribute [rw] end_mode
    #   Inclusive or exclusive range end.
    #   @return [String]
    #
    # @!attribute [rw] end_value
    #   The attribute value to terminate the range at.
    #   @return [Types::TypedAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/TypedAttributeValueRange AWS API Documentation
    #
    class TypedAttributeValueRange < Struct.new(
      :start_mode,
      :start_value,
      :end_mode,
      :end_value)
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
    #   ARN of the resource. Tagging is only supported for directories.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys of the tag that needs to be removed from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UntagResourceResponse AWS API Documentation
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
    #                 type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME
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
    #   ARN associated with the Facet. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] attribute_updates
    #   List of attributes that need to be updated in a given schema Facet.
    #   Each attribute is followed by AttributeAction, which specifies the
    #   type of update operation to perform.
    #   @return [Array<Types::FacetAttributeUpdate>]
    #
    # @!attribute [rw] object_type
    #   Object type associated with the facet. See
    #   CreateFacetRequest$ObjectType for more details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UpdateFacetRequest AWS API Documentation
    #
    class UpdateFacetRequest < Struct.new(
      :schema_arn,
      :name,
      :attribute_updates,
      :object_type)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UpdateFacetResponse AWS API Documentation
    #
    class UpdateFacetResponse < Aws::EmptyStructure; end

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
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] object_reference
    #   Reference that identifies the object.
    #   @return [Types::ObjectReference]
    #
    # @!attribute [rw] attribute_updates
    #   Attributes update structure.
    #   @return [Array<Types::ObjectAttributeUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UpdateObjectAttributesRequest AWS API Documentation
    #
    class UpdateObjectAttributesRequest < Struct.new(
      :directory_arn,
      :object_reference,
      :attribute_updates)
      include Aws::Structure
    end

    # @!attribute [rw] object_identifier
    #   `ObjectIdentifier` of the updated object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UpdateObjectAttributesResponse AWS API Documentation
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
    #   ARN of the development schema. For more information, see arns.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UpdateSchemaRequest AWS API Documentation
    #
    class UpdateSchemaRequest < Struct.new(
      :schema_arn,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   ARN associated with the updated schema. For more information, see
    #   arns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UpdateSchemaResponse AWS API Documentation
    #
    class UpdateSchemaResponse < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

  end
end
