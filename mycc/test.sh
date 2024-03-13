#!/bin/bash
assert() {
	expected="$1"
	input="$2"
	
	./mycc "$input" > tmp.s
	cc -o tmp tmp.s
	./tmp
	actual="$?"
	
	if [ "$actual" = "$expected" ]; then
		echo "$input => $actual"
	else
		echo "input => $expected expected, but got $actual"
		exit 1
	fi
}

assert 0 0
assert 42 42

assert 21 "5+20-4"
assert 14 "13+1"

assert 41 " 12 + 34 - 5"

assert 12 "ccc"
assert 13 "13++"

echo OK
