class Video < ActiveRecord::Base

	has_attached_file :video,
  		:styles => { :medium => { :geometry => "", :format => 'mp4' },
    	:thumb => { :geometry => "160x120", :format => 'jpeg', :time => 10 }},
    	:processors => [:transcoder]

 	validates_attachment_content_type :video, content_type: /\Avideo\/.*\Z/
  validates_attachment :video, size: {less_than: 130.megabytes}	
   
  

end
