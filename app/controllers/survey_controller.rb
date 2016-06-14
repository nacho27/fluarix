class SurveyController < ApplicationController
	
	private 
		def survey_params
			params.require(:survey).permit(:deviceId, :faculty, :q1Ans, :q2Ans, :q3Ans)
		end
end
