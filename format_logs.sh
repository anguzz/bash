#get access log file and format it to just show ips w some regex
#change log to point to file locaton and show frequency

grep -oEe \
  '[12]?[0-9]{1,2}[.][12]?[0-9]{1,2}[.][12]?[0-9]{1,2}[.][12]?[0-9]{1,2}' /access.log | sort | uniq -c 

#this will print most common by sorting
awk '{print $1}' /acess.log | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}' 




