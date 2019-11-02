@extends('layouts.mainlayout')


@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-md-10 ">
            <h1 class="section-heading text-primary">Edit entry</h1>
            <form action="{{ route('entry.saveupdate') }}" method="POST">
                @csrf
                @method('PUT')
                <input type="hidden" id="entryId" name="entryId" value="{{ $entry->id }}">
                <div class="form-group">
                    <label for="exampleInputEmail1">Title</label>
                    <input type="text" class="form-control" id="title" name="title" value="{{ $entry->title }}">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Content</label>
                    <textarea class="form-control" name="content" id="content" rows="3"> {{ $entry->content }} </textarea>
                </div>
                <button type="submit" class="btn btn-primary mb-2">Save</button>
            </form>
        </div>
    </div>
</div>
@endsection