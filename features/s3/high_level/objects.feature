# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    And a request should have been made like:
    | TYPE | NAME | VALUE |
    | http | verb | PUT   |
    | http | uri  | /foo  |
    | http | body | HELLO |

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

  @read_object
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
    | TYPE | NAME       | VALUE                                      |
    | http | verb       | GET                                        |
    | http | host_match | ruby-integration-test-\d+.s3.amazonaws.com |

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
    Then the object "foo2" should read "a-string" with the meatadata:
    | key | value |
    | abc | xyz   |
