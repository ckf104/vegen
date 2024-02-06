// SLP-2000 figure 2

double avg([])
for (i=0; i<16; i++) {
	localdiff = ref[i] - curr[i];
	diff += abs(localdiff);
}
