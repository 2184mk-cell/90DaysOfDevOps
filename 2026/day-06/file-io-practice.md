# Day 06 - Linux File Read/Write Practice

## Commands Used

### Create file
touch day6.txt

### Write to file
echo "Linux file handling practice" > day6.txt

### Append to file
echo "Learning read and write operations" >> day6.txt

### Use tee command
echo "tee command writes and displays output" | tee -a day6.txt

### Read full file
cat day6.txt

### Read first lines
head -n 2 day6.txt

### Read last lines
tail -n 2 day6.txt

## What I Learned

- Difference between > and >>
- How to append content into files
- How cat, head, and tail work
- How tee writes and displays output together
