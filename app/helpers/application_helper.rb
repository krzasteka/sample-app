module ApplicationHelper
  #return a title on a per-page basis.
  def title
    base_title = "Ruby on rails Tutorial Sample app"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
end
