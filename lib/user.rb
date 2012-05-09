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

class User < AWS::Record::HashModel

  set_shard_name 'ruby-users'

  optimistic_locking

  ## attributes

  string_attr :username
  string_attr :role
  string_attr :tags, :set => true

  boolean_attr :verified, :default => false

  timestamps

  ## validations

  validates_presence_of :username, :role

  validates_inclusion_of :role, 
    :in => %w(root admin member), 
    :allow_nil => true

  validates_length_of :username, 
    :within => 3..20, 
    :allow_nil => true

  validates_format_of :username, :tags,
    :with => /^[a-z0-9]+$/i, 
    :allow_nil => true,
    :message => 'may only be letters and numbers'

  validates_count_of :tags, :maximum => 3

end
