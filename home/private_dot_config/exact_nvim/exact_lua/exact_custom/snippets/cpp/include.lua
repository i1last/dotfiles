local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
	s(
		{
			trig = "inc>",
			dscr = "#include < >",
			snippetType = "autosnippet",
			regTrig = true,
			wordTrig = false,
		},
		fmt(
			[[
        #include <{}>
        {}
      ]],
			{
				i(1),
				i(0),
			}
		),
		{
			condition = line_begin,
		}
	),
	s(
		{
			trig = "inc'",
			dscr = '#include " "',
			snippetType = "autosnippet",
			regTrig = true,
			wordTrig = false,
		},
		fmt(
			[[
        #include "{}"
        {}
      ]],
			{
				i(1),
				i(0),
			}
		),
		{
			condition = line_begin,
		}
	),
	s(
		{
			trig = "incio",
			dscr = "#include <iostream>",
			snippetType = "autosnippet",
			regTrig = true,
			wordTrig = false,
		},
		fmt(
			[[
        #include <iostream>
        {}
      ]],
			{
				i(0),
			}
		),
		{
			condition = line_begin,
		}
	),
}
