class Teachers::RegistrationsController < Devise::RegistrationsController
  
  def after_inactive_sign_up_path_for(resource)
    flash[:notice] = "Please check your email, active your account and login system here!"
    new_teacher_session_path()
  end
  
end
