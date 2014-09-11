module ApplicationHelper
    
    def is_link_active?(clicked_controller)
      p params
      "active" if clicked_controller == params[:controller]
    end

    def user_login_links
    if user_signed_in?
      content_tag(:span, current_user.full_name, style: "color:red;") +
        (link_to "Edit", edit_user_registration_path) +
        (link_to "Log Out", destroy_user_session_path, method: :delete)
    else
      link_to "Log In", new_user_session_path
    end
  end

  def some_helper_method
    content_tag(:ul, 
      # @list_of_students.map{ |obj| "<li>#{obj}</li>" }.join("").html_safe
      @patients.map{ |obj| "<li class='#{obj}'>#{obj}</li>" }.join("").html_safe,
      class: "students_list"
    )
  end
end
