<ul>
  @foreach($todos as $todo)
  <li>{{$todo->task}}</li>
  @endforeach
</ul>
