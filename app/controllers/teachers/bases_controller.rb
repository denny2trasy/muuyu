class Teachers::BasesController < ApplicationController
  layout "teacher"
  before_filter :check_teacher
  private
  def check_teacher
    if current_teacher.blank?
      redirect_to new_teacher_session_path()
    else
      return true
    end
  end
end
