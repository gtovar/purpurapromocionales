module ApplicationHelper
  def cp(path)                                          
    "active" if current_page?(path)                                       
  end                                                                           

  def cp2(path)                                          
    "class=m-active" if current_page?(path)                                       
  end                                                                           

  def title(page_title)                        
    content_for :title, page_title.to_s 
  end     
end
