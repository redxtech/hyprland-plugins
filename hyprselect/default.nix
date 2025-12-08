{
  lib,
  hyprland,
  hyprlandPlugins,
}:
hyprlandPlugins.mkHyprlandPlugin {
  pluginName = "hyprselect";
  version = "0.1";
  src = ./.;

  inherit (hyprland) nativeBuildInputs;

  meta = with lib; {
    homepage = "https://github.com/jmanc3/hyprselect";
    description = "A plugin that adds a completely useless desktop selection box to Hyprland";
    license = licenses.unlicense;
    platforms = platforms.linux;
  };
}
