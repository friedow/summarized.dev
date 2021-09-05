import fs from 'fs';
import yaml from 'yaml';

const POSTS_PATH = 'posts';
const DIST_PATH = 'dist/public';


function createPostsYml() {
  const posts = getPosts();
  writePostsYml(posts);
}

function getPosts() {
  const postFiles = fs.readdirSync(POSTS_PATH);
  return postFiles.map(getPost);
}

function getPost(postFile) {
  const postFileContent = fs.readFileSync(`${POSTS_PATH}/${postFile}`).toString();
  return yaml.parse(postFileContent);
}

function writePostsYml(posts) {
  const postsFileContent = yaml.stringify(posts);
  if (!fs.existsSync(DIST_PATH)) fs.mkdirSync(DIST_PATH, { recursive: true });
  fs.writeFileSync(`${DIST_PATH}/posts.yml`, postsFileContent);
}

try {
  createPostsYml();
} catch (err) {
  console.error(err);
}
