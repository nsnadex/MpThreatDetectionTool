$currentTime = Get-Date
$tenMinutesAgo = $currentTime.AddMinutes(-10)

$recentDetections = Get-MpThreatDetection | Where-Object { $_.InitialDetectionTime -gt $tenMinutesAgo }

if ($recentDetections) {
    $message = "Threat detections within the last 10 minutes:`n$recentDetections"
    Write-Host $message
    eventcreate /ID 1 /L Application /T Error /SO "Windows Defender" /D "$message"
} else {
    Write-Host "No threat detections within the last 10 minutes."
    eventcreate /ID 1 /L Application /T Information /SO "Windows Defender" /D "OK"
}
