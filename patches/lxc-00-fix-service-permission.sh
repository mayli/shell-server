#!/bin/sh

# no permission to set OOMScoreAdjust in dbus
sed -i'' 's/^OOMScoreAdjust/# OOMScoreAdjust/g' /lib/systemd/system/dbus.service
# no permission to set priority in auditd
sed -i'' 's/^priority_boost.*/priority_boost = 0/g' /etc/audit/auditd.conf
# TODO: fix oom settings for auditd
