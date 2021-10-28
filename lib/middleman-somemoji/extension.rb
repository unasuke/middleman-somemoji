require 'middleman-core'
require 'middleman-somemoji/converter'

module Middleman
  module Somemoji
    class Extension < ::Middleman::Extension
      option :provider,     'apple',         %[Emoji provider (default is 'apple')]
      option :format,       'png',           %[Emoji format (default is 'png')]
      option :emoji_class,  'emoji',         %[<img> tag class (default is 'emoji')]
      option :emojis_dir,   '/images/emoji', %[Emoji images directory path (default is '/images/emoji')]

      def initialize(app, options_hash={}, &block)
        super
        @options = options
      end

      def after_build(builder)
        ::Middleman::Somemoji::Converter.new(@options).convert(app)
      end
    end
  end
end
