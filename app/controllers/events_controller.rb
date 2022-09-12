class EventsController < ApplicationController
def index
  @events = Event.all
end

def new
  @event = Event.new
end

def create 
   @event = Event.new(
        event_params ) #provider=事業者 #work=案件undefined method `email' for nil:NilClass
      
  
      
      if  @event.save
          redirect_to events_path
      else
          render :new  #同上
      end
end

def show
  @event = Event.find(params[:id])
end

def edit

end

def update

end

def destroy

end

def event_params

    params.require(:event).permit(:id, :title, :content).merge(user_id: current_user.id) #ストロングパラメーターで、
end 

def pay
  Payjp.api_key = "
sk_test_9f316d2669c090dc56be382b"
  Payjp::Charge.create(
    :amount => params[:amount],
    :card => params['payjp-token'],
    :currency => 'jpy'
  )
end

end
