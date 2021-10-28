require 'somemoji'

module Middleman
  module Somemoji
    class Converter
      def initialize(options)
        @provider     = options[:provider]
        @format       = options[:format]
        @emoji_class  = options[:emoji_class]
        @emojis_dir   = options[:emojis_dir]
      end

      def convert(app)
        files = Dir.glob(File.join(app.config[:build_dir], "**", "*.html"))
        files.each do |file|
          body = eval("::Somemoji::#{@provider}_emoji_collection").replace_code(File.read(file)) do |emoji|
            %(<img alt="#{emoji.character}" class="#{@emoji_class}" src="#{@emojis_dir}/#{emoji.base_path}.#{@format}">)
          end
          File.open(file, 'w') do |f|
            f.write body
          end
        end
      end
    end
  end
end
