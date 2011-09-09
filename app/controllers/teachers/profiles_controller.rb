class Teachers::ProfilesController < Teachers::BasesController
  
  def new
    @teacher = current_teacher
    @photo = Attachment.new(:a_type => "photo")
    @certification = Attachment.new(:a_type => "certification")
    @resume = Attachment.new(:a_type => "resume")
  end
  
  def create
    @teacher = Teacher.find(current_teacher.id)
    @teacher.update_attributes(params[:teacher])
    @photo = @teacher.attachments.build(params[:photo])
    @certification = @teacher.attachments.build(params[:certification])
    @resume = @teacher.attachments.build(params[:resume])
    if @teacher.save
      flash[:notice] = "Update Success!"
      path =  edit_teachers_profile_path(@teacher)
    else
      flash[:notice] =  "Update Fail,please try again!"
      path = new_teachers_profile_path()
    end
    redirect_to path
  end
  
  def edit
    @teacher = current_teacher
    @photo = @teacher.attachments.of_type("photo").first
    @certification = @teacher.attachments.of_type("certification").first
    @resume = @teacher.attachments.of_type("resume").first    
  end
  
  def update
    @teacher = Teacher.find(current_teacher.id)
    @teacher.update_attributes(params[:teacher])
    
    # => TODO : make update attachment work
    # @photo = @teacher.attachments.find_by_id(params[:photo_id])
    # @photo.update_attributes(params[:photo])
    
    redirect_to edit_teachers_profile_path(@teacher)
  end
  
end
