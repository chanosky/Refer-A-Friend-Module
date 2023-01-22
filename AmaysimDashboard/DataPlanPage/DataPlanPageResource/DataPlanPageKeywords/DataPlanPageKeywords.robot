*** Settings ***
Resource    ${EXECDIR}/AmaysimDashboard/GlobalSettings/GlobalResource/GlobalSettings.robot

*** Variables ***
${referlinkcode}    http://r.amaysi.ms/${TD_referralcode}

*** Keywords ***

Navigate to Refer a friend Page
    wait until element is visible   ${Loc_ReferLink}    100s
    click element    ${Loc_ReferLink}
    wait until element is visible   ${Loc_ReferFriendHeader}    100s
    element should be visible   ${Loc_ReferFriendHeader}
    wait until element is visible   ${Loc_ReferFriendIframe}    100s
    select frame  ${Loc_ReferFriendIframe}

Verify Refer a friend contents
    wait until element is visible   ${Loc_ReferFriendCreditLabel}
    element should be visible   ${Loc_ReferFriendCreditLabel}
    ${creditlabel}=     get text    ${Loc_ReferFriendCreditLabel}
    Should Be Equal As Strings  ${creditlabel}  ${TD_referafriendcreditlabel}

    wait until element is visible   ${Loc_ReferFriendInfoText}
    element should be visible   ${Loc_ReferFriendInfoText}
    ${referinfotext}=     get text    ${Loc_ReferFriendInfoText}
    Should Be Equal As Strings  ${referinfotext}  ${TD_referafriendinfotext}

    wait until element is visible   ${Loc_ReferralBoxContent}
    element should be visible   ${Loc_ReferralBoxContent}
    ${referboxtext}=    get element attribute     ${Loc_ReferralBoxContent}    href
    Should Be Equal As Strings   ${referboxtext}    ${referlinkcode}

    wait until element is visible   ${Loc_CopyButton}
    element should be visible   ${Loc_CopyButton}

    wait until element is visible   ${Loc_SendEmailLabel}
    element should be visible   ${Loc_SendEmailLabel}
    ${emaillabel}=     get text    ${Loc_SendEmailLabel}
    Should Be Equal As Strings  ${emaillabel}  ${TD_sendemaillabeltext}

    wait until element is visible   ${Loc_SendEmailBox}
    element should be visible   ${Loc_SendEmailBox}
    ${sendemail}=    get element attribute   ${Loc_SendEmailBox}    placeholder
    Should Be Equal As Strings  ${sendemail}     ${TD_sendemailplaceholder}

    wait until element is visible   ${Loc_PersonalizeMessageLabel}
    element should be visible   ${Loc_PersonalizeMessageLabel}
    ${personalizedmessage}=     get text    ${Loc_PersonalizeMessageLabel}
    Should Be Equal As Strings  ${personalizedmessage}  ${TD_personalizedmessagetext}

    wait until element is visible   ${Loc_PersonalizeMessageBox}
    element should be visible   ${Loc_PersonalizeMessageBox}
    ${personalizeplaceholder}=    get element attribute   ${Loc_PersonalizeMessageBox}    placeholder
    Should Be Equal As Strings  ${personalizeplaceholder}   ${TD_personalizedmessageplaceholder}

    wait until element is visible   ${Loc_SendFriendReminderCheckbox}
    element should be visible   ${Loc_SendFriendReminderCheckbox}
    ${reminderlabel}=     get text    ${Loc_SendFriendReminderLabel}
    Should Be Equal As Strings  ${reminderlabel}  ${TD_sendfriendreminderlabeltext}

    wait until element is visible   ${Loc_ShareButton}
    element should be visible   ${Loc_ShareButton}

    wait until element is visible   ${Loc_TermsLink}
    element should be visible   ${Loc_TermsLink}

    wait until element is visible   ${Loc_ShareInfoText}
    element should be visible   ${Loc_ShareInfoText}
    ${sharetext}=     get text    ${Loc_ShareInfoText}
    Should Be Equal As Strings  ${sharetext}  ${TD_shareinformationtext}

    wait until element is visible   ${Loc_MessengerIcon}
    element should be visible   ${Loc_MessengerIcon}

    wait until element is visible   ${Loc_FacebookIcon}
    element should be visible   ${Loc_FacebookIcon}

    wait until element is visible   ${Loc_TwitterIcon}
    element should be visible   ${Loc_TwitterIcon}

    wait until element is visible   ${Loc_FriendBuyLogo}
    element should be visible   ${Loc_FriendBuyLogo}

    capture page screenshot

