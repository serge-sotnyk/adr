# adr
AIDER running scripts

## What is this repository for
The [AIDER](https://aider.chat/) project is an interesting and promising 
agent-based system built on top of LLM. There are two suggested ways to use it 
(for Python projects):
* Install it along with the product in the same environment
* Run it via Docker (there are some limitations here)

Since I want to use voice commands, I decided to go with the non-Docker option. 
However, working in the same environment as another project is also not ideal. 
For example, the current version of AIDER uses an outdated version of pydentic. 
Additionally, it has quite a few dependencies. Another point is that I wanted 
the list of keys in the .env file not to be spread across different repositories 
and not to mix with the keys of the development project.

This is why I decided to gather everything necessary to run AIDER in one place. 
Since I am currently working on Windows machines, I plan to create scripts and 
instructions only for it for now.

## Installation
Enter this directory and set up a virtual environment in the `venv` folder:

```bash
python3.12 -m venv venv
```

Then activate the virtual environment:
```bash
venv\Scripts\activate.bat
```

Install dependencies:
```bash
pip install -r requirements.txt
```

Copy `.env-example` to `.env` and fill it in.

## Usage

1. Open a terminal in the folder with the repository you plan to work on 
together with AIDER.
2. Instead of using the command `aider` recommended in the documentation, use 
`d:\adr\adr` (if this repository is deployed to the `d:\adr` folder). All other 
parameters can be passed through the command-line arguments. The virtual 
environment will be activated, and the environment variables with keys from 
`d:\adr\.env` will be used automatically.
3. 