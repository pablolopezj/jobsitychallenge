<?php

Auth::routes();

Route::get('/', 'MainController@index')->name('main');

Route::group(['middleware' => 'auth'], function () {

    Route::namespace('Entry')->group(function () {
        Route::prefix('entry')->group(function () {
            Route::name('entry.')->group(function () {
                Route::get ('newentry', 'EntriesController@create')->name('newentry');
                Route::post('newentry', 'EntriesController@store')->name('save');
                Route::get('{entry}/edit',  'EntriesController@update')->name('update');
                Route::put('edit',     'EntriesController@saveupdate')->name('saveupdate');
            });
        });
    });

    Route::namespace('Twitter')->group(function () {
        Route::prefix('twitter')->group(function () {
            Route::name('twitter.')->group(function () {
                Route::post('setstatus', 'StatusTwController@setStatusTweet')->name('status');
            });
        });
    });
});

Route::namespace('Entry')->group(function () {
    Route::prefix('entry')->group(function () {
        Route::name('entry.')->group(function () {
            Route::get('entry/{entry}', 'EntriesController@show')->name('show');
        }); 
    }); 
});


Route::namespace('Author')->group(function () {
    Route::prefix('author')->group(function () {
        Route::name('author.')->group(function () {
            Route::get('{authorid}/entries', 'AuthorController@index')->name('entries');
        });
    });
});