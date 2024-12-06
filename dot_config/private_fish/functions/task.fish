if type -q go-task
  function task --wraps=go-task --description 'alias task go-task'
    go-task $argv
  end
end
