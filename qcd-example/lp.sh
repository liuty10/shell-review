lp ()
{
        mkdir -p ~/.lp/tmp 
	[ -x ~/.lp/tmp/lp_tmp ] || touch ~/.lp/tmp/lp_tmp 
	chmod 700 /.lp/tmp
	QD=/.lp/tmp/lp_tmp
	export QD
	/usr/local/sbin/lp "$@"
	[ ! `cat $QD` ] || cd "`cat $QD`"
	rm -f "$QD"
        unset QD;
}
