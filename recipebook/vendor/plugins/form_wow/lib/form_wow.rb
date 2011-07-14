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

module FormWow
  
  @@required_symbol = '*'

  @@default_decorator = 'form_wow_row'

  @@default_form_row_class = 'row'

  mattr_accessor :required_symbol, :default_decorator, :default_form_row_class

  def self.nuke_field_with_errors
    ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
      html_tag
    end
  end
  
end
