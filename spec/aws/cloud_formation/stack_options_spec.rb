require 'spec_helper'

module AWS
  class CloudFormation
    describe StackOptions do
      class DummyClass
      end

      before do
        @dummy_class = DummyClass.new
        @dummy_class.extend(StackOptions)
      end

      describe '#apply_template' do
        let(:stack_options) { @dummy_class }

        context 'opts[:template] is String not url' do
          let(:opts) { {:template => 'template' } }
          it 'has opts[:template_body]' do
            stack_options.send(:apply_template, opts)
            opts.should have_key(:template_body)
          end

          context 'include "http"' do
            let(:opts) { {:template => '"Protocol": "http"' } }
            it 'has opts[:template_body]' do
              stack_options.send(:apply_template, opts)
              opts.should have_key(:template_body)
            end
          end

        end
      end
    end
  end
end
