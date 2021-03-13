<span class="badge" style="background-color: blue; font-size: 17px">
    <strong>Credito: € {{Auth::user()->credito}}</strong>
</span>

@if(Auth::user()->hasprivilegi)
    <span class="badge" style="background-color: blue; font-size: 17px">
        <strong> Privilegi: {{Auth::user()->ore_privilegi}}</strong>
    </span>
@endif
