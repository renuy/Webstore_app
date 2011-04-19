class RegistrationsController < Devise::RegistrationsController
  before_filter :authenticate_user!, :only=>[:add, :show]
  def new
    super
  end
  def create
    super
    #session[:omniauth] = nil unless @user.new_record?
  end

  def update
    super
  end
  
  def show
    @user = current_user  
  end
  
  def add 
    @user = User.new
    @parent = current_user
    @user.parent_id =  @parent.id
    sign_out_all_scopes
    
  end
end 