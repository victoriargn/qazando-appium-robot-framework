*** Settings ***
Library     AppiumLibrary

*** Keywords ***
Swipe Up Until Element Is Visible
    [Arguments]    ${locator}

    ${x}    Get Window Width
    ${y}    Get Window Height

    ${start_x}    Evaluate    ${x} / 2
    ${start_y}    Evaluate    ${y} / 2

    WHILE    ${true}
        ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator}    1

        IF    ${status}    Exit For Loop

        Swipe
        ...    start_x=${start_x}
        ...    start_y=${start_y}
        ...    offset_x=${start_x}
        ...    offset_y=0
    END