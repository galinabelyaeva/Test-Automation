=begin

Then /^Go to Amazon homepage$/ do
  driver = $driver
  driver.get "http://www.amazon.com/"
end
=end



=begin
LOCATORS: xpath, id, css, link, name and DOM.
Feature and scenario are reserved words
driver is how we call Selenium WebDriver

element = $driver.find_element :xpath => ""
element = $driver.find_element :id => ""


Then /^Login into Facebook$/ do
  driver = $driver
  driver.get "http://www.facebook.com/"
end

=end

=begin
Then /^Launch Toysrus website$/ do
  $driver.get "http://www.toysrus.com/"
  $driver.manage.window.maximize
  sleep 3
end
=end


Then /^Launch Toysrus website$/ do
  $driver.get $basicurl
  $driver.manage.window.maximize
  sleep 3
end



Then /^Click the category Age$/ do
  element = $driver.find_element :xpath => "//a[@class = ' mainNavLink mainNavLink2' and text() = 'Age']"
  element.click
  sleep 3
end

Then /^Click the category Outdoor Play$/ do
  element = $driver.find_element :xpath => "//a[@class = ' mainNavLink mainNavLink11' and text() = 'Outdoor Play']"
  element.click
  sleep 3
end



Then /^Click the subcategory ([^"]*)$/ do |subcategory_name| # subcategory_name is variable name, ([^"]*) is variable value that's passed into the variable name
  # element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = '#{subcategory_name}']"
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[contains(text(),'#{subcategory_name}')]"
  element.click
  sleep 3
end

Then /^Click the subcategory Boys' Toys$/ do
  element = $driver.find_element :xpath => "//a[@class = ' mainNavLink mainNavLink0' and text() = \"Boys' Toys\"]" #treat single quote as a regular character
  element.click
  sleep 3
end

Then /^Click the subcategory Girls' Toys$/ do
  element = $driver.find_element :xpath => "//a[@class = ' mainNavLink mainNavLink1' and text() = \"Girls' Toys\"]" #treat single quote as a regular character
  element.click
  sleep 3
end

=begin
Then /^Click the subcategory Swing Sets$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Swing Sets']"
  element.click
  sleep 5
end


Then /^Click the subcategory Swings$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Swings']"
  element.click
  sleep 5
end

Then /^Click the subcategory Climbers$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Climbers']"
  element.click
  sleep 5
end

Then /^Click the subcategory Action Figures$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Action Figures']"
  element.click
  sleep 5
end

Then /^Click the subcategory Arts & Crafts$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Arts & Crafts']"
  element.click
  sleep 5

end
=end

Then /^Select the ([^"]*) item on the page$/ do |item_by_index|
  element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])['#{item_by_index}']"
  element.click
  sleep 3
end

=begin
Then /^Click the Add to Cart button$/ do
  element = $driver.find_element :id => "cartAddition"
  element.click
  sleep 5
end
=end


Then /^Click the ([^"]*) button$/ do |button|  # In cucumber file, we have to name the button by its id so that the variable value is passed. For example: cartAddition.
  element = $driver.find_element :id => button
  element.click
  sleep 3
end


Then /^Click Shop by button$/ do
  element = $driver.find_element :xpath => "//a[@class = 'navButton']"
  element.click
  sleep 3
end

Then /^Verify items added to the cart: ([^"]*)$/ do |number_of_items|
  $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '#{number_of_items}']"
end

=begin
Then /^Verify items added to the cart: 2$/ do
  $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '2']"
end

Then /^Verify items added to the cart: 3$/ do
  $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '3']"
end
=end


Then /^Navigate to Gift Finder tab$/ do
  element = driver.find_element :xpath => "//li[@class = 'giftFinder headerTip']/a[contains(text(), 'Gift Finder')]"
  element.click
  sleep 3
end


Then /^Verify the gift finder$/ do
  $driver.switch_to.frame "onmiTest" #iframe's id
  $driver.find_element :xpath => "//span[@class = 'hideSmall']"
  $driver.switch_to.default_content

end

=begin
Then /^Click the subcategory 2-4 Years$/ do
  #element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text()= '2-4 Years']"
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[contains(text(),'2-4 Years')]" # syntax for additional tags in the middle
  #element = driver.find_element :xpath => "//a[@class='hdrMenuCat'][contains(text(),'2 - 4 Years')]" syntax for no additional tags in the middle
  element.click

end
=end

=begin

CONTAINS TEXT XPATH $x("//div[@class = 'sliderWrapper']/p/a[contains(text(), 'Big')]")

Embedded tags: /p/a - going level down

ABSOLUTE VS RELEVANT XPATH

Relevant makes the tests run faster, it's simple, elegant and gives us better idea of the element.
Absolute - unstable because HTML structure can change, makes the tests run slower.


IFRAMES
All iframes have ids

Then /^How to deal with iframes$/ do
  $driver.switch_to.frame "onmiTest" # this is iframe's id, we are entering the iframe
  $driver.find_element :xpath => "//span[@class = 'hideSmall']"
  $driver.switch_to.default_content # we are exiting the iframe

end


=end

