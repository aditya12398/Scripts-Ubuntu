#!/bin/bash
tee -a /home/slimshady/testfile <<EOF

export CLASSPATH=\${CLASSPATH}:"/home/slimshady/Apps/Java_Packages/jfreechart-1.0.19/lib/jcommon-1.0.23.jar":"/home/slimshady/Apps/Java_Packages/jfreechart-1.0.19/lib/jfreechart-1.0.19.jar"
EOF
