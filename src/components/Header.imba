export default tag Header
	def render
		<self [w:100%  bgc:var(--color-bg-post) ]>
			<header [h:3rem p:0 1.5rem d:flex ai:center]>
				<.logo [d:flex]> 
					<span [fs:large]> "summarized"
					<span [fs:3rem lh:0 c:var(--color-bg-tag)]> "."
					<span [fs:large]> "dev"
