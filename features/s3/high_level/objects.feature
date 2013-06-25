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

# language: en
@s3 @high_level @objects
Feature: CRUD Objects (High Level)

  As a user of the S3 high-level interface
  I want to be able to perform basic CRUD operations on objects

  @get_object
  Scenario: Get an object
    When I ask for the object with key "foo"
    Then the result should be an s3 object with key "foo"
    And the client should not have been called

  @get_object
  Scenario: Get an object (with symbol)
    When I ask for the object with key "foo" using a symbol
    Then the result should be an s3 object with key "foo"
    And the client should not have been called

  @multibyte
  Scenario: Access an object with multibyte characters in the key
    When I ask for the object with key "\u1234"
    And I write the string "HELLO" to it
    Then the object should eventually have "HELLO" as its body

  @head_object
  Scenario: Ask if an S3 object exists (does not exist)
    Given I ask for the object with key "foo"
    When I ask if the object exists
    Then the result should be false
    And a request should have been made like:
    | TYPE | NAME | VALUE |
    | http | verb | HEAD  |
    | http | uri  | /foo  |

  @head_object
  Scenario: Ask if an S3 object exists (does exist)
    Given I ask for the object with key "foo"
    And I write the string "HELLO" to it
    When I ask if the object exists
    Then the result should be true
    And a request should have been made like:
    | TYPE | NAME | VALUE |
    | http | verb | HEAD  |
    | http | uri  | /foo  |

  @head_object
  Scenario: Get an object's ETag
    Given I ask for the object with key "foo"
    And I write the string "HELLO" to it
    And the object should eventually have "HELLO" as its body
    When I get the object ETag
    Then a request should have been made like:
    | TYPE | NAME | VALUE |
    | http | verb | HEAD  |
    | http | uri  | /foo  |
    And the result should be the same as the "ETag" header in the HTTP response

  @head_object
  Scenario: Get an object's last modified timestamp
    Given I ask for the object with key "foo"
    And I write the string "HELLO" to it
    And the object should eventually have "HELLO" as its body
    When I get the object's last modified date
    Then a request should have been made like:
    | TYPE | NAME | VALUE |
    | http | verb | HEAD  |
    | http | uri  | /foo  |
    And the result should be a time within the last hour

  @put_object
  Scenario: Write an object
    Given I ask for the object with key "foo"
    When I write the string "HELLO" to it
    Then the result should be the object with key "foo"
    And the object should eventually have "HELLO" as its body

  @put_object @multibyte
  Scenario: Write an object with a multibyte string
    Given I ask for the object with key "foo"
    When I write the UTF-8 string "\xE1\x88\xB4" to the object
    Then the object should eventually have the bytes "\xE1\x88\xB4" as its body
    And a request should have been made like:
    | TYPE   | NAME           | VALUE |
    | http   | verb           | PUT   |
    | header | content-length | 3     |

  @put_object @newlines
  Scenario: Write an object with a file containing newlines
    Given I ask for the object with key "foo"
    When I write a file containing a CR-LF sequence to the object
    Then the object should eventually have the same bytes as the file

  @put_object @multibyte
  Scenario: Write an object with a file containing multibyte characters
    Given I ask for the object with key "foo"
    When I write a UTF-8 file containing "\xE1\x88\xB4" to the object
    Then the object should eventually have the bytes "\xE1\x88\xB4" as its body
    And a request should have been made like:
    | TYPE   | NAME           | VALUE |
    | http   | verb           | PUT   |
    | header | content-length | 3     |

  @put_object
  Scenario: Write object metadata
    Given I ask for the object with key "foo"
    When I write data passing metadata attribute "color" with value "blue"
    Then the object should eventually have metadata "color" set to "blue"
    And a request should have been made like:
    | TYPE   | NAME             | VALUE |
    | http   | verb             | PUT   |
    | header | x-amz-meta-color | blue  |

  @put_object
  Scenario: Write object metadata with trailing spaces
    Given I ask for the object with key "foo"
    When I write data passing metadata attribute "color" with value "blue "
    Then the object should eventually have metadata "color" set to "blue"

  @delete_object
  Scenario: Delete an object
    Given the bucket has an object with key "foo"
    When I delete the object with key "foo"
    Then The object with key "foo" should eventually not exist
    And a request should have been made like:
    | TYPE | NAME | VALUE  |
    | http | verb | DELETE |
    | http | uri  | /foo   |

  @read_object
  Scenario: Read an object
    Given I ask for the object with key "foo"
    And in the bucket the object with key "foo" has the contents "HELLO"
    When I read it
    Then the result should be "HELLO"
    And a request should have been made like:
    | TYPE | NAME | VALUE |
    | http | verb | GET   |
    | http | uri  | /foo  |

  @read_object
  Scenario Outline: Read an object if its etag does not match the constraint
    Given I ask for the object with key "foo"
    And I write the string "HELLO" to it
    And the object should eventually have "HELLO" as its body
    And I get the object ETag
    When I read it with :if_none_match set to the previous ETag rescuing "<class>"
    Then I should rescue the error with code "<code>"

  Examples:
    | class                        | code        |
    | AWS::S3::Errors::NotModified | NotModified |
    | AWS::Errors::ClientError     | NotModified |

  @read_object
  Scenario Outline: Read an object if its etag does match the constraint
    Given I ask for the object with key "foo"
    And I write the string "HELLO" to it
    And the object should eventually have "HELLO" as its body
    When I read it with :if_match set to "foo" rescuing "<class>"
    Then I should rescue the error with code "<code>"

  Examples:
    | class                               | code               |
    | AWS::S3::Errors::PreconditionFailed | PreconditionFailed |
    | AWS::Errors::ClientError            | PreconditionFailed |

  @read_object
  Scenario Outline: Read an object if it has not been modified recently
    Given I ask for the object with key "foo"
    And I write the string "HELLO" to it
    And the object should eventually have "HELLO" as its body
    When I read it with :if_unmodified_since set to an hour ago rescuing "<class>"
    Then I should rescue the error with code "<code>"

  Examples:
    | class                               | code               |
    | AWS::S3::Errors::PreconditionFailed | PreconditionFailed |
    | AWS::Errors::ClientError            | PreconditionFailed |

  @read_object @wip @broken
  Scenario Outline: Read an object if it has been modified recently
    Given I ask for the object with key "foo"
    And I write the string "HELLO" to it
    And the object should eventually have "HELLO" as its body
    When I read it with :if_modified_since set to the current time rescuing "<class>"
    Then I should rescue the error with code "<code>"

  Examples:
    | class                        | code        |
    | AWS::S3::Errors::NotModified | NotModified |
    | AWS::Errors::ClientError     | NotModified |

  @head_object
  Scenario: Get object metadata
    Given I ask for the object with key "foo"
    And it has metadata "color" set to "blue"
    When I ask for the "color" metadata
    Then the result should be "blue"
    And a request should have been made like:
    | TYPE | NAME | VALUE |
    | http | verb | HEAD  |
    | http | uri  | /foo  |

  @list_objects
  Scenario: List all objects
    Given the bucket has an object with key "foo"
    When I ask for the list of all the objects as an array
    Then the result should include the object with key "foo"
    And a request should have been made like:
    | TYPE | NAME       | VALUE |
    | http | verb       | GET   |

  @list_objects @paginate
  Scenario: List all objects while paginating
    Given I have a bucket with 5 keys
    When I ask for 3 keys 2 at a time
    Then a request should have been made like:
    | TYPE  | NAME     | VALUE |
    | http  | verb     | GET   |
    | param | max-keys | 2     |
    And a request should have been made like:
    | TYPE  | NAME     | VALUE |
    | http  | verb     | GET   |
    | param | max-keys | 1     |

  @copy @to
  Scenario: Copy an object to a different key
    Given the object "foo1" has the contents "bar1"
    And the object "foo2" has the contents "bar2"
    When I copy "foo1" to "foo2"
    Then the object "foo2" should have the contents "bar1"

  @copy @from
  Scenario: Copy an object from another key
    Given the object "foo1" has the contents "bar1"
    And the object "foo2" has the contents "bar2"
    When I copy "foo2" from "foo1"
    Then the object "foo2" should have the contents "bar1"

  @copy @from
  Scenario: Copy an object from a key with URL-unsafe characters in it
    Given the object "foo1 bar" has the contents "bar1"
    And the object "foo2" has the contents "bar2"
    When I copy "foo2" from "foo1 bar"
    Then the object "foo2" should have the contents "bar1"

  @copy
  Scenario: Copy an versioned object
    Given I create a new bucket
    And I enable versioning on the bucket
    And I write "1" to the key "key1"
    And I write "2" to the key "key1"
    And I get the oldest version of "key1"
    When I copy the versioned object to "key2"
    Then the object "key2" should have the contents "1"

  @copy
  Scenario: Copy an object but change its metadata
    Given I write "a-string" to the key "foo" with the metadata:
    | key | value |
    | foo | bar   |
    When I copy the object "foo" to "foo2" with the metadata:
    | key | value |
    | abc | xyz   |
    Then the object "foo2" should read "a-string" with the metadata:
    | key | value |
    | abc | xyz   |

  @copy
  Scenario: Copy an object but change its canned ACL
    Given I write "a-string" to the key "foo"
    When I copy "foo2" from "foo" with public read permissions
    Then the object "foo2" should have the contents "a-string"
    And the object "foo2" should have public read permissions

  @copy
  Scenario: Change S3 object metadata in place
    Given I write "a-string" to the key "foo" with the metadata:
    | key | value |
    | foo | bar   |
    | baz | bla   |
    When I change the metadata "foo" to "BAR" for the key "foo"
    Then the object "foo" should read "a-string" with the metadata:
    | key | value |
    | foo | BAR   |
    | baz | bla   |

  @copy
  Scenario: Copy an object in place without changing anything
    Given I write "a-string" to the key "foo" with the metadata:
    | key | value |
    | foo | bar   |
    | baz | bla   |
    When I copy the object "foo" in place without changing anything
    Then the object "foo" should read "a-string" with the metadata:
    | key          | value                    |           |
    | foo          | bar                      |           |
    | baz          | bla                      |           |
    And a request should have been made like:
    | TYPE         | NAME                     | VALUE     |
    | http         | verb                     | PUT       |
    | header_match | x-amz-copy-source        | [^/]+/foo |
    | header       | x-amz-metadata-directive | COPY      |
    | header       | x-amz-storage-class      | STANDARD  |

  @copy
  Scenario Outline: Change S3 storage class on an object
    Given I write "a-string" to the key "foo" with the metadata:
    | key | value |
    | foo | bar   |
    When I <action> reduced redundancy storage on the object "foo"
    Then the object "foo" should read "a-string" with the metadata:
    | key | value |
    | foo | bar   |
    And a request should have been made like:
    | TYPE         | NAME                     | VALUE           |
    | http         | verb                     | PUT             |
    | header_match | x-amz-copy-source        | [^/]+/foo       |
    | header       | x-amz-metadata-directive | COPY            |
    | header       | x-amz-storage-class      | <storage class> |

  Examples:
    | action  | storage class      |
    | enable  | REDUCED_REDUNDANCY |
    | disable | STANDARD           |

  Scenario: Renaming an object
    Given I write "bar" to the key "foo"
    When I move the key "foo" to "foo2"
    Then the object "foo" should not exist
    Then the object "foo2" should have the data "bar"

  Scenario: Renaming an object
    Given I write "bar" to the key "foo"
    And I create a new bucket
    When I move the key "foo" to "foo2" to the new bucket
    Then the object "foo" should not exist
    Then the object "foo2" should have the data "bar" in the new bucket

  Scenario: Change ACL on an S3 object using a canned ACL
    Given I write "a-string" to the key "foo"
    When I grant public read permissions on the object "foo"
    Then the object "foo" should have public read permissions
    And a request should have been made like:
    | TYPE   | NAME      | VALUE       |
    | http   | verb      | PUT         |
    | header | x-amz-acl | public-read |

  @presigned
  Scenario: Presigned HTTPS get
    Given I write "world" to the key "hello"
    When I create a pre-signed https "GET" uri
    When I make a https get request to the presigned uri
    Then the returned value should "world"

  @presigned
  Scenario: Presigned HTTP get
    Given I write "world" to the key "hello"
    When I create a pre-signed http "GET" uri
    When I make a http get request to the presigned uri
    Then the returned value should "world"

  @sts @presigned
  Scenario: Presigned get with session credentials
    Given I write "world" to the key "hello"
    And I ask for temporary security credentials
    When I create a pre-signed "GET" uri using the session credentials
    When I make a https get request to the presigned uri
    Then the returned value should "world"

  @batch_delete
  Scenario: Multi-object delete with delete_if
    Given I have the following objects:
    | KEY |
    | 1   |
    | 2   |
    | 3   |
    | 4   |
    | 41  |
    | 42  |
    | 43  |
    | 44  |
    When I use delete_if to delete even objects with the prefix "4"
    Then the bucket should have the following keys
    | KEY |
    | 1   |
    | 2   |
    | 3   |
    | 41  |
    | 43  |

  @slow @batch_delete
  Scenario: Multi-object delete of more than 1k records
    Given I have 1010 objects
    When I call delete_all on the collection of objects
    Then 2 requests should have been made like:
    | TYPE  | NAME    | VALUE |
    | http  | verb    | POST  |
    | param | delete  |       |
    And the bucket should be empty

  @restore @tiered_storage
  Scenario: Restoring an object that is not archived
    Given I ask for the object with key "foo"
    And I write the string "HELLO" to it
    And the object should eventually have "HELLO" as its body
    When I try to restore the object
    Then I should get a "InvalidObjectState" client exception as follows:
    | field   | value                                                            |
    | code    | InvalidObjectState                                               |
    | message | Restore is not allowed, as object's storage class is not GLACIER |

  @list_objects @paginate @delimiter
  Scenario: Properly paginate when using a delimiter
    Given I have a bucket with the following keys:
    | key                     |
    | videos/wedding.mkv      |
    | videos/vacation.mkv     |
    | photos/2009/family.jpg  |
    | photos/2009/friends.jpg |
    | photos/2010/family.jpg  |
    When I ask for all objects using the delimiter "/", 1 at a time
    Then I should get objects with the following prefixes:
    | prefix  |
    | videos/ |
    | photos/ |
