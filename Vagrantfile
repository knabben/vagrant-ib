# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  
  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "node.yml"

    ansible.extra_vars = {
      python_path: "/usr/bin",
      crictl_arch: "amd64",
      crictl_sha256: "https://github.com/kubernetes-sigs/cri-tools/releases/download/v1.26.0/crictl-v1.26.0-linux-amd64.tar.gz.sha256",
      crictl_source_type: "pkg",
      crictl_url: "https://github.com/kubernetes-sigs/cri-tools/releases/download/v1.26.0/crictl-v1.26.0-linux-amd64.tar.gz",
      crictl_version: "1.26.0",
      packer_builder_type: "vmware",
      containerd_url: "https://github.com/containerd/containerd/releases/download/v1.6.20/cri-containerd-cni-1.6.20-linux-amd64.tar.gz",
      containerd_sha256: "1d86b534c7bba51b78a7eeb1b67dd2ac6c0edeb01c034cc5f590d5ccd824b416",
      containerd_wasm_shims_runtimes: "",
      containerd_additional_settings: "",
      crictl_source_type: "http",
      sysusr_prefix: "/usr",
      pause_image: "registry.k8s.io/pause:3.9",
      sysusrlocal_prefix: "/usr/local",
      kubernetes_semver: "v1.27.1",
      kubernetes_source_type: "pkg",
      containerd_cri_socket: "/var/run/containerd/containerd.sock",
      kubernetes_deb_gpg_key: "https://packages.cloud.google.com/apt/doc/apt-key.gpg",
      kubernetes_deb_repo: "https://apt.kubernetes.io/ kubernetes-xenial",
      kubernetes_deb_version: "1.27.1-00",
      kubernetes_cni_deb_version: "1.2.0-00",
      kubernetes_http_source: "https://dl.k8s.io/release",
      kubernetes_load_additional_imgs: "false",
      kubernetes_container_registry: "registry.k8s.io",
      kubernetes_series: "v1.26",
      systemd_prefix: "/usr/lib/systemd",
      sysusr_prefix: "/usr",
      sysusrlocal_prefix: "/usr/local",
      load_additional_components: "",
      packer_build_name: "vmware",
      node_custom_roles_post: "cis"
    }
  end

  config.vm.provider "virtualbox" do |v|
    v.name = "compliance"
    v.cpus = 4
    v.memory = 2048
  end
end
