#!/usr/bin/bash

OLD_SUM=0

while true; do
    NEW_SUM=$(task ls rc.report.ls.sort=project,urgency- rc.verbose=none | sum)
    if [ "${OLD_SUM}" != "${NEW_SUM}" ]; then
        clear
        task rc.report.next.sort=project,urgency- rc.verbose=none
        OLD_SUM=${NEW_SUM}
    fi
    sleep 2
done
