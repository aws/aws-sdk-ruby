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

        context 'opts[:template] as a not url string' do

          let(:opts) { {:template => 'template' } }

          it 'has opts[:template_body]' do

            stack_options.send(:apply_template, opts)

            opts.should have_key(:template_body)

            opts.should_not have_key(:template_url)

          end

          context 'include "http"' do

            let(:opts) { {:template => '"Protocol": "http"' } }

            it 'has opts[:template_body]' do

              stack_options.send(:apply_template, opts)

              opts.should have_key(:template_body)

              opts.should_not have_key(:template_url)

            end

          end

        end

        context 'opts[:template] as a http url string' do

          let(:opts) { { :template => 'http://s3.amazon.com/bucket_name/key' } }

          it 'has opts[:template_url]' do

            stack_options.send(:apply_template, opts)

            opts.should_not have_key(:template_body)

            opts.should have_key(:template_url)

          end

        end

        context 'opts[:template] as a https url string' do

          let(:opts) { { :template => 'https://s3.amazon.com/bucket_name/key' } }

          it 'has opts[:template_url]' do

            stack_options.send(:apply_template, opts)

            opts.should_not have_key(:template_body)

            opts.should have_key(:template_url)

          end

        end

      end

    end
  end
end
