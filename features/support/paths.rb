# encoding: UTF-8

module NavigationHelpers
	def path_to(page_name)
		case page_name
			when /the home\ ?page/
				"/"

			# login/logout pages
			when /^the login page$/
				"/login.php"

			# login/logout pages
			when /^the logout page$/
				"/logout.php"

			when /^the sign up page$/
				"/signup.php"

			when /^the blog page$/
				"/blog.php"

			when /^the remember password page$/
				"/new-password.php"

			else
				if page_name.start_with?('http://') || page_name.start_with?('https://') || page_name.start_with?('/')
					page_name
				else
					# Hack para ahorrarme definir todas las rutas limpias que son idénticas a como se escriben (pero con guiones)
					# nota: evitar siempre que sea posible en las rutas limpias todo caracter que no sea ASCII
					page_name =~ /the (.*) page/
					if $1.nil?
						raise "Can't find mapping from \"#{page_name}\" to a path (please, use 'the (.*) page' format)\n" +
	         				"Now, go and add a mapping in #{__FILE__}"
					else
						path_components = $1.split(/\s+/)
						"/app/#{path_components.join('-')}"
					end
				end
=begin
	      begin
	        "Now, go and add a mapping in #{__FILE__}"
	         page_name =~ /the (.*) page/
	         path_components = $1.split(/\s+/)
	         self.send('/app' + path_components.push('path').join('-').to_sym)
	         # self.send(path_components.push('path').join('_').to_sym)
	       rescue Object => e
	         raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
	         "Now, go and add a mapping in #{__FILE__}"
	       end
=end
	  end
	end
end

World(NavigationHelpers)

