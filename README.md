# Deprecated
Please see https://github.com/EstexNT/rhf for the new repo

# Rhythm Heaven Fever Disassembly (US)

It builds the following DOL:

main.dol: `sha1: d96d2c7e50b0c713cb8fcb18835258351ada5576`

## Building

### Required Tools
* [devkitPro](https://devkitpro.org/wiki/Getting_Started)
* gcc

### Instructions

* WINDOWS ONLY STEP:
	- Launch msys2(Provided by devkitPro) and run the command `pacman -S gcc`.
	
1. Download GC_WII_COMPILERS.zip from (https://cdn.discordapp.com/attachments/727918646525165659/917185027656286218/GC_WII_COMPILERS.zip) and extract the mwcc_compilers folder to tools/.
2. Run `make -j` in a command prompt or terminal.
	- -j Allows make to use multiple threads, speeding up the process.

* OPTIONAL:
	- To generate a linker map (takes a considerable amount of time), run `make MAPGENFLAG=1 -j`
