# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def email_shortner(email)
    unless email.blank?
			out = '<a href="mailto:' + email + '">'
			if email.length > 25
			  out += email.slice(0,15) + '&hellip;' + email.slice(-10,10)
			else
				out += email
			end
			out += '</a>'
	  end
  end
  
end
