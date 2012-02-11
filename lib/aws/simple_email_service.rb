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

require 'aws/core'
require 'aws/simple_email_service/config'

module AWS
  
  # This class is the starting point for working with Amazon 
  # SimpleEmailService (SES).
  #
  # To use Amazon SimpleEmailService you must first 
  # {sign up here}[http://aws.amazon.com/ses/]
  #
  # For more information about Amazon SimpleEmailService:
  #
  # * {Amazon SimpleEmailService}[http://aws.amazon.com/ses/]
  # * {Amazon SimpleEmailService Documentation}[http://aws.amazon.com/documentation/ses/]
  #
  # = Credentials
  #
  # You can setup default credentials for all AWS services via 
  # AWS.config:
  #
  #   AWS.config(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  # 
  # Or you can set them directly on the SimpleEmailService interface:
  #
  #   ses = AWS::SimpleEmailService.new(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # = Rails
  #
  # If you want to use Amazon SimpleEmailService to send email from your
  # Rails application you just need to do 2 things:
  #
  # 1. Configure your AWS credentials with {AWS.config}
  # 2. Set SES as the delivery method:
  #
  #   config.action_mailer.delivery_method = :amazon_ses
  #
  # This has only been tested with Rails 2.3 and Rails 3.0.
  #
  # = Email Addresses
  #
  # Until you have {requested production access}[http://docs.amazonwebservices.com/ses/latest/DeveloperGuide/InitialSetup.Customer.html]
  # you will only be able to send emails to and from verified email addresses.
  # To verify an email address:
  #
  #   ses.email_addresses.verify('youremailaddress@domain.com')
  #
  # AWS will send an email to the given email address.  Follow the link in the
  # email to verify the address.
  #
  # To explore the email addresses you have authorized:
  #
  #   ses.email_addresses.each do |address|
  #     puts address
  #   end
  #
  # See {EmailAddressCollection} for more information on working with SES email
  # addresses.
  #
  # = Sending Email
  #
  # To send a basic email you can use {#send_email}.
  #
  #   ses.send_email(
  #     :subject => 'A Sample Email',
  #     :from => 'sender@domain.com',
  #     :to => 'receipient@domain.com',
  #     :body_text => 'Sample email text.',
  #     :body_html => '<h1>Sample Email</h1>') 
  #
  # If you need to send email with attachments or have other special needs
  # that send_email does not support you can use {#send_raw_email}.
  #
  #   ses.send_raw_email(<<EMAIL)
  #   Subject: A Sample Email
  #   From: sender@domain.com
  #   To: receipient@domain.com
  #
  #   Sample email text.
  #   EMAIL
  #
  # If you prefer, you can also set the sender and recipient in ruby
  # when sending raw emails:
  #
  #   ses.send_raw_email(<<EMAIL, :to => 'to@foo.com', :from => 'from@foo.com')
  #   Subject: A Sample Email
  #
  #   Sample email text.
  #   EMAIL
  #
  # = Quotas
  #
  # Based on several factors, Amazon SES determines how much email you can
  # send and how quickly you can send it. These sending limits are defined
  # as follows:
  #
  # * +:max_send_rate+ — Maximum number of emails you can send per second.
  # * +:max_24_hour_send+ - Maximum number of emails you can send in a 
  #   24-hour period.
  #
  # To get your current quotas (and how many emails you have sent in the last
  # 24 hours):
  #
  #   ses.quotas
  #   # => {:max_24_hour_send=>200, :max_send_rate=>1.0, :sent_last_24_hours=>22}
  #
  # = Statistics
  #
  # You can get statistics about individual emails:
  #
  #   ses.statistics.each do |stats|
  #     puts "Sent: #{stats[:sent]}"
  #     puts "Delivery Attempts: #{stats[:delivery_attempts]}"
  #     puts "Rejects: #{stats[:rejects]}"
  #     puts "Bounces: #{stats[:bounces]}"
  #     puts "Complaints: #{stats[:complaints]}"
  #   end
  #
  class SimpleEmailService

    AWS.register_autoloads(self, 'aws/simple_email_service') do
      autoload :Client,                 'client'
      autoload :Errors,                 'errors'
      autoload :EmailAddressCollection, 'email_address_collection'
      autoload :Quotas,                 'quotas'
      autoload :Request,                'request'
    end

    include Core::ServiceInterface

    # @return [EmailAddressCollection] Returns a collection that represents
    #   all of the verified email addresses for your account.
    def email_addresses
      EmailAddressCollection.new(:config => config)
    end

    # Sends an email.  
    #
    #   ses.send_email(
    #     :subject => 'A Sample Email',
    #     :to => 'john@doe.com', 
    #     :from => 'no@reply.com',
    #     :body_text => 'sample text ...',
    #     :body_html => '<p>sample text ...</p>')
    #
    # You can also pass multiple email addresses for the +:to+, +:cc+, 
    # +:bcc+ and +:reply_to+ options.  Email addresses can also be 
    # formatted with names.
    #
    #   ses.send_email(
    #     :subject => 'A Sample Email',
    #     :to => ['"John Doe" <john@doe.com>', '"Jane Doe" <jane@doe.com>'],
    #     :from => 'no@reply.com',
    #     :body_text => 'sample text ...')
    #
    # @param [Hash] options
    # @option options [required,String] :subject The subject of the message.
    #   A short summary of the content, which will appear in the #
    #   recipient's inbox.
    # @option options [required,String] :from The sender's email address.
    # @option options [String,Array] :to The address(es) to send the email to.
    # @option options [String,Array] :cc The address(es) to cc (carbon copy)
    #   the email to.
    # @option options [String,Array] :bcc The address(es) to bcc (blind
    #   carbon copy) the email to.
    # @option options [String,Array] :reply_to The reply-to email address(es)
    #   for the message. If the recipient replies to the message, each 
    #   reply-to address will receive the reply.
    # @option options [String] :return_path The email address to which 
    #   bounce notifications are to be forwarded. If the message cannot be
    #   delivered to the recipient, then an error message will be returned
    #   from the recipient's ISP; this message will then be forwarded to
    #   the email address specified by the +:return_path+ option.
    # @option options [String] :body_text The email text contents.
    #   You must provide +:body_text+, +:body_html+ or both.
    # @option options [String] :body_html The email html contents.
    #   You must provide +:body_text+, +:body_html+ or both.
    # @option options [String] :subject_charset The character set of the 
    #   +:subject+ string.  If the text must contain any other characters,
    #   then you must also specify the character set. Examples include 
    #   UTF-8, ISO-8859-1, and Shift_JIS. Defaults to 7-bit ASCII.
    # @option options [String] :body_text_charset The character set of the
    #   +:body_text+ string.  If the text must contain any other characters,
    #   then you must also specify the character set. Examples include 
    #   UTF-8, ISO-8859-1, and Shift_JIS. Defaults to 7-bit ASCII.
    # @option options [String] :body_html_charset The character set of the
    #   +:body_html+ string.  If the text must contain any other characters,
    #   then you must also specify the character set. Examples include 
    #   UTF-8, ISO-8859-1, and Shift_JIS. Defaults to 7-bit ASCII.
    # @option options [String] :body_html
    # @return [nil]
    def send_email options = {}

        require_each(options, :subject, :from)
        require_one_of(options, :to, :cc, :bcc)
        require_one_of(options, :body_text, :body_html)

      # these three options can be passed strings or arrays of strings,
      # but the service requires them in a list (array)
      [:to, :cc, :bcc, :reply_to].each do |key|
        if options[key]
          options[key] = [options[key]].flatten
        end
      end

      accepted_options = {
        :subject           => %w(message subject data),
        :subject_charset   => %w(message subject charset),
        :to                => %w(destination to_addresses),
        :cc                => %w(destination cc_addresses),
        :bcc               => %w(destination bcc_addresses),
        :from              => %w(source),
        :reply_to          => %w(reply_to_addresses),
        :return_path       => %w(return_path),
        :body_text         => %w(message body text data),
        :body_text_charset => %w(message body text charset),
        :body_html         => %w(message body html data),
        :body_html_charset => %w(message body html charset),
      }

      client.send_email(nest_options(options, accepted_options))
      nil

    end

    # Sends a raw email (email message, with header and content specified). 
    # Useful for sending multipart MIME emails.  The raw text of the message
    # must comply with Internet email standards; otherwise, the message 
    # cannot be sent.
    #
    #   raw = <<-EMAIL
    #   Date: Wed, 1 Jun 2011 09:13:07 -0700
    #   Subject: A Sample Email
    #   From: "John Doe" <johndoe@domain.com>
    #   To: "Jane Doe" <janedoe@domain.com>
    #   Accept-Language: en-US
    #   Content-Language: en-US
    #   Content-Type: text/plain; charset="utf-8"
    #   Content-Transfer-Encoding: base64
    #   MIME-Version: 1.0
    #
    #   c2FtcGxlIHRleHQNCg==
    #   EMAIL
    #
    #   ses.send_raw_email(raw)
    #
    # Amazon SES has a limit on the total number of recipients per 
    # message: The combined number of To:, CC: and BCC: email addresses 
    # cannot exceed 50. If you need to send an email message to a larger 
    # audience, you can divide your recipient list into groups of 50 or 
    # fewer, and then call Amazon SES repeatedly to send the message to 
    # each group.
    #
    # @param [required, String] raw_message The raw text of the message. 
    #   You can pass in any object whos #to_s returns a valid formatted
    #   email (e.g. ruby Mail gem).  The raw message should:
    #   * Contain a header and a body, separated by a blank line
    #   * Contain all required internet email headers
    #   * Each part of a multipart MIME message must be formatted properly
    #   * MIME content types must be among those supported by Amazon SES. 
    #     Refer to the Amazon SES Developer Guide for more details.
    #   * Use content that is base64-encoded, if MIME requires it
    # @option options [String,Array] :to One or more email addresses to
    #   send the email to.
    # @option options [String] :from The sender's email address.  
    #   If you specify the :from option, then bounce notifications and 
    #   complaints will be sent to this email address. This takes 
    #   precedence over any Return-Path header that you might include in 
    #   the +raw_message+.
    # @return [nil]
    def send_raw_email raw_message, options = {}

      send_opts = {}
      send_opts[:raw_message] = {}
      send_opts[:raw_message][:data] = raw_message.to_s
      
      if raw_message.class.name == 'Mail::Message'
        send_opts[:source] = raw_message.from.first
        send_opts[:destinations] = raw_message.destinations
      else
        send_opts[:source] = options[:from] if options[:from]
        send_opts[:destinations] = [options[:to]].flatten if options[:to]
      end

      client.send_raw_email(send_opts)
      nil

    end

    # for compatability with ActionMailer
    alias_method :deliver, :send_raw_email
    alias_method :deliver!, :send_raw_email

    # @example
    #
    #   ses.quotas
    #   # {:max_24_hour_send=>200, :max_send_rate=>1.0, :sent_last_24_hours=>22}
    #
    # @return [Hash] Returns a hash of SES quotas and limits.
    def quotas
      Quotas.new(:config => config).to_h
    end

    # Returns an array of email statistics. Each object in this array is a 
    # hash with the following keys:
    #
    # * +:delivery_attempts+
    # * +:rejects+
    # * +:bounces+
    # * +:complaints+
    # * +:timestamp+
    #
    # @return [Array of Hashes] An array of email statistic hashes.
    def statistics
      client.get_send_statistics.send_data_points.inject([]) do |stats, data|
        stats << {
          :sent => data.timestamp,
          :delivery_attempts => data.delivery_attempts,
          :rejects => data.rejects,
          :bounces => data.bounces,
          :complaints => data.complaints,
        }
      end
    end

    # @private
    protected
    def require_one_of options, *keys
      unless keys.any?{|key| options[key] }
        parts = keys.collect{|key| ":#{key}" }.join(', ')
        raise ArgumentError, "you must provide at least one of #{parts}" 
      end
    end

    # @private
    protected
    def require_each options, *keys
      keys.each do |key|
        unless options[key]
          raise ArgumentError, "missing required option :#{key}"
        end
      end
    end

    # @private
    protected
    def nest_options options, accepted_options

      send_opts = {}
      accepted_options.each_pair do |option, keys|
        next unless options[option]
        hash = send_opts
        keys.collect{|k| k.to_sym }.each do |key|
          hash[key] = {} unless hash[key]
          if keys.last == key.to_s
            hash[key] = options[option]
          else
            hash = hash[key]
          end
        end
      end

      send_opts
    end

  end
end
