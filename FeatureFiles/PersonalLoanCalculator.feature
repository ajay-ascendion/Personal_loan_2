Feature: Personal Loan Calculator
  As a user,
  I want to use the Personal Loan Calculator,
  So that I can estimate my loan payments and understand my options.

  Scenario: Verify Calculator Page Loads
    Given the user has internet access
    When the user navigates to "https://www.experian.com/blogs/ask-experian/personal-loan-calculator/"
    Then the calculator page loads with all UI elements visible

  Scenario: Verify Loan Amount Input Field
    Given the calculator page is loaded
    When the user enters a valid loan amount (e.g., 10000) in the loan amount field
    Then the loan amount is accepted and displayed correctly

  Scenario: Verify Interest Rate Input Field
    Given the calculator page is loaded
    When the user enters a valid interest rate (e.g., 5) in the interest rate field
    Then the interest rate is accepted and displayed correctly

  Scenario: Verify Loan Term Input Field
    Given the calculator page is loaded
    When the user enters a valid loan term (e.g., 5 years) in the loan term field
    Then the loan term is accepted and displayed correctly

  Scenario: Calculate Monthly Payment
    Given all input fields are filled
    When the user enters loan amount, interest rate, and loan term
    And the user clicks 'Calculate'
    Then the monthly payment is calculated and displayed correctly

  Scenario: Validate Input Field Errors
    Given the calculator page is loaded
    When the user leaves the loan amount blank or enters a non-numeric value
    And the user clicks 'Calculate'
    Then an appropriate error message is displayed for the loan amount field

  Scenario: Validate Negative Input Handling
    Given the calculator page is loaded
    When the user enters negative values in loan amount, interest rate, or loan term fields
    And the user clicks 'Calculate'
    Then an error message is displayed and calculation is not performed

  Scenario: Validate Zero Input Handling
    Given the calculator page is loaded
    When the user enters zero in loan amount, interest rate, or loan term fields
    And the user clicks 'Calculate'
    Then an error message is displayed and calculation is not performed

  Scenario: Verify Reset/Clear Functionality
    Given all input fields contain data
    When the user clicks the 'Reset' or 'Clear' button
    Then all input fields are cleared

  Scenario: Verify Amortization Schedule Display
    Given a calculation is performed
    When the user scrolls to the amortization schedule section
    Then the amortization schedule is displayed with correct values

  Scenario: Validate UI Responsiveness
    Given the user accesses the calculator
    When the user opens the calculator on desktop, tablet, and mobile devices
    Then the calculator layout adjusts correctly for all device sizes

  Scenario: Validate Accessibility Features
    Given the calculator page is loaded
    When the user navigates using keyboard only
    And the user uses a screen reader to interact with the calculator
    Then all elements are accessible via keyboard and screen reader

  Scenario: Verify Help/Tooltip Functionality
    Given the calculator page is loaded
    When the user hovers over or focuses on input fields
    Then appropriate help or tooltips are displayed for each input field

  Scenario: Validate Calculation with Large Numbers
    Given the calculator page is loaded
    When the user enters large values (e.g., 1,000,000) in input fields
    And the user clicks 'Calculate'
    Then the calculation is performed without errors and results are displayed correctly

  Scenario: Validate Calculation with Decimal Values
    Given the calculator page is loaded
    When the user enters decimal values (e.g., 10000.50, 5.25) in input fields
    And the user clicks 'Calculate'
    Then the calculation is performed and results are displayed with correct precision
