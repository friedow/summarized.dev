import Posts from '../components/Posts.imba';
import Impressum from '../components/Impressum'
import Datenschutz from '../components/Datenschutz'

export default tag Main
	def render
		<self [max-width:640px w:100% mb: 2rem]>
			<.wrapper [p:0 1rem]>
				<Posts route='/$'>
				<Impressum route='/impressum$'>
				<Datenschutz route='/datenschutz$'>
