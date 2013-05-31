module Jekyll
  class AllPagesTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      @pages = Dir.glob('*.md')
    end

    def render(context)
      transform_pages_to_list
    end

    private

    def transform_pages_to_list
      ul = '<ul>'
      @pages.each do |page|
        ul << transform_page_to_li(page)
      end
      ul << '</ul>'
    end

    def transform_page_to_li(page)
      "<li>#{link_for_page(page)}</li>"
    end

    def link_for_page(page)
      "<a href='#{page_without_extension(page)}.html'>#{page_name(page)}</a>"
    end

    def page_name(page)
      page_without_extension(page).gsub('_', ' ')
    end

    def page_without_extension(page, ext = '.md')
      page.gsub ext, ''
    end
  end
end

Liquid::Template.register_tag('show_all_pages', Jekyll::AllPagesTag)
