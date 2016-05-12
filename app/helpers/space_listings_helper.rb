module SpaceListingsHelper

  def style_page_info(text)
     text.gsub!(/Displaying space listings /, 'Show ')
     text.gsub!(/<b>/, '<strong>')
     text.gsub!(/<\/b>/, "<\/strong>")
     text.gsub!(/in total/, 'result.')
     text.html_safe
  end
end
