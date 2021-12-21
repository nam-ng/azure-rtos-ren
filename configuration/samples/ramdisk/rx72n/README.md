------------------------
1. Caution / Known Issue
------------------------
The "_end" section in src/linker_script.ld should be at the end.

However, the section order in linker_script.ld is changed when first build and after code generated.

If you are using RX72N Envision Kit or RSK RX72N, you can simply copy src/linker_script_sample.ld to current src/linker_script.ld, and build project again

If you are using other RX72N devices, please open linker_script.ld and move the below section to the end, and build project again
.bss :
{
	_bss = .;
	*(.bss)
	*(.bss.**)
	*(COMMON)
	*(B)
	*(B_1)
	*(B_2)
	_ebss = .;
	_end = .;
} > RAM