# set defaults
DEF_CONFIG=""
DEF_LOGDIR=.
DEF_SCRIPTDIR=.
DEF_NAME=proxy

# load parameters
CONFIG=${1:-$DEF_CONFIG}
LOGDIR=${2:-$DEF_LOGDIR}
SCRIPTDIR=${3:-$DEF_SCRIPTDIR}
NAME=${4:-$DEF_NAME}

# start forever

forever start --uid $NAME --append -l $LOGDIR/$NAME.log --outFile $LOGDIR/$NAME.out.log --errFile $LOGDIR/$NAME.err.log $SCRIPTDIR/proxy.js $CONFIG
