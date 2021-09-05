import PostsStore from '../stores/PostsStore.imba'
import Post from '../components/Post.imba'

export default tag Posts
	postsStore = new PostsStore

	def render
		<self [max-width:480px m:0 auto]>
			<h1> "Posts"
			<Post post=post> for post in this.postsStore.posts
