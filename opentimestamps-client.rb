class OpentimestampsClient < Formula
  include Language::Python::Virtualenv

  desc "Command-line client for OpenTimestamps"
  homepage "https://github.com/opentimestamps/opentimestamps-client"
  url "https://github.com/opentimestamps/opentimestamps-client/releases/download/opentimestamps-client-v0.7.2/opentimestamps-client-0.7.2.tar.gz"
  sha256 "083a08f59c3123682d6742cc57d3e229ed7b3397807638836efe3a949517accb"
  license "MIT"

  depends_on "python@3.11"

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/3b/00/2344469e2084fb287c2e0b57b72910309874c3245463acd6cf5e3db69324/appdirs-1.4.4-py2.py3-none-any.whl"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/a0/61/5c78b91c3143ed5c14207f463aecfc8f9dbb5092fb2869baf37c273b2705/gitdb-4.0.12-py3-none-any.whl"
    sha256 "67073e15955400952c6565cc3e707c554a4eea2e428946f7a4c162fab9bd9bcf"
  end

  resource "GitPython" do
    url "https://files.pythonhosted.org/packages/1d/9a/4114a9057db2f1462d5c8f8390ab7383925fe1ac012eaa42402ad65c2963/GitPython-3.1.44-py3-none-any.whl"
    sha256 "9e0e10cda9bed1ee64bc9a6de50e7e38a9c9943241cd7f585f6df3ed28011110"
  end

  resource "opentimestamps" do
    url "https://files.pythonhosted.org/packages/58/ff/59b7c642695afabf3ce92e311bff7a3bdcf8b9e420d0749f756763988db0/opentimestamps-0.4.5-py3-none-any.whl"
    sha256 "a4912b3bd1b612a3ef5fac925b9137889e6c5cb91cc9e76c8202a2bf8abe26b5"
  end

  resource "pycryptodomex" do
    url "https://files.pythonhosted.org/packages/dd/9c/1a8f35daa39784ed8adf93a694e7e5dc15c23c741bbda06e1d45f8979e9e/pycryptodomex-3.23.0-cp37-abi3-macosx_10_9_universal2.whl"
    sha256 "06698f957fe1ab229a99ba2defeeae1c09af185baa909a31a5d1f9d42b1aaed6"
  end

  resource "PySocks" do
    url "https://files.pythonhosted.org/packages/8d/59/b4572118e098ac8e46e399a1dd0f2d85403ce8bbaad9ec79373ed6badaf9/PySocks-1.7.1-py3-none-any.whl"
    sha256 "2725bd0a9925919b9b51739eea5f9e2bae91e83288108a9ad338b2e3a4435ee5"
  end

  resource "python-bitcoinlib" do
    url "https://files.pythonhosted.org/packages/75/46/b388d0885cf799f5bc66ca9995c83e5b7e17cb737f812a7c2591aa789ea6/python_bitcoinlib-0.12.2-py3-none-any.whl"
    sha256 "2f29a9f475f21c12169b3a6cc8820f34f11362d7ff1200a5703dce3e4e903a44"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/04/be/d09147ad1ec7934636ad912901c5fd7667e1c858e19d355237db0d0cd5e4/smmap-5.0.2-py3-none-any.whl"
    sha256 "b30115f0def7d7531d22a0fb6502488d879e75b260a9db4d0819cfb25403af5e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/ots", "--help"
  end
end