require 'spec_helper'

module AWS

  describe EMR do

    let(:config) { stub_config }

    let(:emr) do
      EMR.new(:config => config)
    end

    it_behaves_like 'a class that accepts configuration', :emr_client

    shared_examples_for 'emr top level collection' do |method, klass|

      it "should return an instance of #{klass}" do
        emr.send(method).should be_an(klass)
      end

      it 'should pass the config' do
        emr.send(method).config.should == emr.config
      end

    end

  end

end

