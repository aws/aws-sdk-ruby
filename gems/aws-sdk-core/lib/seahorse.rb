# frozen_string_literal: true

require_relative 'seahorse/util'

module Seahorse
  module Client
    autoload :BlockIO, 'seahorse/client/block_io'
    autoload :Configuration, 'seahorse/client/configuration'
    autoload :Handler, 'seahorse/client/handler'
    autoload :HandlerBuilder, 'seahorse/client/handler_builder'
    autoload :HandlerList, 'seahorse/client/handler_list'
    autoload :HandlerListEntry, 'seahorse/client/handler_list_entry'
    autoload :ManagedFile, 'seahorse/client/managed_file'
    autoload :NetworkingError, 'seahorse/client/networking_error'
    autoload :Plugin, 'seahorse/client/plugin'
    autoload :PluginList, 'seahorse/client/plugin_list'
    autoload :Request, 'seahorse/client/request'
    autoload :RequestContext, 'seahorse/client/request_context'
    autoload :Response, 'seahorse/client/response'
    autoload :AsyncResponse, 'seahorse/client/async_response'
    autoload :Base, 'seahorse/client/base'
    autoload :AsyncBase, 'seahorse/client/async_base'

    module Http
      autoload :Headers, 'seahorse/client/http/headers'
      autoload :Request, 'seahorse/client/http/request'
      autoload :Response, 'seahorse/client/http/response'
      autoload :AsyncResponse, 'seahorse/client/http/async_response'
    end

    module Logging
      autoload :Handler, 'seahorse/client/logging/handler'
      autoload :Formatter, 'seahorse/client/logging/formatter'
    end

    module NetHttp
      autoload :ConnectionPool, 'seahorse/client/net_http/connection_pool'
      autoload :Handler, 'seahorse/client/net_http/handler'
    end

    module H2
      autoload :Connection, 'seahorse/client/h2/connection'
      autoload :Handler, 'seahorse/client/h2/handler'
    end

    module Plugins
      autoload :ContentLength, 'seahorse/client/plugins/content_length'
      autoload :Endpoint, 'seahorse/client/plugins/endpoint'
      autoload :Logging, 'seahorse/client/plugins/logging'
      autoload :NetHttp, 'seahorse/client/plugins/net_http'
      autoload :H2, 'seahorse/client/plugins/h2'
      autoload :RaiseResponseErrors, 'seahorse/client/plugins/raise_response_errors'
      autoload :ResponseTarget, 'seahorse/client/plugins/response_target'
      autoload :RequestCallback, 'seahorse/client/plugins/request_callback'
    end
  end

  module Model
    autoload :Api, 'seahorse/model/api'
    autoload :Operation, 'seahorse/model/operation'
    autoload :Authorizer, 'seahorse/model/authorizer'
    autoload :Shapes, 'seahorse/model/shapes'
  end
end
