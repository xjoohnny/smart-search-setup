# smart-search-setup
Configuration for Smart Search Server.

# Infraestrutura de desenvolvimento Ágil
Com o intuito de agilizar o desenvolvimento e releases da aplicação sem a necessidade de investir inicialmente com clouds para testes, fizemos a utilização do *Vagrant* e do *Virtual Box*, o que nos permitiu poupar recursos financeiros no início do projeto e ainda sim desenvolver em cima de uma Infraestrutura única, livre de dependências e configurações manuais.

Após o desenvolvimento estar devidamente finalizado e testado, utilizamos a ferramenta *Terraform* para o provisionamento automático de Clouds.

Toda a arquitetura foi baseada em um conceito de Devops e IaaC (Infrastructure as a Code), que nos permitiu versionar nossa Infraestrutura de uma forma que, podemos apagar todos os nossos serviços e disponibiliza-los novamente em questão de minutos. Isto possibilitou a criação de máquinas virtuais locais ou Clouds em Providers diferentes com todas as dependências da aplicação instaladas e prontas para serem executadas diretamente na subida do servidor.

# SaaS vs On-Premise
Visando também a necessidade do cliente para a utilização da aplicação, a utilização das ferramentas em questão nos possibilita a utilização tanto em um serviço de Cloud (SaaS = Software as a Service), quanto em máquinas virtuais dentro da Infraestrutura do Cliente (On-Premise).

# Provisionamento automático de Recursos
Durante a criação da Máquina Virtual, o script de provisionamento efetuará a instalação do *Ansible*. Esta é uma ferramenta que tem a finalidade de automatizar e facilitar a instalação e configuração de recursos dentro de Sistemas Operacionais Linux.

Com ele, é possível executar Playbooks que garantirão a instalação das ferramentas necessárias para subir a *Aplicação Web*, o *Backend API* e o *Webserver Apache2* independente do tipo de Provider (Cloud, Máquina Virtual Privada ou até mesmo um servidor físico).


