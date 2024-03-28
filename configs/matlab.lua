local util = require 'lspconfig.util'

-- Not used

return {
  default_config = {
    cmd = { 'MATLAB-language-server', '--stdio' },
    filetypes = { 'matlab' },
    root_dir = util.find_git_ancestor,
    single_file_support = false,
    settings = {
      MATLAB = {
        indexWorkspace = false,
        installPath = '/mnt/c/Program Files/MATLAB/R2023b/bin/matlab.exe',
        matlabConnectionTiming = 'onStart',
        telemetry = false,
      },
    },
  },
  docs = {
    description = [[
https://github.com/mathworks/MATLAB-language-server

MATLAB® language server implements the Microsoft® Language Server Protocol for the MATLAB language.
]],
  },
}
