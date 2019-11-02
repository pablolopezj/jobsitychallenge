@extends('layouts.mainlayout')



@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-md-10 ">
            <h1 class="section-heading text-primary">New entry</h1>
            <form action="{{ route('entry.save') }}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="exampleInputEmail1">Title</label>
                    <input type="text" class="form-control @error('title') is-danger @enderror " id="title" name="title" value="{{ old('title') }}" placeholder="Title" require>
                    @error('title')
                    <p class="help is-danger">{{ $errors->first('title') }}</p>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Content</label>
                    <textarea class="form-control @error('title') is-danger @enderror" name="content" id="content" rows="3" placeholder="Content" require >{{ old('content') }}</textarea>
                    @error('content')
                    <p class="help is-danger">{{ $errors->first('content') }}</p>
                    @enderror
                </div>
                <button type="submit" class="btn btn-primary mb-2">Save</button>
            </form>
        </div>
    </div>
</div>
@endsection