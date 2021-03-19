val=`ps`
#echo $val
if [[ ! "zsh" =~ "$val" ]];then 
	echo here
fi
