require 'spec_helper'
require 'logger'

module Seahorse
  module  Client
    module Logging
      describe Handler do

        class LogNullDevice
          attr_reader :messages
          def write(msg)
            @messages ||= ''
            @messages << msg
          end
          def close; end
        end

        class TestFormatter
          def format(response)
            'test-formatter-log-msg'
          end
        end

        def handle!
          @log_dev ||= LogNullDevice.new
          @logger ||= Logger.new(@log_dev)
          @log_level ||= :info
          @formatter ||= TestFormatter.new
          @config ||= double('config',
            logger: @logger,
            log_level: @log_level,
            log_formatter: @formatter)
          @handler ||= Handler.new(lambda { |context|
            context.http_response.status_code = 200
            Response.new(context: context)
          })
          @handler.call(RequestContext.new(config: @config))
        end

        it 'populates the request context with timing information' do
          resp = handle!
          expect(resp.context[:logging_started_at]).to be_kind_of(Time)
          expect(resp.context[:logging_completed_at]).to be_kind_of(Time)
          expect(resp.context[:logging_started_at]).to be < resp.context[:logging_completed_at]
        end

        it 'sends the formatted message to the logger' do
          handle!
          expect(@log_dev.messages).to match(/test-formatter-log-msg/)
        end

        it 'sends the message at the right log level' do
          @log_dev = LogNullDevice.new
          @logger = Logger.new(@log_dev)
          @logger.level = Logger::WARN
          handle!
          expect(@log_dev.messages).to be(nil)
        end

      end
    end
  end
end
