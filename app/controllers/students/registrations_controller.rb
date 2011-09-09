class Students::RegistrationsController < Devise::RegistrationsController
  
  
  
  def after_inactive_sign_up_path_for(resource)
    flash[:notice] = "Please check your email, active your account and login system here!"
    new_student_session_path()
  end
  
end
