this is how you sort the python version, from chat gpt

pre-requisite:
```
brew install pyenv
pyenv install 3.13.0
pyenv global 3.13.0
brew install pyenv-virtualenv
```

also, in your ```~/.zshrc``` file:
```
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
```

Run VS Code command:
```Python: Select Interpreter```
Input the path to python from 
```which python```

then, when you have a project:
```
cd ~/dev/myproject
pyenv virtualenv 3.13.0 myproject-env
pyenv local myproject-env
```