# encoding: UTF-8

Then /^the "([^"]*)" field(?: within (.*))? should be valid$/ do |field, parent|
  with_scope(parent) do
    @field = find_field(field)
    assert page.evaluate_script("document.getElementById(\""+ @field[:id] +"\").validity.valid == true;")
  end
end

Then /^the "([^"]*)" field(?: within (.*))? should not be valid$/ do |field, parent|
  with_scope(parent) do
    @field = find_field(field)
    assert page.evaluate_script("document.getElementById(\""+ @field[:id] +"\").validity.valid == false;")
  end
end

Then(/^the field error should be patternMismatch$/) do
  assert page.evaluate_script("document.getElementById(\""+ @field[:id] +"\").validity.patternMismatch == true;")
end

Then(/^the field error should be valueMissing$/) do
  assert page.evaluate_script("document.getElementById(\""+ @field[:id] +"\").validity.valueMissing == true;")
end

Then(/^the field error should be customError$/) do
  assert page.evaluate_script("document.getElementById(\""+ @field[:id] +"\").validity.customError == true;")
end

Then(/^the field error explanation should be "(.*?)"$/) do |error_explanation|
  assert_equal error_explanation, page.evaluate_script(%-document.getElementById("#{@field[:id]}").validationMessage;-)
end

Then(/^the input "(.*?)" should not be valid$/) do |arg1|
  find()
end

Then(/^I should see "(.*?)" in "(.*?)" input$/) do |value, field|
  @field = find_field(field)
  assert_equal value, @field[:value].strip
end

Then(/^I should see "(.*?)" for "(.*?)" select$/) do |value, field|
  @field = find_field(field)
  assert_equal value, @field.find('option[selected]').text # [:value]
end

Then(/^I should see "(.*?)" as button$/) do |text|
  assert @button = page.find('button', text: text)
end

Then (/^the "([^"]*)" field(?: within (.*))? should be empty$/) do |field, parent|
  with_scope(parent) do
    field = find_field(field)
    field_value = (field.tag_name == 'textarea') ? field.text : field.value

    assert_equal '', field_value
  end
end
