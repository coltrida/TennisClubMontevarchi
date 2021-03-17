@extends('layouts.template')

@section('container')
    <section class="main-content">
        <div class="container body-content">
            <h1>Logs</h1>
                <table id="logs" class="display" style="width:100%">
                    <thead>
                    <tr>
                        <th>Data</th>
                        <th>Azione</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($logs as $log)
                        <tr>
                            <td>{{$log->created_at->format('d/m/Y')}}</td>
                            <td>{{$log->description}}</td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
        </div>
    </section>
@endsection

@section('footer')
    @parent
    <script>
        $('document').ready(function () {
            $('#logs').DataTable();
        });
    </script>
@endsection
