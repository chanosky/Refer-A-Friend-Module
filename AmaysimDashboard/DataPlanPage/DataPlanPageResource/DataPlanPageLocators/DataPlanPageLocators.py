# Data Plan Page Locators
Loc_ReferLink = "xpath://a[normalize-space()='Refer a friend']"

#
Loc_ReferFriendHeader = "xpath://div[@class='ama-page-header'][contains(text(),'refer a friend')]"

# Refer a friend iframe locators (before sharing)
Loc_ReferFriendIframe = "xpath://iframe[@id='fb-12741873-1379-4c1e-ac8c-1297e3bc9699']"
Loc_SendEmailBox = "xpath://*[@id='a'][@placeholder='Send to (comma separated)']"
Loc_PersonalizeMessageBox = "xpath://*[@id='b']"
Loc_PersonalizeMessageLabel = "xpath://*[@id='v']/span/p"
Loc_ShareButton = "xpath://*[@id='c']"
Loc_FriendBuyLogo = "xpath://*[@id='d']"
Loc_ReferFriendCreditLabel = "xpath://*[@id='e']/span/p"
Loc_ReferFriendInfoText = "xpath://*[@id='f']/span/p"
Loc_SendEmailLabel = "xpath://*[@id='g']/span/p"
Loc_ShareInfoText = "xpath://*[@id='m']/span/p"
Loc_TermsLink = "xpath://*[@class='terms-and-conditions-action']"
Loc_MessengerIcon = "xpath://*[@id='o']"
Loc_FacebookIcon = "xpath://*[@id='p']"
Loc_TwitterIcon = "xpath://*[@id='q']"
Loc_ReferralBoxContent = "xpath://*[@id='r']/span/p/a"
Loc_ReferralBoxContentCopied = "xpath://*[@id='r']/span/p"
Loc_ReferralTextfield = "xpath://*[@id='r']"
Loc_CopyButton = "xpath://*[@id='s']/span"
Loc_SendFriendReminderCheckbox = "xpath://*[@class='Checkbox-container Checkbox-container-preview']"
Loc_SendFriendReminderLabel = "xpath://*[@class='Checkbox-container Checkbox-container-preview']/label/span[text()='Send my friend a reminder in 3 days']"
Loc_FormAlertBlankEmail = """xpath://*[@id="WidgetFormErrors"]/div/div[2]/div[contains(text(), "Please enter an Email Address")]"""
Loc_FormAlertInvalidEmail = """xpath://*[@id="WidgetFormErrors"]/div/div[2]/div[contains(text(), "invalid is not a valid email address")]"""
Loc_FormAlertBlankMessage = """xpath://*[@id="WidgetFormErrors"]/div/div[2]/div[contains(text(), "Please enter a Message")]"""
Loc_FormAlertCloseButton = """xpath://*[@id="WidgetFormErrors"]/div/div[@class='Widget-form-errors-close Widget-form-errors-close-visible']"""



# Refer a friend iframe locators (after sharing)
Loc_ShareAgainButton = "xpath://*[@id='w']/span/p[text()='Share Again']"
Loc_FriendBuyLogoAfterSharing = "xpath://*[@id='x']"
Loc_CreditDollarText = """xpath://*[@id="y"]/span/p[contains(text(), "Once your friend signs up you'll find your $10 credit in your account.")]"""
Loc_DontStopText = """xpath://*[@id="y"]/span/p[contains(text(), "Don’t stop there! The more you share the more rewards you’ll get!")]"""
Loc_ThanksForSharingLabel = "xpath://*[@id='H']"
Loc_PleaseRememberText = "xpath://*[@id='M']/span/p"
Loc_ThumbsUpImage = "xpath://*[@id='N']"