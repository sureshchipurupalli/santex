class ContactPage < ApplicationRecord
 validates_presence_of  :email, :first_name, :last_name, :phone, :do_you_have_land, :moving_time_frame, :financing, :town_planning_to_build, :state, :assist_you, :message => 'Please fill the details'
 validates_numericality_of     :phone,
                              :only_integer => true,:message => ' number must be only integers',
                              :allow_nil => false

 validates_length_of :phone,
                      :minimum => 10 ,         # more than 8 characters
                      :maximum => 10 ,:message => ' number must have 10 numbers'

   validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :message => 'Please enter a valid email'

end
