# vagrant-4-labs

Vagrantfile para criação de laboratórios com Hashicorp Vagrant.

Incluí personalizações para:

* criar automaticamente chaves de SSH para o usuário root.
* criar arquivo /etc/hosts para resolução de nomes entre VM's.
* definição de máquinas virtuais baseada em arquivo YAML.

O objetivo deste projeto é usar as funcionalidades aplicadas ao arquivo Vagrantfile para montar laboratórios virtuais de forma simples e dinâmica.

## Para iniciar o laboratório

Faça o download dos arquivos disponíveis neste projeto através do git:

```
git clone https://github.com/jonathandalves/vagrant-4-labs.git
```

Acesse o diretório vagrant-4-labs e, através do arquivo machines.yml, personalize as características das máquinas virtuais que você deseja construír.

```
cd vagrant-4-labs
vim machines.yml
```

A seguir construa as máquinas virtuais usando o Vagrant:

```
vagrant up
```

Repare que, no mesmo diretório, serão criados os seguintes arquivos.

Chaves de SSH:

* id_rsa
* id_rsa.pub

Base para /etc/hosts:

* hosts
* .hosts.tmp

*O arquivo .hosts.tmp é um arquivo oculto para armazenamento da identificação das máquinas virtuais, no entanto, já que ele faz parte de um loop, deve conter uma série de valores repetidos - que são filtrados e armazenamos no arquivo hosts.


## Para atuaizar o laboratório

Se você tiver uma nova máquina virtual para o laboratório, resincronize o conteúdo do diretório /vagrant de dentro das VMs com o comando:

```
vagrant rsync
```

A seguir reprovisione as máquinas virtuais que já estão em execução para que elas sincronizem o arquivo /etc/hosts com a identificação da nova VM, usando:

```
vagrant up --provision
```

# Informações do Autor

Criado por [Jonathan Dantas Alves](https://www.linkedin.com/in/jonathandantasalves/).
