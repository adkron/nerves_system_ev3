defmodule NervesSystemEv3.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_system_ev3,
     version: @version,
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_system],
     description: description,
     package: package,
     deps: deps]
  end

  def application do
   []
  end

  defp deps do
    [{:nerves_system, "~> 0.1.4"},
     {:nerves_system_br, github: "nerves-project/nerves_system_br", ref: "6c6702ecfdea59bfb248ff4590cb0532419b5855"},
     {:nerves_toolchain_arm_unknown_linux_gnueabi, "~> 0.6.0"}]
  end

  defp description do
    """
    Nerves System - Lego Mindstorms EV3 http://www.lego.com/en-us/mindstorms/about-ev3
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Justin Schneck"],
     files: ["LICENSE", "mix.exs", "nerves_defconfig", "nerves.exs",
             "README.md", "VERSION", "rootfs-additions", "fwup.conf",
             "linux-3.16-ev3dev.defconfig", "post-createfs.sh",
             "nerves_logo_178x128.pbm"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/nerves_system_ev3"}]
  end
end
