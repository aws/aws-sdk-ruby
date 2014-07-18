module Aws
  module Service

    # For backwards compatibility with versions 2.0.0.rc10 and older.
    # Use the following instead:
    #
    #     # deprecated
    #     Aws::ServiceName.new
    #
    #     # prefereed usage
    #     Aws::ServiceName::Client.new
    #
    # @deprecated Deprecated as of 2.0.0.rc11
    # @api private
    def new(options = {})
      unless @warned
        @warned = true
        warn(<<-MSG.strip)
#{self.name}.new deprecated as of v2.0.0.rc11 and will be removed as of v2.0.0.0 final; use #{self.name}.client() or #{self.name}::Client.new() instead
        MSG
      end
      client(options)
    end

    # Constructs and returns an API client for this service.
    # All options are passed to the Client class constructor.
    def client(options = {})
      const_get(:Client).new(options)
    end

    class << self

      # @api private
      def define(identifier, versions = {})
        svc_mod = Module.new
        svc_mod.extend(Service)
        svc_mod.const_set(:Errors, Module.new { extend Errors::DynamicErrors })
        svc_mod.const_set(:Client, Client.define(identifier, versions))
        svc_mod
      end

    end
  end
end
