require 'spec_helper'

module Seahorse
  describe Client do

    it 'is a helper method for Client::Base.define' do
      options = double('options')
      expect(Client::Base).to receive(:define).with(options)
      Client.define(options)
    end

  end
end
