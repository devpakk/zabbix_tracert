param ($param1)
$encoding = [Console]::OutputEncoding
[Console]::OutputEncoding = [System.Text.Encoding]::GetEncoding("utf-8")

$traceRoute = (tracert -d -w 100 $param1)
echo $traceRoute