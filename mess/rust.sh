run() {
	  cargo run -q
}

build() {
		cargo build
}

clean() {
		cargo clean
}

check() {
    cargo check
}

case $1 in
	 "build")
		build
		;;
	 "check")
		check
		;;
	 "clean")
		clean
		;;
	 "run")
		run
		;;
	 "")
		run
		;;
	 *)
		 echo "\"${1}\" is not a valid command"
		;;
esac
