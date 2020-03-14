*** Settings ***
Resource    ../Locaillized/LoginLocaillized.robot
Resource    ../Repository/LoginRepository.robot
Resource    ../Variable/LoginVariables.robot

*** Keywords ***
Open Login Page
    Open Browser    ${urlLoginPage}    googlechrome

Successfully Logged In
    Input Text      ${usernameTextField}   ${username}
    Input Password      ${passwordTextField}    ${password}   
    Click Button    ${loginButton}

Login With Empty Data
    Click Button    ${loginButton}

Login With Empty Username
    Input Password      ${passwordTextField}    ${password}   
    Click Button    ${loginButton}

Login With Empty Password
    Input Text      ${usernameTextField}   ${username}
    Click Button    ${loginButton}

Login With Wrong Password
    Input Text      ${usernameTextField}   ${username}
    Input Password      ${passwordTextField}    ${wrongPassword}   
    Click Button    ${loginButton}

Agree I Am Get Wrong Username Or Password
    Click Button    ${confirmWrongUsernameOrPasswordButton}

Logout
    Click Button    ${logoutButton}

Agree You Logged Out
    Click Button    ${confirmLoggedOutButton}

Close Web Browser
    sleep   1s
    Wait Until Keyword Succeeds    15s    2s    Capture Page Screenshot
    Close Browser

Check Components In Login Page
    Page Should Contain Textfield    ${usernameTextField}
    Page Should Contain Textfield    ${passwordTextField}
    Page Should Contain Button    ${loginButton}

Check Components In Home Page
    Page Should Contain    ${welcomeText}
    Page Should Contain Button    ${logoutButton}

Check Components In Logged Out Page
    Page Should Contain Button    ${confirmLoggedOutButton}