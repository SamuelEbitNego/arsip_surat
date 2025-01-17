@extends('layouts.app')

@section('content')
<div class="container">
     <h2>Create New User</h2>

     @if ($errors->any())
     <div class="alert alert-danger">
          <ul>
               @foreach ($errors->all() as $error)
               <li>{{ $error }}</li>
               @endforeach
          </ul>
     </div>
     @endif

     <form action="{{ route('superadmin.users.store') }}" method="POST">
          @csrf

          <div class="form-group">
               <label for="name">Name</label>
               <input type="text" name="name" id="name" class="form-control" value="{{ old('name') }}" required>
          </div>

          <div class="form-group">
               <label for="email">Email</label>
               <input type="email" name="email" id="email" class="form-control" value="{{ old('email') }}" required>
          </div>

          <div class="form-group">
               <label for="role">Role</label>
               <select name="role" id="role" class="form-control" required>
                    <option value="">Select Role</option>
                    <option value="admin" {{ old('role') == 'admin' ? 'selected' : '' }}>Admin</option>
                    <option value="superadmin" {{ old('role') == 'superadmin' ? 'selected' : '' }}>Superadmin</option>
               </select>
          </div>

          <div class="form-group">
               <label for="password">Password</label>
               <input type="password" name="password" id="password" class="form-control" required>
          </div>

          <button type="submit" class="btn btn-primary">Create User</button>
          <a href="{{ route('superadmin.users.index') }}" class="btn btn-secondary">Cancel</a>
     </form>
</div>
@endsection