## Offline Sandbox with ClamAV on Kali Linux (VirtualBox)

Creation of an offline sandbox environment using Kali Linux in a VM (VirtualBox), focused on analyzing suspicious files with the ClamAV antivirus.

## Tools Used
- ClamAV  
- Kali Linux (virtual machine)  
- VirtualBox  
- Snapshots and clones  
- FreshClam  

## Steps Performed
1. Installation of Kali Linux via VirtualBox.  
2. Disabling folder sharing and host integrations.  
3. Creating a clone of the virtual machine to have a secure baseline.  
4. Creating a snapshot before analysis to allow reverting afterward.  
5. Updating ClamAV definitions with `freshclam` before disconnecting the network.  
6. Disabling the VM’s network interface in VirtualBox (fully offline mode).  
7. Running the scan with `clamscan` on the file or directory.  
8. Reverting to the snapshot after analysis to ensure environment integrity.

## Basic ClamAV Command
To scan files or directories:

```
clamscan -r /path/to/file_or_directory
```

Options:
- `-r`: recursively scans directories.

## Security Best Practices
- Change Kali’s default password (make sure it's resistant to common attack patterns).  
- Use snapshots and clones to ensure any changes can be reverted.  
- Update ClamAV definitions with `freshclam` while the machine is still online, before disconnecting.