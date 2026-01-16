// Cloudflare Pages Function to handle subdirectory routing
// This ensures /compound-interest-calculator/ routes work correctly

export async function onRequest(context) {
  const { request, env } = context;
  const url = new URL(request.url);
  
  // Handle compound-interest-calculator routes
  if (url.pathname.startsWith('/compound-interest-calculator')) {
    // If accessing /compound-interest-calculator (no trailing slash)
    if (url.pathname === '/compound-interest-calculator') {
      return Response.redirect(new URL('/compound-interest-calculator/', url.origin), 301);
    }
    
    // Try to serve the static file directly
    // Pages Functions can access static assets via env.ASSETS
    const path = url.pathname.endsWith('/') 
      ? url.pathname + 'index.html'
      : url.pathname;
    
    try {
      // Construct the asset request
      const assetUrl = new URL(path, request.url);
      const assetRequest = new Request(assetUrl.toString(), request);
      
      // Fetch from static assets
      const response = await env.ASSETS.fetch(assetRequest);
      
      if (response.ok) {
        return response;
      }
    } catch (e) {
      console.error('Error fetching asset:', e);
    }
    
    // Fallback: try index.html
    const indexPath = '/compound-interest-calculator/index.html';
    try {
      const indexUrl = new URL(indexPath, request.url);
      const indexResponse = await env.ASSETS.fetch(new Request(indexUrl.toString()));
      if (indexResponse.ok) {
        return indexResponse;
      }
    } catch (e) {
      console.error('Error fetching index.html:', e);
    }
  }
  
  // For all other routes, fetch from static assets
  return env.ASSETS.fetch(request);
}
