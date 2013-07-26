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
    autoload :EventEmitter, 'seahorse/client/event_emitter'
    autoload :Handler, 'seahorse/client/handler'
    autoload :HandlerList, 'seahorse/client/handler_list'
    autoload :HttpHandler, 'seahorse/client/http_handler'
    autoload :PluginList, 'seahorse/client/plugin_list'
    autoload :Request, 'seahorse/client/request'
    autoload :RequestContext, 'seahorse/client/request_context'
    autoload :Response, 'seahorse/client/response'
    autoload :VERSION, 'seahorse/client/version'

    module Http
      autoload :Endpoint, 'seahorse/client/http/endpoint'
      autoload :Headers, 'seahorse/client/http/headers'
      autoload :Request, 'seahorse/client/http/request'
      autoload :Response, 'seahorse/client/http/response'
      autoload :ResponseBody, 'seahorse/client/http/response_body'
      autoload :ResponseBodyBuffer, 'seahorse/client/http/response_body_buffer'
      autoload :ResponseBodyStream, 'seahorse/client/http/response_body_stream'
    end

    module Plugins
      autoload :NetHttp, 'seahorse/client/plugins/net_http'
    end

    # @param [Model::Api, Hash] api
    # @return [Class]
    def self.define(api)
      Base.define(api)
    end

  end
end
