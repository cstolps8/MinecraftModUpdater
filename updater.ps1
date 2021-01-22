$creds = '09fbc6f7-5cb5-48cd-a67a-1a77eeb56a09'
# get latest version of mod

#for each mod in mod list 
$JSONRequest = 'https://api.cfwidget.com/minecraft/mc-mods/abnormals-core/'
$JSONContent = Invoke-WebRequest $JSONRequest | ConvertFrom-Json 
$url = $JSONContent | select -expand Download  # | Select url
Write-Output "Hello World" $url.url "Yes"

# now download the latest
Invoke-WebRequest -H @{'token'='09fbc6f7-5cb5-48cd-a67a-1a77eeb56a09'} $url.url 
# overrwite the current files


# add to modded server
