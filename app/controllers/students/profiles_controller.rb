class Students::ProfilesController < Students::BasesController
  
  def new
    @student = current_student
    @photo = Attachment.new(:a_type => "photo")
  end
  
  def create
    @student = Student.find(current_student.id)
    @student.update_attributes(params[:student])
    @photo = @student.attachments.build(params[:photo])
    debugger
    if @student.save
      flash[:notice] = "Update Success!"
      path =  edit_students_profile_path(@student)
    else
      flash[:notice] =  "Update Fail,please try again!"
      path = new_students_profile_path()
    end
    redirect_to path
  end
  
  def edit
    @student = Student.find(current_student.id)
    @photo = @student.photo_attachment
  end
  
  def update
    
    @student = Student.find(current_student.id)
    @student.update_attributes(params[:student])
    debugger
    @photo = @student.attachments.find_by_id(params[:photo_id])
    @photo.update_attributes(params[:photo])
    # @student.save
    redirect_to edit_students_profile_path(@student)
  end
  
  def update_file
    @student = Student.find(current_student.id)
    @student.update_attributes(params[:student])
    if not params[:photo_id].blank?
      @student.attachments.find_by_id(params[:photo_id]).destroy
    end
    puts "here"
    @photo = @student.attachments.build(params[:photo])
    # flash[:notice] =  (@student.save ? "Success" : "Fail")
    debugger
      begin
        @student.save
        flash[:notice] = "Success"
      rescue  Exception => e
        puts e
        flash[:notice] = "Fail"
        debugger
      end       
      
    redirect_to edit_students_profile_path(@student)
  end
  
end
