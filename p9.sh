#! /bin/sh                                                                            
for ((i=1;i<=5;i++));             # Loop to create 5 lines of text
do
  for((k=1;k<=(5-i);k++));        # Loop to padd prepending spaces
  do
    printf "%s" " ";
  done;
  for ((j=1;j<=i;j++));           # Loop to create *
  do
    printf "%s" "*";
  done;
  printf "\n";                    # Print the carriage return
done