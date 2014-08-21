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
        expect(mod.error_class('ErrorClass:https://foo.com')).to be(mod::ErrorClass)
      end

      it 'ensures the error class name starts with a letter' do
        expect(mod.error_class('123Code')).to be(mod::Error123Code)
      end

      it 'ensures the error class constant is uppercased' do
        expect(mod.error_class('errorClass')).to be(mod::ErrorClass)
      end

      it 'removes characters that are not valid as constants' do
        expect(mod.error_class('Error 123~Code')).to be(mod::Error123Code)
      end

      it 'prevents #const_missing from re-setting the error constant' do
        error_class = mod::FooError
        expect(mod.const_missing(:FooError)).to be(error_class)
        expect(mod.const_missing('FooError')).to be(error_class)
      end

      it 'prevents #const_missing from re-setting the error constant' do
        error_class = mod::FooError
        expect(mod.const_missing(:FooError)).to be(error_class)
        expect(mod.const_missing('FooError')).to be(error_class)
      end

    end
  end
end
