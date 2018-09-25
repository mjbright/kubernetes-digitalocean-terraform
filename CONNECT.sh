
IP=104.248.132.15
USER=core

LOGIN=${USER}@${IP}

die() {
    echo "$0: die - $*" >&2
    exit 1
}

if [ "$1" = "-from" ];then
    shift
    [ -z "$2" ] && die "Usage: $0 -from <remote-from> <to>"
    scp -i secrets/doceanlabs_rsa -r ${LOGIN}:$1 $2
elif [ "$1" = "-to" ];then
    shift
    [ -z "$2" ] && die "Usage: $0 -to <from> <remote-to>"
    scp -i secrets/doceanlabs_rsa -r $1 ${LOGIN}:$2
else
    ssh -i secrets/doceanlabs_rsa ${LOGIN}
fi

