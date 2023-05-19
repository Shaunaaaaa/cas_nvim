-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- 修改;为：
    [";"] = { ":" },
    ["Y"] = { '"+y', desc = "   复制到剪切板" },
    -- 打开只读文件
    ["<leader><leader>o"] = { ":SudaRead ", desc = "  打开只读文件" },
    ["<leader>h"] = { desc = "  返回界面" },
    -- 退出/保存
    -- ["<leader>q"] = { "<cmd> qall! <CR>", desc = "+   退出" },
    ["<leader>q"] = { "<cmd>confirm q<cr>", desc = "  退出" },
    ["<leader><leader>q"] = { "<cmd> qa! <CR>", desc = "  强制退出" },
    ["<leader>w"] = { "<cmd> wa <CR>", desc = "  保存" },
    -- 创建窗口
    ["<leader><leader>w"] = { "<cmd> SudaWrite <CR>", desc = "  提权保存" },
    ["<leader><leader>h"] = { "<cmd>set nosplitright<CR>:vsplit<CR>", desc = "  向左新建" },
    ["<leader><leader>k"] = { "<cmd>set nosplitbelow<CR>:split<CR>", desc = "  向上新建" },
    ["<leader><leader>j"] = { "<cmd>set splitbelow<CR>:split<CR>", desc = "  向下新建" },
    ["<leader><leader>l"] = { "<cmd>set splitright<CR>:vsplit<CR>", desc = "  向右新建" },
    -- 调整窗口大小
    ["<M-H>"] = { "<cmd>vertical resize+5 <CR>", desc = "  向左调整" },
    ["<M-J>"] = { "<cmd>res -5 <CR>", desc = "  向下调整" },
    ["<M-K>"] = { "<cmd>res +5 <CR>", desc = "  向上调整" },
    ["<M-L>"] = { "<cmd> vertical resize-5 <CR>", desc = "  向右调整" },
    -- 窗口最大化操作
    ["<leader>z"] = { desc = "  窗口" },
    ["<leader>zm"] = { "<cmd>WindowsMaximize<cr>", desc = "  窗口最大化" },
    ["<leader>zv"] = { "<cmd>WindowsMaximizeVertically<cr>", desc = "  窗口垂直最大化" },
    ["<leader>zh"] = { "<cmd>WindowsMaximizeHorizontally<cr>", desc = "  窗口水平最大化" },
    ["<leader>ze"] = { "<cmd>WindowsEqualize<cr>", desc = " 窗口均衡" },
    -- 清除高亮
    ["<ESC>"] = { "<cmd> noh <CR>", desc = "  关闭高亮" },
    -- 删除操作
    ["<leader>dl"] = { "D", desc = "  从当前向后删除" },
    ["<leader>df"] = { "ld0", desc = "  从当前向前删除" },
    ["<leader>da"] = { "<cmd> %d <CR>", desc = "  全部删除" },
    ["<leader>dn"] = { "<cmd> %g/^s*$/d <CR>", desc = "  删除文件中所有空行" },
    ["<leader>dk"] = { "<cmd> %s/ //g  <CR>", desc = "  删除文件中所有的空格" },
    ["<leader>du"] = { "<cmd> s=^ * <CR>", desc = "  删除行首空格" },
    ["<leader>dm"] = { "<cmd> %s/^M//g <CR>", desc = "  删除文件行尾所有的^M" },
    ["<leader><leader>dm"] = { "<cmd> %s/<Ctrl-V><Ctrl-M>$//g <CR>", desc = "  删除选择行数的^M" },
    ["<leader><leader>du"] = { "<cmd> s= *$<CR>", desc = "  删除行尾空格" },
    -- 整行上下移动
    -- ["<M-j>"] = { "<cmd> m .+1<CR>==", desc = "+  当前行向下移动一行" },
    -- ["<M-k>"] = { "<cmd> m .-2<CR>==", desc = "+  当前行向上移动一行" },
    -- 向上/向下添加空行
    ["[<space>"] = { "<cmd> put! =repeat(nr2char(10), v:count1) <CR>", desc = "  向上添加空行" },
    ["]<space>"] = { "<cmd> put =repeat(nr2char(10), v:count1) <CR>", desc = "  向下添加空行" },
    -- 添加序号
    ["<leader>nu"] = { "<cmd> g/^/ s//\\=line('.').'.'/ <CR>", desc = "  行首添加序号" },
    -- 全选
    ["<leader><leader>a"] = { "ggVG", desc = "  全选" },
    -- bufferline
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "   新 标 签" },
    ["<S-h>"] = { "<cmd> tabNext <CR>", desc = "  下一个标签" },
    ["<S-l>"] = { "<cmd> tabnext <CR>", desc = "  上一个标签" },
    ["<S-x>"] = { "<cmd> bd <CR>", desc = "  关闭当前标签" },
    ["<leader>bD"] = { desc = "  选择关闭" },
    -- 代码导航
    ["<F3>"] = { "<cmd> AerialToggle <CR>", desc = "   打开/关闭代码导航" },
    -- ["<F3>"] = { function() require("aerial").toggle() end, desc = "Symbols outline" },
    -- 透明切换
    ["<leader>r"] = { desc = "  一键运行/透明/等操作" },
    ["<leader>re"] = { "<cmd> TransparentEnable <CR>", desc = "  开启透明" },
    ["<leader><leader>re"] = { "<cmd> TransparentDisable <CR>", desc = "  关闭透明" },
    -- rnvimr
    ["<A-o>"] = { "<cmd> RnvimrToggle <CR>", desc = "   ranger文件管理器" },
    -- markdown
    -- vim-table-mode
    ["<leader>tm"] = { "<cmd> TableModeToggle <CR>", desc = "  md表格对齐" },
    -- markdown图片粘贴
    ["<leader>tP"] = { "<cmd>PasteImg<CR>", desc = "   md图片粘贴" },
    -- 生成目录
    ["<leader>tc"] = { "<cmd>GenTocGFM<CR>", desc = "  md生成目录" },
    ["<leader>tC"] = { "<cmd>GenTocRedcarpet<CR>", desc = "  md生成链接风格目录" },
    -- 一键运行
    ["<leader>t"] = { desc = "  终端" },
    ["<leader>tf"] = { desc = "  浮动终端" },
    ["<leader>th"] = { desc = "  终端水平拆分" },
    ["<leader>tl"] = { desc = "  浮动终端 Git 图形界面" },
    ["<leader>tn"] = { desc = "  浮动终端 Nodo.js" },
    ["<leader>tp"] = { desc = "  浮动终端 python" },
    ["<leader>tt"] = { desc = "  浮动终端进程管理" },
    ["<leader>tu"] = { desc = "  浮动终端资源占用情况" },
    ["<leader>tv"] = { desc = "  终端平拆分" },
    ["<leader>rr"] = { "<cmd>call CompileRunGccA()<CR>", desc = "   一键运行文件" },
    ["<leader>rp"] = { "<cmd>call CompileRunGccB()<CR>", desc = "   一键运行项目" },
    -- ["<leader>rp"] = { "<cmd> RunProject <CR>", desc = "  运行当前项目" },
    ["<leader>rc"] = { "<cmd> CRFiletype <CR>", desc = "  使用支持的文件打开 json" },
    ["<leader>rq"] = { "<cmd> CRProjects <CR>", desc = "  打开带有项目列表的 json" },
    -- 目录树
    ["<F2>"] = { "<cmd>Neotree toggle<cr>", desc = "  目 录 树" },
    -- 界面
    ["<leader>u"] = { desc = "  界面" },
    ["<leader>ua"] = { desc = "  切换自动匹配" },
    ["<leader>ub"] = { desc = "  切换背景" },
    ["<leader>uC"] = { desc = "  切换颜色高亮显示" },
    ["<leader>uc"] = { desc = "  切换自动完成" },
    ["<leader>ud"] = { desc = "  切换诊断" },
    ["<leader>uf"] = { desc = "  切换自动格式化(缓冲区)" },
    ["<leader>uF"] = { desc = "  切换自动格式化(全局)" },
    ["<leader>ug"] = { desc = "  切换标志栏" },
    ["<leader>uH"] = { desc = "  切换折叠列" },
    ["<leader>uh"] = { desc = "  切换标志栏" },
    ["<leader>ui"] = { desc = "  更改缩进设置" },
    ["<leader>ul"] = { desc = "  切换状态线" },
    ["<leader>uL"] = { desc = "  切换编码长度刷新" },
    ["<leader>uN"] = { desc = "  切换界面通知" },
    ["<leader>un"] = { desc = "  更改行号" },
    ["<leader>up"] = { desc = "  切换粘贴模式" },
    ["<leader>us"] = { desc = "  切换拼写检查" },
    ["<leader>uS"] = { desc = "  切换隐藏" },
    ["<leader>ut"] = { desc = "  切换标签" },
    ["<leader>uu"] = { desc = "  切换URL突出显示" },
    ["<leader>uw"] = { desc = "  切换当前行显示换行/不换行" },
    ["<leader>uY"] = { desc = "  切换LSP语义高亮显示（缓冲区）" },
    ["<leader>uy"] = { desc = "  切换语法高亮显示" },
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { desc = "  缓冲区" },
    -- 代码对齐插件
    ["<leader>ga"] = { "<cmd>EasyAlign<CR>", desc = "  代码对齐" },
    -- 查找替换
    ["<leader>s"] = { "<cmd>lua require('spectre').open()<CR>", desc = "  打开查找替换界面" },
    -- 查找替换光标下的单词
    ["<leader>sw"] = {
      "<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
      desc = "  打开光标所在单词的替换",
    },
    -- 查找替换光标下的单词并替换包含单词的文件
    ["<leader>sp"] = {
      '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
      desc = "  查找替换光标下的单词并替换包含单词的文件",
    },
    -- buffer 显示
    ["<leader>v"] = { "<cmd>ZenMode<CR>", desc = "  缩小显示buffer" },
    -- 突出显示错误
    ["<leader>x"] = { desc = "  诊断" },
    ["<leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "  显示文档诊断" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "  诊断（位置列表）" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "  诊断（快速修复列表）" },
    ["<leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "  显示工作区诊断" },
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", desc = "  切换诊断窗口" },
    ["<leader>xr"] = { "<cmd>TroubleToggle lsp_references<cr>", desc = "  符号参考（诊断窗口）" },
    -- 注释
    ["<leader>/"] = { desc = "  注释" },
    ["<leader>n"] = { desc = "  新文件" },
    ["<C-s>"] = { desc = "  强制写入" },
    ["<C-q>"] = { desc = "  强制退出" },
    ["|"] = { desc = "  垂直拆分" },
    ["\\"] = { desc = "  水平拆分" },
    -- Plugin Manager
    ["<leader>p"] = { desc = "  插件" },
    ["<leader>pi"] = { desc = "  插件安装" },
    ["<leader>ps"] = { desc = "  插件状态" },
    ["<leader>pS"] = { desc = "  插件同步" },
    ["<leader>pu"] = { desc = "  插件检查更新" },
    ["<leader>pU"] = { desc = "  插件更新" },
    -- AstroNvim
    ["<leader>pa"] = { desc = "  更新插件和补全" },
    ["<leader>pA"] = { desc = "  AstroNvim 更新" },
    ["<leader>pv"] = { desc = "  AstroNvim 版本" },
    ["<leader>pl"] = { desc = "  AstroNvim 变更日志" },
    -- Manage Buffers
    ["<leader>c"] = { desc = "  关闭缓冲区" },
    ["<leader>C"] = { desc = "  强制关闭缓冲" },
    ["]b"] = { desc = "  下一个缓冲区" },
    ["[b"] = { desc = "  上一个缓冲区" },
    [">b"] = { desc = "  向右移动缓冲区选项卡" },
    ["<b"] = { desc = "  向左移动缓冲区选项" },
    ["<leader>bC"] = { desc = "  关闭所有缓冲区" },
    ["<leader>bc"] = { desc = "  关闭除当前缓冲区外的所有缓冲区" },
    ["<leader>bd"] = { desc = "  从状态行删除缓冲区" },
    ["<leader>bl"] = { desc = "  关闭左侧的所有缓冲区" },
    ["<leader>br"] = { desc = "  关闭右侧的所有缓冲区" },
    ["<leader>bs"] = { desc = "  排序缓冲区" },
    ["<leader>bse"] = { desc = "  按扩展名排序（缓冲区）" },
    ["<leader>bsr"] = { desc = "  按相对路径（缓冲区）排序" },
    ["<leader>bsp"] = { desc = "  按完整路径（缓冲区）排序" },
    ["<leader>bsi"] = { desc = "  按缓冲区编号排序（缓冲区）" },
    ["<leader>bsm"] = { desc = "  按修改排序（缓冲区）" },
    ["<leader>b\\"] = { desc = "  从状态栏的水平拆分缓冲区" },
    ["<leader>b|"] = { desc = "  从状态栏的垂直拆分缓冲区" },
    -- GitSigns
    ["]g"] = { desc = "  下一个 Git 块" },
    ["[g"] = { desc = "  上一个 Git 块" },
    ["<leader>gl"] = { desc = "  查看 Git 归属" },
    ["<leader>gg"] = { desc = "  切换 lazygit" },
    ["<leader>gL"] = { desc = "  查看完整的 Git 归属" },
    ["<leader>gp"] = { desc = "  预览 Git 块" },
    ["<leader>gh"] = { desc = "  重置 Git 块" },
    ["<leader>gr"] = { desc = "  重置 Git 缓冲区" },
    ["<leader>gs"] = { desc = "  分段的 Git 块" },
    ["<leader>gS"] = { desc = "  分段的 Git 缓冲区" },
    ["<leader>gu"] = { desc = "  取消分段的 Git 块" },
    ["<leader>gd"] = { desc = "  查看 Git 差异" },
    -- NeoTree
    ["<leader>e"] = { desc = "  切换资源管理器" },
    -- Session Manager
    ["<leader>S"] = { desc = "  会话" },
    ["<leader>Sl"] = { desc = "  加载最后一个会话" },
    ["<leader>Ss"] = { desc = "  保存当前会话" },
    ["<leader>Sd"] = { desc = "  删除会话" },
    ["<leader>Sf"] = { desc = "  查找会话" },
    ["<leader>S."] = { desc = "  加载当前目录会话" },
    -- Package Manager
    ["<leader>pm"] = { desc = "  补全安装" },
    ["<leader>pM"] = { desc = "  补全更新" },
    -- Telescope
    ["<leader>g"] = { desc = "  Git" },
    ["<leader>gb"] = { desc = "  Git 分支" },
    ["<leader>gc"] = { desc = "  Git 提交" },
    ["<leader>gt"] = { desc = "  Git 状态" },
    ["<leader>f<CR>"] = { desc = "  继续上一次搜索" },
    -- ["<leader>f"] = { desc = "  查找" },
    ["<leader>f"] = { desc = "  查找" },
    ["<leader>f'"] = { desc = "  查找标记" },
    ["<leader>fa"] = { desc = "  查找 AstroNvim 配置文件" },
    ["<leader>fb"] = { desc = "  查找缓冲区" },
    ["<leader>fc"] = { desc = "  在光标下查找单词" },
    ["<leader>fC"] = { desc = "  查找命令" },
    ["<leader>ff"] = { desc = "  查找文件" },
    ["<leader>fF"] = { desc = "  查找全部文件" },
    ["<leader>fh"] = { desc = "  查找帮助" },
    ["<leader>fk"] = { desc = "  查找键位" },
    ["<leader>fm"] = { desc = "  查找系统帮助" },
    ["<leader>fn"] = { desc = "  查找通知" },
    ["<leader>fo"] = { desc = "  查找历史记录" },
    ["<leader>fr"] = { desc = "  查找寄存器" },
    ["<leader>ft"] = { desc = "  查找主题" },
    ["<leader>fw"] = { desc = "  查找单词" },
    ["<leader>fW"] = { desc = "  在所有文件中查找单词" },
    ["<leader>lD"] = { desc = "  搜索诊断" },
    ["<leader>ls"] = { desc = "  搜索符号" },
    ["<leader>l"] = { desc = "  LSP" },
    ["<leader>la"] = { desc = "  LSP 代码操作" },
    ["<leader>ld"] = { desc = "  悬停诊断" },
    ["<leader>lf"] = { desc = "  格式化缓冲区" },
    ["<leader>lg"] = { desc = "  搜索工作空间符号" },
    ["<leader>lh"] = { desc = "  签名帮助" },
    ["<leader>lI"] = { desc = "  Null-ls 信息" },
    ["<leader>li"] = { desc = "  LSP 信息" },
    ["<leader>ll"] = { desc = "  LSP 代码长度刷新" },
    ["<leader>lL"] = { desc = "  LSP 代码运行" },
    ["<leader>lR"] = { desc = "  搜索引用" },
    ["<leader>lr"] = { desc = "  重命名当前符号" },
    ["<leader>lS"] = { desc = "  线外符号" },
    ["<leader><leader>"] = { desc = "  复合操作" },
    -- modified function keys found with `showkey -a` in the terminal to get key code
    -- run `nvim -V3log +quit` and search through the "Terminal info" in the `log` file for the correct keyname
    ["<leader>d"] = { desc = "  调试" },
    ["<F5>"] = { desc = "  调试：启动" },
    ["<F17>"] = { desc = "  调试：停止" }, -- Shift+F5,
    ["<F29>"] = { desc = "  调试：重启" }, -- Control+F5,
    ["<F6>"] = { desc = "  调试：暂停" },
    ["<F9>"] = { desc = "  调试：切换断点" },
    ["<F10>"] = { desc = "  调试器：步骤结束" },
    ["<F11>"] = { desc = "  调试：进入" },
    ["<F23>"] = { desc = "  调试：退出" }, -- Shift+F11,
    ["<leader>db"] = { desc = "  切换断点（F9）" },
    ["<leader>dB"] = { desc = "  清除断点" },
    ["<leader>dc"] = { desc = "  启动/继续（F5）" },
    ["<leader>di"] = { desc = "  步入 (F11)" },
    ["<leader>do"] = { desc = "  跳过 (F10)" },
    ["<leader>dO"] = { desc = "  退出(S-F11)" },
    ["<leader>dq"] = { desc = "  关闭会话" },
    ["<leader>dQ"] = { desc = "  终端会话 (S-F5)" },
    ["<leader>dp"] = { desc = "  暂停 (F6)" },
    ["<leader>dr"] = { desc = "  重启 (C-F5)" },
    ["<leader>dR"] = { desc = "  切换REPL" },
    ["<leader>dt"] = { desc = "  切换调试器UI" },
    ["<leader>dh"] = { desc = "  调试器悬停" },
    -- Improved Code Folding
    ["zR"] = { desc = "  打开所有折叠" },
    ["zM"] = { desc = "  关闭所有折叠" },
    ["zr"] = { desc = "  不折叠" },
    ["zm"] = { desc = "  折叠更多" },
    ["zp"] = { desc = "  窥视折叠" },
    -- Stay in indent mode
    ["<S-Tab>"] = { desc = "  无凹痕线" },
    ["<Tab>"] = { desc = "  缩进线" },
    -- 文件标记操作
    ["mx"] = { desc = "  neovim原本的mark方式进行标记，x为标记名" },
    ["m;"] = { desc = "  自动对当前行按字母顺序进行小写标记" },
    ["dmx"] = { desc = "  x为标记名，删除某个标记名" },
    ["mX"] = { desc = "  X为大写标记名，大写的标记可以跨文件跳转" },
    ["<leader>o"] = { desc = "  标记" },
    ["<leader>om"] = { desc = "  标记操作" },
    ["<leader>oma"] = { "<cmd>MarksListAll<CR>", desc = "  显示所有标记" },
    ["<leader>omb"] = { "<cmd>MarksListBuf<CR>", desc = "  显示当前buffer中的所有标记" },
    ["<leader>omg"] = { "<cmd>MarksListGlobal<CR>", desc = "  显示所有大写标记" },
    -- 命令行
    -- [";"] = { "<cmd>FineCmdline<CR>" },
  },
  i = {
    -- 输入状态插入新行
    ["<A-o>"] = { "<C-o>o", desc = "向下插入新行" },
    ["<A-O>"] = { "<C-o>O", desc = "向上插入新行" },
    -- 输入状态删除
    ["<C-h>"] = { "<ScrollWheelLeft>", desc = "向左滚六列" },
    ["<C-l>"] = { "<ScrollWheelRight>", desc = "向右滚六列" },
    -- 上下左右滚屏
    ["<A-H>"] = { "<BS>", desc = "向前删除一个字符" },
    ["<A-J>"] = { "<PageDown>", desc = "向下滚屏" },
    ["<A-K>"] = { "<PageUp>", desc = "向上滚屏" },
    ["<A-L>"] = { "<Del>", desc = "向后删除一个字符" },
    -- 输入状态移动
    ["<A-i>"] = { "<Home>", desc = "光标跳转到行首" },
    ["<A-a>"] = { "<End>", desc = "光标跳转到行尾" },
    ["<A-h>"] = { "<Left>", desc = "向左移动光标" },
    ["<A-j>"] = { "<Down>", desc = "向下移动光标" },
    ["<A-k>"] = { "<Up>", desc = "向上移动光标" },
    ["<A-l>"] = { "<Right>", desc = "向右移动光标" },
    -- 输入状态下删除
    ["<A-w>"] = { "<C-w>", desc = "向前删除一个单词" },
    ["<A-u>"] = { "<C-u>", desc = "从当前光标位置向前删除" },
  },
  v = {
    [";"] = { ":", desc = "选区按;为:" },
    ["Y"] = { '"+y', desc = "   当前选区复制到剪切板" },
    -- ["<M-k>"] = { ":m '<-2<CR>gv=gv", desc = "  当前选区向上移动" },
    -- ["<M-j>"] = { ":m '>+1<CR>gv=gv", desc = "  当前选区向下移动" },
    -- 代码对齐插件
    ["<leader>ga"] = { "<cmd> EasyAlign <CR>", desc = "  代码对齐" },
    -- ["<leader>nu"] = { "<cmd> g/^/ s//\\=line('.').'.'/ <CR>", desc = "  选区添加序号" },
    -- ["<leader>dn"] = { "<cmd> %g/^s*$/d <CR>", desc = "  删除选区内的空行" },
    -- ["<leader>ga"] = { "<cmd>EasyAlign<CR>", desc = "   快速对齐" },
    -- [";"] = { "<cmd>FineCmdline<CR>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,

    -- 代码对齐插件
    ["<leader>ga"] = { "<cmd>EasyAlign<CR>", desc = "  代码对齐" },
  },
}