Verify Refer a friend contents after sharing
    wait until element is visible   ${Loc_ReferFriendIframe}    100s
    select frame  ${Loc_ReferFriendIframe}

    wait until element is visible   ${Loc_ThumbsUpImage}
    element should be visible   ${Loc_ThumbsUpImage}

    wait until element is visible   ${Loc_ThanksForSharingLabel}
    element should be visible   ${Loc_ThanksForSharingLabel}
    ${thanksforsharingtext}=     get text    ${Loc_ThanksForSharingLabel}
    Should Be Equal As Strings  ${thanksforsharingtext}  ${TD_thanksforsharingtext}

    wait until element is visible   ${Loc_PleaseRememberText}
    element should be visible   ${Loc_PleaseRememberText}
    ${pleaseremembertext}=     get text    ${Loc_PleaseRememberText}
    Should Be Equal As Strings  ${pleaseremembertext}  ${TD_pleaseremembertext}

    wait until element is visible   ${Loc_CreditDollarText}
    element should be visible   ${Loc_CreditDollarText}
    ${creditodollartext}=     get text    ${Loc_CreditDollarText}
    Should Be Equal As Strings  ${creditodollartext}  ${TD_creditdollartext}

    wait until element is visible   ${Loc_DontStopText}
    element should be visible   ${Loc_DontStopText}
    ${dontstoptext}=     get text    ${Loc_DontStopText}
    Should Be Equal As Strings  ${dontstoptext}  ${TD_dontstoptext}

    capture page screenshot

Copy referral link
    wait until element is visible   ${Loc_ReferralBoxContent}
    element should be visible   ${Loc_ReferralBoxContent}
    ${referboxtext}=    get element attribute     ${Loc_ReferralBoxContent}    href
    Should Be Equal As Strings   ${referboxtext}    ${referlinkcode}

    wait until element is visible   ${Loc_CopyButton}
    element should be visible   ${Loc_CopyButton}
    click element   ${Loc_CopyButton}
    ${copiedbutton}=    get text    ${Loc_CopyButton}
    Should Be Equal As Strings   ${copiedbutton}    Copied!

    wait until element is visible   ${Loc_PersonalizeMessageBox}
    element should be visible   ${Loc_PersonalizeMessageBox}
    click element   ${Loc_PersonalizeMessageBox}
    clear element text  ${Loc_PersonalizeMessageBox}
    press keys  ${Loc_PersonalizeMessageBox}     CTRL+A     CTRL+V
    ${sendemail}=    get text   ${Loc_PersonalizeMessageBox}
    Should Be Equal As Strings  ${sendemail}     ${referlinkcode}

    capture page screenshot

    wait until element is visible   ${Loc_ReferralBoxContent}
    element should be visible   ${Loc_ReferralBoxContent}
    click element   ${Loc_ReferralTextfield}
    ${copiedreferralbox}=    get text    ${Loc_ReferralBoxContentCopied}
    Should Be Equal As Strings   ${copiedreferralbox}    Copied!

    wait until element is visible   ${Loc_PersonalizeMessageBox}
    element should be visible   ${Loc_PersonalizeMessageBox}
    click element   ${Loc_PersonalizeMessageBox}
    clear element text  ${Loc_PersonalizeMessageBox}
    press keys  ${Loc_PersonalizeMessageBox}     CTRL+A     CTRL+V
    ${sendemail}=    get text   ${Loc_PersonalizeMessageBox}
    Should Be Equal As Strings  ${sendemail}     ${referlinkcode}

    capture page screenshot

