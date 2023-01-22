*** Settings ***
Resource    ${EXECDIR}/AmaysimDashboard/GlobalSettings/GlobalResource/GlobalSettings.robot


*** Keywords ***

Input User Credentials
    [Arguments]     ${username}   ${password}
    wait until element is visible   ${Loc_LoginUserBox}     50s
    input text  ${Loc_LoginUserBox}   ${username}
    wait until element is visible   ${Loc_LoginPWBox}   50s
    input text  ${Loc_LoginPWBox}    ${password}

Navigate to My Account Page
    wait until element is visible   ${Loc_LoginPageLoginButton}
    click element    ${Loc_LoginPageLoginButton}









