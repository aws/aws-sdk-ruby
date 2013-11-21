module Seahorse
  module Client

    autoload :Base, 'seahorse/client/base'
    autoload :BlockIO, 'seahorse/client/block_io'
    autoload :Configuration, 'seahorse/client/configuration'
    autoload :Handler, 'seahorse/client/handler'
    autoload :HandlerBuilder, 'seahorse/client/handler_builder'
    autoload :HandlerList, 'seahorse/client/handler_list'
    autoload :ManagedFile, 'seahorse/client/managed_file'
    autoload :ParamConverter, 'seahorse/client/param_converter'
    autoload :ParamValidator, 'seahorse/client/param_validator'
    autoload :Plugin, 'seahorse/client/plugin'
    autoload :PluginList, 'seahorse/client/plugin_list'
    autoload :Request, 'seahorse/client/request'
    autoload :RequestContext, 'seahorse/client/request_context'
    autoload :Response, 'seahorse/client/response'

    module Http
      autoload :Endpoint, 'seahorse/client/http/endpoint'
      autoload :Headers, 'seahorse/client/http/headers'
      autoload :PlainStringIO, 'seahorse/client/http/plain_string_io'
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
      autoload :ContentLength, 'seahorse/client/plugins/content_length'
      autoload :Endpoint, 'seahorse/client/plugins/endpoint'
      autoload :JsonSimple, 'seahorse/client/plugins/json_simple'
      autoload :Logging, 'seahorse/client/plugins/logging'
      autoload :NetHttp, 'seahorse/client/plugins/net_http'
      autoload :OperationMethods, 'seahorse/client/plugins/operation_methods'
      autoload :ParamConversion, 'seahorse/client/plugins/param_conversion'
      autoload :ParamValidation, 'seahorse/client/plugins/param_validation'
      autoload :RaiseResponseErrors, 'seahorse/client/plugins/raise_response_errors'
      autoload :RestfulBindings, 'seahorse/client/plugins/restful_bindings'
    end

    module Xml
      autoload :Builder, 'seahorse/client/xml/builder'
    end

    # @param (see Base.define)
    # @return (see Base.define)
    def self.define(options = {})
      Base.define(options)
    end

  end
end
