class Admin::ListItemsController < ApplicationController
  before_filter :get_item,  :only => [:edit,:update,:destroy]
  
  def index
    @items = ListItme.all
  end
  
  def create
    flash[:notice] = ListItme.create(params[:list_itme]) ? "Success" : "Fail"
    redirect_to admin_list_items_path
  end
  

  
  def update
    flash[:notice] = @list_itme.update_attributes(params[:list_itme]) ? "Success" : "Fail"
    redirect_to admin_list_items_path
  end
  
  def destroy
    flash[:notice] = @list_itme.destroy ? "Success" : "Fail"
  end
  
  def ajax_create
    @flag = params[:flag] || "student"
    ListItme.create(:list_type => params[:list_type],:value_en => params[:value_en])
    @items = ListItme.list_of_type(params[:list_type])
  end
  
  private
  def get_item
    @list_itme = ListItme.find_by_id(params[:id])
  end
  
end
