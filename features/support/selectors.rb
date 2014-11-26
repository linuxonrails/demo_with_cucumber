module HtmlSelectorsHelpers
  # Maps a name to a selector. Used primarily by the
  #
  #   When /^(.+) within (.+)$/ do |step, scope|
  #
  # step definitions in web_steps.rb
  #
  def selector_for(locator)
    case locator

    when /^the head$/
      "head"

    when /^the page$/
      "html > body"

    when /^the header$/
      "header"

    when /^the breadcrumb$/
      "ul.breadcrumb"

    when /^a lead paragraph$/
      "p.lead"

    when /^the footer$/
      "footer"

    when /^the first header$/
      "h1"

    when /^h1$/
      "h1"

    when /^(the )?main content$/
      "[role=main]" # antes .main

    when /^sidebar$/
      "[role=sidebar]"

    when /^pagination$/
      ".pagination ul"

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #

    # You can also return an array to use a different selector
    # type, like:
    #
    #  when /the header/
    #    [:xpath, "//header"]

    # This allows you to provide a quoted selector as the scope
    # for "within" steps as was previously the default for the
    # web steps:
    when /"(.+)"/
      $1

    else
      raise "Can't find mapping from \"#{locator}\" to a selector.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(HtmlSelectorsHelpers)
