resource "proxmox_vm_qemu" "vault_vm" {
  name        = "vault-server"
  target_node = "pve"
  clone       = "fedora-template"
  os_type     = "fedora"

  memory  = 4096
  cores   = 2
  sockets = 2
  onboot  = true

  disk {
    slot     = 0
    size     = "16GB"
    type     = "scsi"
    storage  = "local-lvm"
    iothread = 1
  }

  network {
    bridge = "vmbr0"
    model  = "virtio"
  }
}