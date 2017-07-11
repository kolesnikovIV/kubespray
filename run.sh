#/bin/bash
rm inventory/inventory  2> /dev/null
cp contrib/azurerm/inventory inventory/inventory  2> /dev/null
rm /tmp/master* 2> /dev/null
rm /tmp/minion* 2> /dev/null
ansible-playbook -i inventory/inventory -b -u innovation cluster.yml --private-key=deloitte.pem -v
