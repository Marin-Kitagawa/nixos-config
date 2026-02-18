{
  nixpkgs.overlays = [
    (final: prev: {
      dump1090 = prev.dump1090.overrideAttrs (oldAttrs: {
        patches = [
          (final.fetchpatch {
            url = "https://github.com/flightaware/dump1090/commit/93be1da123215e8ac15a0deaffedd480e8899f77.patch";
            hash = "sha256-KSvES/FhMBQ3CRpDF++n2A5sFyRPalNBGUegqQX7UsY=";
          })
        ];
      });
    })
  ];
}
