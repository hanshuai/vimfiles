import vim
def addDoc():
    cur_b = vim.current.buffer 
    line = int(vim.eval("line('.')")) - 1
    s = cur_b[line]
    l1 = s.rfind('(')
    l2 = s.rfind(')')
    params = s[l1+1:l2].split(',')
    params = [p.strip() for p in params]
#    vim.command('echo "hello world ' + str(line) + ": " + s + '"')
#    vim.command('echo "' + str(params) + '"')
    list = ['/**']
    list.extend([" * @param " + p + " - " + getDesc(p) for p in params])
    list.append(' */')
    cur_b.append(list, line)

def getDesc(s):
    return 'the ' + s
