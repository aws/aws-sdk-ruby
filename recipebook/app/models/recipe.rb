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

class Recipe < AWS::Record::Base

  set_domain_name  "#{Rails.env}_recipe_book"

  ## attributes

  string_attr :title
  string_attr :author
  string_attr :directions
  string_attr :ingredients, :set => true

  ## validations

  validates_presence_of :title, :author

  ## scopes

  scope(:by) {|username| where(:author => username) }

end
