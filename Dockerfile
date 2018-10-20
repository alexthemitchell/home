FROM debian:unstable

WORKDIR root
RUN apt-get update && apt-get install -y ansible
COPY bashrc		.bashrc
COPY init.vim		.config/nvim/init.vim
COPY muttrc		.muttrc
COPY playbook.yaml	playbook.yaml
RUN ansible-playbook playbook.yaml --forks 10
RUN rm playbook.yaml

