import Logo from '../components/Logo.imba'

export default tag Header
	def render
		<self [position:sticky t:0 w:100% bgc:var(--color-bg-post)]>
			<header [p:0 1rem d:flex ai:center]>
				<a route-to="/">
					<Logo>
