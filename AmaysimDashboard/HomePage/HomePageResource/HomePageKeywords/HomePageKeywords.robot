*** Settings ***
Resource    ${EXECDIR}/AmaysimDashboard/GlobalSettings/GlobalResource/GlobalSettings.robot

*** Keywords ***

Open Amaysim site using a browser
    [Arguments]     ${appURL}   ${appbrowser}
    Run Keyword If    '${appbrowser}'=='chrome' or '${appbrowser}'=='headlesschrome'    Open Amaysim site using chrome  ${appURL}   ${appbrowser}
    ...    ELSE IF    '${appbrowser}'=='firefox' or '${appbrowser}'=='headlessfirefox'    Open Amaysim site using firefox  ${appURL}   ${appbrowser}

Check Homepage url and should be correct
    [Arguments]     ${appURL}
    ${url}=  Get Location
    should be equal as strings    ${url}    ${appURL}

Click Login Link
    wait until element is visible   ${Loc_LoginLink}
    click element    ${Loc_LoginLink}














