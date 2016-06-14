class Survey < ActiveRecord::Base
	validates :faculty, :q1Ans, :q2Ans, :q3Ans,  presence: { message: "Input fields should not be empty" }
	validates :deviceId, uniqueness: { message: "Survey cannot submitted only once."}

end
