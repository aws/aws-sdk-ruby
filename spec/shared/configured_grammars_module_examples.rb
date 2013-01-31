# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS::Core

  shared_examples_for "configured grammars module" do

    let(:class_methods_module) { described_class.const_get(:ClassMethods) }

    it_should_behave_like "class methods module"

    context 'class methods' do

      let(:mod) do
        m = Module.new
        m.send(:extend, class_methods_module)
        m
      end

      context '#define_configured_grammars' do

        let(:api_config) { { :operations => operations } }

        let(:operations) { { "DoSomething" => operation_info } }

        let(:configured_customizations) { "FOO" }

        let(:processed_customizations) { "BAR" }

        let(:base_grammar) { double("base grammar",
                                    :customize => customized_grammar) }

        let(:customized_grammar) { double("customized grammar") }

        before(:each) do
          mod.stub(:api_config).and_return(api_config)
          mod.stub(:process_customizations).
            and_return(processed_customizations)
          mod.stub(:base_grammar).and_return(base_grammar)
          XmlGrammar.stub(:customize)
        end

        it 'should define a constant for each operation' do
          mod.should_receive(:const_set).with("DoSomething", anything)
          mod.define_configured_grammars
        end

        it 'should customize the base grammar' do
          base_grammar.should_receive(:customize).
            with(processed_customizations).
            and_return(customized_grammar)
          mod.should_receive(:const_set).
            with("DoSomething", customized_grammar)
          mod.define_configured_grammars
        end

        it 'should process customizations with the right arguments' do
          mod.should_receive(:process_customizations).
            with("DoSomething", configured_customizations).
            and_return(processed_customizations)
          mod.define_configured_grammars
        end

      end

      context '#process_customizations' do

        it 'should take the name and original customizations' do
          lambda { mod.process_customizations("DoSomething", []) }.
            should_not raise_error
        end

        it 'shoudl return the customizations unmodified' do
          customizations = []
          mod.process_customizations("DoSomething", customizations).
            should be(customizations)
        end

      end

      context '#base_grammar' do

        context 'base grammar constant not defined' do

          it 'should return the default base grammar' do
            mod.base_grammar.should be(default_base_grammar)
          end

        end

        context 'base grammar constant defined' do

          it 'should customize the base grammar' do
            base_grammar = double("base grammar")
            mod.stub(:const_defined?).with(base_grammar_constant).
              and_return(true)
            mod.stub(:const_get).with(base_grammar_constant).
              and_return(base_grammar)
            mod.base_grammar.should be(base_grammar)
          end

        end

      end


      context '#operation_grammar' do

        let(:grammar) { double("grammar") }

        after(:each) do
          mod.operation_grammar("DoSomething").
            should be(grammar)
        end

        context 'with no customized grammar' do

          it 'should use the configured grammar' do
            mod.stub(:const_defined?).with("CustomizedDoSomething").
              and_return(false)
            mod.stub(:const_get).with("DoSomething").
              and_return(grammar)
          end

        end

        context 'with a customized grammar' do

          it 'should use the customized grammar' do
            mod.stub(:const_defined?).with("CustomizedDoSomething").
              and_return(true)
            mod.stub(:const_get).with("CustomizedDoSomething").
              and_return(grammar)
          end

        end

      end

    end

  end

end
