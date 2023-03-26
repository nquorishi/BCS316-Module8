#NQ-BCS316
#Exercise 2 - Write a program that goes through the list of files from 
#the command line andreports their line count. Use warn to print a message 
#for each file that does not exist.
use 5.23.0;

# Gets the list of filenames from the command line:
my @files = @ARGV;

# Loops through each filename:
foreach my $file (@files) {

    # Checks if the file exists:
    if (-e $file) {

        # Opens the file for reading:
        open(my $fh, '<', $file) or die "Can't open file $file: $!";

        # Counts the number of lines in the file:
        my $count = 0;
        $count++ while <$fh>;

        # Closes the file:
        close($fh);

        # Prints out the line count for the file:
        print "$file: $count\n";

    } else {

        # If the file does not exist, it prints a warning message:
        warn "File $file does not exist\n";
    }
}
