class StudentsController < ApplicationController
	
	def index
		@student = Student.all
	end
	
	def create
		p student_params
		@student = Student.create(student_params)

		if @student.save
			redirect_to @student, notice: 'successful'
		else
			render 'new'
		end
	end    

	def show
		 @student = Student.find(params[:id])	
	end

 	def new 
	 	@student = Student.new
	end

	def edit
	end


	protected

	def student_params
		params.require(:student).permit(:name, :photo, :video)
	end

end
