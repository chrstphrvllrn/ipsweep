# ipsweep

Syntax: 
./ipsweep.sh 192.168.0 > iplist.txt


once done you can run this one liner to check if the port 80 is open

for ip in $(cat iplist.txt) ; do nmap -p 80 -T4 $ip & done

or

you can run it using this

./port80.sh


For those using later version of kali and having problems with this ipsweep program:

Change 

‘seq 1 254’

to 

$(seq 1 254)

in order for the program to properly run
