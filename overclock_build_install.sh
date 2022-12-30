set -ex

(
        cd Linux_for_Tegra/source/public
        sudo ./nvbuild.sh

        (
                cd kernel/kernel-4.9
                sudo make modules
                sudo make modules_install
                sudo make
                sudo make install
                sudo cp /boot/Image /boot/Image.bak
                sudo cp arch/arm64/boot/Image /boot/Image
        )
)
