@extends('layouts.mainlayout')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
            @foreach ($entries as $entry)
            <div class="post-preview">
                <a href="entry/entry/{{ $entry->id }}">
                    <h2 class="post-title">
                        {{ $entry->title }}
                    </h2>
                </a>
                <p>
                    {{ $entry->content }}
                </p>

                <p class="post-meta">Posted by
                    <a href="/author/{{ $entry->user_id }}/entries/">{{ $entry->user->name }}</a>
                    on {{ \Carbon\Carbon::parse($entry->created_at)->format('l jS \of F Y')}}

                    @if (Auth::check())
                    <a href="/entry/{{ $entry->id }}/edit"><i class="fas fa-pen-alt"></i> Edit</a>
                    @endif
                </p>
            </div>
            <hr>
            @endforeach

            <!-- Pager -->
            {!! $entries->render() !!}
        </div>
    </div>
</div>

@endsection