Enter valid email in the send email textbox
    wait until element is visible   ${Loc_SendEmailBox}
    element should be visible   ${Loc_SendEmailBox}
    input text  ${Loc_SendEmailBox}     ${TD_validtestemail}    clear=True

User enters invalid email and validate
    wait until element is visible   ${Loc_SendEmailBox}
    element should be visible   ${Loc_SendEmailBox}
    click element   ${Loc_ShareButton}
    wait until element is visible   ${Loc_FormAlertBlankEmail}
    element should be visible   ${Loc_FormAlertBlankEmail}
    ${blankemailerror}=     get text    ${Loc_FormAlertBlankEmail}
    should be equal as strings  ${blankemailerror}  ${TD_blankemailerror}
    input text  ${Loc_SendEmailBox}     ${TD_invalidtestemailA}     clear=True
    click element   ${Loc_ShareButton}
    wait until element is visible   ${Loc_FormAlertInvalidEmail}
    element should be visible   ${Loc_FormAlertInvalidEmail}
    ${alertinvalidemail}=     get text    ${Loc_FormAlertInvalidEmail}
    should be equal as strings  ${alertinvalidemail}  ${TD_alertinvalidemail}
    capture page screenshot
    click element   ${Loc_FormAlertCloseButton}
    element should not be visible   ${Loc_FormAlertInvalidEmail}

Enter text in the personalized message textbox
    wait until element is visible   ${Loc_PersonalizeMessageBox}
    element should be visible   ${Loc_PersonalizeMessageBox}
    input text  ${Loc_PersonalizeMessageBox}     ${TD_message}

User enters blank text and validate
    wait until element is visible   ${Loc_PersonalizeMessageBox}
    element should be visible   ${Loc_PersonalizeMessageBox}
    Press Keys   ${Loc_PersonalizeMessageBox}   CTRL+A   BACKSPACE
    click element   ${Loc_ShareButton}
    wait until element is visible   ${Loc_FormAlertBlankMessage}
    element should be visible   ${Loc_FormAlertBlankMessage}
    ${alertblankmessage}=     get text    ${Loc_FormAlertBlankMessage}
    should be equal as strings  ${alertblankmessage}  ${TD_alertblankmessage}
    capture page screenshot
    click element   ${Loc_FormAlertCloseButton}
    element should not be visible   ${Loc_FormAlertBlankMessage}

Click Share button
    wait until element is visible   ${Loc_ShareButton}
    element should be visible   ${Loc_ShareButton}
    click element   ${Loc_ShareButton}

Click Terms link
    empty directory     ${EXECDIR}${/}${TD_downloaddirectory}
    wait until element is visible   ${Loc_TermsLink}
    element should be visible   ${Loc_TermsLink}
    click element   ${Loc_TermsLink}
    wait until created  ${EXECDIR}${/}${TD_downloaddirectory}${/}${TD_fileName}
    file should exist    ${EXECDIR}${/}${TD_downloaddirectory}${/}${TD_fileName}

Click Share Again button
    wait until element is visible   ${Loc_ShareAgainButton}    50s
    element should be visible   ${Loc_ShareAgainButton}
    click element   ${Loc_ShareAgainButton}

Click Messenger icon
    wait until element is visible   ${Loc_MessengerIcon}    50s
    element should be visible   ${Loc_MessengerIcon}
    sleep   5s
    click element   ${Loc_MessengerIcon}

Click Facebook icon
    wait until element is visible   ${Loc_FacebookIcon}     50s
    element should be visible   ${Loc_FacebookIcon}
    sleep   5s
    click element   ${Loc_FacebookIcon}

Click Twitter icon
    wait until element is visible   ${Loc_TwitterIcon}  50s
    element should be visible   ${Loc_TwitterIcon}
    sleep   5s
    click element   ${Loc_TwitterIcon}

Navigate to New Window
    [Arguments]    ${OpenedWindow}
    sleep   2s
    ${handles}=  Get Window Handles
    Switch Window  ${handles[1]}
    ${title}=    get title
    should be equal as strings  ${title}  ${OpenedWindow}
    close window
    sleep   3s
    Switch Window  ${handles[0]}












