import Header from './components/Header.imba';
import Main from './components/Main.imba';
import Footer from './components/Footer.imba';
import './Theme.imba'

tag App
	def render
		<self [max-width:100% min-height:100% d:flex fld:column ai:center]>
			<Header>
			<Main>
			<Footer>

imba.mount <App>
