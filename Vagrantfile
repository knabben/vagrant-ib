# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  
  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "node.yml"
    ansible.extra_vars = {
      python_path: "/usr/bin",
      packer_builder_type: "vmware",
      containerd_url: "https://github.com/containerd/containerd/releases/download/v1.6.20/cri-containerd-cni-1.6.20-linux-amd64.tar.gz",
      containerd_sha256: "1d86b534c7bba51b78a7eeb1b67dd2ac6c0edeb01c034cc5f590d5ccd824b416",
      containerd_wasm_shims_runtimes: "",
      containerd_additional_settings: "",
      sysusr_prefix: "/usr",
      pause_image: "registry.k8s.io/pause:3.9",
      sysusrlocal_prefix: "/usr/local",
      kubernetes_semver: "v1.26.2",
      kubernetes_source_type: "pkg",
      containerd_cri_socket: "/var/run/containerd/containerd.sock",
      kubernetes_deb_gpg_key: "https://packages.cloud.google.com/apt/doc/apt-key.gpg",
      kubernetes_deb_repo: "https://apt.kubernetes.io/ kubernetes-xenial",
      kubernetes_deb_version: "1.24.11-00",
      kubernetes_http_source: "https://dl.k8s.io/release",
      kubernetes_load_additional_imgs: "false",
      kubernetes_series: "v1.26",
      systemd_prefix: "/usr/lib/systemd",
      sysusr_prefix: "/usr",
      sysusrlocal_prefix: "/usr/local"
    }
  end

  config.vm.provider "virtualbox" do |v|
    v.name = "compliance"
    v.cpus = 4
    v.memory = 2048
  end
end
