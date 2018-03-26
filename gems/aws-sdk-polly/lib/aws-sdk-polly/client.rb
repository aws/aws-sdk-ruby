# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:polly)

module Aws::Polly
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :polly

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Deletes the specified pronunciation lexicon stored in an AWS Region. A
    # lexicon which has been deleted is not available for speech synthesis,
    # nor is it possible to retrieve it using either the `GetLexicon` or
    # `ListLexicon` APIs.
    #
    # For more information, see [Managing Lexicons][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html
    #
    # @option params [required, String] :name
    #   The name of the lexicon to delete. Must be an existing lexicon in the
    #   region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a lexicon
    #
    #   # Deletes a specified pronunciation lexicon stored in an AWS Region.
    #
    #   resp = client.delete_lexicon({
    #     name: "example", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lexicon({
    #     name: "LexiconName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/DeleteLexicon AWS API Documentation
    #
    # @overload delete_lexicon(params = {})
    # @param [Hash] params ({})
    def delete_lexicon(params = {}, options = {})
      req = build_request(:delete_lexicon, params)
      req.send_request(options)
    end

    # Returns the list of voices that are available for use when requesting
    # speech synthesis. Each voice speaks a specified language, is either
    # male or female, and is identified by an ID, which is the ASCII version
    # of the voice name.
    #
    # When synthesizing speech ( `SynthesizeSpeech` ), you provide the voice
    # ID for the voice you want from the list of voices returned by
    # `DescribeVoices`.
    #
    # For example, you want your news reader application to read news in a
    # specific language, but giving a user the option to choose the voice.
    # Using the `DescribeVoices` operation you can provide the user with a
    # list of available voices to select from.
    #
    # You can optionally specify a language code to filter the available
    # voices. For example, if you specify `en-US`, the operation returns a
    # list of all available US English voices.
    #
    # This operation requires permissions to perform the
    # `polly:DescribeVoices` action.
    #
    # @option params [String] :language_code
    #   The language identification tag (ISO 639 code for the language
    #   name-ISO 3166 country code) for filtering the list of voices returned.
    #   If you don't specify this optional parameter, all available voices
    #   are returned.
    #
    # @option params [String] :next_token
    #   An opaque pagination token returned from the previous `DescribeVoices`
    #   operation. If present, this indicates where to continue the listing.
    #
    # @return [Types::DescribeVoicesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVoicesOutput#voices #voices} => Array&lt;Types::Voice&gt;
    #   * {Types::DescribeVoicesOutput#next_token #next_token} => String
    #
    #
    # @example Example: To describe available voices
    #
    #   # Returns the list of voices that are available for use when requesting speech synthesis. Displayed languages are those
    #   # within the specified language code. If no language code is specified, voices for all available languages are displayed.
    #
    #   resp = client.describe_voices({
    #     language_code: "en-GB", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     voices: [
    #       {
    #         gender: "Female", 
    #         id: "Emma", 
    #         language_code: "en-GB", 
    #         language_name: "British English", 
    #         name: "Emma", 
    #       }, 
    #       {
    #         gender: "Male", 
    #         id: "Brian", 
    #         language_code: "en-GB", 
    #         language_name: "British English", 
    #         name: "Brian", 
    #       }, 
    #       {
    #         gender: "Female", 
    #         id: "Amy", 
    #         language_code: "en-GB", 
    #         language_name: "British English", 
    #         name: "Amy", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_voices({
    #     language_code: "cy-GB", # accepts cy-GB, da-DK, de-DE, en-AU, en-GB, en-GB-WLS, en-IN, en-US, es-ES, es-US, fr-CA, fr-FR, is-IS, it-IT, ko-KR, ja-JP, nb-NO, nl-NL, pl-PL, pt-BR, pt-PT, ro-RO, ru-RU, sv-SE, tr-TR
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.voices #=> Array
    #   resp.voices[0].gender #=> String, one of "Female", "Male"
    #   resp.voices[0].id #=> String, one of "Geraint", "Gwyneth", "Mads", "Naja", "Hans", "Marlene", "Nicole", "Russell", "Amy", "Brian", "Emma", "Raveena", "Ivy", "Joanna", "Joey", "Justin", "Kendra", "Kimberly", "Matthew", "Salli", "Conchita", "Enrique", "Miguel", "Penelope", "Chantal", "Celine", "Mathieu", "Dora", "Karl", "Carla", "Giorgio", "Mizuki", "Liv", "Lotte", "Ruben", "Ewa", "Jacek", "Jan", "Maja", "Ricardo", "Vitoria", "Cristiano", "Ines", "Carmen", "Maxim", "Tatyana", "Astrid", "Filiz", "Vicki", "Takumi", "Seoyeon", "Aditi"
    #   resp.voices[0].language_code #=> String, one of "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ko-KR", "ja-JP", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR"
    #   resp.voices[0].language_name #=> String
    #   resp.voices[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/DescribeVoices AWS API Documentation
    #
    # @overload describe_voices(params = {})
    # @param [Hash] params ({})
    def describe_voices(params = {}, options = {})
      req = build_request(:describe_voices, params)
      req.send_request(options)
    end

    # Returns the content of the specified pronunciation lexicon stored in
    # an AWS Region. For more information, see [Managing Lexicons][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html
    #
    # @option params [required, String] :name
    #   Name of the lexicon.
    #
    # @return [Types::GetLexiconOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLexiconOutput#lexicon #lexicon} => Types::Lexicon
    #   * {Types::GetLexiconOutput#lexicon_attributes #lexicon_attributes} => Types::LexiconAttributes
    #
    #
    # @example Example: To retrieve a lexicon
    #
    #   # Returns the content of the specified pronunciation lexicon stored in an AWS Region.
    #
    #   resp = client.get_lexicon({
    #     name: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lexicon: {
    #       content: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<lexicon version=\"1.0\" \r\n      xmlns=\"http://www.w3.org/2005/01/pronunciation-lexicon\"\r\n      xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \r\n      xsi:schemaLocation=\"http://www.w3.org/2005/01/pronunciation-lexicon \r\n        http://www.w3.org/TR/2007/CR-pronunciation-lexicon-20071212/pls.xsd\"\r\n      alphabet=\"ipa\" \r\n      xml:lang=\"en-US\">\r\n  <lexeme>\r\n    <grapheme>W3C</grapheme>\r\n    <alias>World Wide Web Consortium</alias>\r\n  </lexeme>\r\n</lexicon>", 
    #       name: "example", 
    #     }, 
    #     lexicon_attributes: {
    #       alphabet: "ipa", 
    #       language_code: "en-US", 
    #       last_modified: Time.parse(1478542980.117), 
    #       lexemes_count: 1, 
    #       lexicon_arn: "arn:aws:polly:us-east-1:123456789012:lexicon/example", 
    #       size: 503, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lexicon({
    #     name: "LexiconName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lexicon.content #=> String
    #   resp.lexicon.name #=> String
    #   resp.lexicon_attributes.alphabet #=> String
    #   resp.lexicon_attributes.language_code #=> String, one of "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ko-KR", "ja-JP", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR"
    #   resp.lexicon_attributes.last_modified #=> Time
    #   resp.lexicon_attributes.lexicon_arn #=> String
    #   resp.lexicon_attributes.lexemes_count #=> Integer
    #   resp.lexicon_attributes.size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/GetLexicon AWS API Documentation
    #
    # @overload get_lexicon(params = {})
    # @param [Hash] params ({})
    def get_lexicon(params = {}, options = {})
      req = build_request(:get_lexicon, params)
      req.send_request(options)
    end

    # Returns a list of pronunciation lexicons stored in an AWS Region. For
    # more information, see [Managing Lexicons][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html
    #
    # @option params [String] :next_token
    #   An opaque pagination token returned from previous `ListLexicons`
    #   operation. If present, indicates where to continue the list of
    #   lexicons.
    #
    # @return [Types::ListLexiconsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLexiconsOutput#lexicons #lexicons} => Array&lt;Types::LexiconDescription&gt;
    #   * {Types::ListLexiconsOutput#next_token #next_token} => String
    #
    #
    # @example Example: To list all lexicons in a region
    #
    #   # Returns a list of pronunciation lexicons stored in an AWS Region.
    #
    #   resp = client.list_lexicons({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lexicons: [
    #       {
    #         attributes: {
    #           alphabet: "ipa", 
    #           language_code: "en-US", 
    #           last_modified: Time.parse(1478542980.117), 
    #           lexemes_count: 1, 
    #           lexicon_arn: "arn:aws:polly:us-east-1:123456789012:lexicon/example", 
    #           size: 503, 
    #         }, 
    #         name: "example", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lexicons({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.lexicons #=> Array
    #   resp.lexicons[0].name #=> String
    #   resp.lexicons[0].attributes.alphabet #=> String
    #   resp.lexicons[0].attributes.language_code #=> String, one of "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ko-KR", "ja-JP", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR"
    #   resp.lexicons[0].attributes.last_modified #=> Time
    #   resp.lexicons[0].attributes.lexicon_arn #=> String
    #   resp.lexicons[0].attributes.lexemes_count #=> Integer
    #   resp.lexicons[0].attributes.size #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/ListLexicons AWS API Documentation
    #
    # @overload list_lexicons(params = {})
    # @param [Hash] params ({})
    def list_lexicons(params = {}, options = {})
      req = build_request(:list_lexicons, params)
      req.send_request(options)
    end

    # Stores a pronunciation lexicon in an AWS Region. If a lexicon with the
    # same name already exists in the region, it is overwritten by the new
    # lexicon. Lexicon operations have eventual consistency, therefore, it
    # might take some time before the lexicon is available to the
    # SynthesizeSpeech operation.
    #
    # For more information, see [Managing Lexicons][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html
    #
    # @option params [required, String] :name
    #   Name of the lexicon. The name must follow the regular express format
    #   \[0-9A-Za-z\]\\\{1,20\\}. That is, the name is a case-sensitive
    #   alphanumeric string up to 20 characters long.
    #
    # @option params [required, String] :content
    #   Content of the PLS lexicon as string data.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To save a lexicon
    #
    #   # Stores a pronunciation lexicon in an AWS Region.
    #
    #   resp = client.put_lexicon({
    #     content: "file://example.pls", 
    #     name: "W3C", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lexicon({
    #     name: "LexiconName", # required
    #     content: "LexiconContent", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/PutLexicon AWS API Documentation
    #
    # @overload put_lexicon(params = {})
    # @param [Hash] params ({})
    def put_lexicon(params = {}, options = {})
      req = build_request(:put_lexicon, params)
      req.send_request(options)
    end

    # Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes.
    # SSML input must be valid, well-formed SSML. Some alphabets might not
    # be available with all the voices (for example, Cyrillic might not be
    # read at all by English voices) unless phoneme mapping is used. For
    # more information, see [How it Works][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html
    #
    # @option params [Array<String>] :lexicon_names
    #   List of one or more pronunciation lexicon names you want the service
    #   to apply during synthesis. Lexicons are applied only if the language
    #   of the lexicon is the same as the language of the voice. For
    #   information about storing lexicons, see [PutLexicon][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html
    #
    # @option params [required, String] :output_format
    #   The format in which the returned output will be encoded. For audio
    #   stream, this will be mp3, ogg\_vorbis, or pcm. For speech marks, this
    #   will be json.
    #
    # @option params [String] :sample_rate
    #   The audio frequency specified in Hz.
    #
    #   The valid values for `mp3` and `ogg_vorbis` are "8000", "16000",
    #   and "22050". The default value is "22050".
    #
    #   Valid values for `pcm` are "8000" and "16000" The default value is
    #   "16000".
    #
    # @option params [Array<String>] :speech_mark_types
    #   The type of speech marks returned for the input text.
    #
    # @option params [required, String] :text
    #   Input text to synthesize. If you specify `ssml` as the `TextType`,
    #   follow the SSML format for the input text.
    #
    # @option params [String] :text_type
    #   Specifies whether the input text is plain text or SSML. The default
    #   value is plain text. For more information, see [Using SSML][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/polly/latest/dg/ssml.html
    #
    # @option params [required, String] :voice_id
    #   Voice ID to use for the synthesis. You can get a list of available
    #   voice IDs by calling the [DescribeVoices][1] operation.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html
    #
    # @return [Types::SynthesizeSpeechOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SynthesizeSpeechOutput#audio_stream #audio_stream} => IO
    #   * {Types::SynthesizeSpeechOutput#content_type #content_type} => String
    #   * {Types::SynthesizeSpeechOutput#request_characters #request_characters} => Integer
    #
    #
    # @example Example: To synthesize speech
    #
    #   # Synthesizes plain text or SSML into a file of human-like speech.
    #
    #   resp = client.synthesize_speech({
    #     lexicon_names: [
    #       "example", 
    #     ], 
    #     output_format: "mp3", 
    #     sample_rate: "8000", 
    #     text: "All Gaul is divided into three parts", 
    #     text_type: "text", 
    #     voice_id: "Joanna", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     audio_stream: "TEXT", 
    #     content_type: "audio/mpeg", 
    #     request_characters: 37, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.synthesize_speech({
    #     lexicon_names: ["LexiconName"],
    #     output_format: "json", # required, accepts json, mp3, ogg_vorbis, pcm
    #     sample_rate: "SampleRate",
    #     speech_mark_types: ["sentence"], # accepts sentence, ssml, viseme, word
    #     text: "Text", # required
    #     text_type: "ssml", # accepts ssml, text
    #     voice_id: "Geraint", # required, accepts Geraint, Gwyneth, Mads, Naja, Hans, Marlene, Nicole, Russell, Amy, Brian, Emma, Raveena, Ivy, Joanna, Joey, Justin, Kendra, Kimberly, Matthew, Salli, Conchita, Enrique, Miguel, Penelope, Chantal, Celine, Mathieu, Dora, Karl, Carla, Giorgio, Mizuki, Liv, Lotte, Ruben, Ewa, Jacek, Jan, Maja, Ricardo, Vitoria, Cristiano, Ines, Carmen, Maxim, Tatyana, Astrid, Filiz, Vicki, Takumi, Seoyeon, Aditi
    #   })
    #
    # @example Response structure
    #
    #   resp.audio_stream #=> IO
    #   resp.content_type #=> String
    #   resp.request_characters #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/SynthesizeSpeech AWS API Documentation
    #
    # @overload synthesize_speech(params = {})
    # @param [Hash] params ({})
    def synthesize_speech(params = {}, options = {}, &block)
      req = build_request(:synthesize_speech, params)
      req.send_request(options, &block)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-polly'
      context[:gem_version] = '1.4.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
