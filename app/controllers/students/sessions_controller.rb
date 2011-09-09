class Students::SessionsController < Devise::SessionsController
  
  
  def after_sign_in_path_for(resource)
    if current_student.first_name.blank?
       new_students_profile_path()
    else
       students_homes_path
    end
  end
  
  def after_sign_out_path_for(resource)
    new_student_session_path
  end
end
