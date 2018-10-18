FROM debian:unstable

WORKDIR root
RUN apt-get update && apt-get install -y ansible
ADD init.vim	.config/nvim/init.vim
ADD bashrc	.bashrc
ADD playbook.yaml playbook.yaml
RUN ansible-playbook playbook.yaml --forks 10
RUN rm playbook.yaml

