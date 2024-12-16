create table
  public.employees (
    id uuid primary key not null default gen_random_uuid (),
    created_at timestamp with time zone not null default now(),
    name text null,
    email text null
  );

alter table public.employees enable row level security;

create policy "Anyone can read"
on "public"."employees"
for select
to public
using (true);