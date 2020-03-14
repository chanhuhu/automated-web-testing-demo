*** Settings ***
Library     Selenium2Library
Resource    ../Resource/Keywords/LoginKeywords.robot

** Test Cases ***
Did Login Page Load Componets Correctly?
    Open Login Page
    Check Components In Login Page
    [Teardown]    Close Web Browser

Successfully Logged In
    Open Login Page
    Check Components In Login Page
    Successfully Logged In
    Check Components In Home Page
    [Teardown]    Close Web Browser

Login With Empty Data
    Open Login Page
    Check Components In Login Page
    Login With Empty Data
    [Teardown]    Close Web Browser

Login With Empty Username
    Open Login Page
    Check Components In Login Page
    Login With Empty Username
    [Teardown]    Close Web Browser

Login With Empty Password
    Open Login Page
    Check Components In Login Page
    Login With Empty Password
    [Teardown]    Close Web Browser

Login With Wrong Password
    Open Login Page
    Check Components In Login Page
    Login With Wrong Password
    [Teardown]    Close Web Browser

Agree Get Wrong Username Or Password
    Open Login Page
    Check Components In Login Page
    Login With Wrong Password
    Agree I Am Get Wrong Username Or Password
    [Teardown]    Close Web Browser

Logout From Home Page to Login Page
    Open Login Page
    Check Components In Login Page
    Successfully Logged In
    Check Components In Home Page
    Logout
    [Teardown]    Close Web Browser

Confirm Logged Out
    Open Login Page
    Check Components In Login Page
    Successfully Logged In
    Check Components In Home Page
    Logout
    Check Components In Logged Out Page
    Agree You Logged Out
    [Teardown]    Close Web Browser

