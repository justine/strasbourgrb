class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
    @users_count = User.all.size
    @next_event = Event.where("date_begin >= ?", Date.today).first
    @past_events = Event.where("date_begin < ?", Date.today).order("date_begin desc")
  end
end
