return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  dependencies = {
    'nvim-orgmode/telescope-orgmode.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('orgmode').setup({
      org_agenda_files = {
        '~/orgfiles/**/*.org',
        '~/Projects/*/*/project.org',
      },
      org_default_notes_file = '~/orgfiles/refile.org',
      org_capture_templates = {
        t = {
          description = 'Task (to refile)',
          template = '* TODO %?\n  DEADLINE: %^t',
          target = '~/orgfiles/refile.org',
        },
        m = {
          description = 'Meeting note',
          template = '** %U %?',
          target = '~/orgfiles/meeting-notes.org',
        },
      },
    })

    require('telescope').load_extension('orgmode')

    -- Walk up to find project.org
    local function find_project_org(start_dir)
      local found = vim.fs.find('project.org', {
        upward = true, type = 'file', path = start_dir,
      })
      return found[1]
    end

    vim.keymap.set('n', '<Leader>op', function()
      local start = vim.fn.expand('%:p:h')
      if start == '' then start = vim.fn.getcwd() end
      local org_file = find_project_org(start)
      if not org_file then
        require('telescope').extensions.orgmode.search_headings({ max_depth = 0 })
        return
      end
      vim.cmd('botright split ' .. vim.fn.fnameescape(org_file))
      vim.cmd('resize ' .. math.floor(vim.o.lines * 0.3))
    end, { desc = 'Org: project notes (this project or pick)' })

    vim.keymap.set('n', '<Leader>oT',
      require('telescope').extensions.orgmode.search_tags,
      { desc = 'Org: search tags' })

    vim.keymap.set('n', '<Leader>oh',
      require('telescope').extensions.orgmode.search_headings,
      { desc = 'Org: search all headlines' })

    vim.lsp.enable('org')
  end,
}
