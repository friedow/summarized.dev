import Logo from '../components/Logo.imba'

export default tag Footer
	def render
		<self [w:100% mt:auto bgc:var(--color-bg-post)]>
			<footer [h:8rem p:0 1rem d:flex ai:center jc:center]>
				<Logo [mt:1rem mr:5rem]>
				<div [d:flex fld:column fs:small]>
					<h1 [m:0 0 0.5rem 0 fs:medium]> "Legal"
					<a route-to="/impressum"> "Impressum"
					<a route-to="/datenschutz"> "Datenschutz"
