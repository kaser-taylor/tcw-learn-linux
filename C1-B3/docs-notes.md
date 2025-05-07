resource: https://refspecs.linuxfoundation.org/FHS_3.0/fhs/index.html

Notes:

there are two independent distinctions among files
    -shareable vs unshareable
    -vairable vs static

shareable files are stored on one host and used on others

static files are binaries, libraries and documentation that cannot change without the sys admin

contents of the root filesystem must be adequate to boot, restore, recover, and repair the comp

the root should be as small as possible but no smaller
    - im thinking this is the stuff thats downloaded and used to load an os

this seems important 
    The following directories, or symbolic links to directories, are required in /.

    Directory	Description
    bin	Essential command binaries
    boot	Static files of the boot loader
    dev	Device files
    etc	Host-specific system configuration
    lib	Essential shared libraries and kernel modules
    media	Mount point for removable media
    mnt	Mount point for mounting a filesystem temporarily
    opt	Add-on application software packages
    run	Data relevant to running processes
    sbin	Essential system binaries
    srv	Data for services provided by this system
    tmp	Temporary files
    usr	Secondary hierarchy
    var	Variable data

/bin contains commands that can be used by everyone and are required if no other filesystems are mounted
    - example commands
         cat 
            - concatenate files to standard output
        chmod
            - changes file access permissions
        hostname 
            - shoes or sets systems host name
        unmount
            - unmounts file system

I did not understand this paragraph so im gonna gpt it 

    If /bin/sh is not the POSIX compatible shell command itself, it must be a hard or symbolic link to the real shell command.

    The [ and test commands must be placed together in either /bin or /usr/bin.

    Rationale
    Various shells behave differently when called as sh, so as to preserve POSIX compatibility while allowing changes or extensions to POSIX when desired.

    The requirement for the [ and test commands to be included as binaries (even if implemented internally by the shell) is shared with the POSIX.1-2008 standard.

    - so basically if you load a new shell like zsh that isn't posix compliant the commands have to connect back to a posix compliant shell for consistency in interaction 

leave off point https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch03s04.html 