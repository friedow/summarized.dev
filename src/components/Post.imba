import 'css.gg/icons/css/share.css'

import IPost from '../types/IPost.imba';
import PostAction from '../components/PostAction.imba'

export default tag Post
	post\IPost

	get postPreviewImage
		return "url(https://api.microlink.io/?url={post.link}&embed=image.url)"
	
	css .action-list
		m:0
		p:0
		list-style:none
		d:flex
	
	def openLink
		window.open(post.link,'_blank');
	
	get deviceSupportsSharing\boolean
		return !!window.navigator.share

	def sharePost
		if deviceSupportsSharing
			window.navigator.share {
				title: post.link,
				text: post.text,
				url: post.link,
			}
		

	def render
		<self [mt:2rem rd:1.5rem bgc:var(--color-bg-post)]>
			<img @click=openLink [w:100% pt:50% bgi:{postPreviewImage} bgs:cover bgp:center cursor:pointer]>
			<.post-content [p:1.5rem]>
				<p [mt: 0 mb: 1.5rem fs:large]> post.text
				<.actions [d:flex jc:space-between]>
					<ul.action-list>
						<PostAction text=postTag isTag=true> for postTag in post.tags
					<ul.action-list>
						<PostAction @click=openLink text="Website">
						if deviceSupportsSharing
							<PostAction @click=sharePost icon="share">
