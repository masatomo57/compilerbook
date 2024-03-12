#!/bin/bash
assert() {
	input=$1
	
	./argv $input
}

assert 0 
assert 42
assert 10
assert 20
assert 21
