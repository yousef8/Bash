# Lab 1

## SED

### Q.1: Display the lines that contain the word "lp" in `/etc/passwd` file?

![](./imgs/bash-lab1-sed-1.png)

### Q.2: Display `/etc/passwd` file except the 3rd line?

![](./imgs/bash-lab1-sed-2.png)

### Q.3: Display `/etc/passwd` file except the last line?

![](./imgs/bash-lab1-sed-3.png)

### Q.4: Display `/etc/passwd` file except the lines that contain the word `lp`?

![](./imgs/bash-lab1-sed-4.png)

### Q.5: Substitute all the words that contain `lp` with `mylp` in `/etc/passwd` file?

![](./imgs/bash-lab1-sed-5.png)

## AWK

### Q.1: Print full name (comment) of all users in the system?

![](./imgs/bash-lab1-awk-1.png)

### Q.2: Print login, full name(comment) and home directory of all users?(precede each line with line number)

![](./imgs/bash-lab1-awk-2.png)

### Q.3: Print long, `uid` and fullname (comment) of those `uid` greater than 500?

![](./imgs/bash-lab1-awk-3.png)

### Q.4: Print login, `uid` and fullname (comment) of those uid exactly equal to 500?

![](./imgs/bash-lab1-awk-4.png)

### Q.5: Print line from 5 to 15 from `/etc/passwd` file?

![](./imgs/bash-lab1-awk-5.png)

### Q.6: Change `lp` to `mylp`?

![](./imgs/bash-lab1-awk-6.png)

### Q.7: Print all information about greatest `uid`?

![](./imgs/bash-lab1-awk-7.png)

### Q.8: Get the sum of all accounts id's?

![](./imgs/bash-lab1-awk-8.png)

## Bonus

### Q.1

```bash
sort -t: -k4 -n /etc/passwd | awk -F: 'BEGIN {curGrp=0; sumId=0} {if ($4 != curGrp) {if (NR > 0) {print "Group ["curGrp"]\t"sumId}; sumId =0; curGrp=$4} sumId += $3} END {print "Group ["curGrp"]\t"sumId}'
```
![](./imgs/bash-lab1-bonus-1.png)

### Q.2

```bash
sort -t: -k4 -n /etc/passwd | awk -F: ' BEGIN {curGrp = -1}
{if (curGrp != $4)
{ curGrp = $4;
cmd = "getent group " curGrp " | cut -d: -f1";
cmd | getline grpName;
close(cmd);
print "\nGroup [" grpName "]";
}
{print $1}
}'
```
![](./imgs/bash-lab1-bonus-2-a.png)
![](./imgs/bash-lab1-bonus-2-b.png)

