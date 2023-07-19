#!/usr/bin/perl

use strict;
use warnings;

# /**
#  * 'Building Dreams' - A Perl Program
#  *
#  * This program will take input from the user in the form of
#  * a dream of building something and output the steps needed
#  * to make that dream a reality.
#  */
 
# Ask dreamer for dream
print "What is your dream of building something?\n";
my $dream = <STDIN>;
chomp $dream;

# Start outlining the steps
print "OK, let's start building your dream. Here's the plan:\n";

# Get the necessary materials
print "1. Get the necessary materials for your project.\n";

# Calculate the costs
print "2. Calculate the cost of the materials and any additional costs.\n";

# Create a timeline
print "3. Create a timeline of when you need to have the project completed.\n";

# Create a budget
print "4. Set a budget and stick to it.\n";

# Begin construction
print "5. Start constructing the project using the materials you have.\n";

# Monitor the progress
print "6. Monitor the progress of the construction and adjust timelines if necessary.\n";

# Make any necessary revisions
print "7. Make any necessary revisions to the project as you go along.\n";

# Test the construction
print "8. Test the construction to ensure it is functioning properly.\n";

# Celebrate
print "9. Celebrate your achievement in completing the project!\n";

print "\nCongratulations on taking the first steps towards building your dream!\n";