// allows the user to logout
export async function GET() {
    return new Response(null, {
        status: 302,
        headers: {
            'Location': '/contentdashboard/auth',
            'Set-Cookie': 'authToken=;Path=/;HttpOnly'
        }
    })
}