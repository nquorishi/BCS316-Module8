#NQ-BCS316
#Exercise 3 - Write a program that takes a filename from the command line. 
#If the file exists,open the file and print the first line. If you can’t open 
#the file, use die to report thereason. Try it with files that don’t exist 
#and files you don’t have permission to read.
use 5.23.0;
use strict;
use warnings;

# Gets the filename from the command line:
my $filename = shift(@ARGV);

# Checks if the file exists:
if (-e $filename) {

    # Tries to open the file for reading:
    open(my $fh, '<', $filename) or die "Can't open file $filename: $!";

    # Reads the first line from the file:
    my $line = <$fh>;

    # Prints the first line:
    print $line;

    # Closes the file:
    close($fh);

} else {

    # If the file doesn't exist, prints an error message and exits:
    die "File $filename does not exist or is not readable\n";
}
