#!/usr/bin/env ruby

# Check if the argument matches the regular expression
def match_string(arg)
  regex = /School/i # Regular expression to match "School" case-insensitively
  if regex.match(arg)
    puts arg.gsub(regex, 'School') # Replace matches with "School"
  else
    puts "$" # No match found
  end
end

# Check if there is an argument provided
if ARGV.length != 1
  puts "Usage: #{$0} <string>"
  exit(1)
end

# Call the match_string function with the provided argument
match_string(ARGV[0])