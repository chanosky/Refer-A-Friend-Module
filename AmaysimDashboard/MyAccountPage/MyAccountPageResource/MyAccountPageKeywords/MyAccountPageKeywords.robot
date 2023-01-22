*** Settings ***
Resource    ${EXECDIR}/AmaysimDashboard/GlobalSettings/GlobalResource/GlobalSettings.robot

*** Keywords ***
Navigate to Data Plan Page
    wait until element is visible   ${Loc_ManagePlanLink}   100s
    click element    ${Loc_ManagePlanLink}


