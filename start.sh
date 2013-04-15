# set defaults
DEF_LOGDIR=.
DEF_SCRIPTDIR=.
DEF_NAME=proxy

# load parameters
LOGDIR=${1:-$DEF_LOGDIR}
SCRIPTDIR=${2:-$DEF_SCRIPTDIR}
NAME=${3:-$DEF_NAME}

# start forever

forever start --uid $NAME --append -l $LOGDIR/$NAME.log --outFile $LOGDIR/$NAME.out.log --errFile $LOGDIR/$NAME.err.log $SCRIPTDIR/proxy.js
