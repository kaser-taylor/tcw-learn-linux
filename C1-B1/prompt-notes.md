Prompt to Learn More: What’s the difference between hardware emulation and virtualization? How does QEMU differ from VirtualBox?

Emulation:
    Emulation is basically intercepting the virtual users cpu calls and translating them into host commands. This intercept slows down preformance but allows any architecture to run on any architecture. This is great for things like embedded development. so you can run arm on x86 and x86 on arm. Think like pyboy but for a whole desktop or something down to a microcontroller

Virtualization:
    creates space on the host computer for the virtual one to run. The caveat is that they have to be the same architecture. its much faster. so vcpu in reality is a thread or set of time slices on a physical cpu core that a hypervisor assigns to a vm. A hypervisor is like an OS but it interacts with the guest os to provide resources. I would imagine in something like a data center theres not another os underneath the hypervisor but on something like my macbook there is. Right after I typed this it mentions type 1 are the ones that talk directly to hardware and type 2 are the ones that go through an os layer. 

QEMU:
    a piece of software that can do emulation and virtualization. 

VirtualBox
    a virtualization platform that used used for general purpose vms like running Ubunto on windows 

