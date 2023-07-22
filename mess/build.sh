start=`date +%s`
output="./target/output.o"
project="/home/joao/documents/c/handmade/"

compiler="gcc -O -c"
linker="gcc -o $output"

Color_Off='\033[0m'

# Regular Colors
Black='\033[0;30m'
Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
White='\033[0;37m'
# Bold
BBlack='\033[1;30m'
BRed='\033[1;31m'
BGreen='\033[1;32m'
BYellow='\033[1;33m'
BBlue='\033[1;34m'
BPurple='\033[1;35m'
BCyan='\033[1;36m'
BWhite='\033[1;37m'

# Underline
UBlack='\033[4;30m'
URed='\033[4;31m'
UGreen='\033[4;32m'
UYellow='\033[4;33m'
UBlue='\033[4;34m'
UPurple='\033[4;35m'
UCyan='\033[4;36m'
UWhite='\033[4;37m'

# Background
On_Black='\033[40m'
On_Red='\033[41m'
On_Green='\033[42m'
On_Yellow='\033[43m'
On_Blue='\033[44m'
On_Purple='\033[45m'
On_Cyan='\033[46m'
On_White='\033[47m'

# High Intensity
IBlack='\033[0;90m'
IRed='\033[0;91m'
IGreen='\033[0;92m'
IYellow='\033[0;93m'
IBlue='\033[0;94m'
IPurple='\033[0;95m'
ICyan='\033[0;96m'
IWhite='\033[0;97m'

# Bold High Intensity
BIBlack='\033[1;90m'
BIRed='\033[1;91m'
BIGreen='\033[1;92m'
BIYellow='\033[1;93m'
BIBlue='\033[1;94m'
BIPurple='\033[1;95m'
BICyan='\033[1;96m'
BIWhite='\033[1;97m'

# High Intensity backgrounds
On_IBlack='\033[0;100m'
On_IRed='\033[0;101m'
On_IGreen='\033[0;102m'
On_IYellow='\033[0;103m'
On_IBlue='\033[0;104m'
On_IPurple='\033[0;105m'
On_ICyan='\033[0;106m'
On_IWhite='\033[0;107m'

compile() {
	cd ./target
	if [ "$1" != "" ]
	then
		$compiler $1
		echo -e "${Green}Compile 󰄭 ${Color_Off}: all source files have successfully ${Cyan}compiled${Color_Off}"
	else
		echo -e "${Green}Compile 󰄭 ${Color_Off}: all the source have been ${Cyan}compiled${Color_Off} already"
	fi
	cd ..
}

testando=$(stat ./src/handmade.c)

link() {
	rm -f $output

	local compiled_files=`fd -e o . --absolute-path`
	local append_files=`fd -e c . --absolute-path`
	local extension=".o"
	local src="src"

	for compiled in $compiled_files; do
		file=${compiled%"$extension"} # extracting the extension ".o" of each file
		file=${file//target/$src} # changing the /target/ pattern to /src/ pattern
		file=$file.c # placing the .c extension on each file
		if [ "$file" -ot "$compiled" ] # checking if the ".c" file is older than ".o" file with the same name
		then
			append_files=${append_files#"$file"}
		fi
	done

	compile $append_files
	local forlink=`fd -e o .`

	$linker $forlink -Wall
	end=`date +%s`
	echo -e "${Green}Build 󰄭 ${Color_Off}: binary files linked to ${Cyan}$output${Color_Off}; time expend: ${Yellow}`expr $end - $start`${Color_Off} seconds."
	
}

clean() {
	local files_for_removing=`fd -e o .`

	for file in $files_for_removing; do
		rm $file
	done 
	echo -e "${Green}Removing 󰄭 ${Color_Off}: ${Cyan}./target/${Color_Off} is clenned up"
}

run() {
	local files_c=`fd -e c .`
	local flag=false
	for file in $files_c; do
		if  [ "$file" -nt "$ouput" ] &&  [ $flag == false ]
		then
			flag=true
			break
		fi
	done

	if [ $flag == true ]
	then
		link
	fi
	echo -e "${Green}Running ${Cyan}$output${Color_Off}"
	local start=`date +%s`
	echo
	$output
	local end=`date +%s`
	echo
	echo -e "Took ${Yellow}`expr $end - $start`${Color_Off} seconds for the program to execute"
}


case $1 in
	run) run;;
	clean) clean;;
	compile | "") link;;
	*) echo -e "${Red}Error${Color_Off}: command not found \"${Red}$1${Color_Off}\"";;
esac

