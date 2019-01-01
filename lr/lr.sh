lr() {
	LRDIR=~/.lr/tmp/lr_tmp
	export LRDIR
	~/.lr/lr "$@"
	[ ! `cat $LRDIR` ] || cd "`cat $LRDIR`"
        unset LRDIR;
}
