vim.api.nvim_create_user_command('FindF',
    function(opts)
        local cmd = 'find . -iname "*'..opts.fargs[1]..'*" -not -path "./build/*"'
        print(cmd)
        local handle = io.popen(cmd)
        local result = handle:read("*a")

        lines = {}
        for s in result:gmatch("[^\r\n]+") do
            table.insert(lines, s)
        end

        handle:close()
        vim.api.nvim_command('tabnew')
        vim.api.nvim_buf_set_lines(0, 0, 0, 0, lines)
        vim.api.nvim_buf_set_option(0, 'buftype', 'nofile')
        vim.api.nvim_buf_set_option(0, 'modifiable', false)
    end,
    { nargs = 1 })

