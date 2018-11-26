echo "         ";
echo '-------------------------------';
echo 'Deleting Windows Prefetch files';
echo '-------------------------------';
$path='C:\Windows\Prefetch'
$full_path='C:\Windows\Prefetch\'
foreach ($file in dir $path)
{
    del $($full_path+$file);
}
write-host "Deleted successfully"
