class Appointment < ActiveRecord::Base

	def appt_time_string
		appt_time.to_s(:db)
	end

	def appt_time_string=(appt_time_str)
		self.appt_time = Time.parse(appt_time_str)
	end
end
