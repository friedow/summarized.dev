import Main from './components/Main.imba';
import './Theme.imba'

tag App
	def render
		<self [d:flex fld:column ai:center]>
			<Main>

imba.mount <App>
