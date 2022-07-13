int add(int a, int b, int(*further)(int,int)) {
	return further(a, b);
}
