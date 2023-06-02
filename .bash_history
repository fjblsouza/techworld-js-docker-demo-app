sudo apt-get update
sudo apt-get install openjdk-11-jdk
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword 
sudo -apt-get update
sudo apt-get update
sudo apt-get install -y docker.io
sudo usermod -aG docker $USER
sudo reboot
clear
docker ps
sudo usermod -aG docker ${USER}
sudo reboot
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
docker-compose ps
sudo apt-get install -y docker-compose
docker-compose ps
ls
docker-compose ps
ls
cd /var/lib/jenkins/workspace
ls
cd github-webhook-test
ls
docker-compose ps
exit
