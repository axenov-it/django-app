export const usePostsApi = () => ({
  getPosts: () => fetch("/api/posts").then((data) => data.json()),
});
