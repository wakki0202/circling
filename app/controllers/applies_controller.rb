class AppliesController < ApplicationController

  def index
  end

  def show

  end
  

  def new
  
     @circle = Circle.find(params[:circle_id])
     @apply = Apply.new
  end

  def create
      @circle = Circle.find(params[:circle_id])
      @apply = Apply.new(
        apply_params ) #provider=事業者 #work=案件undefined method `email' for nil:NilClass
      
  
      
      if  @apply.save
          ApplyMailer.complete_apply(@apply,@current_user).deliver
          redirect_to circles_path
      else
          render :new  #同上
      end
    end

    private

  def apply_params

    params.require(:apply).permit(:name, :appeal,:user_id,:circle_id).merge(user_id: current_user.id,circle_id: params[:circle_id]) #ストロングパラメーターで、
  end 
end
