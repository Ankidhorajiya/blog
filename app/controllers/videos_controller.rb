class VideosController < ApplicationController
	

	def create
		@video = Video.create(video_params)
		if @video.save
			redirect_to @video
		else
			render 'new'
		end
	end
	

	def new
		@video = Video.new
	end 
	
	protected

	def video_params
		params.require(:video).permit(:description, :video)
	end

end
