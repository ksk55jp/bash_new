###############################################
# grest : enclose keywords given with '"'
# usage : to be used for grep on pipe
###############################################
function gre () {
	grep "$*"	
	#echo "$*"
}
	

export grest
