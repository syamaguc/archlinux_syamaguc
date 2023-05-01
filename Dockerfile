FROM archlinux:latest

ARG USERNAME=syamaguc


RUN pacman -Syu --noconfirm --needed && \
    pacman -S --noconfirm --needed  sudo && \
    useradd -m -g wheel $USERNAME && \
    sed -i '/^# %wheel ALL=(ALL:ALL) NOPASSWD: ALL$/s/^# //' /etc/sudoers



WORKDIR /home/$USERNAME

USER $USERNAME
