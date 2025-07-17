*** Settings ***
Resource    ../../resources/open_apps.resource
Resource    ../../pages/login.robot
Resource    ../../resources/custom_actions.resource

*** Variables ***
${PLATFORM_NAME}    iOS


*** Test Cases ***
Access the page of last store
    Open iOS Test Application
    Sleep    3s
    Login with right credentials    ${PLATFORM_NAME}
    Swipe Up Until Element Is Visible    xpath=(//XCUIElementTypeOther[@name="store-list-item"])[6]
    Click Element    xpath=(//XCUIElementTypeOther[@name="store-list-item"])[6]