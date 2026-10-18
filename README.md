# Shell Scripting with AWS EC2, Bash & Git
# PROJECT DESCRIPTION
- This project contains a Bash script that monitors system resources and logs system information automatically using a cron job.
  
# Technologies Used
- Linux
- Bash Shell Scripting
- Cron Job
- Git and GitHub
- AWS EC2
  
# FEATURES
- Monitors CPU, Memory, Disk usage
- Display Services
- Saves monitoring information to a log file
- Automates execution using a cron job
  
# EXECUTION STEPS 
## Day 1: Environment Setup & Monitoring Script
### Task 1: Launch EC2 Instance
- Log in to the AWS Management Console.
- Open the EC2 service - Launch Instance.
- Select Ubuntu Server.
- Choose an instance type eligible for the AWS Free Tier..
- Create a key pair.
- Configure SSH access on port 22.
- Launch the instance.
- Connect to the EC2 instance using SSH through MobaXterm:
  - ssh -i key.pem ubuntu@EC2_PUBLIC_IP 
### Task 2: Install Required Tools
- Install Git on the Ubuntu EC2 instance.
  - sudo apt update && sudo apt install git -y
- Verify the installation:
  - git --version
### Task 3: Initialize Git Repository
- Create a project directory and initialize a Git repository.
  - mkdir shell-assignment
  - cd shell-assignment
  - git init
### Task 4: Create EC2 Monitoring Script
- Create a shell script named monitor.sh.
- Add commands to display Services, CPU usage, Memory Usage and Disk Usage using following commands.
  1. Display Services :
     - sudo systemctl list-units --type=service --state=running
  3. Display CPU usage :
     - top -b -n 1
  5. Display memory usage :
     - free -h
  7. Display disk usage :
     - df -h
 - Create and Execute the Script
   - Create the script :
      - vim monitor.sh
   - Add the commands to the script and save the file.
   - Give execute permission:
      - chmod +x monitor.sh
   - Run the script:
      - ./monitor.sh
### Task 5: Push Code to Repository
 - Create a new repository on GitHub.
 - Add the files to Git
   - git add .
 - Commit the changes
   - git commit -m "Monitoring Script Commit"
 - Connect the local repository to GitHub
   - git remote add origin YOUR_GITHUB_REPOSITORY_URL
 - Rename the current branch to main
   - git branch -M main
 - Push the code to GitHub
   - git push -u origin main
## Day 2: Automation & Logging
### Task 6: Log Monitoring Output
  - Execute the monitoring script and append its output to monitor_logs.txt:
    - ./monitor.sh >> monitor_logs.txt
  -  Verify the log file contents: c
     - cat monitor_logs.txt
### Task 7: Enhance Monitoring Script
- Improve the script output for better readability.
- Add a title for system monitoring.
- Add clear headings for each monitoring section.
- Separate sections using lines.
- Display a completion message after monitoring.
### Task 8: Schedule Automation Using Cron
- Open the crontab editor:
  - crontab -e
- Add the following command to run the monitoring script daily at 8:00 PM.
  - 0 20 * * * /home/ubuntu/shell-assignment/monitor.sh >> /home/ubuntu/shell-assignment/monitor_logs.txt 
- Verify the scheduled job:
  - crontab -l
### Task 9: Version Control Updates
- Stage all changes.
  - git add .
- Commit the updates.
  - git commit -m "Monitoring output logging"
- Push the changes to GitHub
  - git push -u origin main
## Result
- Successfully implemented an EC2 system monitoring solution using Bash scripting, cron Job automation, and GitHub version control.
  





