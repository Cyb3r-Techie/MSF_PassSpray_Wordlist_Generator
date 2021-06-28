# <img src="https://www.unthsc.edu/Information-technology-services/wp-content/uploads/sites/55/Password.png" width=80 height=80> Password Spray Wordlist Generator<img src="https://us.123rf.com/450wm/anthonycz/anthonycz1603/anthonycz160300046/53929100-red-spray-can-icon-on-white-background.jpg?ver=6" width=80 height=80>
<img src="https://img.shields.io/badge/bash-script-blueviolet">    <img src="https://img.shields.io/badge/password-spray-brightgreen">    <img src="https://img.shields.io/badge/wordlist-generator-orange">

A handy tool that helps to create your own wordlist for Metasploit framework, in order to carry out a password spray attack against various network protocols such as SMB in your victims' domain :)

## Description
As an ethical hacker <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs03GE_fSfaofdcymXD6Qjijb1NZ-Nk-R4eHRh0zEmb7ZGKJacpZpfPNBg91g3EUtjobc&usqp=CAU" width=25 height=30>, you may have experienced situations that you cannot perform a brute force attack due to limitations like account lockout. In those cases, we can utilize the password spray technique that helps us to bypass detection mechanisms.

### Brute Force <img src="http://cdn.onlinewebfonts.com/svg/img_418591.png" width=50 height=50> Password Spray
A bruteforce attack tests various passwords against one username until the whole password list is finished. After that a new username is being selected and the whole process is started all over again. Something like the following for the first round:

`username1 : password1`
`username1 : password2`
`...`
`username1 : password1000`

On the other hand, password spray attack tests a single password against all the usernames in our username list till all of them are being tested once. Then a new password is being selected and the test continues as described. For instance the first round would be:

`username1 : password1`
`username2 : password1`
`...`
`username1000 : password1`

## Disclaimer


## How To Use


### Usage Example:
