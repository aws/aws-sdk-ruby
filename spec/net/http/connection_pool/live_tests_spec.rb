# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
require 'dummy_server'

describe Net::HTTP::ConnectionPool do

  before(:all) do
    @host = '127.0.0.1'
    @port = ENV['DUMMY_SERVER_PORT'] || 8000
    @server = DummyServer.new(@port)
    @server.start
  end

  before(:each) do
    @server.reset_requests
  end

  after(:each) do
    pool.empty!
  end

  let(:pool) { described_class.new(:open_timeout => 1) }

  it 'reuses connections' do
    # make three requests back-to-back
    connection = pool.connection_for(@host, :port => @port, :ssl => false)
    connection.request(Net::HTTP::Get.new('/ping'))
    connection.request(Net::HTTP::Get.new('/ping'))
    connection.request(Net::HTTP::Get.new('/ping'))
    pool.size.should == 1
  end

  it 'creates connections as needed' do

    threads = []
    5.times do 
      threads << Thread.new do
        connection = pool.connection_for(@host, :port => @port, :ssl => false)
        connection.request(Net::HTTP::Get.new('/sleep/0.1'))
      end
    end
    threads.map(&:join)

    pool.size.should == 5

  end

  it 'drops idle connections from the pool' do

    pool = described_class.new(:idle_timeout => 0.2)

    threads = []
    4.times do 
      threads << Thread.new do
        connection = pool.connection_for(@host, :port => @port, :ssl => false)
        connection.request(Net::HTTP::Get.new('/sleep/0.01'))
      end
    end
    threads.map(&:join)
    pool.size.should == 4

    sleep(0.1)

    # reuse one of the original 4 connections, keeping it alive
    connection = pool.connection_for(@host, :port => @port, :ssl => false)
    connection.request(Net::HTTP::Get.new('/sleep/0.1'))

    pool.clean!

    pool.size.should == 1


  end

  #it 'retries requess that fail at the socket layer once' do
  #  
  #  @server.fail_next
  #  connection = pool.connection_for(@host, :port => @port, :ssl => false)
  #  connection.request(Net::HTTP::Get.new('/ping'))
  #  @server.requests.size.should == 2
  #
  #end

end
