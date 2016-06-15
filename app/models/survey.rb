class Survey < ActiveRecord::Base
	# validates ,   presence: { message: "Input fields should not be empty." }
	has_and_belongs_to_many :q3_ans
	validates :deviceId, presence: true, uniqueness: { scope: :faculty, message: "Survey can be submitted only once."}, allow_nil: true
	validates :faculty, presence: { message: "Please fill in your faculty."}
	validates :q1Ans, presence: { message: "Please select an answer." }
	validate :is_q2_ans_selected, :require_at_least_one_ans

	private
	def is_q2_ans_selected
		unless @q2An1.present? || @q2Ans2.present? || @q2Ans3.present? || @q2Ans4.present? || @q2Ans5.present?
			errors.add(:q2Ans, "Please select at least one answer for question 2.")
		end
	end
	
	def require_at_least_one_ans
		if q3_ans.length == 0
			errors.add(:q3Ans, "Please select at least one answer for question 3.")
		end

	end
	
end
