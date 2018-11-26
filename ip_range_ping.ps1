$ip_seg='172.217.166.';
$start=100
$range=50;
$IPs=@{};

for ($i = 0 ; $i -lt $range ; $i++)
{
     
     $IPs[$i] = $($ip_seg+$start);
     $start++;
}

for ($i = 0; $i -lt $range ; $i++)
{
     try
     {
        
        if(Test-Connection $IPs[$i] -Quiet -Count 1)
        {
            Write-Host $("Successful: "+$IPs[$i])
        }
        else
        {
            Write-Host $("Failed: "+$IPs[$i])
        }
     }
     catch
     {
        write-Host "Error:" -NoNewline 
        Write-Host $IPs[$i]
     }
}
