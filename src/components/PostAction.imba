export default tag PostAction
	icon\string
	text\string
	isTag\boolean

	get bgColor\string
		if isTag
			return "var(--color-bg-tag)"
		return "var(--color-txt)"
	
	get txtColor\string
		if isTag
			return "var(--color-txt)"
		return "var(--color-bg)"

	get margin\string
		if isTag
			return "0 0.5rem 0 0"
		return "0 0 0 0.5rem"

	def render
		<self>
			<li [m:{margin} p:0.4rem 0.6rem rd:1rem tt:uppercase td:none bgc:{bgColor} c:{txtColor} cursor:pointer d:flex ai:center fs:0.7rem]>
				if icon
					<[w:1em h:1em d:flex ai:center mr:0.2rem]>
						<i .gg-{icon} [transform:scale(0.7)]>
				if text
					<span [pb:2px lh:1em fw:600]> text
