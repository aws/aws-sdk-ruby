module Aws
  module Plugins
    class GlacierAccountId < Seahorse::Client::Plugin
      option :account_id, '-'

      handle_request(step: :validate, priority: 99) do |context|
        context.params[:account_id] ||= context.config.account_id
      end
    end
  end
end
