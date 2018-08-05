*** Settings ***
Library           Selenium2Library
Suite Setup       Open browser google
Test Setup        Go to google
Suite Teardown    Close Browser
*** Variables ***
${BASEURL}    http://www.google.com
${BROWSER}    chrome

*** Testcases ***
Search Robotframework on google
  Key input    robotframework
  Press
  Verify result    robotframework.org

Search Atom on google
  Key input    atom
  Press
  Verify result    atom

*** Keywords ***
Open browser google
  Open Browser    ${BASEURL}

Key input
  [Arguments]    ${keyword}
  Input Text    name=q    ${keyword}

Go to google
  Go To    ${BASEURL}

Press
  Click Button    btnG

Verify result
  [Arguments]    ${Expected}
  Wait Until Page Contains     ${Expected}
