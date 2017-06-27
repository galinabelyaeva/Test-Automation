

  Feature: Regression Test


    Scenario: Go to Amazon homepage
      Then Go to Amazon homepage

    Scenario: Make sure user is able to add item to the cart
      Then Launch Toysrus website
      Then Click the category Age
      Then Click the subcategory Big Kids
      Then Select the 1 item on the page
      Then Click the cartAddition button
      Then Verify items added to the cart: 1

    Scenario: Make sure user is able to add item to the cart
      Then Launch Toysrus website
      Then Click the category Age
      Then Click the subcategory Big Kids
      Then Select the 2 item on the page
      Then Click the cartAddition button
      Then Verify items added to the cart: 2


#    Scenario: Make sure user is able to add item to the cart from Category Boys' Toys
#      Then Launch Toysrus website
#      Then Click the subcategory Boys' Toys
#      Then Click the subcategory Action Figures
#      Then Select the 1 item on the page
#      Then Click the cartAddition button
#      Then Verify items added to the cart: 2
#
#    Scenario: Make sure user is able to add item to the cart from Category Girls' Toys
#      Then Launch Toysrus website
#      Then Click the subcategory Girls' Toys
#      Then Click the subcategory Arts & Crafts
#      Then Select the 1 item on the page
#      Then Click the cartAddition button
#      Then Verify items added to the cart: 3


    Scenario: Make sure user is able to add item to the cart from Category Outdoor Play
        Then Launch Toysrus website
        Then Click the category Outdoor Play
        Then Click the subcategory Swing Sets
        Then Click the subcategory Swings
        Then Select the 1 item on the page
        Then Click the cartAddition button
        Then Click Shop by button
        Then Click the category Outdoor Play
        Then Click the subcategory Climbers
        Then Select the 1 item on the page
        Then Click the cartAddition button
        Then Verify items added to the cart: 4

    Scenario: Make sure user is able to add item to the cart from subcategory 2-4 Years
      Then Launch Toysrus website
      Then Click the category Age
      Then Click the subcategory Big Kids
      Then Select the 3 item on the page
      Then Click the cartAddition button
      Then Verify items added to the cart: 5



#    Scenario: Make sure user is able to add item to the cart from Gift Finder (iframe)
#      Then Launch Toysrus website
#      Then Navigate to Gift Finder tab
#      Then Verify the gift finder

#      What does this do?

#      Then /^How to deal with iframes$/ do
#    $driver.switch_to.frame "onmiTest" # this is iframe's id, we are entering the iframe
#    $driver.find_element :xpath => "//span[@class = 'hideSmall']"
#    $driver.switch_to.default_content # we are exiting the iframe


  #Feature: Acceptance Test
  #
  #  Scenario: Login
  #    Then Login into Facebook

  #  1. Add 2 item to the cart for category Outdoor Play from different subcategories
  #  2. Add 2 identical item to the cart for category Clearance
  #  3. Add 1 item from the category Age and 1 item from the category Outdoor Play
  #  4. Remove item from the Cart
    