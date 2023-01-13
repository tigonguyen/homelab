resource "proxmox_vm_qemu" "resource-name" {
  name        = "linux-vm"
  target_node = "pve"
  iso         = "CentOS-7-x86_64-Everything-2009.iso"
}