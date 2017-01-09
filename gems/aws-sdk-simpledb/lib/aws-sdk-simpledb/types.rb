# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SimpleDB
  module Types

    # @note When making an API call, you may pass Attribute
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         alternate_name_encoding: "String",
    #         value: "String", # required
    #         alternate_value_encoding: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] alternate_name_encoding
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] alternate_value_encoding
    #   @return [String]
    #
    class Attribute < Struct.new(
      :name,
      :alternate_name_encoding,
      :value,
      :alternate_value_encoding)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteAttributesRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         items: [ # required
    #           {
    #             name: "String", # required
    #             attributes: [
    #               {
    #                 name: "String", # required
    #                 alternate_name_encoding: "String",
    #                 value: "String", # required
    #                 alternate_value_encoding: "String",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain in which the attributes are being deleted.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   A list of items on which to perform the operation.
    #   @return [Array<Types::DeletableItem>]
    #
    class BatchDeleteAttributesRequest < Struct.new(
      :domain_name,
      :items)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchPutAttributesRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         items: [ # required
    #           {
    #             name: "String", # required
    #             attributes: [ # required
    #               {
    #                 name: "String", # required
    #                 value: "String", # required
    #                 replace: false,
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain in which the attributes are being stored.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   A list of items on which to perform the operation.
    #   @return [Array<Types::ReplaceableItem>]
    #
    class BatchPutAttributesRequest < Struct.new(
      :domain_name,
      :items)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain to create. The name can range between 3 and
    #   255 characters and can contain the following characters: a-z, A-Z,
    #   0-9, '\_', '-', and '.'.
    #   @return [String]
    #
    class CreateDomainRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletableItem
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         attributes: [
    #           {
    #             name: "String", # required
    #             alternate_name_encoding: "String",
    #             value: "String", # required
    #             alternate_value_encoding: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   @return [Array<Types::Attribute>]
    #
    class DeletableItem < Struct.new(
      :name,
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAttributesRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         item_name: "String", # required
    #         attributes: [
    #           {
    #             name: "String", # required
    #             alternate_name_encoding: "String",
    #             value: "String", # required
    #             alternate_value_encoding: "String",
    #           },
    #         ],
    #         expected: {
    #           name: "String",
    #           value: "String",
    #           exists: false,
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain in which to perform the operation.
    #   @return [String]
    #
    # @!attribute [rw] item_name
    #   The name of the item. Similar to rows on a spreadsheet, items
    #   represent individual objects that contain one or more
    #   value-attribute pairs.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A list of Attributes. Similar to columns on a spreadsheet,
    #   attributes represent categories of data that can be assigned to
    #   items.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] expected
    #   The update condition which, if specified, determines whether the
    #   specified attributes will be deleted or not. The update condition
    #   must be satisfied in order for this request to be processed and the
    #   attributes to be deleted.
    #   @return [Types::UpdateCondition]
    #
    class DeleteAttributesRequest < Struct.new(
      :domain_name,
      :item_name,
      :attributes,
      :expected)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain to delete.
    #   @return [String]
    #
    class DeleteDomainRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DomainMetadataRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain for which to display the metadata of.
    #   @return [String]
    #
    class DomainMetadataRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # @!attribute [rw] item_count
    #   The number of all items in the domain.
    #   @return [Integer]
    #
    # @!attribute [rw] item_names_size_bytes
    #   The total size of all item names in the domain, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] attribute_name_count
    #   The number of unique attribute names in the domain.
    #   @return [Integer]
    #
    # @!attribute [rw] attribute_names_size_bytes
    #   The total size of all unique attribute names in the domain, in
    #   bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] attribute_value_count
    #   The number of all attribute name/value pairs in the domain.
    #   @return [Integer]
    #
    # @!attribute [rw] attribute_values_size_bytes
    #   The total size of all attribute values in the domain, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] timestamp
    #   The data and time when metadata was calculated, in Epoch (UNIX)
    #   seconds.
    #   @return [Integer]
    #
    class DomainMetadataResult < Struct.new(
      :item_count,
      :item_names_size_bytes,
      :attribute_name_count,
      :attribute_names_size_bytes,
      :attribute_value_count,
      :attribute_values_size_bytes,
      :timestamp)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAttributesRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         item_name: "String", # required
    #         attribute_names: ["String"],
    #         consistent_read: false,
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain in which to perform the operation.
    #   @return [String]
    #
    # @!attribute [rw] item_name
    #   The name of the item.
    #   @return [String]
    #
    # @!attribute [rw] attribute_names
    #   The names of the attributes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] consistent_read
    #   Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If `true`, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
    #   @return [Boolean]
    #
    class GetAttributesRequest < Struct.new(
      :domain_name,
      :item_name,
      :attribute_names,
      :consistent_read)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The list of attributes returned by the operation.
    #   @return [Array<Types::Attribute>]
    #
    class GetAttributesResult < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the item.
    #   @return [String]
    #
    # @!attribute [rw] alternate_name_encoding
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A list of attributes.
    #   @return [Array<Types::Attribute>]
    #
    class Item < Struct.new(
      :name,
      :alternate_name_encoding,
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDomainsRequest
    #   data as a hash:
    #
    #       {
    #         max_number_of_domains: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_number_of_domains
    #   The maximum number of domain names you want returned. The range is 1
    #   to 100. The default setting is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A string informing Amazon SimpleDB where to start the next list of
    #   domain names.
    #   @return [String]
    #
    class ListDomainsRequest < Struct.new(
      :max_number_of_domains,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] domain_names
    #   A list of domain names that match the expression.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   An opaque token indicating that there are more domains than the specified `MaxNumberOfDomains` still available.
    #   @return [String]
    #
    class ListDomainsResult < Struct.new(
      :domain_names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAttributesRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         item_name: "String", # required
    #         attributes: [ # required
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #             replace: false,
    #           },
    #         ],
    #         expected: {
    #           name: "String",
    #           value: "String",
    #           exists: false,
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain in which to perform the operation.
    #   @return [String]
    #
    # @!attribute [rw] item_name
    #   The name of the item.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The list of attributes.
    #   @return [Array<Types::ReplaceableAttribute>]
    #
    # @!attribute [rw] expected
    #   The update condition which, if specified, determines whether the
    #   specified attributes will be updated or not. The update condition
    #   must be satisfied in order for this request to be processed and the
    #   attributes to be updated.
    #   @return [Types::UpdateCondition]
    #
    class PutAttributesRequest < Struct.new(
      :domain_name,
      :item_name,
      :attributes,
      :expected)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ReplaceableAttribute
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #         replace: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the replaceable attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the replaceable attribute.
    #   @return [String]
    #
    # @!attribute [rw] replace
    #   A flag specifying whether or not to replace the attribute/value pair or to add a new attribute/value pair. The default setting is `false`.
    #   @return [Boolean]
    #
    class ReplaceableAttribute < Struct.new(
      :name,
      :value,
      :replace)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ReplaceableItem
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         attributes: [ # required
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #             replace: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the replaceable item.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The list of attributes for a replaceable item.
    #   @return [Array<Types::ReplaceableAttribute>]
    #
    class ReplaceableItem < Struct.new(
      :name,
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SelectRequest
    #   data as a hash:
    #
    #       {
    #         select_expression: "String", # required
    #         next_token: "String",
    #         consistent_read: false,
    #       }
    #
    # @!attribute [rw] select_expression
    #   The expression used to query the domain.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string informing Amazon SimpleDB where to start the next list of `ItemNames`.
    #   @return [String]
    #
    # @!attribute [rw] consistent_read
    #   Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If `true`, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
    #   @return [Boolean]
    #
    class SelectRequest < Struct.new(
      :select_expression,
      :next_token,
      :consistent_read)
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of items that match the select expression.
    #   @return [Array<Types::Item>]
    #
    # @!attribute [rw] next_token
    #   An opaque token indicating that more items than `MaxNumberOfItems` were matched, the response size exceeded 1 megabyte, or the execution time exceeded 5 seconds.
    #   @return [String]
    #
    class SelectResult < Struct.new(
      :items,
      :next_token)
      include Aws::Structure
    end

    # Specifies the conditions under which data should be updated. If an
    # update condition is specified for a request, the data will only be
    # updated if the condition is satisfied. For example, if an attribute
    # with a specific name and value exists, or if a specific attribute
    # doesn't exist.
    #
    # @note When making an API call, you may pass UpdateCondition
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         value: "String",
    #         exists: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the attribute involved in the condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of an attribute. This value can only be specified when the
    #   `Exists` parameter is equal to `true`.
    #   @return [String]
    #
    # @!attribute [rw] exists
    #   A value specifying whether or not the specified attribute must exist
    #   with the specified value in order for the update condition to be
    #   satisfied. Specify `true` if the attribute must exist for the update
    #   condition to be satisfied. Specify `false` if the attribute should
    #   not exist in order for the update condition to be satisfied.
    #   @return [Boolean]
    #
    class UpdateCondition < Struct.new(
      :name,
      :value,
      :exists)
      include Aws::Structure
    end

  end
end
