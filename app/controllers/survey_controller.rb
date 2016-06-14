class SurveyController < ApplicationController
	def new
    	@survey = Survey.new
	end

	def create
	    @survey = Survey.new(test_params)

	    respond_to do |format|
	      if @survey.save
	        render status: 201
	      else
	        format.html { render :new }
	        format.json { render json: @test.errors, status: :unprocessable_entity }
	      end
	    end
	end
	private 
		def survey_params
			params.require(:survey).permit(:deviceId, :faculty, :q1Ans, :q2Ans, :q3Ans)
		end
end
