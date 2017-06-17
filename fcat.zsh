#!/bin/zsh
start ()	{
	printf "==[%s]==\n\n" "$@"
}
fini ()		{
	printf "==[%s]==\n\n" "$@"
}
if [ $# -eq 0 ]; then
	start stdin
	cat
else
	let fno=0
	for x in $@
	do
		if (( fno > 0 )); then
			printf "\n\n"
		fi
		start "${x}"
		cat "${x}"
		fini "${x}"
		let fno=$fno+1
	done
fi
