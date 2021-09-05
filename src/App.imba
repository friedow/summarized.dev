import Main from './components/Main.imba';
import Header from './components/Header.imba';
import './Theme.imba'

tag App
	def render
		<self [max-width:100% d:flex fld:column ai:center]>
			<Header>
			<Main>

imba.mount <App>
