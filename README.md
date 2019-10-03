# smart-search-setup
Configuration for Smart Search server.

# Virtual Box e Vagrant
Com o intuito de agilizar o desenvolvimento e releases da aplicação sem a necessidade de investir com clouds, fizemos a utilização do Vagrant e do Virtual Box.

Isto possibilita a criação de máquinas virtuais locais com todas as dependências da aplicação instaladas e prontas para serem executadas diretamente na subida do servidor local.

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
- name: application
- cpus: 1
- memory: 2048
- hostname: application.smartsearch.example
- ip: 192.168.30.2
- system: ubuntu/bionic64

# Provisionamento automático de Recursos
Durante a criação da Máquina Virtual, o script de provisionamento efetuará a instalação do *Ansible*. Esta é uma ferramenta que tem a finalidade de automatizar e facilitar a instalação e configuração de recursos dentro de Sistemas Operacionais Linux.

Com ele, é possível executar Playbooks que garantirão a instalação das ferramentas necessárias para subir a *Aplicação Web*, o *Backend API* e o *Webserver Apache2*.

# Acesso a Aplicação
Após a Máquina Virtual concluir sua criação, a aplicação estará acessível através do Webserver Apache, no endereço: `http://192.168.30.2/`

# Desligar máquina virtual
`$ cd smart-search-setup/vagrant`

`$ vagrant halt`

`$ vagrant destroy -f`
