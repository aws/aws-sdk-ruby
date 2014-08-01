require 'spec_helper'

module Seahorse
  describe Util do
    describe 'underscore' do

      def underscore(str)
        Util.underscore(str)
      end

      it 'downcases titleized words' do
        expect(underscore('Foo')).to eq('foo')
      end

      it 'breaks compound titleized words with underscores' do
        expect(underscore('FooBarYuck')).to eq('foo_bar_yuck')
      end

      it 'treats acronyms as a single word' do
        expect(underscore('AWS')).to eq('aws')
      end

      it 'preserves leading acronyms' do
        expect(underscore('AWSAccount')).to eq('aws_account')
      end

      it 'preserves trailing acronyms' do
        expect(underscore('SimpleDB')).to eq('simple_db')
      end

      it 'preserves nested acronyms' do
        expect(underscore('MySUPERWord')).to eq('my_super_word')
        expect(underscore('AWSAccountID')).to eq('aws_account_id')
      end

      it 'treats trailing numbers as a part of acronyms' do
        expect(underscore('MD5OfBody')).to eq('md5_of_body')
        expect(underscore('S3Bucket')).to eq('s3_bucket')
        expect(underscore('EC2Instance')).to eq('ec2_instance')
      end

      it 'does not include leading numbers as part of a word' do
        expect(underscore('SentLast24Hours')).to eq('sent_last_24_hours')
        expect(underscore('24MIN')).to eq('24_min')
      end

      it 'accepts words that start with a lower case letter' do
        expect(underscore('s3Key')).to eq('s3_key')
        expect(underscore('s3Bucket')).to eq('s3_bucket')
      end

    end
  end
end
