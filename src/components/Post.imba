import type IPost from './types/IPost.imba'
import IPost from '../types/IPost.imba';

export default tag Post
	post\IPost

	get postPreviewImage
		return "url(https://api.microlink.io/?url={post.link}&embed=image.url)"
	
	css .action-list
		m:0
		p:0
		list-style:none
		d:flex

	css .action
		p:0.2rem 0.8rem
		rd:0.5rem
		tt:uppercase
		td:none

	def render
		<self [mt:2rem rd:0.5rem bgc:var(--color-bg-post)]>
			<img [w:100% pt:50% bgi:{postPreviewImage} bgs:cover bgp:center]>
			<.post-content [p:1.5rem]>
				<p [mt: 0 fs:large]> post.text
				<.actions [d:flex jc:space-between]>
					<ul.action-list>
						<li .action [mr:0.5rem bgc:var(--color-bg-tag)]> postTag for postTag in post.tags
					<.action-list>
						<a href=post.link .action [ml:0.5rem bgc:var(--color-txt) c:var(--color-bg)]> "Website"
