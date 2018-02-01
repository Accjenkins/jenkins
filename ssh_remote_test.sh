#sshpass -p 'Acc1234$$' ssh oracle@10.106.95.146 "$(</u01/install/APPS/12.1.0/apex/Apex_Backup/Apex_shell.sh)"
sshpass -p 'Acc1234$$' ssh -T oracle@10.106.95.146 </u01/install/APPS/12.1.0/apex/Apex_Backup/Apex_shell.sh
