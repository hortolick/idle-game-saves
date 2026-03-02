Add-Type -MemberDefinition '[DllImport("user32.dll")] public static extern void mouse_event(int flags, int dx, int dy, int cButtons, int info);' -Name U32 -Namespace W;
$imma_click_this_many_times = 60*200 #change first number and it's aproximate (very inaccurate) seconds
$imma_wait_this_much_between_clicks = 5 #dis very short time less dan second.
Start-Sleep -Seconds 1
for($i=0; $i -le $imma_click_this_many_times; $i++){
    [W.U32]::mouse_event(6,0,0,0,0);
    Start-Sleep -Milliseconds $imma_wait_this_much_between_clicks
}