require 'somemoji'

module Middleman
  module Somemoji
    class Converter
      def initialize(body, options)
        @body         = body
        @provider     = options[:provider]
        @format       = options[:format]
        @emoji_class  = options[:emoji_class]
        @emojis_dir   = options[:emojis_dir]
      end

      def convert
        eval("::Somemoji::#{@provider}_emoji_collection").replace_code(@body) do |emoji|
          %(<img alt="#{emoji.character}" class="#{@emoji_class}" src="#{@emojis_dir}/#{emoji.base_path}.#{@format}">)
        end
      end
    end
  end
end
