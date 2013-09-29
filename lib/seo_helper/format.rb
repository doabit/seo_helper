module SeoHelper
  def self.format_current_page(title, page_number)
    self.configuration.pagination_formatter.call(self.format_text(title), page_number)
  end

  def self.format_site_name(text, site_name)
    self.configuration.site_name_formatter.call(self.format_text(text), site_name)
  end

  def self.format_text(text)
    text.is_a?(Array) ? text.join(SeoHelper.configuration.separator) : text
  end
end