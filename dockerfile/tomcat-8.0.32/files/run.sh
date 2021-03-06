#!/bin/sh

limit_in_bytes=$(cat /sys/fs/cgroup/memory/memory.limit_in_bytes)
RESERVED_MEGABYTES=64

# If not default limit_in_bytes in cgroup
if [ "$limit_in_bytes" -ne "9223372036854771712" ]
then
    limit_in_megabytes=$(expr $limit_in_bytes \/ 1048576)
    heap_size=$(expr $limit_in_megabytes - $RESERVED_MEGABYTES)
    export JAVA_OPTS="-Xmx${heap_size}m $JAVA_OPTS"
fi

/alidata/server/tomcat-8.0.32/bin/startup.sh
