{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    docker
    docker-compose
    podman
    dive
  ];
}
