*** Settings ***
Resource    ../../pages/login.robot

*** Variables ***
${PLATFORM_NAME}    iOS

*** Test Cases ***
Display error message by trying log in with wrong credentials
    Open iOS Test Application
    Sleep    3s
    Login with wrong credentials    ${PLATFORM_NAME}
    Element Should Be Visible    accessibility_id=Erro ao realizar login

Display restaurant search bar after successfull login
    Open iOS Test Application
    Sleep    3s
    Login with right credentials    ${PLATFORM_NAME}
    Sleep    3s
    Element Should Be Visible    name=search-field