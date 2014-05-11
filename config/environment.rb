# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Fitnessmngmnt::Application.initialize!
Time::DATE_FORMATS[:appt_time] = "%I:%M %P"