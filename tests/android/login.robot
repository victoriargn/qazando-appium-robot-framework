*** Settings ***
Resource    ../../pages/login.robot
Resource    ../../resources/open_apps.resource

*** Variables ***
${PLATFORM_NAME}          Android

*** Test Cases ***
Display error message by trying log in with wrong credentials
    Open Android Test Application
    Sleep    3s
    Login with wrong credentials    ${PLATFORM_NAME}
    Element Should Be Visible    android=UiSelector().text("Erro ao realizar login")