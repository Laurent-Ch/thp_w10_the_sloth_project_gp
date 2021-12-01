module ApplicationHelper
	def bootstrap_class_for_flash(type)
	  case type
	    when 'notice' then "alert-success"
	    when 'success' then "alert-success"
	    when 'error' then "alert-danger"
	    when 'alert' then "alert-danger"
	  end
	end

end
