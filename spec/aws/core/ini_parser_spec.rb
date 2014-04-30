# Copyright 2011-2014 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'spec_helper'

module AWS
  module Core
    describe IniParser do
      it 'parses an ini file' do
        ini = "; command at the beginning of the line
        [section1] ; comment at end of line
        invalidline
        key1=value1 ;anothercomment
        key2 = value2;value3
        [emptysection]"

        map = IniParser.parse(ini)
        map["section1"]["key1"].should == 'value1'
        map["section1"]["key2"].should == 'value2;value3'
        map["emptysection"].should be_nil
      end
    end
  end
end
