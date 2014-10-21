module ApplicationHelper
	def is_active?(link_path)
		puts request.fullpath
		puts link_path
  		if (request.fullpath == link_path) then 
  			"active"
  		elsif ((request.fullpath.include? 'course') &&  (link_path.include? 'course' ))
  			"active"
  		end
	end
end