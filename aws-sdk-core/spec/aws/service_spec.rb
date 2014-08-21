require 'spec_helper'

module Aws
  describe Service do
    describe '.new' do

      it 'is deprecated and generates a warning' do
        options = double('options')
        client_class = double('client-class')
        svc_module = Module.new { extend(Service) }
        svc_module.const_set(:Client, client_class)

        expect(client_class).to receive(:new).with(options)
        expect(svc_module).to receive(:warn).with(/deprecated/)

        svc_module.new(options)
      end

    end
  end
end
