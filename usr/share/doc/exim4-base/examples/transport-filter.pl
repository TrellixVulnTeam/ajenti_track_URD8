#! /usr/bin/perl -w

# This is a Perl script to demonstrate the possibilities of on-the-fly
# delivery filtering in Exim. It is presented with a message on its standard
# input, and must copy it to the standard output, transforming it as it
# pleases, but of course it must keep to the syntax of RFC 822 for the headers.

# The filter is run before any SMTP-specific processing, such as turning
# \n into \r\n and escaping lines beginning with a dot.
#
# Philip Hazel, May 1997
#############################################################################


# If the filter is called with any arguments, insert them into the message
# as X-Arg headers, just to verify what they are.

for ($ac = 0; $ac < @ARGV; $ac++)
  {
  printf("X-Arg%d: %s\n", $ac, $ARGV[$ac]);
  }

# Now read the header portion of the message; this is easy to do in Perl

$/ = "";                    # set paragraph mode
chomp($headers = <STDIN>);  # read a paragraph, remove trailing newlines
$/ = "\n";                  # unset paragraph mode

# Splitting up a sequence of unique headers is easy to do in Perl, but a
# message may contain duplicate headers of various kinds. It is better
# to extract the headers one wants from the whole paragraph, do any appropriate
# munging, and then put them back (unless removing them altogether). Messing
# with "Received:" headers is not in any case to be encouraged.

# As a demonstration, we extract the "From:" header, add a textual comment
# to it, and put it back.

($pre, $from, $post) =
  $headers =~ /^(|(?:.|\n)+\n)   (?# Stuff preceding the From header,
                                     which is either null, or any number
                                     of characters, including \n, ending
                                     with \n.)
               From:[\s\t]*      (?# Header name, with optional space or tab.)
               ((?:.|\n)*?)      (?# Header body, which contains any chars,
                                     including \n, but we want to make it as
                                     short as possible so as not to include
                                     following headers by mistake.)
               (|\n\S(?:.|\n)*)$ (?# Header terminates at end or at \n followed
                                     by a non-whitespace character and
                                     remaining headers.)
              /ix;                #  case independent, regular expression,
                                  #  use extended features (ignore whitespace)

# Only do something if there was a From: header, of course. It has been
# extracted without the final \n, which is on the front of the $post
# variable.

if ($pre)
  {
  $headers = $pre . "From: $from (this is an added comment)" . $post;
  }

# Add a new header to the end of the headers; remember that the final
# \n isn't there.

$headers .= "\nX-Comment: Message munged";

# Write out the processed headers, plus a blank line to separate them from
# the body.

printf(STDOUT "%s\n\n", $headers);

# As a demonstration of munging the body of a message, reverse all the
# characters in each line.

while (<STDIN>)
  {
  chomp;
  $_ = reverse($_);
  printf(STDOUT "%s\n", $_);
  }

# End
