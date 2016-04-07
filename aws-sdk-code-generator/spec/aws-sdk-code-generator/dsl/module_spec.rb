require 'spec_helper'

module AwsSdkCodeGenerator
  module Dsl
    describe Module do

      describe '#docstring' do

        it 'applies a yard docstring' do
          m = Dsl::Module.new('ModuleName')
          m.docstring('Documentation here.')
          expect(m.to_s).to eq(<<-CODE)
# Documentation here.
module ModuleName
end
          CODE
        end

      end

      describe '#autoload' do

        it 'groups autoload statements without spaces' do
          m = Dsl::Module.new('ModuleName')
          m.autoload('Class1', 'path1')
          m.autoload('Class2', 'path2')
          expect(m.to_s).to eq(<<-CODE)
module ModuleName
  autoload :Class1, 'path1'
  autoload :Class2, 'path2'
end
          CODE
        end

        it 'separates autoload statements from other code' do
          m = Dsl::Module.new('ModuleName')
          m.autoload('Class1', 'path1')
          m.autoload('Class2', 'path2')
          m.method('method_name')
          expect(m.to_s).to eq(<<-CODE)
module ModuleName

  autoload :Class1, 'path1'
  autoload :Class2, 'path2'

  def method_name
  end

end
          CODE
        end

      end

      it 'generates simple methods' do
        m = Dsl::Module.new('ModuleName')
        expect(m.to_s).to eq(<<-CODE)
module ModuleName
end
        CODE
      end

      it 'supports nesting instance methods' do
        m = Dsl::Module.new('ModuleName')
        m.method('method_name')
        m.method('other_method_name')
        expect(m.to_s).to eq(<<-CODE)
module ModuleName

  def method_name
  end

  def other_method_name
  end

end
        CODE
      end

      it 'supports private methods' do
        m = Dsl::Module.new('ModuleName')
        m.method('method_a')
        m.method('method_b', access: :private) do |m2|
          m2.param(:value)
          m2.code("puts value")
        end
        expect(m.to_s).to eq(<<-CODE)
module ModuleName

  def method_a
  end

  private

  def method_b(value)
    puts value
  end

end
        CODE
      end

      it 'supports code literals' do
        m = Dsl::Module.new('ModuleName')
        m.class('ClassName') do |c|
          c.code("do_something")
          c.code do |c2|
            c2 << "abc"
            c2 << "mno"
            c2 << "xyz"
          end
        end
        expect(m.to_s).to eq(<<-CODE)
module ModuleName
  class ClassName

    do_something

    abc
    mno
    xyz

  end
end
        CODE
      end

      it 'supports static methods' do
        m = Dsl::Module.new('ModuleName')
        m.eigenclass do |klass|
          klass.method(:public_method)
          klass.method(:private_method, access: :private)
        end
        expect(m.to_s).to eq(<<-CODE)
module ModuleName
  class << self

    def public_method
    end

    private

    def private_method
    end

  end
end
        CODE
      end

      it 'supports nesting modules' do
        foo_module = Dsl::Module.new('Foo')
        bar_module = Dsl::Module.new('Bar')
        foo_module.add(bar_module)
        expect(bar_module.to_s).to eq(<<-CODE)
module Bar
end
        CODE
        expect(foo_module.to_s).to eq(<<-CODE)
module Foo
  module Bar
  end
end
        CODE
      end

      it 'supports extending and including modules' do
        m = Dsl::Module.new('ModuleName')
        m.include('FooModule')
        m.extend('BarModule')
        m.include('BazModule')
        expect(m.to_s).to eq(<<-CODE)
module ModuleName
  include FooModule
  extend BarModule
  include BazModule
end
        CODE
      end

      it 'puts constructor methods above public methods' do
        m = Dsl::Module.new('ModuleName')
        m.constructor
        m.method(:public_method)
        expect(m.to_s).to eq(<<-CODE)
module ModuleName

  def initialize
  end

  def public_method
  end

end
        CODE
      end

      it 'supports attribute accessors' do
        m = Dsl::Module.new('ModuleName')
        m.attr_accessor(:attr1_name)
        m.attr_reader(:attr2_name)
        m.attr_writer(:attr3_name)
        expect(m.to_s).to eq(<<-CODE)
module ModuleName
  attr_accessor :attr1_name
  attr_reader :attr2_name
  attr_writer :attr3_name
end
        CODE
      end

      it 'spaces attribute macros if they have docstrings' do
        m = Dsl::Module.new('ModuleName')
        m.attr_accessor(:name) do |attr|
          attr.returns(String, docstring: 'Returns the name.')
        end
        m.attr_accessor(:description) do |attr|
          attr.returns([String, nil], docstring: 'Optional description.')
        end
        expect(m.to_s).to eq(<<-CODE)
module ModuleName

  # @return [String]
  #   Returns the name.
  attr_accessor :name

  # @return [String, nil]
  #   Optional description.
  attr_accessor :description

end
        CODE
      end

      it 'separates macros from other methods' do
        m = Dsl::Module.new('ModuleName')
        m.attr_accessor(:attr_name)
        m.attr_accessor(:other_attr_name)
        m.method(:method_name)
        expect(m.to_s).to eq(<<-CODE)
module ModuleName

  attr_accessor :attr_name
  attr_accessor :other_attr_name

  def method_name
  end

end
        CODE
      end

      it 'places require statements at the top' do
        mod = Dsl::Main.new
        mod.module('ModuleName') do |m|
          m.attr_accessor(:attr_name)
          m.attr_accessor(:other_attr_name)
          m.require('other-gem')
          m.require_relative('first/path')
          m.require_relative('second/path')
        end
        expect(mod.to_s).to eq(<<-CODE)
require 'other-gem'
require_relative 'first/path'
require_relative 'second/path'

module ModuleName
  attr_accessor :attr_name
  attr_accessor :other_attr_name
end
        CODE
      end

      it 'hoists require statements up through modules' do
        dsl = Dsl::Main.new
        dsl.module('ModuleName') do |m|
          m.module('NestedModule') do |m2|
            m2.module('DeeplyNestedModule') do |m3|
              m3.require('other-gem')
              m3.require_relative('path/to/require')
            end
          end
        end
        expect(dsl.to_s).to eq(<<-CODE)
require 'other-gem'
require_relative 'path/to/require'

module ModuleName
  module NestedModule
    module DeeplyNestedModule
    end
  end
end
        CODE
      end

      it 'can build complex structures' do
        m = Dsl::Module.new('Foo') do |foo|
          foo.include('SomeModule')
          foo.extend('SomeOtherModule')
          foo.method('foo_method')
          foo.eigenclass do |klass|
            klass.method('new')
            klass.method('do_something', access: :private) do |method|
              method.param('value')
            end
          end
          foo.module('Bar') do |bar|
            bar.method('bar_method')
            bar.method('private_bar_method', access: :private)
            bar.module('Baz') do |baz|
              baz.eigenclass do |klass|
                klass.method('baz_method')
              end
            end
          end
          foo.class('NestedClass', extends: 'OtherClass') do |klass|
            klass.include('Bar')
          end
        end
        expect(m.to_s).to eq(<<-CODE)
module Foo

  include SomeModule
  extend SomeOtherModule

  def foo_method
  end

  class << self

    def new
    end

    private

    def do_something(value)
    end

  end

  module Bar

    def bar_method
    end

    private

    def private_bar_method
    end

    module Baz
      class << self

        def baz_method
        end

      end
    end
  end

  class NestedClass < OtherClass
    include Bar
  end
end
        CODE
      end
    end
  end
end
