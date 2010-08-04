# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def button_to_remove_fields(f)
    f.hidden_field(:_destroy ) + link_to_function('remove', 'remove_fields(this)')
  end
  def link_to_add_fields(name, f, association, clear = false)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    if clear.blank?
      link_to_function(name, h("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"))
    else
      link_to_function(name, h("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"), {}, {:class => 'multibreak'})
    end
  end
  
  def email_shortner(email)
    unless email.blank?
			out = '<a href="mailto:' + email + '">'
			if email.length > 15
			  out += email.slice(0,10) + '&hellip;' + email.slice(-5,5)
			else
				out += email
			end
			out += '</a>'
	  end
  end
  
end
