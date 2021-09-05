import yaml from 'yaml'

import IPost from '../types/IPost.imba';

export default class PostsStore
	posts\IPost[]

	constructor
		this.requestPosts!
	
	def requestPosts
		const postsResponse = await window.fetch "/api/posts"
		const postsText = await postsResponse.text!
		this.posts = yaml.parse postsText
		imba.commit!
