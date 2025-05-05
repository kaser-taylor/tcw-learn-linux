Prompt to Learn More: How are shell scripts different from compiled programs?

Shell scripts are kind of like interpreted languages. they are more or less run line by line at run time. in general though they are for interacting and orchestrating programs with the os to accomplish tasks

#!/bin/bash

for file in *.txt; do
  echo "Found file: $file"
done
