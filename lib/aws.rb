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

module Aws
  class << self

    private

    def add_service(name, apis = [])
      svc_class = Class.new(Service)
      svc_class.const_set(:Client, client_factory(Util.underscore(name), apis))
      const_set(name, svc_class)
    end

    def client_factory(method_name, apis)
      client_factory = Class.new(ClientFactory)
      client_factory.method_name = method_name.to_sym
      apis.each do |path|
        yyyy_mm_dd = path.match(/\d{4}-\d{2}-\d{2}/)[0]
        client_factory.add_version(yyyy_mm_dd, path)
      end
      client_factory
    end

    def apis
      Dir.glob('apis/*.json').group_by { |path| path.match(/\/(\w+)/)[1] }
    end

  end

  apis.each do |svc_class_name, api_versions|
    add_service(svc_class_name, api_versions)
  end

end
