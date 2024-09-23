# Cambia el modo a oscuro o claro
$RegistryPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
$CurrentTheme = Get-ItemProperty -Path $RegistryPath -Name "AppsUseLightTheme"

if ($CurrentTheme.AppsUseLightTheme -eq 1) {
    # Cambia a modo oscuro
    Set-ItemProperty -Path $RegistryPath -Name "AppsUseLightTheme" -Value 0
    Set-ItemProperty -Path $RegistryPath -Name "SystemUsesLightTheme" -Value 0
    Write-Host "Cambiado a modo oscuro"
} else {
    # Cambia a modo claro
    Set-ItemProperty -Path $RegistryPath -Name "AppsUseLightTheme" -Value 1
    Set-ItemProperty -Path $RegistryPath -Name "SystemUsesLightTheme" -Value 1
    Write-Host "Cambiado a modo claro"
}