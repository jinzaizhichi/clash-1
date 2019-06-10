#!/bin/sh

sleeptime=60
logfile="/tmp/clash.log"
logfile1="/var/log/clash-watchdog.file"
CLASH="/etc/clash/clash"
CLASH_CONFIG="/etc/clash"
enable=$(uci get clash.config.enable 2>/dev/null)

clean_log(){
	logrow=$(grep -c "" ${logfile})
	logrow1=$(grep -c "" ${logfile1})
	if [ $logrow -ge 300 ];then
		cat /dev/null > ${logfile}
		echo "$curtime Logs exceeded limit，cleaning logs now..！" >> ${logfile}
	fi
	if [ $logrow1 -ge 100 ];then
		cat /dev/null > ${logfile1}
		echo "$curtime Logs exceeded limit，cleaning logs now..！" >> ${logfile}
	fi

}

while [ $enable -eq 1 ];
do
	curtime=`date "+%H:%M:%S"`
	if pidof clash>/dev/null; then
		echo "$curtime Clash Is Running! "
		clean_log
	fi
	if ! pidof clash>/dev/null; then
		nohup $CLASH -d $CLASH_CONFIG > /tmp/clash.log 2>&1 &
		echo "$curtime Clash Is Restarting！" >> ${logfile}
	fi

sleep ${sleeptime}
continue
done

