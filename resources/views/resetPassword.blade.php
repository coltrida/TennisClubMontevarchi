@extends('layouts.template')

@section('container')
    <div class="container" style="margin-bottom: 30px">
        <div class="row justify-content-center">
            <div class="col-md-8">
                @if(session()->has('message'))
                       <p><h3>{{session()->get('message')}}</h3></p>
                @endif
                <div class="card">
                    <h2>{{ __('Reset Password') }}</h2>

                    <div class="card-body">
                        <form method="POST" action="{{ route('inviaResetPassword') }}">
                            @csrf

                            <div class="form-group row" style="display: flex; align-items: center">
                                <label for="email" class="col-md-2 col-form-label text-md-right" style="font-size: 15px">
                                    <b>{{ __('Indirizzo e-mail') }}</b>
                                </label>

                                <div class="col-md-6">
                                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" required autocomplete="email" autofocus>

                                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row" style="margin-top: 10px">
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Invia Richiesta') }}
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
