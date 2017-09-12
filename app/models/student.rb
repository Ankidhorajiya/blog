class Student < ActiveRecord::Base
	has_attached_file :photo, 
	styles: {:small => "150x150>"}, 
		:url  => "/assets/students/:id/:style/:basename.:extension",
		default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  	has_attached_file :video,
  		:styles => { :medium => { :geometry => "", :format => 'mp4' },
    	:thumb => { :geometry => "100x100#", :format => '3gp', :time => 10 }}, processors: [:transcoder],
    	
  validates_attachment_content_type :video, content_type: /\Avideo\/.*\Z/
  validates_attachment :video, size: {less_than: 130.megabytes}	
   
  
  
end
