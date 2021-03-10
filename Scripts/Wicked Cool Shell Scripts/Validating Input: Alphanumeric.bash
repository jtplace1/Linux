#!/bin/bash
# validAlphaNum -- makes sure that the input consists only of alphabetical and numeric characters.

validAlphaNum ()
{

  #validate arg: reutrns 0 if all upper+lower+digits; 1 otherwise
  
  #Remove all unacceptable chars.
  
  validchars= "$(echo $1 | sed -e 's/[^[:alnum:]]//g')"
  
  if [ $validchars" = $1 ] ; then 
    return 0
   else
    return 1
   fi
}

#begin main script-- delete or comment out everything below this line if you want to include this in other scripts.

/bin/echo -n "Enter input: "
read input

#Input validation

if ! validAlphaNum "input" ; then 
  echo " please enter only letters and numbers." >&2
  exit 1
