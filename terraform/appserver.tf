  resource "digitalocean_droplet" "smartsearch-app02" {
    image = "ubuntu-18-04-x64"
    name = "smartsearch-app02.fiap.lab"
    region = "nyc1"
    size = "s-1vcpu-2gb"
    private_networking = true
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]


  connection {
      user = "root"
      type = "ssh"
      private_key = "${file(var.pvt_key)}"
      timeout = "2m"
      host = "${digitalocean_droplet.smartsearch-app02.ipv4_address}"
  }

  provisioner "file" {
    content     = "${file(var.pvt_key)}"
    destination = "/root/.ssh/id_rsa"
  }


  provisioner "remote-exec" {
    inline = [
      "sudo apt-add-repository ppa:ansible/ansible -y", 
      "sudo apt update -y",
      "sudo apt install python git curl wget ansible -y",
      "sudo chmod 400 /root/.ssh/id_rsa",
      "cd /opt/ ; sudo git clone -b dev https://github.com/xjoohnny/smart-search-setup.git smartsearch-setup",
      "sudo rm -rf /etc/ansible/* && sudo mv /opt/smartsearch-setup/ansible/* /etc/ansible/",
      "sudo echo 'StrictHostKeyChecking no' >> /etc/ssh/ssh_config && sudo service ssh restart",
      "sudo ansible-playbook /etc/ansible/playbooks/playbook-setupServer.yml",
      "sudo ansible-playbook /etc/ansible/playbooks/playbook-setupApache.yml",
      "sudo ansible-playbook /etc/ansible/playbooks/playbook-setupAPI.yml",
      "sudo ansible-playbook /etc/ansible/playbooks/playbook-setupFront.yml",
      "sudo docker-compose -f /opt/smartsearch-setup/dockerfiles/docker-compose.yml up -d"
    ]
  }
}
