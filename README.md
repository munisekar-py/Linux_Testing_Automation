# Linux_Testing_Automation
  Linux_Testing_Automation

Note: I have encountered permission issues to create crontab for both user durint Task-3 , enabled sudo permission on sudoers file.
Tar command required sudo permission, modified scripts with added sudo command.

**Task 1: System Monitoring Setup**

 ![image](https://github.com/user-attachments/assets/e84c6868-17fd-4547-a9e4-37824c8acdc3)


**Task 2: User Management and Access Control**
 
 Creating Isolated working Directory 
  ![image](https://github.com/user-attachments/assets/2b3d4ce0-d5cb-4225-a687-c8fc2fc85f90)
 
 Enabling Security policies with PAM- utilities &  Enforce Password Policy to expire 30 days
 
  ![Screenshot from 2025-05-25 03-20-07](https://github.com/user-attachments/assets/77ed715f-d364-4db2-b12b-7dcd097a02f5)
 


**Task 3: Backup Configuration for Web Servers**


Created 2 web servers for sarah and mike

![image](https://github.com/user-attachments/assets/5b6f3cba-46e5-434f-89d7-9733f4590bfb)

Created crontab for both sarah and mike to run ecery 15 mins to capture logs

![image](https://github.com/user-attachments/assets/cbb28268-3e4d-4df2-9bfc-550f29be303a)


Created Backup_script on their individual home directory and tested the output.

![image](https://github.com/user-attachments/assets/f6240f3a-a9e6-4f32-b517-38714e4004c7)
![image](https://github.com/user-attachments/assets/5a681bf9-e5f2-4066-bc9b-23026ee539ae)


Backups are successfully validated for Sarah 

![image](https://github.com/user-attachments/assets/301ba438-fecf-4967-9111-4105951d091a)

