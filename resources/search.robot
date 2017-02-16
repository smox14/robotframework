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
