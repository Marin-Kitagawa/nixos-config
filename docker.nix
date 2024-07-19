{ config, ... }:
{
  virtualization.docker = {
    enable = true;
    storageDriver = "btrfs";
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
    daemon = {
      settings = {
        data-root = "~/docker-data";
      };
    };
  };
}
