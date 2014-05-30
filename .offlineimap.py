import subprocess

def get_output(cmd, input=None, cwd=None, env=None):
# Bunch of boilerplate to catch the output of a command:
    pipe = subprocess.Popen(cmd, shell=True, cwd=cwd, env=env, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    (output, errout) = pipe.communicate(input=input)
    #assert not errout
    #assert pipe.returncode == 0
    return output
 
def get_pass_emacs(host, port):
    """Assumes netrc format (host,port) instead of keyring format 
    (name,user@host)."""
    cmd = "emacsclient --eval '(offlineimap-get-password \"%s\" \"%s\")'" % (host,port)
    return get_output(cmd).strip().lstrip('"').rstrip('"')
