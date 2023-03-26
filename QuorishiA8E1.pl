#NQ-BCS316
#Exercise 1 - Write a program to read lines from all of the files 
#on the command line and printout each line prefaced with its filename.
use 5.23.0;

# Gets the list of filenames from the command line:
my @files = @ARGV;

# Loops through each filename:
foreach my $file (@files) {

    # Opens the file for reading:
    open(my $fh, '<', $file) or die "Can't open file $file: $!";

    # Loops through each line in the file:
    while (my $line = <$fh>) {

        # Prints out the line with the filename:
        print "$file: $line";
    }

    # Closes the file:
    close($fh);
}
