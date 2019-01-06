#
# Remove all Realtek Audio Console and related third party UWP apps
#
# Revision: 25-11-2018
#
# Author: alanfox2000
#
# https://github.com/alanfox2000/realtek-universal-audio-driver/raw/master/Remove-UAD-Appx.ps1
#

($AppsList = "RealtekSemiconductorCorp.RealtekAudioControl","RealtekSemiconductorCorp.HPAudioControl","AD2F1837.BangOlufsenAudioControl","AD2F1837.BOAudioControl","AD2F1837.HPAudioCenter","AD2F1837.OMENAudioControl","CreativeTechnologyLtd.SoundBlasterConnect","DolbyLaboratories.DolbyAtmos","DolbyLaboratories.DolbyAtmosSpeakerSystem","DolbyLaboratories.DolbyAudio","DolbyLaboratories.DolbyAudioPremium","DolbyLaboratories.DolbyAudioSpeakerSystem","DolbyLaboratories.DolbyAtmosforGaming","A-Volute.SonicStudio3","A-Volute.28054DF1F58B4","A-Volute.Nahimic","DellInc.AlienwareSoundCenter_htrsf667h5kn2","WavesAudio.WavesMaxxAudioProforDell","WavesAudio.WavesMaxxAudioForFujitsu","WavesAudio.20761030F5EAC","WavesAudio.MaxxAudioProforDell2019","DTSInc.DTSAudioProcessing","DTSInc.DTSCustomforAsus","DTSInc.DTSHeadphoneXv1","DTSInc.DTSStudioSound","DTSInc.DTSSound")

ForEach ($App in $AppsList)
{
$PackageFullName = (Get-AppxPackage $App).PackageFullName
$ProPackageFullName = (Get-AppxProvisionedPackage -online | where {$_.Displayname -eq $App}).PackageName
write-host $PackageFullName
Write-Host $ProPackageFullName
if ($PackageFullName)
{
Write-Host "Removing Package: $App"
remove-AppxPackage -package $PackageFullName
}
else
{
Write-Host "Unable to find package: $App"
}
if ($ProPackageFullName)
{
Write-Host "Removing Provisioned Package: $ProPackageFullName"
Remove-AppxProvisionedPackage -online -packagename $ProPackageFullName
}
else
{
Write-Host "Unable to find provisioned package: $App"
}

}
