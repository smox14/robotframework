*** Settings ***
Library           Selenium2Library
Suite Setup       Open browser google
Test Setup        Go to google
Suite Teardown    Close Browser
*** Variables ***
${BASEURL}    http://www.google.com
${BROWSER}    chrome

*** Testcases ***
Search success
  [Template]    Search template
  #-----------------------------------#
  # keyword        | expected result  #
  #-----------------------------------#
  robotframework    robotframework.org
  atom              atom


*** Keywords ***
Search template
  [Arguments]    ${keyword}    ${expected result}
  Key input    ${keyword}
  Press
  Verify result    ${expected result}


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
