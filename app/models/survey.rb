class Survey < ActiveRecord::Base
	validates :faculty, :q1Ans, :q2Ans, :q3Ans, presence: true { message: "Input fields should not be empty" }
	validates :deviceId, uniqueness: true { message: "cannot submit survey more than once."}

end
