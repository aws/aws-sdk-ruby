require_relative '../spec_helper'

module AwsSdkCodeGenerator
  module Underscore
    describe 'underscore' do

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

      describe 'irregular inflections' do
        {
          'ETag' => 'etag',
          's3Bucket' => 's3_bucket',
          's3Key' => 's3_key',
          'Ec2KeyName' => 'ec2_key_name',
          'Ec2SubnetId' => 'ec2_subnet_id',
          'Ec2VolumeId' => 'ec2_volume_id',
          'Ec2InstanceId' => 'ec2_instance_id',
          'ElastiCache' => 'elasticache',
          'NotificationARNs' => 'notification_arns',
          'SentLast24Hours' => 'sent_last_24_hours',
          'Max24HourSend' => 'max_24_hour_send',
          'AuthenticationCode1' => 'authentication_code_1',
          'AuthenticationCode2' => 'authentication_code_2',
          'SwapEnvironmentCNAMEs' => 'swap_environment_cnames',
          'CachediSCSIVolume' => 'cached_iscsi_volume',
          'CachediSCSIVolumeInformation' => 'cached_iscsi_volume_information',
          'CachediSCSIVolumes' => 'cached_iscsi_volumes',
          'CreateCachediSCSIVolume' => 'create_cached_iscsi_volume',
          'CreateCachediSCSIVolumeInput' => 'create_cached_iscsi_volume_input',
          'CreateCachediSCSIVolumeOutput' => 'create_cached_iscsi_volume_output',
          'CreateStorediSCSIVolume' => 'create_stored_iscsi_volume',
          'CreateStorediSCSIVolumeInput' => 'create_stored_iscsi_volume_input',
          'CreateStorediSCSIVolumeOutput' => 'create_stored_iscsi_volume_output',
          'DescribeCachediSCSIVolumes' => 'describe_cached_iscsi_volumes',
          'DescribeCachediSCSIVolumesInput' => 'describe_cached_iscsi_volumes_input',
          'DescribeCachediSCSIVolumesOutput' => 'describe_cached_iscsi_volumes_output',
          'DescribeStorediSCSIVolumes' => 'describe_stored_iscsi_volumes',
          'DescribeStorediSCSIVolumesInput' => 'describe_stored_iscsi_volumes_input',
          'DescribeStorediSCSIVolumesOutput' => 'describe_stored_iscsi_volumes_output',
          'DeviceiSCSIAttributes' => 'device_iscsi_attributes',
          'StorediSCSIVolume' => 'stored_iscsi_volume',
          'StorediSCSIVolumeInformation' => 'stored_iscsi_volume_information',
          'StorediSCSIVolumes' => 'stored_iscsi_volumes',
          'VolumeiSCSIAttributes' => 'volume_iscsi_attributes'
        }.each do |camel_case, underscored|
          it "inflects #{camel_case} to #{underscored}" do
            expect(underscore(camel_case)).to eq(underscored)
          end
        end

      end
    end
  end
end
