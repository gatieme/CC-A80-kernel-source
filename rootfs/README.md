Source Readme 
=============
Cubietech have opened the linux sdk to community for cubieboard4,you can 
get the kernel source,u-boot,and rootfs, you can compile the sdk to pack 
a firmware for a tf card booting ,or pack a tf card firmware to flash cb4 
emmc. Now,We have release debian and ubuntu distrabution,this is just a 
start ,you can develop your own distrabutions , thanks for you support for 
cubieboards community. 
 
##clone CC-A80 linux-sdk :

    $ mkdir CC-A80-linux-sdk
    $ cd cc-a80-linux-sdk
    $ git clone https://github.com/cubieboard/CC-A80-kernel-source
    $ mv CC-A80-kernel-source linux-3.4 (master branch)
    $ git clone https://github.com/cubieboard/CC-A80-products
    $ mv CC-A80-products products  (master branch)
    $ git clone https://github.com/cubieboard/CC-A80-tools
    $ mv CC-A80-tools tools (master branch)
    $ git clone https://github.com/cubieboard/CC-A80-binaries
    $ mv CC-A80-binaries binaries (master branch)
    $ git clone https://github.com/cubieboard/CC-A80-rootfs.git
    $ mv CC-A80-rootfs rootfs (master branch)
    This is a indexes to http://dl.cubieboard.org/model/cc-a80/Source/linux/rootfs/
    You should download the rootfs from dl.cubieboard.org,and move your need file to "rootfs" 


##compilation

     $ cd CC-A80-linux-sdk
     $ source tools/scripts/envsetup.sh
     aaron@cubietech:/work/sdk/a80/github$ source tools/scripts/envsetup.sh 
     Products
     0 - cb4
     please select a board:0
     0 - cb4-lubuntu-desktop-hdmi
     1 - cb4-lubuntu-desktop-vga
     please select a system:0
     /work/sdk/a80/github/tools/crosscompiler/bin/arm-linux-gnueabi-gcc

--------------------------------------------------------------------------------------------
Build sdcard image:

	1. tf card boot
	(1)cb_build_card_image (compile code to prepare cb_install_tfcard)
	(2)cb_part_install_tfcard dev_label
		dev_label:      sdb sdc sdd ...
	(3)cb_install_tfcard  dev_label [pack]
		dev_label:      sdb sdc sdd ...
		pack:           the parameter mean we will make a img for dd or win32writer
		cmd for example: cb_install_tfcard sdb

        2. emmc card boot
	(1)cb_build_flash_card_image (compile code to prepare cb_install_flash_card)
	(2)cb_part_install_flash_card dev_label
		dev_label:      sdb sdc sdd ...
	(3)cb_install_flash_card dev_label [pack]
               (install TF card to flash img to emmc)
		dev_label:      sdb sdc sdd ...
		pack:           the parameter mean we will make a img for dd or win32writer
		cmd for example: cb_install_flash_card sdb
---------------------------------------------------------------------------------------------

##CC-A80-linux-sdk-guide

  http://dl.cubieboard.org/model/cc-a80/Doc/Linux-distribution/lubuntu/CC-A80-linux-sdk-guide.pdf
