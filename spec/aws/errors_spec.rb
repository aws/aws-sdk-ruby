require 'spec_helper'

module Aws
  module Errors
    describe DynamicErrors do

      let(:mod) {
        mod = Module.new
        mod.send(:extend, DynamicErrors)
        mod
      }

      it 'dynamically creates error classes' do
        expect(mod::MyError.ancestors).to include(ServiceError)
      end

      it 'removes non letters and numbers from the error code' do
        expect(mod.error_class('My.Error')).to be(mod::MyError)
      end

      it 'removes http namespaces from the error code' do
        expect(mod.error_class('ErrorClass:http://foo.com')).to be(mod::ErrorClass)
      end

    end
  end
end
