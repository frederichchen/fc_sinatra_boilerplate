module ApplicationHelpers
  def css(stylesheets)
    stylesheets.map do |stylesheet| 
      "<link href=\"css/#{stylesheet}.css\" media=\"screen, projection\" rel=\"stylesheet\" />"
    end.join("\n")
  end

  def jscripts(scripts)
    scripts.map do |script|
      "<script src=\"js/#{script}.js\" type=\"text/javascript\"></script>"
    end.join("\n")
  end
end
