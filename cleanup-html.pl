
# this perl script reads all files on the command line, pulls each one into a long string, and deletes/changes various text from the file.  Then it writes it out to a different name.

# you'll want to change the 

for (@ARGV) {
  open my $fh, '<', $_ or die "can't open $_: $!";
  open my $outfh, '>', "$_.cleaned" or die "can't open $_: $!";
  my $var = do { local $/; <$fh> };

  # delete everything from the top to the main content
  $var =~ s/.*<div class='post hentry uncustomized-post-template'>/<html><body><div class='post hentry uncustomized-post-template'>/s;

  # change  the title from the date to the subheading
  $var =~ s/<h3 class='post-title entry-title'>\n<a[^>]*>([^<]*)<\/a>\n<\/h3>/<h2 class='post-title entry-title'>$1<\/h2>/s;
  #$var =~ s/<h3 class='post-title entry-title'>/<h2 class='post-title entry-title'>/s;

  # delete everything from the bottom of the main content to the bottom, matching divs
  $var =~ s/<div class='post-footer-ad'>.*/<\/div><\/div><\/body><\/html>/s;

  print $outfh $var;
}
