#!/bin/bash
#
#

for ser in :siteip
do
rsync -avzhe ssh --progress /home/rooter666/NCbuilds/* @$ser:/home//

done
