#!/bin/bash

logplot () {
  if [ $# -lt 2 ] ; then
    echo "Usage: logplot \$filename \$x:\$y"
	  return
  fi
  gnuplot -e "\
    plot '$1' u $2; \
    pause -1; \
  "
}

saveplot () {
  if [ $# -lt 2 ] ; then
    echo "Usage: saveplot \$filename \$x:\$y"
	  return
  fi
  gnuplot -e "\
    set terminal png size 640,480; \
    set output 'plot.png'; \
    plot '$1' u $2; \
  "
}
