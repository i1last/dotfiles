return {
	s(
		{
			trig = "#!",
			decr = "Shebang",
		},
		fmta(
			[[ 
        #!/usr/bin/env <>

        <>
      ]],
			{
				i(1, "bash"),
				i(0),
			}
		)
	),
}
