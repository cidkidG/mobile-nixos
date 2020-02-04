{ config, lib, pkgs, ... }:

{
	mobile.device.name = "oneplus-cheeseburger";
	mobile.device.info = rec {
		format_version = "0";
		name = "OnePlus OnePlus 5";
		manufacturer = "OnePlus";
		date = "";
		dtb = "";
		modules_initfs = "";
		arch = "aarch64";
		keyboard = false;
		external_storage = false;
		dev_touchscreen = "/dev/input/event5";
		dev_touchscreen_calibration = "";
		dev_keyboard = "";
		flash_method = "fastboot";
		kernel_cmdline = "androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048 androidboot.usbconfigfs=true androidboot.usbcontroller=a800000.dwc3 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7 ramoops.mem_address=0xac000000 ramoops.mem_size=0x200000 ramoops.console_size=0x40000";
		generate_bootimg = true;
		flash_offset_base = "0x00000000";
		flash_offset_kernel = "0x00008000";
		flash_offset_ramdisk = "0x01000000";
		flash_offset_second = "0x00f00000";
		flash_offset_tags = "0x00000100";
		flash_pagesize="4096";

		kernel = pkgs.callPackage ./kernel { kernelPatches = pkgs.defaultKernelPatches; }; 
		};


	mobile.hardware = {
		soc = "qualcomm-msm8998";
		ram = 1024 * 6;
		screen = {
			width = 1080; height = 1920;
		};
	};

	mobile.system.type = "android";
}