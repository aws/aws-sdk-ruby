require 'spec_helper'

module Aws
  module Plugins
    describe RetryErrors do

      it 'defaults config.max_retries to 3' do
        config = Seahorse::Client::Configuration.new
        RetryErrors.new.add_options(config)
        config = config.build!
        expect(config.max_retries).to eq(3)
      end

    end
  end
end
