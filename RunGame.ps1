$gameDir = Join-Path $PSScriptRoot "Game"
$gameExe = Join-Path $gameDir "YouHave[BLANK]Seconds.exe"
if (Test-Path -LiteralPath $gameExe) {
    Start-Process -FilePath $gameExe -WorkingDirectory $gameDir
} else {
    Write-Error "Game executable not found at: $gameExe"
}
