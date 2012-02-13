class Event < ActiveRecord::Base
  validates :title, :hour_begin, :date_begin, :presence => true
  validates :link, :format => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix }, :allow_nil => true
  
  def begin
    hour_begin.strftime("%H:%M")
  end
  
  def end
    hour_end.strftime("%H:%M")
  end
end
