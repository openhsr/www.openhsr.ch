module Jekyll
  class ToggleTag < Liquid::Block
      def initialize(tag_name, markup, tokens)
        @markup = markup
        super
      end

      def render(context)
        # Gather settings
	site = context.registers[:site]
        converter = site.find_converter_instance(::Jekyll::Converters::Markdown)

        # Render any liquid variables
        markup = Liquid::Template.parse(@markup).render(context)

        # Content: convert markdown
        the_content = converter.convert(super(context))

	# adjust headers: add css-class and content-wrapping divs.
	#  - Adding ```class=""``` here is a bit ugly; it works, because a
	#    "class"-attribute cannot exist in markdown.
	the_content = the_content.gsub(
		/<h2([^>]*)>(.*?)<\/h2>/,
		'</div>' + "\n" + '<h2\\1 class="toggable">\\2</h2>'+"\n"+'<div class="toggle">'
	)

	# remove the (unused) first </div>.
	the_content = the_content.sub(/^<\/div>/, '')

        # close last div
        the_content += "\n</div>"
      end
  end
end

Liquid::Template.register_tag('toggle', Jekyll::ToggleTag)
