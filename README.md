# <img src="https://www.unthsc.edu/Information-technology-services/wp-content/uploads/sites/55/Password.png" width=50 height=50> Password Spray Wordlist Generator<img src="https://us.123rf.com/450wm/anthonycz/anthonycz1603/anthonycz160300046/53929100-red-spray-can-icon-on-white-background.jpg?ver=6" width=50 height=50>
<img src="https://img.shields.io/badge/bash-script-blueviolet">    <img src="https://img.shields.io/badge/password-spray-brightgreen">    <img src="https://img.shields.io/badge/wordlist-generator-orange">    <img src="https://img.shields.io/badge/Metasploit-Framework-ff69b4">

A handy tool that helps you to create your own wordlist for Metasploit framework, in order to carry out a password spray attack against various network protocols such as SMB in your victims' domain :)

## Description
Metasploit has multiple modules that can be utilized to perform a brute attack against varius services or protocols. Take "SMB_Login" module as an example, it tries to obtain the passwords of attacker's victims by testing multiple logins against a system with open SMB protocol <img src="https://img.shields.io/badge/TCP-445-9cf" height=18>.

As an ethical hacker <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs03GE_fSfaofdcymXD6Qjijb1NZ-Nk-R4eHRh0zEmb7ZGKJacpZpfPNBg91g3EUtjobc&usqp=CAU" width=25 height=30>, you may have experienced situations that you cannot perform a brute force attack due to limitations like "Account Lockout" policy. In those cases, we can utilize the **_password spray_** technique that helps us to bypass detection mechanisms.

#### Brute Force <img src="http://cdn.onlinewebfonts.com/svg/img_418591.png" width=45 height=45> Password Spray
A bruteforce attack tests various passwords against one username until the whole password list is finished. After that a new username is being selected and the whole process is started all over again. Something like the following:

| Username      | Password          | #Round
| ------------- |:-------------:|:-------------:|
| user1      | pass1 | 1 |
| user1      | pass2     | 1 |
| ... | ...      | 1 |
| user1 | pass1000      | 1 |
| user2      | pass1 | 2 |
| user2      | pass2     | 2 |
| ... | ...      | 2 |
| user2 | pass1000      | 2 |
| ... | ... | ... |

On the other hand, password spray attack tests a single password against all the usernames in our username list till all of them are being tested once. Then a new password is being selected and the test continues as described. For instance:

| Username      | Password          | #Round
| ------------- |:-------------:|:-------------:|
| user1      | pass1 | 1 |
| user2      | pass1     | 1 |
| ... | ...      | 1 |
| user1000 | pass1      | 1 |
| user1      | pass2 | 2 |
| user2      | pass2     | 2 |
| ... | ...      | 2 |
| user1000 | pass2      | 2 |
| ... | ... | ... |


<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Note_icon.svg/1200px-Note_icon.svg.png" height=22 width=22> But unfortunately, we cannot simply configure Metasploit's modules to support password spray method. To overcome this situation, one can use Metasploit's parameter called `USERPASS_FILE : File containing users and passwords separated by space, one pair per line` in its modules (*if available*) and passes a file containing usernsme passwords that are seperated from eachother by a space character.

<img src="https://thumbs.dreamstime.com/b/check-mark-symbol-box-icon-135442000.jpg" height=30 width=30> This tool create that wordlist with the purose of performing a successful password spray attack against victim's network.

## Usage:
```
git clone 
chmod +x msf_passspray.sh
```
```

```
### Example:


