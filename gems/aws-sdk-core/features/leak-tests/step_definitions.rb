Given(/^I create (\d+) service clients$/) do |count|
  count.to_i.times do
    Aws::DynamoDB::Client.new
  end
end

Given(/^I take a snapshot of used resources$/) do
  GC.start
  @objects = ObjectSpace.count_objects
end

Then(/^there should be no leaked resources$/) do
  GC.start
  objects = ObjectSpace.count_objects
  expect(objects[:TOTAL]).to eq(@objects[:TOTAL])
end

Given(/^I send (\d+) requests using (\d+) threads$/) do |num_requests, num_threads|

  require 'thread'

  client = Aws::DynamoDB::Client.new

  q = Queue.new
  num_requests.to_i.times do
    q << true
  end

  threads = []
  num_threads.to_i.times do
    threads << Thread.new do
      begin
        loop do
          if queue.pop(non_block=true)
            begin
              client.get_item(table_name:'no-such-table', key: { 'id' => '123' })
            rescue Aws::DynamoDB::Errors::ResourceNotFoundException
              # expected to fail
            end
          end
        end
      rescue ThreadError # raised on an empty queue
      end
    end
  end
  threads.join

end
