class SurveyController < ApplicationController

	def new
    	# @survey = Survey.new
    	if session[:survey]
    		@survey = Survey.new(survey_params)
    		session[:survey] = nil
    		@survey.valid?
    	else
    		@survey = Survey.new
    	end
	end

	def create

	    @survey = Survey.new(survey_params)
	    
	    respond_to do |format|
	      if @survey.save
	        format.html { render :file => "#{Rails.root}/public/201.html" , :layout => false}
	        # format.html { redirect_to :file => "#{Rails.root}/public/201.html" }
	      else
	        format.html { render :new }
	        format.json { render json: @test.errors, status: :unprocessable_entity }
	      end
	    end
	end
	private 
		def survey_params
			params.require(:survey).permit(:deviceId, :faculty, :q1Ans, :q2Ans1, :q2Ans2, :q2Ans3, :q2Ans4, :q2Ans5, q3_an_ids:[])
		end
end
