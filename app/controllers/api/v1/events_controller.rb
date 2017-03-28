class Api::V1::EventsController < Api::V1::BaseController
  def index
  respond_with Event.all
end

def create
  respond_with :api, :v1, Event.create(event_params)
end

def destroy
  respond_with Event.destroy(params[:id])
end

def update
  event = Event.find(params["id"])
  event.update_attributes(event_params)
  respond_with event, json: event
end

private

def event_params
  params.require(:event).permit(:id, :name)
end
end
