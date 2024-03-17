# SockLogger
A NICE-creative way to evade 'Real Time Protection' and 'Windows Firewall' on windows OS, and obtain victim's key-strokes.
You can obfuscate the code and do it whatever you wish. using 'nc' on remote machine while python on the background, provide you with the victim's keystorkes including directory listing on the system32 as the script runs with administrator privilege. While i was looking for a way to make a simple keylogger, i tought it would be interesting to make a keylogger which will executed upon a running .ps1(PowerShell Script) with a fake message saying something about critical problems that must be handle right now using Windows Update. Started to make a script that will make 3 things. anyway, it must! first run as Administrator privilege.
#### What It DoEs?: ####
1. Turn off the Windows Firewall Real Time Protection.
2. enject a malicious DWORD on the registry which will make the real time protection going down. <b>( Be Aware!! )</b>
3. Disable the real time protection.
4. When the the pp.pyw gets execute [ Using .pyw for making it run in the background ], it's send the keystrokes of the victim to a remote machine [ Attacker ] on the other side by using the next command for listening in a loop: 'while true; do nc -lvnp [PORT]; done' [ in my case is PORT 8080 ].
5. Open a python web server for "C:\Windows\System32" if it worth something ...

![2](https://github.com/Adkali/SockLogger/assets/90532971/a94c22bd-a881-444e-853d-a45fad7f2328)


# Usage
* I made a test on my local windows 11 x64-Based PC machine [ VICTIM ].
<pre>
1. git clone the reposotory.
2. cd SockLogger.
3. open a new terminal, press Ctrl+Shift+R and and terminal will split into two windows.
4. On window number 1 with the help of using a python, open a server to your local machine on the SockLogger folder.
5. On window number 2, use the on-top-command i wrote for a loop over and over.
6. Download the script on the victim machine [ Real time protection 'ON' || Windows Firewall 'ON' ]
7. after run it, wait for powershell window to gone. try typing something and head over to the attacker machine.
8. On window number 2, you should see the keystrokes you made [ On victim machine ]
</pre>

![3](https://github.com/Adkali/SockLogger/assets/90532971/b26cc2b3-a2cd-4e22-b6a9-ce7a8753dab6)

![4](https://github.com/Adkali/SockLogger/assets/90532971/8e6f6c3c-7c37-4339-ac30-a9739386bd32)


# Updates
This code is just a test while trying for a ways of not only using obfuscation ways, but also using a creative ways of bypass the windows defender/real time protection. still, i want to make a better code which not only contain a phishing message, but also a one that will actually restart the victim's computer, and when it load's again, the script will make another things reffers to protection and bypassing it.
  
<h2>Note</h2><p>Change Machine IP in the .ps1/pyw script.</p>
in my case, the .ps1 is 10.0.0.40 on port 80, and the listener was on port 8080. please, if you are having any problems, i would like to know. soon i will make a python script which will execute it all in one code. please notice that the .pyw script {python} saved at 'C:\Users\public' directory

# Requirements
Victim must have python installed on computer(python3). When script gets executed, it will install using pip the 'pynput' package.
