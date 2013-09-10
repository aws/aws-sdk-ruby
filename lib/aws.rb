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

  @config = {}

  class << self

    # @return [Hash]
    attr_accessor :config

    private

    def add_service(name, apis = [])
      svc_class = const_set(name, Service.define(Util.underscore(name), apis))
      self.class.send(:define_method, svc_class.method_name) do |options = {}|
        svc_class.new(options)
      end
    end

    def apis
      Dir.glob('apis/*.json').group_by { |path| path.match(/\/(\w+)/)[1] }
    end

  end

  apis.each do |svc_class_name, api_versions|
    add_service(svc_class_name, api_versions)
  end

end
