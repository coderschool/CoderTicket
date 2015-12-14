class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :category

  validates_presence_of :extended_html_description, :venue, :category, :start_time
end
