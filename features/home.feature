Feature: The home page

  Scenario: The home page should doesn't have errors
     When I am on the home page
     Then I should not see "Error"

  Scenario: The home page should have main title and description
     When I am on the home page
     Then I should see "DeLorean Ipsum"
      And I should see "Well, because George, nice girls get angry when guys take advantage of them. Doc?"

  Scenario: The home page should have the h1 tag
     When I am on the home page
     Then I should see "DeLorean Ipsum" as h1

@current @fail
  Scenario: The home page should have links to other pages
     When I am on the home page
     Then I should see "Create account" as link
      And this link should go to the sign up page
      And I should see "Blog" as link
      And this link should go to the blog page
