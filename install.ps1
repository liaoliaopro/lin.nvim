#Requires -RunAsAdministrator

$VIM_HOME="$env:USERPROFILE\.vim"
$NVIM_HOME="$env:USERPROFILE\AppData\Local\nvim"
$TEMPLATE_HOME="$VIM_HOME\template"

Function Message($msg) {
    Write-Host "[lin.nvim] - $msg"
}

Function TryBackup($src) {
    If (Test-Path $src) {
	$now=Get-Date -Format "yyyy-MM-dd.HH-mm-ss"
        $target=-join($src, ".", $now)
        Message("backup $src to $target")
        Rename-Item $src $target
    }
}

Function TryDelete($src) {
    If (Test-Path $src) {
        (Get-Item $src).Delete()
    }
}

Function InstallOrSkip($command, $target) {
    if (Get-Command -Name $target -ErrorAction SilentlyContinue) {
        Message -msg "'${target}' already exist, skip..."
    } else {
        Message -msg "install '${target}' with command: '${command}'"
        Invoke-Expression $command
    }
}

Function RustDependency() {
    Message -msg "install modern rust commands with cargo"
    InstallOrSkip -command "cargo install ripgrep" -target "rg"
    InstallOrSkip -command "cargo install fd-find" -target "fd"
    InstallOrSkip -command "cargo install --locked bat" -target "bat"
}

Function Pip3Dependency() {
    Message -msg "install python packages with pip3"
    pip3 install pyOpenSSL neovim pynvim pep8 flake8 pylint yapf chardet cmakelang cmake-language-server click
}

Function NpmDependency() {
    Message -msg "install node packages with npm"
    npm install -g yarn prettier neovim
}

Function InstallTemplates() {
    Message -msg "install configurations from templates"
    Copy-Item $TEMPLATE_HOME\plugin-template.vim -Destination $VIM_HOME\plugin.vim
    Copy-Item $TEMPLATE_HOME\coc-settings-template.json -Destination $VIM_HOME\coc-settings.json
    Copy-Item $TEMPLATE_HOME\setting-template.vim -Destination $VIM_HOME\setting.vim
}

Function InstallVimrc() {
    Message -msg "install .vimrc for vim"
    TryBackup "$env:USERPROFILE\_vimrc"
    cmd /c mklink %USERPROFILE%\_vimrc %USERPROFILE%\.vim\vimrc.vim
}

Function InstallNvimInit() {
    Message -msg "install $NVIM_HOME and $NVIM_HOME\init.vim for neovim"
    TryBackup "$NVIM_HOME"
    TryDelete "$NVIM_HOME\init.vim"
    cmd /c mklink %USERPROFILE%\AppData\Local\nvim %USERPROFILE%\.vim
    cmd /c mklink %USERPROFILE%\AppData\Local\nvim\init.vim %USERPROFILE%\.vim\vimrc.vim
}

Function InstallNvimPluginIfExist() {
    Message -msg "install neovim plugins"
    nvim -E -c "PlugInstall" -c "qall"
}

Function Main() {
    Message -msg "install dependencies for windows"

    # install dependencies
    RustDependency
    Pip3Dependency
    NpmDependency

    # install files
    InstallTemplates
    InstallVimrc
    InstallNvimInit

    # install plugins
    InstallNvimPluginIfExist
}

Main
