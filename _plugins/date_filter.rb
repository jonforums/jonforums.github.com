require 'date'

module Jekyll
  module DateFilter

    def to_xmlschema(input)
      case input
      when Time
        # FIXME not quite correct
        input.strftime('%F')
      when String
        DateTime.xmlschema(input)
      end
    end

  end
end

Liquid::Template.register_filter(Jekyll::DateFilter)
