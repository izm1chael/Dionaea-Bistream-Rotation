
# Dionaea Bistreams Rotation
Dionaea Bistreams will fill up most VPS's in a couple of days unless the storage is 100 GB+ In order to over come this you can create a cron job with this bash script or run it manually.

## Usage

    sudo mkdir /opt/scripts

    cd /opt

    git clone https://github.com/izm1chael/Dionaea-Bistream-Rotation.git

    cd /Dionaea-Bistream-Rotation
    
    sudo mv bistreams-rot-*-*.sh /opt/scripts

## Generic Script

 -  [bistreams-rot-3-6.sh](https://github.com/izm1chael/Dionaea-Bistream-Rotation/blob/master/bistreams-rot-3-6.sh "bistreams-rot-3-6.sh")
	 - Compress Every 3 Hours
	 - Deletion Every 6 Hours
 -  [bistreams-rot-6-12.sh](https://github.com/izm1chael/Dionaea-Bistream-Rotation/blob/master/bistreams-rot-6-12.sh "bistreams-rot-6-12.sh")
	 - Compress Every 6 Hours
	 - Deletion Every 12 Hours
 -  [bistreams-rot-12-24.sh](https://github.com/izm1chael/Dionaea-Bistream-Rotation/blob/master/bistreams-rot-12-24.sh "bistreams-rot-12-24.sh")
	 - Compress Every 12 Hours
	 - Deletion Every 24 Hours

## Digital Ocean Droplet Script
When I initially started deploying Dionaea I was using $5 per month Digital Ocean Droplets, 
These where great due to the low cost, and thus enabling me to deploy Dionaea across a wide range of locations. 
The issues were however that due to the volume of hits the boxes where getting the Bistreams started to fill up within a day or two. 
This script also stops Dionaea before running due to the over head on a $5 box causing performance issues will the script runs
 -  [bistreams-rot-do-drop.sh](https://github.com/izm1chael/Dionaea-Bistream-Rotation/blob/master/bistreams-rot-do-drop.sh "bistreams-rot-do-drop.sh")
	 - Compress Every 1.5 Hours
	 - Deletion Every 3 Hours
	 - Stops Dionaea before running
	 - Starts Dionaea before exiting

## Cron Examples

    #Run every 1.5 hours
    0 0,3,6,9,12,15,18,21 * * * /bin/bash /opt/scripts/bistreams-rot-do-drop.sh
    30 1,4,7,10,13,16,19,22 * * * /bin/bash /opt/scripts/bistreams-rot-do-drop.sh

    # Run every 3 hours
    0 */3 * * * /bin/bash /opt/scripts/bistreams-rot-3-6.sh

    # Run every 6 hours
    0 */6 * * * /bin/bash /opt/scripts/bistreams-rot-6-12.sh

    # Run every 12 hours
    0 */12 * * * /bin/bash /opt/scripts/bistreams-rot-6-12.sh

    # Run every 24 hours
    0 */24 * * * /bin/bash /opt/scripts/bistreams-rot-6-12.sh
   


 




