{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    mesa
    vkbasalt
    vk-bootstrap
    vkmark
    vulkan-headers
    vulkan-helper
    vulkan-tools
    vulkan-utility-libraries
  ];
}
