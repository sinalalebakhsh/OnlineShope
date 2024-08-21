#  54
# In root of project where Pipfile is located you could run

pipenv --venv

# which returns
# Linux/OS X:
    # /Users/your_user_name/.local/share/virtualenvs/model-N-S4uBGU

# Windows:
    # C:\Users\your_user_name\.virtualenvs\model-N-S4uBGU

# and then remove this env by typing
# Bash/Zsh:
rm -rf /Users/your_user_name/.local/share/virtualenvs/model-N-S4uBGU

# Powershell:
# Remove-Item -Recurse -Force 'C:\Users\your_user_name\.virtualenvs\model-N-S4uBGU'
# Command Prompt
rmdir /s "C:\Users\your_user_name\.virtualenvs\model-N-S4uBGU"

