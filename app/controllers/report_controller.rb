class ReportController < ApplicationController
	before_action :authenticate_user!

	def index
		@surveys = Survey.order('created_at DESC')
		
		respond_to do |format|
			format.html
			format.xlsx {
				response.headers['Content-Disposition'] = 'attachment; filename="survey_records.xlsx"'
			}
		end
	end
end
