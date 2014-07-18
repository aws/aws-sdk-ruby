require 'spec_helper'

module Aws
  describe Service do

    it 'provides a client helper method that constructs a client object' do
      client_class = double('client-class')
      expect(client_class).to receive(:new).with(foo:'bar')
      svc_module = Module.new { extend Service }
      svc_module.const_set(:Client, client_class)
      svc_module.client(foo:'bar')
    end

  end
end
