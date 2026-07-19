class Chime < Formula
  include Language::Python::Virtualenv

  desc "Friendly terminal alarms, timers & pomodoro"
  homepage "https://github.com/MaVericKWareZ/chime"
  url "https://files.pythonhosted.org/packages/57/e2/a88e672f758ea15fa78c1281e9ae6a591fbee49172abb23cd253d13be50b/chime_cli-0.1.0.tar.gz"
  sha256 "6f24cd0a23b0890b97d3a7caf20829184bea4927683e5ca43fb79428e4d3e198"
  license "MIT"
  head "https://github.com/MaVericKWareZ/chime.git", branch: "main"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "chime #{version}", shell_output("#{bin}/chime version")
    assert_match "Usage:", shell_output("#{bin}/chime help")
  end
end
