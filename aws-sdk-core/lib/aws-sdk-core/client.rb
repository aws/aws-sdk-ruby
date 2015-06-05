module Aws
  # Base class for all {Aws} service clients.
  class Client < Seahorse::Client::Base

    # @api private
    DEFAULT_PLUGINS = [
      'Seahorse::Client::Plugins::Logging',
      'Seahorse::Client::Plugins::ContentLength',
      'Aws::Plugins::ParamConverter',
      'Aws::Plugins::ParamValidator',
      'Aws::Plugins::UserAgent',
      'Aws::Plugins::RetryErrors',
      'Aws::Plugins::GlobalConfiguration',
      'Aws::Plugins::RegionalEndpoint',
      'Aws::Plugins::RequestSigner',
      'Aws::Plugins::ResponsePaging',
      'Aws::Plugins::StubResponses',
    ]

    include ClientStubs
    include ClientWaiters

    class << self

      # @return [Symbol]
      # @api private
      attr_accessor :identifier

      # @api private
      def define(svc_name, options)
        client_class = Class.new(self)
        client_class.identifier = svc_name.downcase.to_sym
        client_class.set_api(Api::Builder.build(options[:api], options))
        client_class.set_waiters(options[:waiters])
        DEFAULT_PLUGINS.each do |plugin|
          client_class.add_plugin(plugin)
        end
        Api::Customizations.apply_plugins(client_class)
        client_class
      end

    end
  end
end
