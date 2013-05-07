# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class SimpleDB

    # Client class for Amazon SimpleDB.
    class Client < Core::QueryClient

      # @api private
      REGION_US_E1 = 'sdb.amazonaws.com'

      # @api private
      REGION_US_W1 = 'sdb.us-west-1.amazonaws.com'

      # @api private
      REGION_EU_W1 = 'sdb.eu-west-1.amazonaws.com'

      # @api private
      REGION_APAC_SE1 = 'sdb.ap-southeast-1.amazonaws.com'

      # @api private
      CACHEABLE_REQUESTS = Set[
        :domain_metadata,
        :get_attributes,
        :list_domains,
        :select,
      ]

      # @param [String] name
      # @return [Boolean] Returns true if the given name is a valid
      #   Amazon SimpleDB domain name.
      # @api private
      def valid_domain_name? name
        self.class.valid_domain_name?(name)
      end

      # @param [String] name
      # @return [Boolean] Returns true if the given name is a valid
      #   Amazon SimpleDB domain name.
      def self.valid_domain_name? name
        name.to_s =~ /^[a-z_\-\.]{3,255}$/i ? true : false
      end

      # client methods #

      # @!method batch_delete_attributes(options = {})
      # Calls the BatchDeleteAttributes API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String) The name of the domain in
      #     which the attributes are being deleted.
      #   * `:items` - *required* - (Array<Hash>) A list of items on which to
      #     perform the operation.
      #     * `:name` - *required* - (String)
      #     * `:attributes` - (Array<Hash>)
      #       * `:name` - *required* - (String) The name of the attribute.
      #       * `:value` - *required* - (String) The value of the attribute.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:response_metadata` - (Hash)
      #     * `:box_usage` - (Numeric)
      #     * `:response_id` - (String)

      # @!method batch_put_attributes(options = {})
      # Calls the BatchPutAttributes API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String) The name of the domain in
      #     which the attributes are being stored.
      #   * `:items` - *required* - (Array<Hash>) A list of items on which to
      #     perform the operation.
      #     * `:name` - *required* - (String) The name of the replaceable item.
      #     * `:attributes` - *required* - (Array<Hash>) The list of attributes
      #       for a replaceable item.
      #       * `:name` - *required* - (String) The name of the replaceable
      #         attribute.
      #       * `:value` - *required* - (String) The value of the replaceable
      #         attribute.
      #       * `:replace` - (Boolean) A flag specifying whether or not to
      #         replace the attribute/value pair or to add a new
      #         attribute/value pair. The default setting is `false` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:response_metadata` - (Hash)
      #     * `:box_usage` - (Numeric)
      #     * `:response_id` - (String)

      # @!method create_domain(options = {})
      # Calls the CreateDomain API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String) The name of the domain to
      #     create. The name can range between 3 and 255 characters and can
      #     contain the following characters: a-z, A-Z, 0-9, '_', '-', and '.'.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:response_metadata` - (Hash)
      #     * `:box_usage` - (Numeric)
      #     * `:response_id` - (String)

      # @!method delete_attributes(options = {})
      # Calls the DeleteAttributes API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String) The name of the domain in
      #     which to perform the operation.
      #   * `:item_name` - *required* - (String) The name of the item. Similar
      #     to rows on a spreadsheet, items represent individual objects that
      #     contain one or more value-attribute pairs.
      #   * `:attributes` - (Array<Hash>) A list of Attributes. Similar to
      #     columns on a spreadsheet, attributes represent categories of data
      #     that can be assigned to items.
      #     * `:name` - *required* - (String) The name of the attribute.
      #     * `:value` - (String) The value of the attribute.
      #   * `:expected` - (Hash) The update condition which, if specified,
      #     determines whether the specified attributes will be deleted or not.
      #     The update condition must be satisfied in order for this request to
      #     be processed and the attributes to be deleted.
      #     * `:name` - (String) The name of the attribute involved in the
      #       condition.
      #     * `:value` - (String) The value of an attribute. This value can
      #       only be specified when the Exists parameter is equal to `true` .
      #     * `:exists` - (Boolean) A value specifying whether or not the
      #       specified attribute must exist with the specified value in order
      #       for the update condition to be satisfied. Specify `true` if the
      #       attribute must exist for the update condition to be satisfied.
      #       Specify `false` if the attribute should not exist in order for
      #       the update condition to be satisfied.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:response_metadata` - (Hash)
      #     * `:box_usage` - (Numeric)
      #     * `:response_id` - (String)

      # @!method delete_domain(options = {})
      # Calls the DeleteDomain API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String) The name of the domain to
      #     delete.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:response_metadata` - (Hash)
      #     * `:box_usage` - (Numeric)
      #     * `:response_id` - (String)

      # @!method domain_metadata(options = {})
      # Calls the DomainMetadata API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String) The name of the domain for
      #     which to display the metadata of.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:item_count` - (Integer)
      #   * `:item_names_size_bytes` - (Integer)
      #   * `:attribute_name_count` - (Integer)
      #   * `:attribute_names_size_bytes` - (Integer)
      #   * `:attribute_value_count` - (Integer)
      #   * `:attribute_values_size_bytes` - (Integer)
      #   * `:timestamp` - (Integer)
      #   * `:response_metadata` - (Hash)
      #     * `:box_usage` - (Numeric)
      #     * `:response_id` - (String)

      # @!method get_attributes(options = {})
      # Calls the GetAttributes API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String) The name of the domain in
      #     which to perform the operation.
      #   * `:item_name` - *required* - (String) The name of the item.
      #   * `:attribute_names` - (Array<String>) The names of the attributes.
      #   * `:consistent_read` - (Boolean) Determines whether or not strong
      #     consistency should be enforced when data is read from SimpleDB. If
      #     `true` , any data previously written to SimpleDB will be returned.
      #     Otherwise, results will be consistent eventually, and the client
      #     may not see data that was written immediately before your read.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:attributes` - (Array<Hash>)
      #     * `:name` - (String)
      #     * `:alternate_name_encoding` - (String)
      #     * `:value` - (String)
      #     * `:alternate_value_encoding` - (String)
      #   * `:response_metadata` - (Hash)
      #     * `:box_usage` - (Numeric)
      #     * `:response_id` - (String)

      # @!method list_domains(options = {})
      # Calls the ListDomains API operation.
      # @param [Hash] options
      #   * `:max_number_of_domains` - (Integer) The maximum number of domain
      #     names you want returned. The range is 1 to 100. The default setting
      #     is 100.
      #   * `:next_token` - (String) A string informing Amazon SimpleDB where
      #     to start the next list of domain names.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:domain_names` - (Array<String>)
      #   * `:next_token` - (String)
      #   * `:response_metadata` - (Hash)
      #     * `:box_usage` - (Numeric)
      #     * `:response_id` - (String)

      # @!method put_attributes(options = {})
      # Calls the PutAttributes API operation.
      # @param [Hash] options
      #   * `:domain_name` - *required* - (String) The name of the domain in
      #     which to perform the operation.
      #   * `:item_name` - *required* - (String) The name of the item.
      #   * `:attributes` - *required* - (Array<Hash>) The list of attributes.
      #     * `:name` - *required* - (String) The name of the replaceable
      #       attribute.
      #     * `:value` - *required* - (String) The value of the replaceable
      #       attribute.
      #     * `:replace` - (Boolean) A flag specifying whether or not to
      #       replace the attribute/value pair or to add a new attribute/value
      #       pair. The default setting is `false` .
      #   * `:expected` - (Hash) The update condition which, if specified,
      #     determines whether the specified attributes will be updated or not.
      #     The update condition must be satisfied in order for this request to
      #     be processed and the attributes to be updated.
      #     * `:name` - (String) The name of the attribute involved in the
      #       condition.
      #     * `:value` - (String) The value of an attribute. This value can
      #       only be specified when the Exists parameter is equal to `true` .
      #     * `:exists` - (Boolean) A value specifying whether or not the
      #       specified attribute must exist with the specified value in order
      #       for the update condition to be satisfied. Specify `true` if the
      #       attribute must exist for the update condition to be satisfied.
      #       Specify `false` if the attribute should not exist in order for
      #       the update condition to be satisfied.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:response_metadata` - (Hash)
      #     * `:box_usage` - (Numeric)
      #     * `:response_id` - (String)

      # @!method select(options = {})
      # Calls the Select API operation.
      # @param [Hash] options
      #   * `:select_expression` - *required* - (String) The expression used to
      #     query the domain.
      #   * `:next_token` - (String) A string informing Amazon SimpleDB where
      #     to start the next list of ItemNames.
      #   * `:consistent_read` - (Boolean) Determines whether or not strong
      #     consistency should be enforced when data is read from SimpleDB. If
      #     `true` , any data previously written to SimpleDB will be returned.
      #     Otherwise, results will be consistent eventually, and the client
      #     may not see data that was written immediately before your read.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:items` - (Array<Hash>)
      #     * `:name` - (String)
      #     * `:alternate_name_encoding` - (String)
      #     * `:attributes` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:alternate_name_encoding` - (String)
      #       * `:value` - (String)
      #       * `:alternate_value_encoding` - (String)
      #   * `:next_token` - (String)
      #   * `:response_metadata` - (Hash)
      #     * `:box_usage` - (Numeric)
      #     * `:response_id` - (String)

      # end client methods #

      define_client_methods('2009-04-15')

    end
  end
end
