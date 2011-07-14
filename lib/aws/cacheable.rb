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

require 'aws/naming'
require 'aws/meta_utils'

module AWS

  # @private
  module Cacheable

    def local_cache_key
      raise NotImplementedError
    end

    def cache_key
      endpoint_method = self.class.service_ruby_name + "_endpoint"
      config.signer.access_key_id + ":" +
        config.send(endpoint_method) + ":" +
        local_cache_key
    end

    def attributes_from_response(response)
      method = "populate_from_#{response.request_type}"
      if respond_to?(method)
        send(method, response)
      end
    end

    def request_types
      self.class.request_types
    end

    class NoData < StandardError; end

    def retrieve_attribute(attribute)
      if cache = AWS.response_cache
        if cache.resource_cache.cached?(cache_key, attribute)
          return cache.resource_cache.get(cache_key, attribute)
        end
        cache.select(*request_types).each do |resp|
          if attributes = attributes_from_response(resp)
            cache.resource_cache.store(cache_key, attributes)
            return attributes[attribute] if attributes.key?(attribute)
          end
        end
      end
      resp = yield
      if attributes = attributes_from_response(resp)
        if cache = AWS.response_cache
          cache.resource_cache.store(cache_key, attributes)
        end
        attributes[attribute] if attributes.key?(attribute)
      else
        raise NoData.new("no data for #{self} in response to #{resp.request_type}")
      end
    end

    module ClassMethods

      def request_types
        []
      end

      def populate_from(type, &block)
        define_method("populate_from_#{type}", &block)
        new_request_types = request_types + [type]
        new_request_types.uniq!
        MetaUtils.extend_method(self, :request_types) { new_request_types }
      end

    end

    def self.included(mod)
      mod.extend ClassMethods
      mod.extend Naming unless
        mod.respond_to?(:service_ruby_name)
    end

  end

end
