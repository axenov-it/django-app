export const usePostsApi = () => ({
  getPosts: () => fetch("/api/posts").then((data) => data.json()),
  getPost: (slug: string = "") =>
    fetch(`/api/posts/${slug}`).then((data) => data.json()),
});
