@extends('layouts.template')

@section('container')
    <div class="container" style="margin-bottom: 30px">
        <div class="row justify-content-center">
            <div class="col-md-8">
                @if(session()->has('message'))
                    <p><h3>{{session()->get('message')}}</h3></p>
                @endif
                <div class="card">
                    <h2>{{ __('Reimposta Password') }}</h2>

                    <div class="card-body">
                        <form method="POST" action="{{route('setReimpostaPassword')}}">
                            @csrf

                            <input type="hidden" name="id" value="{{$id}}">

                            <div class="form-group row" style="display: flex; align-items: center">
                                <label for="password" class="col-md-2 col-form-label text-md-right" style="font-size: 15px">
                                    <b>{{ __('Nuova Password') }}</b>
                                </label>

                                <div class="col-md-6">
                                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="password" autofocus>

                                    @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <br>
                            <div class="form-group row" style="display: flex; align-items: center">
                                <label for="password_confirmed" class="col-md-2 col-form-label text-md-right" style="font-size: 15px">
                                    <b>{{ __('Ridigita password') }}</b>
                                </label>

                                <div class="col-md-6">
                                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                </div>
                            </div>

                            <div class="form-group row" style="margin-top: 10px">
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Reimposta Password') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
