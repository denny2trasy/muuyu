class Students::BasesController < ApplicationController
  layout "student"
  before_filter :check_student
  private
  def check_student
    if current_student.blank?
      redirect_to new_student_session_path()
    else
      return true
    end
  end
end
