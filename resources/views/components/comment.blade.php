<div class="container">
    <div class="row comment">
        @if (Session::has('success'))
            <div class="col-sm-12">
                <div class="alert alert-success">{{ Session::get('success') }}</div>
            </div>
        @endif
        <div class="col-sm-12">
            <div class="card">
                <h4 class="card-header">Comments</h4>
                <div class="card-body">
                    <div class="row pb-5">
                        <div class="col-md-12">
                            <form action="{{ route('comment.store') }}" method="POST">
                                @csrf
                                <input type="hidden" name="post_id" id="post_id" value="{{ $post->id }}">
                                <input type="hidden" name="post_detail_id" id="post_detail_id" value="{{ $post->postdetail->id }}">
                                <input type="text" name="name" class="form-control mb-2" placeholder="Your name">
                                <textarea name="comment" id="comment" class="form-control rounded-bottom-0" rows="4"></textarea>
                                <button type="" class="w-100 btn btn-success rounded-top-0">Comment</button>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" id="comment_col">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- @section('script')
    <script>
       
    </script>
@endsection --}}
