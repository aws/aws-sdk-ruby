require 'spec_helper'

module Seahorse
  describe 'VERSION' do

    it 'is a semver compatible version string' do
      expect(VERSION).to match(/\d+\.\d+\.\d+/)
    end

  end
end
