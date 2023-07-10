<div class="card text-bg-dark rounded-0 post_detail">
    <img class="post_details_banner" src="{{ url('assets/images/banner.jpg') }}" class="card-img" alt="...">
    <div class="card-img-overlay">
        <div class="container">
            <div class="row" id="post_details_row">

            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center py-4" id="post_details_des">

    </div>
</div>
<span id="id" data-id="{{ $post->id }}"></span>

@section('script')
    <script>
        const getPostDetails = async () => {
            const element = document.getElementById('id');
            var id = element.getAttribute('data-id');
            const response = await axios.get('/post-detail-get/' + id);
            const post = response.data;
            const currentDate = new Date(post.created_at);
            const year = currentDate.getFullYear();
            const monthNumber = currentDate.getMonth();
            const monthNames = ['January', 'February', 'March', 'April', 'May', 'June',
                'July',
                'August', 'September', 'October', 'November', 'December'
            ];
            const monthName = monthNames[monthNumber];
            const day = String(currentDate.getDate()).padStart(2, '0');
            const formattedDateTime = `${day} ${monthName}, ${year}`;
            document.getElementById('post_details_row').innerHTML += (`
            <div class="col-md-12 text-center pt-sm-5 pt-2">
                    <p class="card-text"><b class="text-success">${post.user.name}</b> - <small>${formattedDateTime}</small></p>
                    <h2 class="card-title fs-1">${post.title}.</h2>
                    <div class="user d-flex justify-content-center mt-3">
                        <img class="user_img bg-success rounded-circle px-2 pt-2"
                            src="{{ url('assets/images/admin.png') }}" alt="${post.user.name}">
                        <div class="user_text ms-3 mt-1">
                            <div class="h4 fs-6 text-start fw-bolder">${post.user.name}</div>
                            <div class="h5 text-success text-start fs-6">${post.user.user_role}</div>
                        </div>
                    </div>
                </div>
            `);
            document.getElementById('post_details_des').innerHTML += (`
            <div class="col-sm-8">
            <p>${post.postdetail.des}</p>
        </div>
            `);
        }
        getPostDetails();

        const getComment = async () => {
            const post_id = document.getElementById('post_id').value;
            const post_detail_id = document.getElementById('post_detail_id').value;
            const response = await axios.get('/comment-get/' + post_id + '/' + post_detail_id);
            console.log(response.data);
            response.data.forEach((comment) => {
                var createdAt = moment(`${comment.created_at}`).fromNow();
                document.getElementById("comment_col").innerHTML += (`
                <div class="row g-0 pb-4">
                                <div class="col-lg-1 col-sm-2 col-4">
                                    <img class="user" src="{{ url('assets/images/user.png') }}" class="img-fluid"
                                        alt="...">
                                </div>
                                <div class="col-lg-11 col-sm-10 col-8">
                                    <div class="ps-2">
                                        <h5 class="card-title">${comment.name}</h5>
                                        <p class="card-text">${comment.comment}</p>
                                        <p class="card-text"><small class="text-body-secondary">Last comment ${createdAt}</small></p>
                                    </div>
                                </div>
                            </div>
                `);
            });
        }
        getComment();
    </script>
@endsection
