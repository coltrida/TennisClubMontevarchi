@if(session()->has('message'))

        <div class="messaggio">
            <div
                class="alert alert-success col-sm-6 col-md-2"
                style="color: black; padding: 7px 0 5px 15px;
                margin: 0 0 0 40px;
                border: black 1px solid;
                height: 40px;
                width: 190px;
                box-shadow: 2px 2px rgba(43,43,43,0.93);"
            >
               {{session()->get('message')}}
            </div>
        </div>
@endif
