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

require 'spec_helper'

module AWS
  describe Rails do

    context 'Rails Integration' do

      context 'log_to_rails_logger' do

        it 'uses Rails.logger for rails 3+' do

          module ::Rails; end
          ::Rails.stub(:version).and_return('3.0')
          ::Rails.stub(:logger).and_return('foo')

          AWS::Rails.log_to_rails_logger
          logger = AWS.config.logger

          # undo the setup
          AWS.config(:logger => nil)
          Object.send(:remove_const, :Rails)

          logger.should == 'foo'

        end


        it 'uses RAILS_DEFUALT_LOGGER for older rails' do

          module ::Rails; end
          ::Rails.stub(:version).and_return('2.1')

          ::RAILS_DEFAULT_LOGGER = 'bar'

          AWS::Rails.log_to_rails_logger
          logger = AWS.config.logger

          # undo the setup
          AWS.config(:logger => nil)
          Object.send(:remove_const, :Rails)
          Object.send(:remove_const, :RAILS_DEFAULT_LOGGER)

          logger.should == 'bar'

        end

      end

      context 'add_action_mailer_delivery_method' do

        before(:each) do

          module ::Rails
            def self.version
              '3.0.10'
            end
          end

          module ::ActionMailer
            class Base
              def self.add_delivery_method name, klass, opts
              end
            end
          end

          module ::ActiveSupport
            def self.on_load(name, options = {}, &block)
              ::ActionMailer::Base.instance_eval &block
            end
          end

        end

        after(:each) do
          Object.send(:remove_const, :ActionMailer)
          Object.send(:remove_const, :Rails)
        end

        it 'adds an :amazon_ses delivery method' do
          ActionMailer::Base.should_receive(:add_delivery_method).
            with(:amazon_ses, AWS::SimpleEmailService, {})
          AWS::Rails.add_action_mailer_delivery_method
        end

        it 'uses an ActiveSupport lazy load hook' do
          ActiveSupport.should_receive(:on_load).
            with(:action_mailer)
          AWS::Rails.add_action_mailer_delivery_method
        end

        it 'returns nil' do
          AWS::Rails.add_action_mailer_delivery_method.should == nil
        end

        context 'older rails' do

          before(:each) do
            ::Rails.stub(:version).and_return('1.1.6')
            AWS.config(
              :stub_requests => true,
              :access_key_id => 'id',
              :secret_access_key => 'secret')
          end

          after(:each) do
            AWS.config(
              :stub_requests => false,
              :access_key_id => nil,
              :secret_access_key => nil)
          end

          it 'defines a method for older versions of rails' do

            ActionMailer::Base.should_receive(:define_method).
              with('perform_delivery_amazon_ses')

            AWS::Rails.add_action_mailer_delivery_method

          end

          it 'the added method calls send_raw_email' do

            ses = double('ses')
            ses.should_receive(:send_raw_email).with('raw')
            AWS::SimpleEmailService.should_receive(:new).with({}).and_return(ses)

            AWS::Rails.add_action_mailer_delivery_method
            ActionMailer::Base.new.perform_delivery_amazon_ses('raw')

          end

        end

      end

    end

  end
end
