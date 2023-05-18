# frozen_string_literal: true


desc 'Runs a performance benchmark on the SDK'
task 'benchmark' do
  sh('bundle exec ruby bin/benchmark_performance.rb')
end