import yaml from 'yaml'

import Post from './Post.imba'

export default tag Posts
	posts\Array

	def build
		const postsResponse = await window.fetch "/posts"
		const postsText = await postsResponse.text!
		this.posts = yaml.parse postsText
		imba.commit!

	def render
		<self>
			<h1> "Posts"
			<div> for post in this.posts
				<Post post=post>
