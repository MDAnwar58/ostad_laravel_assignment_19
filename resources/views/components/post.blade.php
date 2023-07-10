<div class="row post py-3" id="post_row"></div>

@section('script')
    <script>
        const getPosts = async () => {
            const response = await axios.get('/posts');
            response.data.forEach((post) => {
                const currentDate = new Date(post.created_at);
                const year = currentDate.getFullYear();
                const monthNumber = currentDate.getMonth();
                const monthNames = ['January', 'February', 'March', 'April', 'May', 'June',
                    'July',
                    'August', 'September', 'October', 'November', 'December'
                ];
                const monthName = monthNames[monthNumber];
                const day = String(currentDate.getDate()).padStart(2, '0');
                // const hours = String(currentDate.getHours()).padStart(2, '0');
                // const minutes = String(currentDate.getMinutes()).padStart(2, '0');
                // const seconds = String(currentDate.getSeconds()).padStart(2, '0');

                // const formattedDateTime = `${day} ${monthName} ${year} ${hours}:${minutes}:${seconds}`;
                const formattedDateTime = `${day} ${monthName}, ${year}`;
                document.getElementById('post_row').innerHTML += (`
                    <div class="col-lg-12 col-md-6">
                        <div class="mb-3">
                            <div class="row g-0">
                                <div class="col-lg-3 col-md-12">
                                    <img src="assets/images/${post.image}" class="img-fluid rounded w-100" alt="${post.image}">
                                </div>
                                <div class="col-lg-9 col-md-12">
                                    <div class="px-3 py-1">
                                        <a href="/post-detail/${post.id}" class="card-title h4">${post.title}</a>
                                        <p class="card-text"><b class="text-success">${post.user.name}</b> - <small class="text-body-secondary">${formattedDateTime}</small></p>
                                        <p class="card-text">${post.short_des}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                `)
            });
            console.log(response);
        }
        getPosts();
    </script>
@endsection
