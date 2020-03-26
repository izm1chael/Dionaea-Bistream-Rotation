#!/bin/bash

# Compress bistream files older than 3 Hours
find /opt/dionaea/var/lib/dionaea/bistreams/* -type f -mmin +360 -exec gzip {} $

# Clear bistream logs from dionaea every 6 Hoursk
find /opt/dionaea/var/lib/dionaea/bistreams/* -type f -mmin +720 -exec rm -rf {$

# Clear bistream folder When it is empty 
find /opt/dionaea/var/lib/dionaea/bistreams/* -type d -empty -delete
