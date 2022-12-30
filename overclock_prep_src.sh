set -ex

wget https://developer.nvidia.com/embedded/l4t/r32_release_v7.1/sources/t210/public_sources.tbz2
tar -xvf public_sources.tbz2

(
        cd Linux_for_Tegra/source/public
        tar -xf kernel_src.tbz2

        git clone https://github.com/Qengineering/Jover.git
        cp Jover/clk-tegra124-dfll-fcpu.c kernel/kernel-4.9/drivers/clk/tegra/clk-tegra124-dfll-fcpu.c
        cp Jover/tegra210-dvfs.c kernel/kernel-4.9/drivers/soc/tegra/tegra210-dvfs.c
)
