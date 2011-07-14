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

require 'aws/configured_xml_grammars'
require 'aws/ignore_result_element'
require 'aws/xml_grammar'

module AWS
  class SimpleDB
    class Client < BaseClient

      # @private
      module XML

        include ConfiguredXmlGrammars

        extend IgnoreResultElement

        BaseResponse = XmlGrammar.customize do
          element "ResponseMetadata" do
            element "BoxUsage" do
              float_value
            end
          end
        end

        BaseError = XmlGrammar.customize do
          element("Errors") do
            ignore
            element("Error") do
              ignore
              element("BoxUsage") { float_value }
            end
          end
        end

        define_configured_grammars

        CustomizedSelect = Select.customize do
          element "SelectResult" do
            element "NextToken" do
              force
            end
          end
        end

        CustomizedListDomains = ListDomains.customize do
          element "ListDomainsResult" do
            element "NextToken" do
              force
            end
          end
        end

      end
    end
  end
end
