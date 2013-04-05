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
  class DynamoDB

    # Client class for Amazon DynamoDB.
    class ClientV2 < ClientBase

      # client methods #

      # @!method batch_get_item(options = {})
      # Calls the BatchGetItem API operation.
      # @param [Hash] options
      #   * `:request_items` - *required* - (Hash<String,Hash>)
      #     * `:keys` - *required* - (Array<Hash<String,Hash>>)
      #       * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * `:n` - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * `:b` - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * `:ss` - (Array<String>) A set of strings.
      #       * `:ns` - (Array<String>) A set of numbers.
      #       * `:bs` - (Array<String>) A set of binary attributes.
      #     * `:attributes_to_get` - (Array<String>)
      #     * `:consistent_read` - (Boolean)
      #   * `:return_consumed_capacity` - (String) Valid values include:
      #     * `TOTAL`
      #     * `NONE`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:responses` - (Hash<String,Hash>)
      #     * `:member` - (Hash<String,Hash>)
      #       * `:s` - (String)
      #       * `:n` - (String)
      #       * `:b` - (String)
      #       * `:ss` - (Array<String>)
      #       * `:ns` - (Array<String>)
      #       * `:bs` - (Array<Blob>)
      #   * `:unprocessed_keys` - (Hash<String,Hash>)
      #     * `:member` - (Hash<String,Hash>)
      #       * `:s` - (String)
      #       * `:n` - (String)
      #       * `:b` - (String)
      #       * `:ss` - (Array<String>)
      #       * `:ns` - (Array<String>)
      #       * `:bs` - (Array<Blob>)
      #     * `:attributes_to_get` - (Array<String>)
      #     * `:consistent_read` - (Boolean)
      #   * `:consumed_capacity` - (Array<Hash>)
      #     * `:table_name` - (String)
      #     * `:capacity_units` - (Numeric)

      # @!method batch_write_item(options = {})
      # Calls the BatchWriteItem API operation.
      # @param [Hash] options
      #   * `:request_items` - *required* - (Hash<String,Array<Hash>>) A map of
      #     table name to list-of-write-requests. Used as input to the
      #     BatchWriteItem API call
      #     * `:put_request` - (Hash)
      #       * `:item` - *required* - (Hash<String,Hash>) The item to put
      #         * `:s` - (String) Strings are Unicode with UTF-8 binary
      #           encoding. The maximum size is limited by the size of the
      #           primary key (1024 bytes as a range part of a key or 2048
      #           bytes as a single part hash key) or the item size (64k).
      #         * `:n` - (String) Numbers are positive or negative exact-value
      #           decimals and integers. A number can have up to 38 digits
      #           precision and can be between 10^-128 to 10^+126.
      #         * `:b` - (String) Binary attributes are sequences of unsigned
      #           bytes.
      #         * `:ss` - (Array<String>) A set of strings.
      #         * `:ns` - (Array<String>) A set of numbers.
      #         * `:bs` - (Array<String>) A set of binary attributes.
      #     * `:delete_request` - (Hash)
      #       * `:key` - *required* - (Hash<String,Hash>) The item's key to be
      #         delete
      #         * `:s` - (String) Strings are Unicode with UTF-8 binary
      #           encoding. The maximum size is limited by the size of the
      #           primary key (1024 bytes as a range part of a key or 2048
      #           bytes as a single part hash key) or the item size (64k).
      #         * `:n` - (String) Numbers are positive or negative exact-value
      #           decimals and integers. A number can have up to 38 digits
      #           precision and can be between 10^-128 to 10^+126.
      #         * `:b` - (String) Binary attributes are sequences of unsigned
      #           bytes.
      #         * `:ss` - (Array<String>) A set of strings.
      #         * `:ns` - (Array<String>) A set of numbers.
      #         * `:bs` - (Array<String>) A set of binary attributes.
      #   * `:return_consumed_capacity` - (String) Valid values include:
      #     * `TOTAL`
      #     * `NONE`
      #   * `:return_item_collection_metrics` - (String) Valid values include:
      #     * `SIZE`
      #     * `NONE`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:unprocessed_items` - (Hash<String,Hash>)
      #     * `:value` - (Array<Hash>)
      #       * `:put_request` - (Hash)
      #         * `:item` - (Hash<String,Hash>)
      #           * `:s` - (String)
      #           * `:n` - (String)
      #           * `:b` - (String)
      #           * `:ss` - (Array<String>)
      #           * `:ns` - (Array<String>)
      #           * `:bs` - (Array<Blob>)
      #       * `:delete_request` - (Hash)
      #         * `:key` - (Hash<String,Hash>)
      #           * `:s` - (String)
      #           * `:n` - (String)
      #           * `:b` - (String)
      #           * `:ss` - (Array<String>)
      #           * `:ns` - (Array<String>)
      #           * `:bs` - (Array<Blob>)
      #   * `:item_collection_metrics` - (Hash<String,Hash>)
      #     * `:value` - (Array<Hash>)
      #       * `:item_collection_key` - (Hash<String,Hash>)
      #         * `:s` - (String)
      #         * `:n` - (String)
      #         * `:b` - (String)
      #         * `:ss` - (Array<String>)
      #         * `:ns` - (Array<String>)
      #         * `:bs` - (Array<Blob>)
      #       * `:size_estimate_range_gb` - (Array<Float>)
      #   * `:consumed_capacity` - (Array<Hash>)
      #     * `:table_name` - (String)
      #     * `:capacity_units` - (Numeric)

      # @!method create_table(options = {})
      # Calls the CreateTable API operation.
      # @param [Hash] options
      #   * `:attribute_definitions` - *required* - (Array<Hash>)
      #     * `:attribute_name` - *required* - (String)
      #     * `:attribute_type` - *required* - (String) Valid values include:
      #       * `S`
      #       * `N`
      #       * `B`
      #   * `:table_name` - *required* - (String) The name of the table you
      #     want to create. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      #   * `:key_schema` - *required* - (Array<Hash>)
      #     * `:attribute_name` - *required* - (String) The AttributeName of
      #       the KeySchemaElement.
      #     * `:key_type` - *required* - (String) Valid values include:
      #       * `HASH`
      #       * `RANGE`
      #   * `:local_secondary_indexes` - (Array<Hash>)
      #     * `:index_name` - *required* - (String)
      #     * `:key_schema` - *required* - (Array<Hash>)
      #       * `:attribute_name` - *required* - (String) The AttributeName of
      #         the KeySchemaElement.
      #       * `:key_type` - *required* - (String) Valid values include:
      #         * `HASH`
      #         * `RANGE`
      #     * `:projection` - *required* - (Hash)
      #       * `:projection_type` - (String) Valid values include:
      #         * `ALL`
      #         * `KEYS_ONLY`
      #         * `INCLUDE`
      #       * `:non_key_attributes` - (Array<String>)
      #   * `:provisioned_throughput` - *required* - (Hash)
      #     * `:read_capacity_units` - *required* - (Integer) ReadCapacityUnits
      #       are in terms of strictly consistent reads, assuming items of 1k.
      #       2k items require twice the ReadCapacityUnits.
      #       Eventually-consistent reads only require half the
      #       ReadCapacityUnits of stirctly consistent reads.
      #     * `:write_capacity_units` - *required* - (Integer)
      #       WriteCapacityUnits are in terms of strictly consistent reads,
      #       assuming items of 1k. 2k items require twice the
      #       WriteCapacityUnits.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:table_description` - (Hash)
      #     * `:attribute_definitions` - (Array<Hash>)
      #       * `:attribute_name` - (String)
      #       * `:attribute_type` - (String)
      #     * `:table_name` - (String)
      #     * `:key_schema` - (Array<Hash>)
      #       * `:attribute_name` - (String)
      #       * `:key_type` - (String)
      #     * `:table_status` - (String)
      #     * `:creation_date_time` - (Time)
      #     * `:provisioned_throughput` - (Hash)
      #       * `:last_increase_date_time` - (Time)
      #       * `:last_decrease_date_time` - (Time)
      #       * `:number_of_decreases_today` - (Integer)
      #       * `:read_capacity_units` - (Integer)
      #       * `:write_capacity_units` - (Integer)
      #     * `:table_size_bytes` - (Integer)
      #     * `:item_count` - (Integer)
      #     * `:local_secondary_indexes` - (Array<Hash>)
      #       * `:index_name` - (String)
      #       * `:key_schema` - (Array<Hash>)
      #         * `:attribute_name` - (String)
      #         * `:key_type` - (String)
      #       * `:projection` - (Hash)
      #         * `:projection_type` - (String)
      #         * `:non_key_attributes` - (Array<String>)
      #       * `:index_size_bytes` - (Integer)
      #       * `:item_count` - (Integer)

      # @!method delete_item(options = {})
      # Calls the DeleteItem API operation.
      # @param [Hash] options
      #   * `:table_name` - *required* - (String) The name of the table in
      #     which you want to delete an item. Allowed characters are a-z, A-Z,
      #     0-9, _ (underscore), - (hyphen) and . (period).
      #   * `:key` - *required* - (Hash<String,Hash>)
      #     * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #       The maximum size is limited by the size of the primary key (1024
      #       bytes as a range part of a key or 2048 bytes as a single part
      #       hash key) or the item size (64k).
      #     * `:n` - (String) Numbers are positive or negative exact-value
      #       decimals and integers. A number can have up to 38 digits
      #       precision and can be between 10^-128 to 10^+126.
      #     * `:b` - (String) Binary attributes are sequences of unsigned
      #       bytes.
      #     * `:ss` - (Array<String>) A set of strings.
      #     * `:ns` - (Array<String>) A set of numbers.
      #     * `:bs` - (Array<String>) A set of binary attributes.
      #   * `:expected` - (Hash<String,Hash>)
      #     * `:value` - (Hash) Specify whether or not a value already exists
      #       and has a specific content for the attribute name-value pair.
      #       * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * `:n` - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * `:b` - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * `:ss` - (Array<String>) A set of strings.
      #       * `:ns` - (Array<String>) A set of numbers.
      #       * `:bs` - (Array<String>) A set of binary attributes.
      #     * `:exists` - (Boolean) Specify whether or not a value already
      #       exists for the attribute name-value pair.
      #   * `:return_values` - (String) Valid values include:
      #     * `NONE`
      #     * `ALL_OLD`
      #     * `UPDATED_OLD`
      #     * `ALL_NEW`
      #     * `UPDATED_NEW`
      #   * `:return_consumed_capacity` - (String) Valid values include:
      #     * `TOTAL`
      #     * `NONE`
      #   * `:return_item_collection_metrics` - (String) Valid values include:
      #     * `SIZE`
      #     * `NONE`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:attributes` - (Hash<String,Hash>)
      #     * `:s` - (String)
      #     * `:n` - (String)
      #     * `:b` - (String)
      #     * `:ss` - (Array<String>)
      #     * `:ns` - (Array<String>)
      #     * `:bs` - (Array<Blob>)
      #   * `:consumed_capacity` - (Hash)
      #     * `:table_name` - (String)
      #     * `:capacity_units` - (Numeric)
      #   * `:item_collection_metrics` - (Hash)
      #     * `:item_collection_key` - (Hash<String,Hash>)
      #       * `:s` - (String)
      #       * `:n` - (String)
      #       * `:b` - (String)
      #       * `:ss` - (Array<String>)
      #       * `:ns` - (Array<String>)
      #       * `:bs` - (Array<Blob>)
      #     * `:size_estimate_range_gb` - (Array<Float>)

      # @!method delete_table(options = {})
      # Calls the DeleteTable API operation.
      # @param [Hash] options
      #   * `:table_name` - *required* - (String) The name of the table you
      #     want to delete. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:table_description` - (Hash)
      #     * `:attribute_definitions` - (Array<Hash>)
      #       * `:attribute_name` - (String)
      #       * `:attribute_type` - (String)
      #     * `:table_name` - (String)
      #     * `:key_schema` - (Array<Hash>)
      #       * `:attribute_name` - (String)
      #       * `:key_type` - (String)
      #     * `:table_status` - (String)
      #     * `:creation_date_time` - (Time)
      #     * `:provisioned_throughput` - (Hash)
      #       * `:last_increase_date_time` - (Time)
      #       * `:last_decrease_date_time` - (Time)
      #       * `:number_of_decreases_today` - (Integer)
      #       * `:read_capacity_units` - (Integer)
      #       * `:write_capacity_units` - (Integer)
      #     * `:table_size_bytes` - (Integer)
      #     * `:item_count` - (Integer)
      #     * `:local_secondary_indexes` - (Array<Hash>)
      #       * `:index_name` - (String)
      #       * `:key_schema` - (Array<Hash>)
      #         * `:attribute_name` - (String)
      #         * `:key_type` - (String)
      #       * `:projection` - (Hash)
      #         * `:projection_type` - (String)
      #         * `:non_key_attributes` - (Array<String>)
      #       * `:index_size_bytes` - (Integer)
      #       * `:item_count` - (Integer)

      # @!method describe_table(options = {})
      # Calls the DescribeTable API operation.
      # @param [Hash] options
      #   * `:table_name` - *required* - (String) The name of the table you
      #     want to describe. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:table` - (Hash)
      #     * `:attribute_definitions` - (Array<Hash>)
      #       * `:attribute_name` - (String)
      #       * `:attribute_type` - (String)
      #     * `:table_name` - (String)
      #     * `:key_schema` - (Array<Hash>)
      #       * `:attribute_name` - (String)
      #       * `:key_type` - (String)
      #     * `:table_status` - (String)
      #     * `:creation_date_time` - (Time)
      #     * `:provisioned_throughput` - (Hash)
      #       * `:last_increase_date_time` - (Time)
      #       * `:last_decrease_date_time` - (Time)
      #       * `:number_of_decreases_today` - (Integer)
      #       * `:read_capacity_units` - (Integer)
      #       * `:write_capacity_units` - (Integer)
      #     * `:table_size_bytes` - (Integer)
      #     * `:item_count` - (Integer)
      #     * `:local_secondary_indexes` - (Array<Hash>)
      #       * `:index_name` - (String)
      #       * `:key_schema` - (Array<Hash>)
      #         * `:attribute_name` - (String)
      #         * `:key_type` - (String)
      #       * `:projection` - (Hash)
      #         * `:projection_type` - (String)
      #         * `:non_key_attributes` - (Array<String>)
      #       * `:index_size_bytes` - (Integer)
      #       * `:item_count` - (Integer)

      # @!method get_item(options = {})
      # Calls the GetItem API operation.
      # @param [Hash] options
      #   * `:table_name` - *required* - (String) The name of the table in
      #     which you want to get an item. Allowed characters are a-z, A-Z,
      #     0-9, _ (underscore), - (hyphen) and . (period).
      #   * `:key` - *required* - (Hash<String,Hash>)
      #     * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #       The maximum size is limited by the size of the primary key (1024
      #       bytes as a range part of a key or 2048 bytes as a single part
      #       hash key) or the item size (64k).
      #     * `:n` - (String) Numbers are positive or negative exact-value
      #       decimals and integers. A number can have up to 38 digits
      #       precision and can be between 10^-128 to 10^+126.
      #     * `:b` - (String) Binary attributes are sequences of unsigned
      #       bytes.
      #     * `:ss` - (Array<String>) A set of strings.
      #     * `:ns` - (Array<String>) A set of numbers.
      #     * `:bs` - (Array<String>) A set of binary attributes.
      #   * `:attributes_to_get` - (Array<String>)
      #   * `:consistent_read` - (Boolean)
      #   * `:return_consumed_capacity` - (String) Valid values include:
      #     * `TOTAL`
      #     * `NONE`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:item` - (Hash<String,Hash>)
      #     * `:s` - (String)
      #     * `:n` - (String)
      #     * `:b` - (String)
      #     * `:ss` - (Array<String>)
      #     * `:ns` - (Array<String>)
      #     * `:bs` - (Array<Blob>)
      #   * `:consumed_capacity` - (Hash)
      #     * `:table_name` - (String)
      #     * `:capacity_units` - (Numeric)

      # @!method list_tables(options = {})
      # Calls the ListTables API operation.
      # @param [Hash] options
      #   * `:exclusive_start_table_name` - (String) The name of the table that
      #     starts the list. If you already ran a ListTables operation and
      #     recieved a LastEvaluatedTableName value in the response, use that
      #     value here to continue the list.
      #   * `:limit` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:table_names` - (Array<String>)
      #   * `:last_evaluated_table_name` - (String)

      # @!method put_item(options = {})
      # Calls the PutItem API operation.
      # @param [Hash] options
      #   * `:table_name` - *required* - (String) The name of the table in
      #     which you want to put an item. Allowed characters are a-z, A-Z,
      #     0-9, _ (underscore), - (hyphen) and . (period).
      #   * `:item` - *required* - (Hash<String,Hash>)
      #     * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #       The maximum size is limited by the size of the primary key (1024
      #       bytes as a range part of a key or 2048 bytes as a single part
      #       hash key) or the item size (64k).
      #     * `:n` - (String) Numbers are positive or negative exact-value
      #       decimals and integers. A number can have up to 38 digits
      #       precision and can be between 10^-128 to 10^+126.
      #     * `:b` - (String) Binary attributes are sequences of unsigned
      #       bytes.
      #     * `:ss` - (Array<String>) A set of strings.
      #     * `:ns` - (Array<String>) A set of numbers.
      #     * `:bs` - (Array<String>) A set of binary attributes.
      #   * `:expected` - (Hash<String,Hash>)
      #     * `:value` - (Hash) Specify whether or not a value already exists
      #       and has a specific content for the attribute name-value pair.
      #       * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * `:n` - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * `:b` - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * `:ss` - (Array<String>) A set of strings.
      #       * `:ns` - (Array<String>) A set of numbers.
      #       * `:bs` - (Array<String>) A set of binary attributes.
      #     * `:exists` - (Boolean) Specify whether or not a value already
      #       exists for the attribute name-value pair.
      #   * `:return_values` - (String) Valid values include:
      #     * `NONE`
      #     * `ALL_OLD`
      #     * `UPDATED_OLD`
      #     * `ALL_NEW`
      #     * `UPDATED_NEW`
      #   * `:return_consumed_capacity` - (String) Valid values include:
      #     * `TOTAL`
      #     * `NONE`
      #   * `:return_item_collection_metrics` - (String) Valid values include:
      #     * `SIZE`
      #     * `NONE`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:attributes` - (Hash<String,Hash>)
      #     * `:s` - (String)
      #     * `:n` - (String)
      #     * `:b` - (String)
      #     * `:ss` - (Array<String>)
      #     * `:ns` - (Array<String>)
      #     * `:bs` - (Array<Blob>)
      #   * `:consumed_capacity` - (Hash)
      #     * `:table_name` - (String)
      #     * `:capacity_units` - (Numeric)
      #   * `:item_collection_metrics` - (Hash)
      #     * `:item_collection_key` - (Hash<String,Hash>)
      #       * `:s` - (String)
      #       * `:n` - (String)
      #       * `:b` - (String)
      #       * `:ss` - (Array<String>)
      #       * `:ns` - (Array<String>)
      #       * `:bs` - (Array<Blob>)
      #     * `:size_estimate_range_gb` - (Array<Float>)

      # @!method query(options = {})
      # Calls the Query API operation.
      # @param [Hash] options
      #   * `:table_name` - *required* - (String) The name of the table in
      #     which you want to query. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      #   * `:index_name` - (String)
      #   * `:select` - (String) Valid values include:
      #     * `ALL_ATTRIBUTES`
      #     * `ALL_PROJECTED_ATTRIBUTES`
      #     * `SPECIFIC_ATTRIBUTES`
      #     * `COUNT`
      #   * `:attributes_to_get` - (Array<String>)
      #   * `:limit` - (Integer) The maximum number of items to return. If
      #     Amazon DynamoDB hits this limit while querying the table, it stops
      #     the query and returns the matching values up to the limit, and a
      #     LastEvaluatedKey to apply in a subsequent operation to continue the
      #     query. Also, if the result set size exceeds 1MB before Amazon
      #     DynamoDB hits this limit, it stops the query and returns the
      #     matching values, and a LastEvaluatedKey to apply in a subsequent
      #     operation to continue the query.
      #   * `:consistent_read` - (Boolean)
      #   * `:key_conditions` - (Hash<String,Hash>)
      #     * `:attribute_value_list` - (Array<Hash>)
      #       * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * `:n` - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * `:b` - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * `:ss` - (Array<String>) A set of strings.
      #       * `:ns` - (Array<String>) A set of numbers.
      #       * `:bs` - (Array<String>) A set of binary attributes.
      #     * `:comparison_operator` - *required* - (String) Valid values
      #       include:
      #       * `EQ`
      #       * `NE`
      #       * `IN`
      #       * `LE`
      #       * `LT`
      #       * `GE`
      #       * `GT`
      #       * `BETWEEN`
      #       * `NOT_NULL`
      #       * `NULL`
      #       * `CONTAINS`
      #       * `NOT_CONTAINS`
      #       * `BEGINS_WITH`
      #   * `:scan_index_forward` - (Boolean) Specifies forward or backward
      #     traversal of the index. Amazon DynamoDB returns results reflecting
      #     the requested order, determined by the range key. Default is +true+
      #     (forward).
      #   * `:exclusive_start_key` - (Hash<String,Hash>) Primary key of the
      #     item from which to continue an earlier query. An earlier query
      #     might provide this value as the LastEvaluatedKey if that query
      #     operation was interrupted before completing the query; either
      #     because of the result set size or the Limit parameter. The
      #     LastEvaluatedKey can be passed back in a new query request to
      #     continue the operation from that point.
      #     * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #       The maximum size is limited by the size of the primary key (1024
      #       bytes as a range part of a key or 2048 bytes as a single part
      #       hash key) or the item size (64k).
      #     * `:n` - (String) Numbers are positive or negative exact-value
      #       decimals and integers. A number can have up to 38 digits
      #       precision and can be between 10^-128 to 10^+126.
      #     * `:b` - (String) Binary attributes are sequences of unsigned
      #       bytes.
      #     * `:ss` - (Array<String>) A set of strings.
      #     * `:ns` - (Array<String>) A set of numbers.
      #     * `:bs` - (Array<String>) A set of binary attributes.
      #   * `:return_consumed_capacity` - (String) Valid values include:
      #     * `TOTAL`
      #     * `NONE`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:member` - (Hash<String,Hash>)
      #     * `:s` - (String)
      #     * `:n` - (String)
      #     * `:b` - (String)
      #     * `:ss` - (Array<String>)
      #     * `:ns` - (Array<String>)
      #     * `:bs` - (Array<Blob>)
      #   * `:count` - (Integer)
      #   * `:last_evaluated_key` - (Hash<String,Hash>)
      #     * `:s` - (String)
      #     * `:n` - (String)
      #     * `:b` - (String)
      #     * `:ss` - (Array<String>)
      #     * `:ns` - (Array<String>)
      #     * `:bs` - (Array<Blob>)
      #   * `:consumed_capacity` - (Hash)
      #     * `:table_name` - (String)
      #     * `:capacity_units` - (Numeric)

      # @!method scan(options = {})
      # Calls the Scan API operation.
      # @param [Hash] options
      #   * `:table_name` - *required* - (String) The name of the table in
      #     which you want to scan. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      #   * `:attributes_to_get` - (Array<String>)
      #   * `:limit` - (Integer) The maximum number of items to return. If
      #     Amazon DynamoDB hits this limit while scanning the table, it stops
      #     the scan and returns the matching values up to the limit, and a
      #     LastEvaluatedKey to apply in a subsequent operation to continue the
      #     scan. Also, if the scanned data set size exceeds 1MB before Amazon
      #     DynamoDB hits this limit, it stops the scan and returns the
      #     matching values up to the limit, and a LastEvaluatedKey to apply in
      #     a subsequent operation to continue the scan.
      #   * `:select` - (String) Valid values include:
      #     * `ALL_ATTRIBUTES`
      #     * `ALL_PROJECTED_ATTRIBUTES`
      #     * `SPECIFIC_ATTRIBUTES`
      #     * `COUNT`
      #   * `:scan_filter` - (Hash<String,Hash>) Evaluates the scan results and
      #     returns only the desired values.
      #     * `:attribute_value_list` - (Array<Hash>)
      #       * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * `:n` - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * `:b` - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * `:ss` - (Array<String>) A set of strings.
      #       * `:ns` - (Array<String>) A set of numbers.
      #       * `:bs` - (Array<String>) A set of binary attributes.
      #     * `:comparison_operator` - *required* - (String) Valid values
      #       include:
      #       * `EQ`
      #       * `NE`
      #       * `IN`
      #       * `LE`
      #       * `LT`
      #       * `GE`
      #       * `GT`
      #       * `BETWEEN`
      #       * `NOT_NULL`
      #       * `NULL`
      #       * `CONTAINS`
      #       * `NOT_CONTAINS`
      #       * `BEGINS_WITH`
      #   * `:exclusive_start_key` - (Hash<String,Hash>) Primary key of the
      #     item from which to continue an earlier scan. An earlier scan might
      #     provide this value if that scan operation was interrupted before
      #     scanning the entire table; either because of the result set size or
      #     the Limit parameter. The LastEvaluatedKey can be passed back in a
      #     new scan request to continue the operation from that point.
      #     * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #       The maximum size is limited by the size of the primary key (1024
      #       bytes as a range part of a key or 2048 bytes as a single part
      #       hash key) or the item size (64k).
      #     * `:n` - (String) Numbers are positive or negative exact-value
      #       decimals and integers. A number can have up to 38 digits
      #       precision and can be between 10^-128 to 10^+126.
      #     * `:b` - (String) Binary attributes are sequences of unsigned
      #       bytes.
      #     * `:ss` - (Array<String>) A set of strings.
      #     * `:ns` - (Array<String>) A set of numbers.
      #     * `:bs` - (Array<String>) A set of binary attributes.
      #   * `:return_consumed_capacity` - (String) Valid values include:
      #     * `TOTAL`
      #     * `NONE`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:member` - (Hash<String,Hash>)
      #     * `:s` - (String)
      #     * `:n` - (String)
      #     * `:b` - (String)
      #     * `:ss` - (Array<String>)
      #     * `:ns` - (Array<String>)
      #     * `:bs` - (Array<Blob>)
      #   * `:count` - (Integer)
      #   * `:scanned_count` - (Integer)
      #   * `:last_evaluated_key` - (Hash<String,Hash>)
      #     * `:s` - (String)
      #     * `:n` - (String)
      #     * `:b` - (String)
      #     * `:ss` - (Array<String>)
      #     * `:ns` - (Array<String>)
      #     * `:bs` - (Array<Blob>)
      #   * `:consumed_capacity` - (Hash)
      #     * `:table_name` - (String)
      #     * `:capacity_units` - (Numeric)

      # @!method update_item(options = {})
      # Calls the UpdateItem API operation.
      # @param [Hash] options
      #   * `:table_name` - *required* - (String) The name of the table in
      #     which you want to update an item. Allowed characters are a-z, A-Z,
      #     0-9, _ (underscore), - (hyphen) and . (period).
      #   * `:key` - *required* - (Hash<String,Hash>)
      #     * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #       The maximum size is limited by the size of the primary key (1024
      #       bytes as a range part of a key or 2048 bytes as a single part
      #       hash key) or the item size (64k).
      #     * `:n` - (String) Numbers are positive or negative exact-value
      #       decimals and integers. A number can have up to 38 digits
      #       precision and can be between 10^-128 to 10^+126.
      #     * `:b` - (String) Binary attributes are sequences of unsigned
      #       bytes.
      #     * `:ss` - (Array<String>) A set of strings.
      #     * `:ns` - (Array<String>) A set of numbers.
      #     * `:bs` - (Array<String>) A set of binary attributes.
      #   * `:attribute_updates` - (Hash<String,Hash>)
      #     * `:value` - (Hash)
      #       * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * `:n` - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * `:b` - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * `:ss` - (Array<String>) A set of strings.
      #       * `:ns` - (Array<String>) A set of numbers.
      #       * `:bs` - (Array<String>) A set of binary attributes.
      #     * `:action` - (String) Valid values include:
      #       * `ADD`
      #       * `PUT`
      #       * `DELETE`
      #   * `:expected` - (Hash<String,Hash>)
      #     * `:value` - (Hash) Specify whether or not a value already exists
      #       and has a specific content for the attribute name-value pair.
      #       * `:s` - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * `:n` - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * `:b` - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * `:ss` - (Array<String>) A set of strings.
      #       * `:ns` - (Array<String>) A set of numbers.
      #       * `:bs` - (Array<String>) A set of binary attributes.
      #     * `:exists` - (Boolean) Specify whether or not a value already
      #       exists for the attribute name-value pair.
      #   * `:return_values` - (String) Valid values include:
      #     * `NONE`
      #     * `ALL_OLD`
      #     * `UPDATED_OLD`
      #     * `ALL_NEW`
      #     * `UPDATED_NEW`
      #   * `:return_consumed_capacity` - (String) Valid values include:
      #     * `TOTAL`
      #     * `NONE`
      #   * `:return_item_collection_metrics` - (String) Valid values include:
      #     * `SIZE`
      #     * `NONE`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:attributes` - (Hash<String,Hash>)
      #     * `:s` - (String)
      #     * `:n` - (String)
      #     * `:b` - (String)
      #     * `:ss` - (Array<String>)
      #     * `:ns` - (Array<String>)
      #     * `:bs` - (Array<Blob>)
      #   * `:consumed_capacity` - (Hash)
      #     * `:table_name` - (String)
      #     * `:capacity_units` - (Numeric)
      #   * `:item_collection_metrics` - (Hash)
      #     * `:item_collection_key` - (Hash<String,Hash>)
      #       * `:s` - (String)
      #       * `:n` - (String)
      #       * `:b` - (String)
      #       * `:ss` - (Array<String>)
      #       * `:ns` - (Array<String>)
      #       * `:bs` - (Array<Blob>)
      #     * `:size_estimate_range_gb` - (Array<Float>)

      # @!method update_table(options = {})
      # Calls the UpdateTable API operation.
      # @param [Hash] options
      #   * `:table_name` - *required* - (String) The name of the table you
      #     want to update. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      #   * `:provisioned_throughput` - *required* - (Hash)
      #     * `:read_capacity_units` - *required* - (Integer) ReadCapacityUnits
      #       are in terms of strictly consistent reads, assuming items of 1k.
      #       2k items require twice the ReadCapacityUnits.
      #       Eventually-consistent reads only require half the
      #       ReadCapacityUnits of stirctly consistent reads.
      #     * `:write_capacity_units` - *required* - (Integer)
      #       WriteCapacityUnits are in terms of strictly consistent reads,
      #       assuming items of 1k. 2k items require twice the
      #       WriteCapacityUnits.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * `:table_description` - (Hash)
      #     * `:attribute_definitions` - (Array<Hash>)
      #       * `:attribute_name` - (String)
      #       * `:attribute_type` - (String)
      #     * `:table_name` - (String)
      #     * `:key_schema` - (Array<Hash>)
      #       * `:attribute_name` - (String)
      #       * `:key_type` - (String)
      #     * `:table_status` - (String)
      #     * `:creation_date_time` - (Time)
      #     * `:provisioned_throughput` - (Hash)
      #       * `:last_increase_date_time` - (Time)
      #       * `:last_decrease_date_time` - (Time)
      #       * `:number_of_decreases_today` - (Integer)
      #       * `:read_capacity_units` - (Integer)
      #       * `:write_capacity_units` - (Integer)
      #     * `:table_size_bytes` - (Integer)
      #     * `:item_count` - (Integer)
      #     * `:local_secondary_indexes` - (Array<Hash>)
      #       * `:index_name` - (String)
      #       * `:key_schema` - (Array<Hash>)
      #         * `:attribute_name` - (String)
      #         * `:key_type` - (String)
      #       * `:projection` - (Hash)
      #         * `:projection_type` - (String)
      #         * `:non_key_attributes` - (Array<String>)
      #       * `:index_size_bytes` - (Integer)
      #       * `:item_count` - (Integer)

      # end client methods #

      define_client_methods('2012-08-10')

    end
  end
end
