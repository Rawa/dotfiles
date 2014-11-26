success=false;
while [ "$success" != "true" ]; do
    if ping -c1 -q ping.sunet.se > /dev/null; then
        urxvt -name irc -e mosh irc &
        success=true
    else
        sleep 0.5
    fi
done
