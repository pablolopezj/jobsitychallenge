@extends('layouts.mainlayout')

@section('content')

<!-- Posts Section -->
<section id="posts" class="projects-section bg-light">
    <div class="container">

        <!-- Post Content -->
        <article>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 ">
                        <h1 class="section-heading text-primary">{{ $entry->title }}</h1>
                        <p>{{ $entry->content }}</p>

                        <span class="caption text-muted">
                            Posted by {{ $entry->user->name }} |
                            @if (Auth::check())
                            <a href="/entry/{{ $entry->id }}/edit"><i class="fas fa-pen-alt"></i> Edit</a>
                            @endif
                        </span>
                    </div>
                    <div class="col-lg-4 col-md-10 ">
                        <aside>
                            <div class="list-group">

                                @foreach($tweets as $tweet)
                                @if ( $tweet['status'] == 1 )
                                <div class="list-group-item list-group-item-action flex-column align-items-start">
                                    <p class="mb-1">{{ $tweet['text'] }}</p>
                                    <a href="#" id="hiddetw_{{ $tweet['id'] }}" onclick="statusTweets('{{ $tweet['id'] }}', '{{ Auth::id() }}', 0);"><small class=" text-muted">Ocultar.</small></a>
                                    <a href="#" id="showtw_{{ $tweet['id'] }}" style="display:none" onclick="statusTweets('{{ $tweet['id'] }}', '{{ Auth::id() }}', 1);"><small class=" text-muted">Mostrar.</small></a>
                                </div>
                                @endif

                                @if ( $tweet['status'] == 0 && Auth::id() == $tweet['author_hidden'])
                                <div class="list-group-item list-group-item-action flex-column align-items-start">
                                    <p class="mb-1">{{ $tweet['text'] }}</p>
                                    <a href="#" id="hiddetw_{{ $tweet['id'] }}" style="display:none" onclick="statusTweets('{{ $tweet['id'] }}', '{{ Auth::id() }}', 0);"><small class=" text-muted">Ocultar.</small></a>
                                    <a href="#" id="showtw_{{ $tweet['id'] }}" onclick="statusTweets('{{ $tweet['id'] }}', '{{ Auth::id() }}', 1);"><small class=" text-muted">Mostrar.</small></a>
                                </div>
                                @endif
                                @endforeach

                            </div>
                            <aside>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>

@endsection

@section('scripts')
<script src="/js/hidetweets.js"></script>
@endsection