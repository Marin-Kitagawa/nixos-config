{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    kdePackages.kget
    uget
    uget-integrator
  ];

  # Explicitly link the manifest to the location Brave expects on Linux
  environment.etc."brave/native-messaging-hosts/com.ugetdm.chrome.json".source = "${pkgs.uget-integrator}/etc/chromium/native-messaging-hosts/com.ugetdm.chrome.json";

  # Also link it for standard Chromium/Chrome just in case
  environment.etc."chromium/native-messaging-hosts/com.ugetdm.chrome.json".source = "${pkgs.uget-integrator}/etc/chromium/native-messaging-hosts/com.ugetdm.chrome.json";
}
