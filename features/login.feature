Feature: Login & logout
In order to use the demo
As a user
I want to login and logout

	# Si no estoy identificado, muéstrame un enlace para identificarme
	Scenario: View link to the login page when I am not logged in
		Given I am logged out
		 When I am on the home page
		 Then I should see "Log in" as link
			And this link should go to the login page

@current
	Scenario: Don't show link to the login page when we are not logged in
		Given I am logged in
		 When I am on the home page
		 Then I should not see "Log in"

	# Comprobaciones básicas: título y descripción
	Scenario: the login page should have description
		 When I am on the login page
		 Then I should see "Log in"
			And I should see "User access"

	# Comprobar que existe un enlace para recordar la clave, en el formulario de autenticación
	Scenario: I should see a link to remember my password in the login page
		Given I am on the login page
		 Then I should see "Forgot your username and password? click here!" as link
			And this link should go to the remember password page

	Scenario: login should show a wellcome message
		Given I am on the login page
		 When I fill the login form correctly
		 Then I should see "Hello Marty!"
			And I should see the welcome message for this user

	Scenario: When I try to login with bad username/email I should see an error
		Given I am on the login page
		  And I fill in "Username or Email address" with "usuario*inventado"
		  And I fill in "Password" with "cualquiera"
		 When I press "Sign in"
		 Then I should not see "Wellcome"
		  And I should see "The User specified does not exist. Go back and try again."

