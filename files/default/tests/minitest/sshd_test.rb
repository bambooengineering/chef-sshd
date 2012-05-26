require "minitest/autorun"

describe_recipe "sshd::default" do
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  describe "packages" do
    it "installs the ssh package" do
      package("ssh").must_be_installed
    end
  end

  describe "files" do
    it "creates the configuration file" do
      file("#{node["sshd"]["dir"]}/sshd_config").must_exist
    end
  end

  describe "services" do
    it "runs as a daemon" do
      service("ssh").must_be_running
    end
  end
end
