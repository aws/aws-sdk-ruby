# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module Seahorse
  module Client

    autoload :Base, 'seahorse/client/base'
    autoload :Configuration, 'seahorse/client/configuration'
    autoload :Handler, 'seahorse/client/handler'
    autoload :HandlerList, 'seahorse/client/handler_list'
    autoload :Plugin, 'seahorse/client/plugin'
    autoload :PluginList, 'seahorse/client/plugin_list'
    autoload :Request, 'seahorse/client/request'
    autoload :RequestContext, 'seahorse/client/request_context'
    autoload :Response, 'seahorse/client/response'

    module Http
      autoload :Endpoint, 'seahorse/client/http/endpoint'
      autoload :Headers, 'seahorse/client/http/headers'
      autoload :Request, 'seahorse/client/http/request'
      autoload :Response, 'seahorse/client/http/response'
    end

    module Logging
      autoload :Handler, 'seahorse/client/logging/handler'
      autoload :Formatter, 'seahorse/client/logging/formatter'
    end

    module NetHttp
      autoload :ConnectionPool, 'seahorse/client/net_http/connection_pool'
      autoload :Handler, 'seahorse/client/net_http/handler'
    end

    module Plugins
      autoload :Api, 'seahorse/client/plugins/api'
      autoload :Endpoint, 'seahorse/client/plugins/endpoint'
      autoload :Logging, 'seahorse/client/plugins/logging'
      autoload :NetHttp, 'seahorse/client/plugins/net_http'
    end

    # @param (see Base.define)
    # @return (see Base.define)
    def self.define(options = {})
      Base.define(options)
    end

  end
end
