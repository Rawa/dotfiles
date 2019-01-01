#!/bin/sh

while true; do
	# not using urxvtc here, as we're relying on the process to run
	# until either
	#
	# * it gets detached (eg by ^Ad)
	# * it terminates (because someone killed all windows)
	#
	# in any case, we try to reattach to the session, or, if that fails,
	# create a new one.
	#urxvt -name scratchpad
   tilix --new-process --class=scratchpad 
done
