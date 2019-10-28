# Instalação do Virtual Box (Linux Ubuntu 18.x)
`$ wget https://download.virtualbox.org/virtualbox/6.0.12/virtualbox-6.0_6.0.12-133076~Ubuntu~bionic_amd64.deb`

`$ sudo dpkg -i virtualbox-6.0_6.0.12-133076~Ubuntu~bionic_amd6`

# Instalação do Vagrant
`$ wget https://releases.hashicorp.com/vagrant/2.2.5/vagrant_2.2.5_x86_64.deb`

`$ sudo dpkg -i vagrant_2.2.5_x86_64.deb`

# Clonar repositório
`$ git clone https://github.com/xjoohnny/smart-search-setup.git`

Cloning into 'smart-search-setup'...

`$ cd smart-search-setup/vagrant`

`$ vagrant up`

Será criado uma máquina virtual com as seguintes especificações, conforme contido no arquivo 'vagrant/machines.yml'
- **name:** application
- **cpus:** 1
- **memory:** 2048
- **hostname:** application.smartsearch.example
- **ip:** 192.168.30.2
- **system:** ubuntu/bionic64

# Acesso a Aplicação
Após a Máquina Virtual concluir sua criação, a aplicação estará acessível através do Webserver Apache, no endereço: `http://192.168.30.2/`

# Desligar máquina virtual
`$ cd smart-search-setup/vagrant`

`$ vagrant halt`

`$ vagrant destroy -f`
