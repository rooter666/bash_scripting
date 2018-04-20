#!/bin/bash
#
#
read something


for ser in :siteip
do
rsync -avzhe sshpass -p ssh --progress /home/rooter666/NCbuilds/* @$ser:/home//

done
