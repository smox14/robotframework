*** Settings ***
Library           Selenium2Library
Resource          resources/search.robot
Resource          resources/variables.robot

Suite Setup       Open browser google
Test Setup        Go to google
Suite Teardown    Close Browser
Test Template     Search template


*** Testcases ***
Search Google Case 01    robotframework    robotframework.org
Search Google Case 02    atom              atom

*** Keywords ***
Search template
  [Arguments]    ${keyword}    ${expected result}
  Key input    ${keyword}
  Press
  Verify result    ${expected result}
