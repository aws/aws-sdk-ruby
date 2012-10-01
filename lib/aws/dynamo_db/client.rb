# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    class Client < Core::JSONClient

      define_client_methods('2011-12-05')

      # @private
      REGION_US_E1 = 'dynamodb.us-east-1.amazonaws.com'

      # @private
      CACHEABLE_REQUESTS = Set[:list_tables, :describe_table]

      ## client methods ##

      # @!method batch_get_item(options = {})
      # Calls the BatchGetItem API operation.
      # @param [Hash] options
      #   * +:request_items+ - *required* - (Hash<String,Hash>)
      #     * +:keys+ - *required* - (Array<Hash>)
      #       * +:hash_key_element+ - *required* - (Hash) A hash key element is
      #         treated as the primary key, and can be a string or a number.
      #         Single attribute primary keys have one index value. The value
      #         can be String, Number, StringSet, NumberSet.
      #         * +:s+ - (String) Strings are Unicode with UTF-8 binary
      #           encoding. The maximum size is limited by the size of the
      #           primary key (1024 bytes as a range part of a key or 2048
      #           bytes as a single part hash key) or the item size (64k).
      #         * +:n+ - (String) Numbers are positive or negative exact-value
      #           decimals and integers. A number can have up to 38 digits
      #           precision and can be between 10^-128 to 10^+126.
      #         * +:b+ - (String) Binary attributes are sequences of unsigned
      #           bytes.
      #         * +:ss+ - (Array<String>) A set of strings.
      #         * +:ns+ - (Array<String>) A set of numbers.
      #         * +:bs+ - (Array<String>) A set of binary attributes.
      #       * +:range_key_element+ - (Hash) A range key element is treated as
      #         a secondary key (used in conjunction with the primary key), and
      #         can be a string or a number, and is only used for
      #         hash-and-range primary keys. The value can be String, Number,
      #         StringSet, NumberSet.
      #         * +:s+ - (String) Strings are Unicode with UTF-8 binary
      #           encoding. The maximum size is limited by the size of the
      #           primary key (1024 bytes as a range part of a key or 2048
      #           bytes as a single part hash key) or the item size (64k).
      #         * +:n+ - (String) Numbers are positive or negative exact-value
      #           decimals and integers. A number can have up to 38 digits
      #           precision and can be between 10^-128 to 10^+126.
      #         * +:b+ - (String) Binary attributes are sequences of unsigned
      #           bytes.
      #         * +:ss+ - (Array<String>) A set of strings.
      #         * +:ns+ - (Array<String>) A set of numbers.
      #         * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:attributes_to_get+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +Responses+ - (Hash<String,Hash>)
      #     * +member+ - (Hash<String,Hash>)
      #       * +S+ - (String)
      #       * +N+ - (String)
      #       * +B+ - (String)
      #       * +SS+ - (Array<String>)
      #       * +NS+ - (Array<String>)
      #       * +BS+ - (Array<Blob>)
      #     * +ConsumedCapacityUnits+ - (Numeric)
      #   * +UnprocessedKeys+ - (Hash<String,Hash>)
      #     * +Keys+ - (Array<Hash>)
      #       * +HashKeyElement+ - (Hash)
      #         * +S+ - (String)
      #         * +N+ - (String)
      #         * +B+ - (String)
      #         * +SS+ - (Array<String>)
      #         * +NS+ - (Array<String>)
      #         * +BS+ - (Array<Blob>)
      #       * +RangeKeyElement+ - (Hash)
      #         * +S+ - (String)
      #         * +N+ - (String)
      #         * +B+ - (String)
      #         * +SS+ - (Array<String>)
      #         * +NS+ - (Array<String>)
      #         * +BS+ - (Array<Blob>)
      #     * +AttributesToGet+ - (Array<String>)

      # @!method batch_write_item(options = {})
      # Calls the BatchWriteItem API operation.
      # @param [Hash] options
      #   * +:request_items+ - *required* - (Hash<String,Array<Hash>>) A map of
      #     table name to list-of-write-requests. Used as input to the
      #     BatchWriteItem API call
      #     * +:put_request+ - (Hash)
      #       * +:item+ - *required* - (Hash<String,Hash>) The item to put
      #         * +:s+ - (String) Strings are Unicode with UTF-8 binary
      #           encoding. The maximum size is limited by the size of the
      #           primary key (1024 bytes as a range part of a key or 2048
      #           bytes as a single part hash key) or the item size (64k).
      #         * +:n+ - (String) Numbers are positive or negative exact-value
      #           decimals and integers. A number can have up to 38 digits
      #           precision and can be between 10^-128 to 10^+126.
      #         * +:b+ - (String) Binary attributes are sequences of unsigned
      #           bytes.
      #         * +:ss+ - (Array<String>) A set of strings.
      #         * +:ns+ - (Array<String>) A set of numbers.
      #         * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:delete_request+ - (Hash)
      #       * +:key+ - *required* - (Hash) The item's key to be delete
      #         * +:hash_key_element+ - *required* - (Hash) A hash key element
      #           is treated as the primary key, and can be a string or a
      #           number. Single attribute primary keys have one index value.
      #           The value can be String, Number, StringSet, NumberSet.
      #           * +:s+ - (String) Strings are Unicode with UTF-8 binary
      #             encoding. The maximum size is limited by the size of the
      #             primary key (1024 bytes as a range part of a key or 2048
      #             bytes as a single part hash key) or the item size (64k).
      #           * +:n+ - (String) Numbers are positive or negative
      #             exact-value decimals and integers. A number can have up to
      #             38 digits precision and can be between 10^-128 to 10^+126.
      #           * +:b+ - (String) Binary attributes are sequences of unsigned
      #             bytes.
      #           * +:ss+ - (Array<String>) A set of strings.
      #           * +:ns+ - (Array<String>) A set of numbers.
      #           * +:bs+ - (Array<String>) A set of binary attributes.
      #         * +:range_key_element+ - (Hash) A range key element is treated
      #           as a secondary key (used in conjunction with the primary
      #           key), and can be a string or a number, and is only used for
      #           hash-and-range primary keys. The value can be String, Number,
      #           StringSet, NumberSet.
      #           * +:s+ - (String) Strings are Unicode with UTF-8 binary
      #             encoding. The maximum size is limited by the size of the
      #             primary key (1024 bytes as a range part of a key or 2048
      #             bytes as a single part hash key) or the item size (64k).
      #           * +:n+ - (String) Numbers are positive or negative
      #             exact-value decimals and integers. A number can have up to
      #             38 digits precision and can be between 10^-128 to 10^+126.
      #           * +:b+ - (String) Binary attributes are sequences of unsigned
      #             bytes.
      #           * +:ss+ - (Array<String>) A set of strings.
      #           * +:ns+ - (Array<String>) A set of numbers.
      #           * +:bs+ - (Array<String>) A set of binary attributes.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +Responses+ - (Hash<String,Hash>)
      #     * +ConsumedCapacityUnits+ - (Numeric)
      #   * +UnprocessedItems+ - (Hash<String,Hash>)
      #     * +value+ - (Array<Hash>)
      #       * +PutRequest+ - (Hash)
      #         * +Item+ - (Hash<String,Hash>)
      #           * +S+ - (String)
      #           * +N+ - (String)
      #           * +B+ - (String)
      #           * +SS+ - (Array<String>)
      #           * +NS+ - (Array<String>)
      #           * +BS+ - (Array<Blob>)
      #       * +DeleteRequest+ - (Hash)
      #         * +Key+ - (Hash)
      #           * +HashKeyElement+ - (Hash)
      #             * +S+ - (String)
      #             * +N+ - (String)
      #             * +B+ - (String)
      #             * +SS+ - (Array<String>)
      #             * +NS+ - (Array<String>)
      #             * +BS+ - (Array<Blob>)
      #           * +RangeKeyElement+ - (Hash)
      #             * +S+ - (String)
      #             * +N+ - (String)
      #             * +B+ - (String)
      #             * +SS+ - (Array<String>)
      #             * +NS+ - (Array<String>)
      #             * +BS+ - (Array<Blob>)

      # @!method create_table(options = {})
      # Calls the CreateTable API operation.
      # @param [Hash] options
      #   * +:table_name+ - *required* - (String) The name of the table you
      #     want to create. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      #   * +:key_schema+ - *required* - (Hash)
      #     * +:hash_key_element+ - *required* - (Hash) A hash key element is
      #       treated as the primary key, and can be a string or a number.
      #       Single attribute primary keys have one index value. The value can
      #       be String, Number, StringSet, NumberSet.
      #       * +:attribute_name+ - *required* - (String) The AttributeName of
      #         the KeySchemaElement.
      #       * +:attribute_type+ - *required* - (String) The AttributeType of
      #         the KeySchemaElement which can be a String or a Number.
      #     * +:range_key_element+ - (Hash) A range key element is treated as a
      #       secondary key (used in conjunction with the primary key), and can
      #       be a string or a number, and is only used for hash-and-range
      #       primary keys. The value can be String, Number, StringSet,
      #       NumberSet.
      #       * +:attribute_name+ - *required* - (String) The AttributeName of
      #         the KeySchemaElement.
      #       * +:attribute_type+ - *required* - (String) The AttributeType of
      #         the KeySchemaElement which can be a String or a Number.
      #   * +:provisioned_throughput+ - *required* - (Hash)
      #     * +:read_capacity_units+ - *required* - (Integer) ReadCapacityUnits
      #       are in terms of strictly consistent reads, assuming items of 1k.
      #       2k items require twice the ReadCapacityUnits.
      #       Eventually-consistent reads only require half the
      #       ReadCapacityUnits of stirctly consistent reads.
      #     * +:write_capacity_units+ - *required* - (Integer)
      #       WriteCapacityUnits are in terms of strictly consistent reads,
      #       assuming items of 1k. 2k items require twice the
      #       WriteCapacityUnits.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +TableDescription+ - (Hash)
      #     * +TableName+ - (String)
      #     * +KeySchema+ - (Hash)
      #       * +HashKeyElement+ - (Hash)
      #         * +AttributeName+ - (String)
      #         * +AttributeType+ - (String)
      #       * +RangeKeyElement+ - (Hash)
      #         * +AttributeName+ - (String)
      #         * +AttributeType+ - (String)
      #     * +TableStatus+ - (String)
      #     * +CreationDateTime+ - (Time)
      #     * +ProvisionedThroughput+ - (Hash)
      #       * +LastIncreaseDateTime+ - (Time)
      #       * +LastDecreaseDateTime+ - (Time)
      #       * +ReadCapacityUnits+ - (Integer)
      #       * +WriteCapacityUnits+ - (Integer)
      #     * +TableSizeBytes+ - (Integer)
      #     * +ItemCount+ - (Integer)

      # @!method delete_item(options = {})
      # Calls the DeleteItem API operation.
      # @param [Hash] options
      #   * +:table_name+ - *required* - (String) The name of the table in
      #     which you want to delete an item. Allowed characters are a-z, A-Z,
      #     0-9, _ (underscore), - (hyphen) and . (period).
      #   * +:key+ - *required* - (Hash)
      #     * +:hash_key_element+ - *required* - (Hash) A hash key element is
      #       treated as the primary key, and can be a string or a number.
      #       Single attribute primary keys have one index value. The value can
      #       be String, Number, StringSet, NumberSet.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:range_key_element+ - (Hash) A range key element is treated as a
      #       secondary key (used in conjunction with the primary key), and can
      #       be a string or a number, and is only used for hash-and-range
      #       primary keys. The value can be String, Number, StringSet,
      #       NumberSet.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #   * +:expected+ - (Hash<String,Hash>)
      #     * +:value+ - (Hash) Specify whether or not a value already exists
      #       and has a specific content for the attribute name-value pair.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:exists+ - (Boolean) Specify whether or not a value already
      #       exists for the attribute name-value pair.
      #   * +:return_values+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +Attributes+ - (Hash<String,Hash>)
      #     * +S+ - (String)
      #     * +N+ - (String)
      #     * +B+ - (String)
      #     * +SS+ - (Array<String>)
      #     * +NS+ - (Array<String>)
      #     * +BS+ - (Array<Blob>)
      #   * +ConsumedCapacityUnits+ - (Numeric)

      # @!method delete_table(options = {})
      # Calls the DeleteTable API operation.
      # @param [Hash] options
      #   * +:table_name+ - *required* - (String) The name of the table you
      #     want to delete. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +TableDescription+ - (Hash)
      #     * +TableName+ - (String)
      #     * +KeySchema+ - (Hash)
      #       * +HashKeyElement+ - (Hash)
      #         * +AttributeName+ - (String)
      #         * +AttributeType+ - (String)
      #       * +RangeKeyElement+ - (Hash)
      #         * +AttributeName+ - (String)
      #         * +AttributeType+ - (String)
      #     * +TableStatus+ - (String)
      #     * +CreationDateTime+ - (Time)
      #     * +ProvisionedThroughput+ - (Hash)
      #       * +LastIncreaseDateTime+ - (Time)
      #       * +LastDecreaseDateTime+ - (Time)
      #       * +ReadCapacityUnits+ - (Integer)
      #       * +WriteCapacityUnits+ - (Integer)
      #     * +TableSizeBytes+ - (Integer)
      #     * +ItemCount+ - (Integer)

      # @!method describe_table(options = {})
      # Calls the DescribeTable API operation.
      # @param [Hash] options
      #   * +:table_name+ - *required* - (String) The name of the table you
      #     want to describe. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +Table+ - (Hash)
      #     * +TableName+ - (String)
      #     * +KeySchema+ - (Hash)
      #       * +HashKeyElement+ - (Hash)
      #         * +AttributeName+ - (String)
      #         * +AttributeType+ - (String)
      #       * +RangeKeyElement+ - (Hash)
      #         * +AttributeName+ - (String)
      #         * +AttributeType+ - (String)
      #     * +TableStatus+ - (String)
      #     * +CreationDateTime+ - (Time)
      #     * +ProvisionedThroughput+ - (Hash)
      #       * +LastIncreaseDateTime+ - (Time)
      #       * +LastDecreaseDateTime+ - (Time)
      #       * +ReadCapacityUnits+ - (Integer)
      #       * +WriteCapacityUnits+ - (Integer)
      #     * +TableSizeBytes+ - (Integer)
      #     * +ItemCount+ - (Integer)

      # @!method get_item(options = {})
      # Calls the GetItem API operation.
      # @param [Hash] options
      #   * +:table_name+ - *required* - (String) The name of the table in
      #     which you want to get an item. Allowed characters are a-z, A-Z,
      #     0-9, _ (underscore), - (hyphen) and . (period).
      #   * +:key+ - *required* - (Hash)
      #     * +:hash_key_element+ - *required* - (Hash) A hash key element is
      #       treated as the primary key, and can be a string or a number.
      #       Single attribute primary keys have one index value. The value can
      #       be String, Number, StringSet, NumberSet.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:range_key_element+ - (Hash) A range key element is treated as a
      #       secondary key (used in conjunction with the primary key), and can
      #       be a string or a number, and is only used for hash-and-range
      #       primary keys. The value can be String, Number, StringSet,
      #       NumberSet.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #   * +:attributes_to_get+ - (Array<String>)
      #   * +:consistent_read+ - (Boolean)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +Item+ - (Hash<String,Hash>)
      #     * +S+ - (String)
      #     * +N+ - (String)
      #     * +B+ - (String)
      #     * +SS+ - (Array<String>)
      #     * +NS+ - (Array<String>)
      #     * +BS+ - (Array<Blob>)
      #   * +ConsumedCapacityUnits+ - (Numeric)

      # @!method list_tables(options = {})
      # Calls the ListTables API operation.
      # @param [Hash] options
      #   * +:exclusive_start_table_name+ - (String) The name of the table that
      #     starts the list. If you already ran a ListTables operation and
      #     recieved a LastEvaluatedTableName value in the response, use that
      #     value here to continue the list.
      #   * +:limit+ - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +TableNames+ - (Array<String>)
      #   * +LastEvaluatedTableName+ - (String)

      # @!method put_item(options = {})
      # Calls the PutItem API operation.
      # @param [Hash] options
      #   * +:table_name+ - *required* - (String) The name of the table in
      #     which you want to put an item. Allowed characters are a-z, A-Z,
      #     0-9, _ (underscore), - (hyphen) and . (period).
      #   * +:item+ - *required* - (Hash<String,Hash>)
      #     * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #       The maximum size is limited by the size of the primary key (1024
      #       bytes as a range part of a key or 2048 bytes as a single part
      #       hash key) or the item size (64k).
      #     * +:n+ - (String) Numbers are positive or negative exact-value
      #       decimals and integers. A number can have up to 38 digits
      #       precision and can be between 10^-128 to 10^+126.
      #     * +:b+ - (String) Binary attributes are sequences of unsigned
      #       bytes.
      #     * +:ss+ - (Array<String>) A set of strings.
      #     * +:ns+ - (Array<String>) A set of numbers.
      #     * +:bs+ - (Array<String>) A set of binary attributes.
      #   * +:expected+ - (Hash<String,Hash>)
      #     * +:value+ - (Hash) Specify whether or not a value already exists
      #       and has a specific content for the attribute name-value pair.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:exists+ - (Boolean) Specify whether or not a value already
      #       exists for the attribute name-value pair.
      #   * +:return_values+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +Attributes+ - (Hash<String,Hash>)
      #     * +S+ - (String)
      #     * +N+ - (String)
      #     * +B+ - (String)
      #     * +SS+ - (Array<String>)
      #     * +NS+ - (Array<String>)
      #     * +BS+ - (Array<Blob>)
      #   * +ConsumedCapacityUnits+ - (Numeric)

      # @!method query(options = {})
      # Calls the Query API operation.
      # @param [Hash] options
      #   * +:table_name+ - *required* - (String) The name of the table in
      #     which you want to query. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      #   * +:attributes_to_get+ - (Array<String>)
      #   * +:limit+ - (Integer) The maximum number of items to return. If
      #     Amazon DynamoDB hits this limit while querying the table, it stops
      #     the query and returns the matching values up to the limit, and a
      #     LastEvaluatedKey to apply in a subsequent operation to continue the
      #     query. Also, if the result set size exceeds 1MB before Amazon
      #     DynamoDB hits this limit, it stops the query and returns the
      #     matching values, and a LastEvaluatedKey to apply in a subsequent
      #     operation to continue the query.
      #   * +:consistent_read+ - (Boolean)
      #   * +:count+ - (Boolean) If set to +true+ , Amazon DynamoDB returns a
      #     total number of items that match the query parameters, instead of a
      #     list of the matching items and their attributes. Do not set Count
      #     to +true+ while providing a list of AttributesToGet, otherwise
      #     Amazon DynamoDB returns a validation error.
      #   * +:hash_key_value+ - *required* - (Hash) Attribute value of the hash
      #     component of the composite primary key.
      #     * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #       The maximum size is limited by the size of the primary key (1024
      #       bytes as a range part of a key or 2048 bytes as a single part
      #       hash key) or the item size (64k).
      #     * +:n+ - (String) Numbers are positive or negative exact-value
      #       decimals and integers. A number can have up to 38 digits
      #       precision and can be between 10^-128 to 10^+126.
      #     * +:b+ - (String) Binary attributes are sequences of unsigned
      #       bytes.
      #     * +:ss+ - (Array<String>) A set of strings.
      #     * +:ns+ - (Array<String>) A set of numbers.
      #     * +:bs+ - (Array<String>) A set of binary attributes.
      #   * +:range_key_condition+ - (Hash) A container for the attribute
      #     values and comparison operators to use for the query.
      #     * +:attribute_value_list+ - (Array<Hash>)
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:comparison_operator+ - *required* - (String)
      #   * +:scan_index_forward+ - (Boolean) Specifies forward or backward
      #     traversal of the index. Amazon DynamoDB returns results reflecting
      #     the requested order, determined by the range key. Default is +true+
      #     (forward).
      #   * +:exclusive_start_key+ - (Hash) Primary key of the item from which
      #     to continue an earlier query. An earlier query might provide this
      #     value as the LastEvaluatedKey if that query operation was
      #     interrupted before completing the query; either because of the
      #     result set size or the Limit parameter. The LastEvaluatedKey can be
      #     passed back in a new query request to continue the operation from
      #     that point.
      #     * +:hash_key_element+ - *required* - (Hash) A hash key element is
      #       treated as the primary key, and can be a string or a number.
      #       Single attribute primary keys have one index value. The value can
      #       be String, Number, StringSet, NumberSet.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:range_key_element+ - (Hash) A range key element is treated as a
      #       secondary key (used in conjunction with the primary key), and can
      #       be a string or a number, and is only used for hash-and-range
      #       primary keys. The value can be String, Number, StringSet,
      #       NumberSet.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +member+ - (Hash<String,Hash>)
      #     * +S+ - (String)
      #     * +N+ - (String)
      #     * +B+ - (String)
      #     * +SS+ - (Array<String>)
      #     * +NS+ - (Array<String>)
      #     * +BS+ - (Array<Blob>)
      #   * +Count+ - (Integer)
      #   * +LastEvaluatedKey+ - (Hash)
      #     * +HashKeyElement+ - (Hash)
      #       * +S+ - (String)
      #       * +N+ - (String)
      #       * +B+ - (String)
      #       * +SS+ - (Array<String>)
      #       * +NS+ - (Array<String>)
      #       * +BS+ - (Array<Blob>)
      #     * +RangeKeyElement+ - (Hash)
      #       * +S+ - (String)
      #       * +N+ - (String)
      #       * +B+ - (String)
      #       * +SS+ - (Array<String>)
      #       * +NS+ - (Array<String>)
      #       * +BS+ - (Array<Blob>)
      #   * +ConsumedCapacityUnits+ - (Numeric)

      # @!method scan(options = {})
      # Calls the Scan API operation.
      # @param [Hash] options
      #   * +:table_name+ - *required* - (String) The name of the table in
      #     which you want to scan. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      #   * +:attributes_to_get+ - (Array<String>)
      #   * +:limit+ - (Integer) The maximum number of items to return. If
      #     Amazon DynamoDB hits this limit while scanning the table, it stops
      #     the scan and returns the matching values up to the limit, and a
      #     LastEvaluatedKey to apply in a subsequent operation to continue the
      #     scan. Also, if the scanned data set size exceeds 1MB before Amazon
      #     DynamoDB hits this limit, it stops the scan and returns the
      #     matching values up to the limit, and a LastEvaluatedKey to apply in
      #     a subsequent operation to continue the scan.
      #   * +:count+ - (Boolean) If set to +true+ , Amazon DynamoDB returns a
      #     total number of items for the Scan operation, even if the operation
      #     has no matching items for the assigned filter. Do not set Count to
      #     +true+ while providing a list of AttributesToGet, otherwise Amazon
      #     DynamoDB returns a validation error.
      #   * +:scan_filter+ - (Hash<String,Hash>) Evaluates the scan results and
      #     returns only the desired values.
      #     * +:attribute_value_list+ - (Array<Hash>)
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:comparison_operator+ - *required* - (String)
      #   * +:exclusive_start_key+ - (Hash) Primary key of the item from which
      #     to continue an earlier scan. An earlier scan might provide this
      #     value if that scan operation was interrupted before scanning the
      #     entire table; either because of the result set size or the Limit
      #     parameter. The LastEvaluatedKey can be passed back in a new scan
      #     request to continue the operation from that point.
      #     * +:hash_key_element+ - *required* - (Hash) A hash key element is
      #       treated as the primary key, and can be a string or a number.
      #       Single attribute primary keys have one index value. The value can
      #       be String, Number, StringSet, NumberSet.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:range_key_element+ - (Hash) A range key element is treated as a
      #       secondary key (used in conjunction with the primary key), and can
      #       be a string or a number, and is only used for hash-and-range
      #       primary keys. The value can be String, Number, StringSet,
      #       NumberSet.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +member+ - (Hash<String,Hash>)
      #     * +S+ - (String)
      #     * +N+ - (String)
      #     * +B+ - (String)
      #     * +SS+ - (Array<String>)
      #     * +NS+ - (Array<String>)
      #     * +BS+ - (Array<Blob>)
      #   * +Count+ - (Integer)
      #   * +ScannedCount+ - (Integer)
      #   * +LastEvaluatedKey+ - (Hash)
      #     * +HashKeyElement+ - (Hash)
      #       * +S+ - (String)
      #       * +N+ - (String)
      #       * +B+ - (String)
      #       * +SS+ - (Array<String>)
      #       * +NS+ - (Array<String>)
      #       * +BS+ - (Array<Blob>)
      #     * +RangeKeyElement+ - (Hash)
      #       * +S+ - (String)
      #       * +N+ - (String)
      #       * +B+ - (String)
      #       * +SS+ - (Array<String>)
      #       * +NS+ - (Array<String>)
      #       * +BS+ - (Array<Blob>)
      #   * +ConsumedCapacityUnits+ - (Numeric)

      # @!method update_item(options = {})
      # Calls the UpdateItem API operation.
      # @param [Hash] options
      #   * +:table_name+ - *required* - (String) The name of the table in
      #     which you want to update an item. Allowed characters are a-z, A-Z,
      #     0-9, _ (underscore), - (hyphen) and . (period).
      #   * +:key+ - *required* - (Hash)
      #     * +:hash_key_element+ - *required* - (Hash) A hash key element is
      #       treated as the primary key, and can be a string or a number.
      #       Single attribute primary keys have one index value. The value can
      #       be String, Number, StringSet, NumberSet.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:range_key_element+ - (Hash) A range key element is treated as a
      #       secondary key (used in conjunction with the primary key), and can
      #       be a string or a number, and is only used for hash-and-range
      #       primary keys. The value can be String, Number, StringSet,
      #       NumberSet.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #   * +:attribute_updates+ - *required* - (Hash<String,Hash>)
      #     * +:value+ - (Hash)
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:action+ - (String)
      #   * +:expected+ - (Hash<String,Hash>)
      #     * +:value+ - (Hash) Specify whether or not a value already exists
      #       and has a specific content for the attribute name-value pair.
      #       * +:s+ - (String) Strings are Unicode with UTF-8 binary encoding.
      #         The maximum size is limited by the size of the primary key
      #         (1024 bytes as a range part of a key or 2048 bytes as a single
      #         part hash key) or the item size (64k).
      #       * +:n+ - (String) Numbers are positive or negative exact-value
      #         decimals and integers. A number can have up to 38 digits
      #         precision and can be between 10^-128 to 10^+126.
      #       * +:b+ - (String) Binary attributes are sequences of unsigned
      #         bytes.
      #       * +:ss+ - (Array<String>) A set of strings.
      #       * +:ns+ - (Array<String>) A set of numbers.
      #       * +:bs+ - (Array<String>) A set of binary attributes.
      #     * +:exists+ - (Boolean) Specify whether or not a value already
      #       exists for the attribute name-value pair.
      #   * +:return_values+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +Attributes+ - (Hash<String,Hash>)
      #     * +S+ - (String)
      #     * +N+ - (String)
      #     * +B+ - (String)
      #     * +SS+ - (Array<String>)
      #     * +NS+ - (Array<String>)
      #     * +BS+ - (Array<Blob>)
      #   * +ConsumedCapacityUnits+ - (Numeric)

      # @!method update_table(options = {})
      # Calls the UpdateTable API operation.
      # @param [Hash] options
      #   * +:table_name+ - *required* - (String) The name of the table you
      #     want to update. Allowed characters are a-z, A-Z, 0-9, _
      #     (underscore), - (hyphen) and . (period).
      #   * +:provisioned_throughput+ - *required* - (Hash)
      #     * +:read_capacity_units+ - *required* - (Integer) ReadCapacityUnits
      #       are in terms of strictly consistent reads, assuming items of 1k.
      #       2k items require twice the ReadCapacityUnits.
      #       Eventually-consistent reads only require half the
      #       ReadCapacityUnits of stirctly consistent reads.
      #     * +:write_capacity_units+ - *required* - (Integer)
      #       WriteCapacityUnits are in terms of strictly consistent reads,
      #       assuming items of 1k. 2k items require twice the
      #       WriteCapacityUnits.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +TableDescription+ - (Hash)
      #     * +TableName+ - (String)
      #     * +KeySchema+ - (Hash)
      #       * +HashKeyElement+ - (Hash)
      #         * +AttributeName+ - (String)
      #         * +AttributeType+ - (String)
      #       * +RangeKeyElement+ - (Hash)
      #         * +AttributeName+ - (String)
      #         * +AttributeType+ - (String)
      #     * +TableStatus+ - (String)
      #     * +CreationDateTime+ - (Time)
      #     * +ProvisionedThroughput+ - (Hash)
      #       * +LastIncreaseDateTime+ - (Time)
      #       * +LastDecreaseDateTime+ - (Time)
      #       * +ReadCapacityUnits+ - (Integer)
      #       * +WriteCapacityUnits+ - (Integer)
      #     * +TableSizeBytes+ - (Integer)
      #     * +ItemCount+ - (Integer)

      ## end client methods ##

      protected

      def extract_error_details response
        if response.http_response.status == 413
          ['RequestEntityTooLarge', 'Request entity too large']
        else
          super
        end
      end

      def retryable_error? response
        if response.error.is_a?(Errors::ProvisionedThroughputExceededException)
          config.dynamo_db_retry_throughput_errors?
        else
          super
        end
      end

      def sleep_durations response

        retry_count =
          if expired_credentials?(response)
            config.max_retries == 0 ? 0 : 1
          else
            config.max_retries { 10 }
          end

        # given a retry_count of 10, the sleep durations will look like:
        # 0, 50, 100, 200, 400, 800, 1600, 3200, 6400, 12800 (milliseconds)
        (0...retry_count).map do |n|
          if n == 0
            0
          else
            50 * (2 ** (n - 1)) / 1000.0
          end
        end

      end

    end
  end
end
