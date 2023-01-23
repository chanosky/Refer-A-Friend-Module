# Automation Test Script for Refer a friend page

This automation script uses the Robot Framework and Selenium to automate the testing of a "Refer a Friend" page. The script will test the functionality of the page by using a variety of test cases including:

1. User should be able to verify Refer a friend contents
2. User should be able to verify Refer a friend contents after sharing
3. Verify that user should be able to share by using a valid email and message
4. Verify that user should not be able to share by using an invalid email
5. Verify that user should not be able to share by using a blank message
6. Verify that user should be able to download Terms page
7. Verify that user should be able to share using to Messenger
8. Verify that user should be able to share using to Facebook
9. Verify that user should be able to share using to Twitter
10. Verify that user should be able to copy referral link
11. Verify that user should be able to go back to share page after clicking share again button

This script is intended to help ensure that the "Refer a Friend" page is functioning properly and to catch any potential bugs or errors before they impact real users.

# Prerequisites

Here are the prerequisites in order to run the script:

 - [ ] Python v3.10 or latest
 - [ ] Robot Framework v6.02 or latest (will automatically be installed using the requirements.txt file)
 - [ ] Selenium v.4.72 or latest (will automatically be installed using the requirements.txt file)
 - [ ] Make sure that the Chrome browser is installed in the PC.

## How to run

Please see below the step-by-step procedure for fetching the robot framework script from GitHub, installing the necessary requirements, and running the script using the command line:

1. Install Python on your system. You can download the latest version from the official website: [https://www.python.org/downloads/](https://www.python.org/downloads/)
2. Make sure to add the PATH to your environmental variables, see here https://www.liquidweb.com/kb/how-do-i-set-system-variable-path-for-python-on-windows/
3. Open a command prompt or terminal window and navigate to the directory where you want to store the script.
4. Use the command `git clone` followed by the repository url to fetch the script from GitHub, for example: `git clone https://github.com/chanosky/Refer-A-Friend-Module` or just download the repository to your desired location.
5. Navigate into the cloned repository by using the command `cd yourrepository`
6. Install the necessary requirements by running the command `pip install -r requirements.txt`
7. To run the script, use the command `robot --outputdir .\AmaysimDashboard\Results .\AmaysimDashboard\DataPlanPage\DataPlanPageTest\DataPlanPageTest.robot`

## Limitations

This script has the following limitations:

1. The script has only been tested on a Windows operating system. There may be compatibility issues when running the script on other operating systems such as MacOS, Linux, etc.
    
2. The script has only been tested using the Chrome browser. The script may not work properly or at all when using other browsers such as Firefox, Safari, Edge, etc.
    
3. The script may not be compatible with different versions of the Chrome browser and may only work with specific versions.

4. Virtual env was not used here, issues might arise when adding or downgrading python libraries.

5. CI/CD for this script was not yet set up.
    
It is important to keep these limitations in mind when using this script and to thoroughly test the script on different operating systems and browsers before using it in a production environment.

> Do not change any thing inside the folders, just change commented variables inside *GlobalTestData.py* changing any variables or paths might incur issues when running.
