class Teachers::SessionsController < Devise::SessionsController
  
  def after_sign_in_path_for(resource)
    if current_teacher.first_name.blank?
       new_teachers_profile_path()
    else
       teachers_homes_path
    end
  end
  
  def after_sign_out_path_for(resource)
    new_teacher_session_path
  end
  
end
