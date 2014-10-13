module Aws
  # Base class for all {Aws} service clients.
  class Client < Seahorse::Client::Base

    # @api private
    DEFAULT_PLUGINS = [
      'Seahorse::Client::Plugins::Logging',
      'Seahorse::Client::Plugins::RestfulBindings',
      'Seahorse::Client::Plugins::ContentLength',
      'Aws::Plugins::UserAgent',
      'Aws::Plugins::RetryErrors',
      'Aws::Plugins::GlobalConfiguration',
      'Aws::Plugins::RegionalEndpoint',
      'Aws::Plugins::RequestSigner',
    ]

    include ClientPaging
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
        [:api, :paginators, :waiters].each do |definition|
          client_class.send("set_#{definition}", options[definition])
        end
        DEFAULT_PLUGINS.each { |plugin| client_class.add_plugin(plugin) }
        Api::ServiceCustomizations.apply(client_class)
        client_class
      end

    end
  end
end
