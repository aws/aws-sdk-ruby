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


require 'yaml'

YARD::Templates::Engine.register_template_path(File.dirname(__FILE__) + '/templates')

YARD::Parser::SourceParser.after_parse_list do
  YARD::Registry.all(:class).each do |klass|
    if klass.name =~ /V\d{8}/
      add_methods(klass, "doc-src/#{svc(klass)}/#{klass.name}.yml")
    elsif klass.name == :Client && klass.path != 'AWS::Core::Client'
      if doc_src = oldest_api_version(klass)
        add_methods(klass, doc_src)
      end
    end
  end
end

def add_methods(klass, doc_src)
  return unless File.exists?(doc_src)
  docs = YAML.load_file(doc_src)
  docs.each_pair do |method_name, docstring|
    meth = YARD::CodeObjects::MethodObject.new(klass, method_name)
    meth.parameters = [['options', '{}']]
    meth.signature = "#{method_name}(options = {})"
    meth.dynamic = true
    meth.docstring = docstring
  end
end

def svc(klass)
  klass.path.split('::')[1]
end

def oldest_api_version(klass)
  Dir.glob("doc-src/#{svc(klass)}/*.yml").sort.first
end
