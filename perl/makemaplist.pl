###################################################################
#
# Dette programet lager en makemaplist.conf fil ut fra mapper 
# den f�r inn. Vil pr�ve � spre dataene gjevnt over.
#
#
###################################################################

if ($#ARGV < 0) {
	die "usage: perl perl/makemaplist.pl directory [ directory ]";
}

for my $i (0 .. $#ARGV) {
	#print "$ARGV[$i]\n";
	#tar bort eventuelt / p� slutten
	$ARGV[$i] =~ s/\/$//;
}

my $count = 0;
for my $i (0 .. 64) {

	my $nr = $i % ($#ARGV +1);

	#print "nr: $nr (i: $i, a: $#ARGV)\n";
	print "$ARGV[$nr]/$count\n";

	++$count;
}
